class TopicsController < ApplicationController
  before_action :set_side_bar_topics
  layout 'blog'

  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])

    if logged_in?(:site_admin)
      @blogs = @topic.blogs.sort_by_recent.page(params[:page]).per(5)
    else
      @blogs = @topic.blogs.sort_by_recent.published.page(params[:page]).per(5)
    end
  end

  private 

  def set_side_bar_topics
    @side_bar_topics = Topic.with_blogs
  end
end
