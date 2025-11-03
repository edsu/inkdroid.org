This is my personal static website that runs at http://inkdroid.org courtesy of the venerable Jekyll.

## Install

First install Ruby and [bundler](https://bundler.io/).

Then install the dependencies:

    $ bundle install
    
Create a `.env` file for pulling my bookmarks from Shiori running locally. The Mayfirst password is needed for establishing an rsync session to publish the site.

```
MAYFIRST_PASSWORD=CHANGEME
SHIORI_URL=CHANGEME
SHIORI_USERNAME=CHANGEME
SHIORI_PASSWORD=CHANGEME
```

To generate bookmarks every week this (convoluted command) needs to go in my crontab:

```
37 19 * * * export PATH=$HOME/.rbenv/shims:$HOME/.rbenv/bin:/usr/bin:/opt/homebrew/bin/:$PATH; export LANG=en_US.UTF-8; eval "$(rbenv init -)"; cd $HOME/Projects/inkdroid.org; bundle exec dotenv make bookmarks
```

Run the local server to view the site locally:

    $ make serve
    
Or publish the latest changes at inkdroid.org:  

    $ make
