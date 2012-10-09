require 'spec_helper'
require 'requests_helper'

describe "articles/new.html.erb" do
  it "should get new article page" do
    @user = FactoryGirl.create(:user)
    @article = FactoryGirl.build(:article, user: @user)

    visit root_path
    login(@user)
    render 
    #rendered.should =~ /New Article/i
    #rendered.should =~ /Title/i
    #rendered.should =~ /Content/i
    #rendered.should =~ /Save/i
  end
end

