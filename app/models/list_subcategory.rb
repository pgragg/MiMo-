class ListSubcategory < ActiveRecord::Base
  belongs_to :list_category
  has_many :items 
end
