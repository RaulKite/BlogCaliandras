class Article < ActiveRecord::Base
  attr_accessible :title, :user, :content
  validates_presence_of :title, :user, :content
  belongs_to :user
end
