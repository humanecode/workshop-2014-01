Posts and Comments
==================

We are able to display posts on a group/day by using only methods from Standup.

    standup = Standup.new
    group = standup.groups.find params[:group_id]
    day = Date.parse params[:day_id]
    post = standup.posts_for group, day

Exercises
---------

Create Posts controller, nested under Days controller. Add link to posts#new from days#show template. Using test data from fixtures, write the following tests and make them pass:

1. `PostsControllerTest#test_show` (shows post)
2. `PostsControllerTest#test_new`
3. `PostsControllerTest#test_create`

Create Comments controller, nested under Posts controller. Show comments on posts#new template. Add link to comments#new from posts#show template. Using test data from fixtures, write the following tests and make them pass:

1. `PostsControllerTest#test_show` (shows comments)
2. `CommentsControllerTest#test_new`
3. `CommentsControllerTest#test_create`

Optional
--------

Cleanup! Now that we have our controllers, how do we refactor and remove the duplication in our controllers and make them pretty?
