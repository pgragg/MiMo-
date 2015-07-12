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

  def self.search(prop1, search1, prop2, search2)
    if search1 != '' && search2 != ''
      sub = self.where("#{prop1} = ?", "#{search1}")
      sub.where("#{prop2} LIKE ?", "#{search2}")
    else 
      nil
    end
  end
end
