Test Data & Fixtures
====================

Daily Standup App
-----------------

(whiteboard - describe app, show screens and model diagrams (balsamiq?!?!))

* Create TODO list for features

Update TODO
-----------

    - [ ] users can authenticate with their password
    - [ ] browse through all the groups of users in the system
    - [ ] show a group's posts for a given day
    - [ ] allow a group member to post their daily standup for a given day
    - [ ] allow users to see comments for a post
    - [ ] allow users to comment on a post
    - [ ] group can control who can see group, post to group, comment on posts

(let's skip ahead and not use tdd for this section)

    $ rails g model group name
    $ rails g model membership group_id:integer user_id:integer
    $ rails g model post group_id:integer user_id:integer date:date body:text
    $ rails g model comment post_id:integer user_id:integer body:text

Sexy Migrations
---------------

* Use `references`

Foxy Fixtures
-------------

* Use names for references

Keep simple test data set, adjust or create specific edge cases in test setup.

No more than 12 records in a fixture, try for 3-7.

Exercises
---------

Create fixtures for the following models, adding AR associations as needed:

1. 3 Group fixtures
2. 7 User fixtures
3. 9 Membership fixtures (5 Users in one Group, 4 Users on another Group - there will be overlap)
3. 12 Post fixtures
4. 8 Comment fixtures (5 on one Post, 3 on another Post)

Load the fixtures into your development database using the following rake task:

1. `rake db:fixtures:load`
