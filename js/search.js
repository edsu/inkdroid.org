window.addEventListener('DOMContentLoaded', async () => {
  const container = document.getElementById('search');
  if (!container) return;

  const input = document.createElement('input');
  input.type = 'search';
  input.id = 'search-input';
  input.placeholder = 'search...';
  input.setAttribute('aria-label', 'Search posts');

  const results = document.createElement('div');
  results.id = 'search-results';

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
    return `<div class="search-result"><a class="search-filename" href="${item.url}">${item.url}</a><span class="search-sep">:</span><span class="search-excerpt">${excerpt}</span></div>`;
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

  input.addEventListener('input', async () => {
    const query = input.value.trim();
    if (!query) { results.innerHTML = ''; allResults = []; offset = 0; return; }

    const search = await pagefind.search(query, { sort: { date: 'desc' } });
    allResults = search.results;
    offset = 0;
    results.innerHTML = '<button id="search-more">load more</button>';
    await loadMore();
  });
});
