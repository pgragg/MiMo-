class MasterList < ActiveRecord::Base
  has_many :list_categories, dependent: :destroy 
  has_one :group


  CATEGORIES = { 
    "Entrance Area" => ['Mat', 'Rug', 'Hooks', 'Entrance Table'], 
    "Living Room" => %w[Couch Chairs Bookshelf Television Stand Pillows Art Lamp], 
    "Kitchen" => %w[Silverware Plates Glasses Mugs Bowls Trashcan Pots Pans], 
    "Bathroom" => ['Curtain', 'Caddy', "Toothbrush", "Toiletries", "Toilet Paper", "Plunger", "Tissues", "Trash"] 
  }


  # def list_categories 
  #   categories = ListCategories.where("master_list_id = ?", self.id)
  # end 

end