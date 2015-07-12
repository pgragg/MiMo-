class MasterList < ActiveRecord::Base
  has_many :list_categories
  has_one :group


  CATEGORIES = { 
    "Entrance Area" => ['Mat', 'Rug', 'Hooks', 'Table'], 
    "Living Room" => %w[Couch Chairs Table Bookshelf Television Stand Pillows Art Lamp], 
    "Kitchen" => %w[Silverware Plates Glasses Mugs Bowls Trashcan Pots Pans], 
    "Bathroom" => ['Curtain', 'Caddy', "Toothbrush", "Toiletries", "Toilet Paper", "Plunger", "Tissues", "Trash"] 
  }


  # def list_categories 
  #   categories = ListCategories.where("master_list_id = ?", self.id)
  # end 

end