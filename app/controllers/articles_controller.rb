class ArticlesController < ApplicationController


before_filter :authenticate_user!

  def new
     @article = Article.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @article }
    end
  end

  def create
    @article= Article.new(params[:article])
    @article.user = current_user

    respond_to do |format|
      if @article.save
        format.html { redirect_to blog_index_path, notice: 'Article was successfully created.' }
        format.json { render json: @article, status: :created, location: @article}
      else
        format.html { render action: "new" }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end

  end

end
