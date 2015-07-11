class MasterList < ActiveRecord::Base
  has_many :items, through: :list_categories
end
