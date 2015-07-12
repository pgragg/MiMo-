class ListCategory < ActiveRecord::Base
  belongs_to :master_list 
  has_many :items, through: :list_subcategories 
  has_many :list_subcategories

end
