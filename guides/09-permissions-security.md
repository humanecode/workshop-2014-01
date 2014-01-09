Permissions and Security
========================

We have a working app! Except it doesn't work all the time...

Let's turn on our Critical QA mind!

* Missing Business Logic:
** `Standup#find_group` `Standup#find_post`
** `Standup#empty_post` `Standup#empty_coment`
* What about editing a post?
* Demo "New Post" issues (not logged in, already have a post)
* Write a failing test for errors, and then fix

Questions
---------

* Is it the Core Application's job to enforce who can post or edit? (Web vs. Admin?)
* Can a User with Administrator privileges edit on this UI? Or through an Admin UI?

ActionView::TestCase
--------------------

* Just the thing to test helpers!

* `assert_template`
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

Exercises
---------

* Only Group members can create posts (Should Domain enforce this?)
* Only Group members without post on day should see "New Post" link
* only post authors can edit the post and see "Edit Post" link
* Only logged in users should see "New Comment"

Create the following helper methods using TDD:

1. `PermissionsHelper#can_create_post?(user, group)`
2. `PermissionsHelper#can_edit_post?(user, post)`
3. `PermissionsHelper#can_create_comment?(user, post)`
