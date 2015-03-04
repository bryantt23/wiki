class Article < ActiveRecord::Base
  
  belongs_to :user 
  # , dependent_on
  
  has_many :categories
  
end
