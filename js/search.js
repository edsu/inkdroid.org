window.addEventListener('DOMContentLoaded', async () => {
  const container = document.getElementById('search');
  if (!container) return;

  const input = document.createElement('input');
  input.type = 'search';
  input.id = 'search-input';
  input.placeholder = 'search...';
  input.setAttribute('aria-label', 'Search posts');
  input.setAttribute('aria-controls', 'search-results');

  const results = document.createElement('div');
  results.id = 'search-results';
  results.setAttribute('aria-live', 'polite');
  results.setAttribute('aria-atomic', 'false');

  container.appendChild(input);
  container.appendChild(results);

  let pagefind;
  try {
    pagefind = await import('/pagefind/pagefind.js');
    await pagefind.options({ excerptLength: 12 });
  } catch(e) { return; }

  const PAGE_SIZE = window.matchMedia('(max-width: 600px)').matches ? 10 : 25;
  let allResults = [];
  let offset = 0;

  function renderResult(item) {
    const excerpt = item.excerpt ?? '';
    const title = item.meta?.title ?? item.url;
    return `<div class="search-result"><a class="search-filename" href="${item.url}">${title}</a><span class="search-sep">:</span><span class="search-excerpt">${excerpt}</span></div>`;
  }

  async function loadMore() {
    const items = await Promise.all(allResults.slice(offset, offset + PAGE_SIZE).map(r => r.data()));
    items.forEach(item => {
      const more = document.getElementById('search-more');
      more.insertAdjacentHTML('beforebegin', renderResult(item));
    });
    offset += PAGE_SIZE;
    if (offset >= allResults.length) document.getElementById('search-more').remove();
  }

  results.addEventListener('click', e => {
    if (e.target.id === 'search-more') loadMore();
  });

  async function runSearch(query) {
    if (!query) { results.innerHTML = ''; allResults = []; offset = 0; return; }

    const search = await pagefind.search(query, { sort: { date: 'desc' } });
    allResults = search.results;
    offset = 0;

    if (allResults.length === 0) {
      results.innerHTML = `<p class="search-message">no results for "${query}"</p>`;
      return;
    }

    const count = allResults.length;
    results.innerHTML = `<p class="search-message" aria-live="polite">${count} result${count === 1 ? '' : 's'}</p><button id="search-more">load more</button>`;
    await loadMore();
  }

  input.addEventListener('input', () => runSearch(input.value.trim()));

  // a page can ask for a search to be run on arrival, which is how the 404
  // page guesses at what you were looking for
  if (window.searchSeed) {
    input.value = window.searchSeed;
    await runSearch(window.searchSeed);
  }
});
