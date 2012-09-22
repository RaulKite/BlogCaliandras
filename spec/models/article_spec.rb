require 'spec_helper'

describe Article do

  before(:each) do
    @article = Article.new(
      :title => "Test Article", 
      :user => mock_model("User"),
      :content => "Test content"
      )
  end

  it "is valid with valid attributes" do
    @article.should be_valid
  end

  it "is not valid without a title" do
    @article.title = nil
    @article.should_not be_valid
  end

  it "is not valid without an user" do
    @article.user = nil
    @article.should_not be_valid
  end

  it "is not valid without content" do
    @article.content = nil
    @article.should_not be_valid
  end

end
