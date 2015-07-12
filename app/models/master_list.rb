class MasterList < ActiveRecord::Base
  has_many :list_categories
  has_one :group


  CATEGORIES = { 
    "Entrance Area" => ['Welcome Mat', 'Small Area Rug', 'Wall Hooks', 'Table Lamp'], 
    "Living Room" => %w[Couch Chairs Table Bookshelf Television Stand Pillows Art Lamp], 
    "Kitchen" => %w[Silverware Plates Glasses Mugs Bowls Trash_Can Pots Pans Oven_mitts], 
    "Bathroom" => ['shower curtain', 'shower caddy', "Toothbrush", "Toiletries", "Toilet Paper", "Plunger", "Tissues", "Trash"] 
  }


  # def list_categories 
  #   categories = ListCategories.where("master_list_id = ?", self.id)
  # end 

end