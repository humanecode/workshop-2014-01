class GroupsController < ApplicationController
  def index
    @groups = Standup.new.groups
  end

  def show
    standup = Standup.new
    @group = standup.find_group params[:id]
    @day = Date.today
    @prev = @day.prev_day
    @next = @day.next_day
    @posts = standup.posts_for @group, @day
    render "days/show"
  end
end
