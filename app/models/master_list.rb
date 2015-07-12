class MasterList < ActiveRecord::Base
  has_many :list_categories
  has_one :group


  CATEGORIES = { 
    "Entrance Area" => %w[Welcome_Mat Small_Area_Rug Wall_Hooks Small_Table Lamp], 
    "Living Room" => %w[Couch Chairs Coffee_table Bookshelves Television TV_stand Throw_Pillows artwork lamps], 
    "Kitchen" => %w[Silverware Plates Glasses Mugs Bowls Trash_Can Pots Pans Oven_mitts], 
    "Bathroom" => %w[Shower_Curtain Shower_Caddy Toothbrush Toiletries Toilet_Paper Plunger Tissues Trash_can Towel_hook] 
  }


  # def list_categories 
  #   categories = ListCategories.where("master_list_id = ?", self.id)
  # end 

end