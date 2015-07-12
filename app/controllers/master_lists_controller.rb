class MasterListsController < ApplicationController
  def new 
    @master_list = MasterList.new
  end 
  
  def create 
    @group = Group.find(params[:format])
    @group.master_list ||= MasterList.create
    @master_list = @group.master_list
      # @master_list = @group.master_list.create
    MasterList::CATEGORIES.each do |category, values| 
      cat = @master_list.list_categories.create(name: "#{category}")
      values.each do |value| 
        ListSubcategory.create(name: "#{value}", list_category_id: cat.id)
      end 
      cat.save!
    end 
    @group.master_list.save! 
    redirect_to group_master_list_path(@group, @master_list)
  end 
#   hash.each do |key, array|
#   puts "#{key}-----"
#   puts array
# end

  def edit 

  end 

  def update 

  end 

  def show 
    @group = Group.find(params[:group_id])
    @master_list = MasterList.find(params[:id])
  end 

end
