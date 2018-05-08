getbiblefirst.com
=================

[![Build Status][travis-svg]][travis]

[getbiblefirst.com][biblefirst] is the official web site for Bible First, a distance-learning course based on the book of Genesis.

This site was built using [Middleman][middleman].

![getbiblefirst.com screenshot][screenshot]

Requirements
------------

* [Middleman 4.x][middleman-docs]
* [Ruby 2.x][rbenv]
* [Node 6.x][nvm]
* [Gulp CLI][gulp-cli]

Setup
-----

To get started, clone the repo, cd into it, and run the setup script.

```sh
$ bin/setup
```

Development
-----------

This project uses [Gulp][gulp] with Middleman's new [`external_pipeline`][external-pipeline] feature introduced in v4.

    # Run the development server with Gulp
    $ bundle exec middleman server
    
    # Build the site (also invokes Gulp)
    $ bundle exec middleman build

Environments
------------

Middleman has two default environments: `development` and `production`. This app is configured to run the external pipeline (Gulp in our case) in both. There are times, however, when the external pipeline should not run. Two good examples are tests and the console. We therefore define two additional environments: `test` and `console`.

Custom environments can be invoked on the command line with `-e` flag like so:

    # Start the console in the console enviroment
    $ bundle exec middleman console -e console

Code for custom environments is stored in `environments/<your-custom-env>.rb`. Note that custom environments can be invoked without the existence of a corresponding file in the `environments/` directory. If, for example, you merely wanted to start a server without the default `development` configs, you could run `middleman server -e <anything-here>`.

For completeness, all five environments used in this app have corresponding files:

```sh
environments/
├── console.rb
├── development.rb
├── production.rb
├── staging.rb
└── test.rb
```

Tests
-----

Testing is done with Rspec. Run the tests like so:

    $ bin/rspec spec/

Aliases
-------

Consider adding the following to your `.bashrc` or `.zshrc` file:

```sh
mm='bundle exec middleman'
mmb='bundle exec middleman build --clean'
mmc='bundle exec middleman console -e console'
mms='bundle exec middleman server'
```

Deployment
----------

getbiblefirst.com is currently deployed on Amazon S3. [Detailed instructions][aws-s3-deployment] are available from Amazon.

**BONUS: If you deploy with Amazon, you can get a [free ssl certificate][aws-cert-manager] for your site!**

Legal
-----

Bible First is a registered trademark of [Euro Team Outreach, Inc.][eto]

Copyright &copy; 2017 Euro Team Outreach, Inc. Software is licensed under [MIT][license].

[travis-svg]: https://travis-ci.org/euroteamoutreach/getbiblefirst.com.svg?branch=master
[travis]: https://travis-ci.org/euroteamoutreach/getbiblefirst.com
[biblefirst]: https://getbiblefirst.com/
[eto]: https://euroteamoutreach.org/
[screenshot]: http://d3lyzr3q25n7t0.cloudfront.net/getbiblefirst-com-screenshot-2016.jpg
[middleman]: https://middlemanapp.com/
[middleman-docs]: https://middlemanapp.com/basics/install/
[rbenv]: https://github.com/rbenv/rbenv#readme
[nvm]: https://github.com/creationix/nvm#readme
[gulp-cli]: https://github.com/gulpjs/gulp/blob/master/docs/getting-started.md#getting-started
[gulp]: http://gulpjs.com/
[external-pipeline]: https://middlemanapp.com/advanced/external-pipeline/
[aws-s3-deployment]: http://docs.aws.amazon.com/gettingstarted/latest/swh/website-hosting-intro.html
[aws-cert-manager]: https://aws.amazon.com/blogs/aws/new-aws-certificate-manager-deploy-ssltls-based-apps-on-aws/
[license]: https://github.com/euroteamoutreach/getbiblefirst.com/blob/master/LICENSE
