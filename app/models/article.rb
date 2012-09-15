class Article < ActiveRecord::Base
  attr_accessible :title, :user
  validates_presence_of :title, :user
  belongs_to :user
end
