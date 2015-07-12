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
    @group.email = current_user.email 
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
    # @group = Group.all.search("email", params[:group_email],"zip_code", params[:zip_code])
    @group = Group.all.where("email = ?", "#{params[:group_email]}").where("zip_code = ?", "#{params[:zip_code]}")

    if @group.first

      current_user.group_id = @group.first.id 
      redirect_to :back
      flash[:notice] = "You have joined a group. You are a team player."
    else 
      redirect_to :back 
      flash[:error] = "Returns #{@group.count} groups associated with #{params[:group_email]} and #{params[:zip_code]}"
    end

  end 

  def find 
    
  end 

  def show 
  end 

  private 

  def group_params 
    params.require(:group).permit(:name, :move_date, :address, :zip_code)
  end 
end
