Welcome!
========

  	$ ruby -v
    ruby 2.0.0p353 (2013-11-22 revision 43784) [x86_64-darwin13.0.0]

  	$ rails -v
    Rails 4.0.2

  	$ rails new daily_standup
  	$ cd daily_standup
  	$ subl .

or...

    $ git clone git@github.com:humanecode/workshop-2013-12.git

or...

    $ git clone https://github.com/humanecode/workshop-2013-12.git

What is a test?
---------------

    require "minitest/autorun"

    class HelloWorld
      def greet
        "Hello world!"
      end
    end

    class HelloWorldTest < MiniTest::Unit::TestCase
      def test_greeting
        assert_equal "Hello world!", HelloWorld.new.greet
      end
    end

How do we run the test?
-----------------------

    $ ruby test/getting_started/test_hello_world.rb
    Run options: --seed 4890

    # Running tests:

    .

    Finished tests in 0.000427s, 2341.9204 tests/s, 2341.9204 assertions/s.

    1 tests, 1 assertions, 0 failures, 0 errors, 0 skips

Test Class
----------

Test Method
-----------

Helper Methods
--------------

* `setup`
* `teardown`

Assertions
----------

* `assert_empty`
* `assert_equal`
* `assert_in_delta`
* `assert_in_epsilon`
* `assert_includes`
* `assert_instance_of`
* `assert_kind_of`
* `assert_match`
* `assert_nil`
* `assert_operator`
* `assert_output`
* `assert_predicate`
* `assert_raises`
* `assert_respond_to`
* `assert_same`
* `assert_send`
* `assert_silent`
* `assert_throws`

And `refute`!

Exercises
---------

Create a new TestArithmetic file (test/getting_started/test_arithmetic.rb)

Create test methods for:

1. `test_one_plus_one_is_two` assert_equal
2. `test_one_plus_one_isnt_zero` refute_equal
3. `test_one_divided_by_zero_float_is_infinity` assert_equal
4. `test_one_divided_by_zero_int_raises` assert_raises Something do
