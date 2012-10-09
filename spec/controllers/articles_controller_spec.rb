require 'spec_helper'

describe ArticlesController do
  include Devise::TestHelpers

  before(:each) do
    @user = FactoryGirl.create(:user)
    sign_in(@user)
  end

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end


  describe "POST create" do 
    it "should create a new article entry" do
      post :create, :article => { :title => "Titulo", :content => "Contenido", :user => @user_id }
      assigns[:article].title.should == "Titulo"
      assigns[:article].content.should == "Contenido"
    end
  end



end
