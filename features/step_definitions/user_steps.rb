Given /^there is a User$/ do
  create(:user)
end

Given /^the User has posted an article titled "(.*?)"$/ do |arg1|
  User.count.should == 1
  create(:article, :title => arg1, :user => User.first)
end

When /^I visit the index blog page$/ do 
  visit(blog_index_path)
end

When /^I visit the page "(.*?)"$/ do |page_name|
  visit(path_to(page_name))
end


Then /^I should see "(.*?)"$/ do |arg1|
  page.should have_content(arg1)
end

Given /^the User has posted an article with content "(.*?)" titled "(.*?)"$/ do |arg1, arg2|
  User.count.should == 1
  create(:article, :title => arg1, :user => User.first, :content => arg2)
end

Given /^I am not authenticated$/ do
  visit('/users/sign_out') # ensure that at least
end

Given /^I am a new, authenticated user$/ do
  email = 'testing@man.net'
  password = 'secretpass'
  User.new(:email => email, :password => password, :password_confirmation => password).save!

  visit '/users/sign_in'
  fill_in "user_email", :with=>email
  fill_in "user_password", :with=>password
  click_button "Sign in"

end


When /^I fill the field "(.*?)" with "(.*?)"$/ do |arg1, arg2|
  fill_in arg1, :with=> arg2
end

When /^I click "(.*?)" button$/ do |arg1|
  click_button arg1
end

