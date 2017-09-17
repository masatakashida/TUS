class PostsController < ApplicationController

  def index
  	@posts = Post.all
  end

  def new
  	@post = Post.new
  end

  def show
  	#@post = Post.find()
  end

  def edit
  	#
  end
  
end
