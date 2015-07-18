class ListCategory < ActiveRecord::Base
  belongs_to :master_list 
  has_many :list_subcategories, dependent: :destroy 

end
