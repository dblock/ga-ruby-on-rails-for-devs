# Ruby on Rails for Developers

<img src="images/ruby.png" align="right">

This course teaches experienced developers [Ruby](http://www.ruby-lang.org) and [Ruby on Rails](http://rubyonrails.org/). While you can use it to learn Ruby on your own (especially [Ruby Basics](lectures/02-ruby-basics/README.md)), the material is designed to be taught by a practicing rubyist and a teaching assistant. Both individuals should have expert understanding of Ruby, Rack and Ruby on Rails. The ideal class size is 12-15 students, each having prior application development track record. The lesson plan is conceived as 12 two-hour lectures with homework given after each of the first 6 courses. The original material tracked assignments in [Pivotal Tracker](http://pivotaltracker.com), but GitHub issues work as well. Subsequent 6 lectures alternate class material with coding. The course ends with 8 hours of building a final project for obtaining certification.

## Class Material

We begin by introducing students to the Ruby development environment and show elementary Ruby code. Students also learn how to use Git and exercise the development workflow via [GitHub](http://github.com), including pull requests and topic branches. We dive into Ruby basics and conclude with object-oriented features, mixins and exception handling.

After the class gains enough familiarity with the language features, we teach [Rack](http://rack.github.com/), an essential foundation of any solid Ruby on Rails knowledge. The instructor builds a basic web application that serves static files from the file system with Rack. A Rails application is then assembled from scratch without the use of Rails generators. Tests are written with the default unit test infrastructure, and once again using behavior-driven development with [RSpec](http://rspec.info/). The application is deployed on [Heroku](http://www.heroku.com/), but any other application provider will do.

We step aside to teach Ruby meta-programming before lecturing on ActiveRecord, ERB, HAML and SASS. The instructor then builds authentication without using an off-the-shelf library. This combination of technologies gives the students the necessary tools to build a complete project, which is typically introduced around the 6th lecture. When this material was developed we asked the students to build a Ruby on Rails clone of the popular [Stashboard](https://web.archive.org/web/20120424022711/http://www.stashboard.org/) application.

Final lectures include RESTful APIs with Rails and [Grape](https://github.com/ruby-grape/grape), and an introduction to NoSQL databases with [MongoDB](http://mongodb.org). We also recommend you offer students an opportunity to revisit any topic that was insufficiently clear or lecture on a topic that they are curious about.

* [Introduction: Getting Started](lectures/00-getting-started/README.md)
* [Lecture 1: Developer Workflow](lectures/01-developer-workflow/README.md)
* [Lecture 2: Ruby Basics](lectures/02-ruby-basics/README.md)
* [Lecture 3: Rack](lectures/03-rack/README.md)
* [Lecture 4: Rails MVC](lectures/04-rails-mvc/README.md)
* [Lecture 5: RSpec](lectures/05-rspec/README.md)
* [Lecture 6: Ruby Meta-Programming](lectures/06-ruby-meta-programming/README.md)
* [Lecture 7: ActiveRecord](lectures/07-active-record/README.md)
* [Lecture 8: Rendering in Rails](lectures/08-erb-haml-sass/README.md)
* [Lecture 9: Authentication](lectures/09-authentication/README.md)
* [Lecture 10: RESTful API](lectures/10-restful-api/README.md)
* [Lecture 11: NoSQL with MongoDB](lectures/11-nosql-with-mongodb/README.md)
* [Lecture 12: Caching](lectures/12-caching/README.md)

## Exercises

* [Exercises](class)

## Contributing

The course has gotten somewhat dated since it was authored in 2012. It has been lightly modernized in 2025, but we would love your help with any further updates. Fork the project. Make your addition or correction. Send a pull request. Bonus points for topic branches.

## License

This course is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-sa/4.0/). It may be reused and adapted for any purpose as long as you properly attribute the original content.

![Creative Commons Attribution-ShareAlike 4.0 International License](https://licensebuttons.net/l/by-sa/4.0/88x31.png "Creative Commons Attribution-ShareAlike 4.0 International License")

## Copyright

(c) 2012-2025 [GeneralAssemb.ly](https://generalassemb.ly/ruby-on-rails-for-devs), [Daniel Doubrovkine](http://github.com/dblock) and [contributors](CONTRIBUTORS.md).

