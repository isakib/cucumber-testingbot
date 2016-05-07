
Introduction
-----
If you're using cucumber framework for test automation, by integrating testingbot -- easily you can cover or request multiple browser test execution in cloud. 

Setup
-----
Install ruby. 

And then install gems by the following command.
```bash
bundle install
```
Run cucumber by,
```bash
cucumber
```

Directory structure
-------------------
```
.
├── features
│   ├── *.feature
│   └── step_definitions
│       └── *_steps.rb
└── lib
    └── cucumber_helper.rb
```

Features
--------
Create features in features directory, with the extension of `feature`.

Step definitions
----------------
Create step definitions in the `step_definitions` directory.
A sample step definition is given with the project.

Configuration
-------------
You can configure the capybara options in cucumber_helper.rb.
Change `Capybara.app_host` to run the same test in different host.

Others
-------------
To generate report by using cucumber
```cucumber features --format html --out reports```

To run specific scenario from a feature
```cucumber features/social_auto_posting.feature --tags @active```

To skip/ignore specific scenario with tags
```cucumber features/social_auto_posting.feature --tags ~@wip or ~@todo```

To run only failed scenario by using cucumber
```cucumber features/social_direct_posting.feature --tags ~@wip -f rerun --out rerun.txt```
   and it will create rerun.txt file. Execute by following this way
```cucumber @rerun.txt```

References
----------
* [Cucumber](https://github.com/cucumber/cucumber/wiki)
* [Capybara](https://github.com/jnicklas/capybara)
* [Capybara-Webkit] (https://github.com/thoughtbot/capybara-webkit)
* [Ruby Installation](http://gorails.com/setup/osx/10.10-yosemite)
* [Support or Officla Link](https://docs.omniref.com/ruby/gems/testingbot/0.0.9/files/examples/cucumber/features/support/env.rb)
* [Testingbot Selenium Capybara](https://blog.testingbot.com/2012/02/19/selenium-cucumber-capybara)
* [Browser Coverage By Testingbot](https://testingbot.com/support/getting-started/browsers.html)
* [Browser Execution Request in Code](http://elementalselenium.com/tips/26-cloud)