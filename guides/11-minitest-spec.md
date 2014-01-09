Minitest's Spec DSL
===================

In your Gemfile:

    gem "minitest-rails"
    
In your `test/test_helper.rb`:

    require "minitest/rails"

In your test:

    describe GroupsHelper do                  -> class GroupsHelperTest < ActionView::TestCase
                                              ->                                              
      let(:current_user) do                   ->   def current_user                           
        users :mike                           ->     users :mike                              
      end                                     ->   end                                        
                                              ->                                              
      before do                               ->   def setup                                  
        @group = groups :payroll              ->     @group = groups :payroll                 
      end                                     ->   end                                        
                                              ->                                              
      it "is_member?" do                      ->   def test_is_member?                        
        assert @group.is_member? current_user ->     assert @group.is_member? current_user    
        assert is_member?                     ->     assert is_member?                        
      end                                     ->   end                                        
                                              ->                                              
    end                                       -> end                                          

Nested "context" vs. Separate Tests
-----------------------------------

`class PostsControllerOwnerTest` vs. `describe PostsController, :member do`

Exercises
---------

Choose a controller test and convert it to the spec DSL. Experiment with nested describes vs. separate tests in a directory (ala PostsController).
