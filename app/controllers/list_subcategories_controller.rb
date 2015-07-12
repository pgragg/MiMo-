class ListSubcategoriesController < ApplicationController

  def index 
    @list_subcategories = ListSubcategory.all.where("user_id = ?", 0)
  end 

end
