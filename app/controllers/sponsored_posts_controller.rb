class SponsoredPostsController < ApplicationController
  def index
    @topic = Topic.all
    @sponsored_post = SponsoredPost.all
  end
  def show
    @topic = Topic.find(params[:topic_id])
    @sponsored_post = SponsoredPost.find(params[:id])
  end

  def new
    @topic = Topic.find(params[:topic_id])
    @sponsored_post = SponsoredPost.new
  end

  def edit
    @topic = Topic.find(params[:topic_id])
    @sponsored_post = SponsoredPost.find(params[:id])
  end
end
