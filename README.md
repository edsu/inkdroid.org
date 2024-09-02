This is my personal static website that runs at http://inkdroid.org courtesy of the venerable Jekyll.

## Install

First install Ruby and [bundler](https://bundler.io/).

Then install the dependencies:

    $ bundle install
    
Create a `.env` file for the pinboard.in key for pulling quotes:

```
PINBOARD_KEY=changeme
```

Run the local server to view the site locally:

    $ make serve
    
Or publish the latest changes at inkdroid.org:  

    $ make

