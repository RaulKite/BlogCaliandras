class BlogController < ApplicationController
  
  def index
  	@articles = Article.find(:all)
  end
end
