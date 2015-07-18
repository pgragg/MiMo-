class ListSubcategoriesController < ApplicationController


  def list_subcategories 
    @group = current_user.groups.last
    list_subcategories = []
    @group.users.each do |user| 
      list_subcategories << ListSubcategory.all.where("user_id = ?", user.id)
    end 
    list_subcategories
  end 

  def index 
    @list_subcategories = list_subcategories.first
  end 


  

end
