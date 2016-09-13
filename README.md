# getbiblefirst.com

[![Build Status](https://travis-ci.org/joshukraine/getbiblefirst.com.svg?branch=master)](https://travis-ci.org/joshukraine/getbiblefirst.com)

[getbiblefirst.com](http://getbiblefirst.com/) is the web site for Bible First, a distance-learning course based on the book of Genesis.

This site was built using [Middleman 4](https://middlemanapp.com/).

![getbiblefirst.com screenshot](http://d3lyzr3q25n7t0.cloudfront.net/getbiblefirst-com-screenshot-2016.jpg)

### Setup

To get started, clone the repo, cd into it, and run the setup script.

```sh
$ bin/setup
```

### Development

This project uses [Gulp](http://gulpjs.com/) with Middleman's new [`external_pipeline`](https://middlemanapp.com/advanced/external-pipeline/) feature introduced in v4. When running the local development server, append `-e gulp` to [set the environment](https://middlemanapp.com/basics/upgrade-v4/#environments-and-changes-to-configure-blocks) to `gulp` and invoke the external pipeline.

    # With Gulp
    $ bundle exec middleman server -e gulp
    
    # Without Gulp
    $ bundle exec middleman server

### Deployment

getbiblefirst.com is currently deployed on Amazon S3. [Detailed instructions](http://docs.aws.amazon.com/gettingstarted/latest/swh/website-hosting-intro.html) are available from Amazon.

### Legal

Bible First is a trademark of [Euro Team Outreach, Inc.](http://www.euroteamoutreach.org/)
