Domain Logic
============

Revisit hexegonal architexture, which logic is core, and which is only in presentation?

Groups and Users
* what groups exist?
* what users belong to a group?
* is user a member of this group?
* adding a user to a group
* removing a user from a group
* can this user be added to this group?
* can this user be removed from this group?

Posts and Comments
* what are the posts for this group on this date?
* is there a post for this user on this group on this date?
* add a post for this user on this group on this date
* add a comment for this user on this post
* can a post be added for this user on this group on this date?
* can a comment be added for this user on this post?

Drive the design by demonstrating need for functionality with tests.

Tests are the first consumer of the domain.

Focus on exposing the API we want to support, hiding AR as much as we can.

Exercises
---------

Instead of adding methods to Group and User, let's create a new model Standup, and add the following logic to it using TDD:

1. `groups`
2. `users_for(group)`
3. `is_member_of?(group, user)`
4. `add_user_to(group, user)`
5. `remove_user_from(group, user)`
6. `posts_for(group, date)`
7. `post_for(group, user, date)`
8. `add_post(group, user, date, body)`
9. `comments_for(post)`
10. `add_comment(post, user, body)`
