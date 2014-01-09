Capybara DSL & Providers
========================

By default, Capybara simulates a browser, but doesn't actually run the JavaScript. Let's use a real browser that does run the JavaScript.

Convert login form to be inline and use JavaScript?

Exercises
---------

1. Convert post creation to inline form using JavaScript, with tests
2. Add "poltergeist" to Gemfile
3. Add `Capybara.javascript_driver = :poltergeist` to test_helper.rb
4. Update the Capybara test for logging a user in and creating a new post
5. Convert comment creation to inline form using JavaScript, with tests

Optional
--------

Capybara Spec DSL!
