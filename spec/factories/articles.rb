
FactoryGirl.define do
  factory :article do
    association :user, :factory => :user
    title "MyString"
    content "MyContent"
  end


end
