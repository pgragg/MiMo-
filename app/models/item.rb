class Item < ActiveRecord::Base
  belongs_to :user
  belongs_to :group, through: :users 
  belongs_to :list 
end
