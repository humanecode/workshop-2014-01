Controller Tests
================

So far we have focused on the domain models. We haven't built any UI. Let's move out away from the domain and into the presentation tier.

What is the purpose of controller tests?
----------------------------------------

unit vs. integration vs. acceptance

ROI of each test type, cost curves over time

Which is a controller test?

Freedom to implement since we already have the domain API

Controller responsibilities
---------------------------

* authentication
* authorization
* talk http
* manipulate model
* manipulate database
* query database
* present models
* manipulate view context (flash)
* create response content (json)
* route (redirect_to)
* choose content-type
* contain model logic

(from https://www.youtube.com/watch?v=iUe6tacW3JE&t=6m33s)

ActionController::TestCase Assertions
-------------------------------------

* `assert_tag`
* `assert_no_tag`
* `assert_select`
* `assert_select_encoded`
* `assert_select_email`
* `assert_recognizes`
* `assert_generates`
* `assert_routing`
* `assert_response`
* `assert_redirected_to`
* `assert_dom_equal`
* `assert_dom_not_equal`
* `assert_template`

But what is most useful for a controller test to tell us?

Exercises
---------

Create Groups and Days controllers, with Days nested under Groups. Using test data from fixtures, write the following tests and make them pass:

1. `HomepageControllerTest#test_index` (shows groups)
2. `GroupsControllerTest#test_show` (shows days for group)
3. `DaysControllerTest#test_show` (shows posts for group/day)
