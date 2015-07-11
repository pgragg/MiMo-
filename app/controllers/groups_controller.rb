class GroupsController < ApplicationController

  before_action :authenticate_user!
  def index 
    @group = current_user.groups.first
    @group_members = @group.users if @group
  end 
  def new 
    @group = Group.new 
  end 
  def create 
    @group = current_user.groups.create(group_params)
    @group.users << current_user
    @group.save! 
    if @group.save
     flash[:notice] = "You have created a group. You are a trailblazer."
     redirect_to groups_path
    else
     flash[:error] = "You failed to fill out the form correctly."
     redirect_to :new
    end
  end 

  def destroy 
    @group = Group.find(params[:id])
    @group.delete
    redirect_to groups_path
  end 

  def join 
    @group = Group.all.where("name = ?", "#{params[:search][:name]}").where("zip_code = ?", "#{params[:search][:zip_code]}")
    @group.users << current_user 
  end 

  private 

  def group_params 
    params.require(:group).permit(:name, :move_date, :address, :zip_code)
  end 
end
