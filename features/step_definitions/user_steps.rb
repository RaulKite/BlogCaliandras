Given /^there is a User$/ do
  create(:user)
end

Given /^the User has posted an article titled "(.*?)"$/ do |arg1|
  User.count.should == 1
  create(:article, :title => arg1, :user => User.first)
end

When /^I visit the page "(.*?)"$/ do |arg1|
  visit(blog_index_path)
end

Then /^I should see "(.*?)"$/ do |arg1|
  page.should have_content(arg1)
end

Given /^the User has posted an article with content "(.*?)" titled "(.*?)"$/ do |arg1, arg2|
  User.count.should == 1
  create(:article, :title => arg1, :user => User.first, :content => arg2)
end


