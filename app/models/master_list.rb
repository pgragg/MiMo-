class MasterList < ActiveRecord::Base
  has_many :items, through: :list_categories
  has_many :list_categories
  has_one :group


  CATEGORIES = { 
    "Entrance Area" => %w[Welcome_mat Small_area_rug Wall_hooks Small_table Lamp], 
    "Living Room" => %w[Couch chairs Coffee_table Bookshelves Television TV_stand throw_pillows artwork lamps], 
    "Kitchen" => %w[Silverware plates glasses mugs bowls trash_can pots pans oven_mitts], 
    "Bathroom" => %w[Shower_curtain Shower_caddy Toothbrush Toiletries Toilet_paper Plunger Tissues Trash_can Towel_hook] 
  }


  # def list_categories 
  #   categories = ListCategories.where("master_list_id = ?", self.id)
  # end 

end