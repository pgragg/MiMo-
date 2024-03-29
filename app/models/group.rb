class Group < ActiveRecord::Base
  
  has_many :users  
  has_one :master_list, dependent: :destroy 
  

  def budget
    budget = 0 
    self.users.each do |user| 
      unless user.budget == nil 
       budget += user.budget
      end 
    end 
    budget 
  end 

  # def users 
  #   User.where("group_id = ?", self.id)
  # end 

  def self.search(prop1, search1, prop2, search2)
    if search1 != '' && search2 != ''
      sub = self.where("#{prop1} = ?", "#{search1}")
      sub.where("#{prop2} LIKE ?", "#{search2}")
    else 
      nil
    end
  end
end
