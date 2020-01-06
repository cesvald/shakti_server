class HomePostsController < ApplicationController
  
  def index
    home_header_ids = Post.by_kind(:home_header).pluck(:id)
    meditation_ids = Post.by_kind(:meditation).first(10).pluck(:id)
    emanation_ids = Post.by_kind(:emanation).first(10).pluck(:id)
    article_ids = Post.by_kind(:article).first(10).pluck(:id)
    post_ids = home_header_ids + meditation_ids + emanation_ids + article_ids
    @posts = Post.where(id: post_ids).order(post_on: :desc)
    render "posts/index.json.jbuilder"
  end
      
end
