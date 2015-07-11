class Group < ActiveRecord::Base
  has_many :users  
  has_many :items, through: :users 
  has_one :list 
  

  def budget 
    budget = 0 
    self.users.each do |user| 
      budget += user.budget if user.budget 
    end 
    budget 
  end 
end
