var pinboard_bookmarks = [];

function main() {
  cards = make_pinboard();
  cards.push(make_card('todo', 'https://www.dropbox.com/s/r1k1bellrzm8sqt/todo.txt', 'todo'));
  cards.push(make_card('blog', '/journal', 'blog'));
  cards.push(make_card('photos', 'http://flickr.com/photos/inkdroid', 'flickr'));
  cards.push(make_card('books', 'http://www.goodreads.com/user/show/5899086-ed-summers', 'books'));
  cards.push(make_card('links', 'http://pinboard.in/u:edsu', 'links'));
  cards.push(make_card('resume', 'http://inkdroid.org/ehs.txt', 'resume'));
  cards.push(make_card('music', 'http://www.last.fm/user/inkdroid', 'music'));
  cards.push(make_card('foaf', 'http://inkdroid.org/ehs.rdf', 'foaf'));
  cards.push(make_card('twitter', 'http://twitter.com/edsu', 'twitter'));
  cards.push(make_card('email', 'mailto:ehs@pobox.com', 'email'));
  cards.push(make_card('asteroids', null, 'asteroids', play_asteroids));
  draw(cards);
  t = setInterval("move(cards)", 75);
}

function draw(cards) {
  for (i in cards) {
    $('#canvas').append(cards[i]);
  }
}

function move(cards) {
  width = canvas_width();
  height = canvas_height();

  for (i in cards) {
    card = cards[i];
    pos = next_pos(card);

    if (card.is_frozen()) {
      continue;
    }

    if (pos[0] < 0 || pos[0] > width || pos[1] < 0 || pos[1] > height) {
      card.dx = d();
      card.dy = d();
    }

    card.css({left: pos[0], top: pos[1]})
  }

}

function pinboard(bookmarks) {
  pinboard_bookmarks = bookmarks;
}

function make_pinboard() {
  cards = [];
  width = canvas_width();
  height = canvas_height();
  for (i in pinboard_bookmarks) {
    cards.push(
      make_card(
        pinboard_bookmarks[i].d, 
        pinboard_bookmarks[i].u, 
        'delicious'
      )
    );
  }
  return cards;
}

function make_card(text, url, klass, onclick) {
  if (! text) text = "?"; 
  width = canvas_width();
  height = canvas_height();
  short_text = text.substr(0,30);
  if (short_text.length == 30) {short_text += '...';}

  var card = $("<span></span>").addClass(klass).addClass("card");
  var x = Math.round(Math.random() * width);
  var y = Math.round(Math.random() * height);
  card.dx = d();
  card.dy = d();
  card.css({position: 'absolute', left: x, top: y});
  if (url) {
      card.append(
        $("<a></a>")
          .attr("href", url)
          .data("long-title", text)
          .text(short_text)
      );
  }
  else if (onclick) {
      card.append($("<span></span>")
              .attr({title: text})
              .text(short_text))
              .click(onclick);
  }
  card.hover(
    function () {
      $(this).toggleClass('frozen');
    },
    function () {
      $(this).toggleClass('frozen');
    }
  );

  card.is_frozen = function() {
    attrs = card.attr('class').split(' ')
    for (i in attrs) {
      if (attrs[i] == 'frozen') return true;
    }
    return false;
  }

  return card;
}

function d() {
  return Math.random() * 10 - 5;
}

function next_pos(card)
{
  x = parseInt(card.css('left')); 
  y = parseInt(card.css('top'));
  return [(x+card.dx), (y+card.dy)];
}

function canvas_width() {
  return parseInt($("#canvas").width());
}

function canvas_height() {
  return parseInt($("#canvas").height());
}

function play_asteroids() {
  s = document.createElement('script');
  s.type='text/javascript';
  s.src = '/js/asteroids.min.js';
  document.body.appendChild(s);
}

$('document').ready(main);
