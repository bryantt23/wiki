class Article < ActiveRecord::Base
  
  belongs_to :user 
  # , dependent_on
end
