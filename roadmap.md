
TODO: 
1.) Roommates can quickly and easily list what they already have.
2.) MiMo compiles a shopping cart of necessary items (Amazon API) based on group budget
3.) MiMo will be delay sending the order if necessary so that the items can be delivered to the new apartment on a specified day. 
4.) Upon moving out, roommates can use MiMo to bid on household items that they want to take with them. 
5.) MiMo will use each roommate's preferences to draw up a sheet of who pays what to whom, and who gets the nice couch. 

Models: 


#User:
has_many :items
has_many :requests, dependent: :destroy (like a lunch_choice)
belongs_to :group 

budget:integer first_name:string last_name:string address_from:string address_to:string 

#Request 
belongs_to :user
belongs_to :item 


#Group
has_many :users  
has_many :items, through: :users 
has_one :list 

move_date:date 
name:string 

#Item:
belongs_to :user
belongs_to :group, through: :users 
belongs_to :list 

name:string 



#MasterList 
has_many :items, through: :list_categories


#ListCategories eg. "sofa"
belongs_to :master_list 
has_many :items, through: :list_subcategories 

name:string

#ListSubcategories 
belongs_to :list_category
has_many :items 

name:string

<li class= "col-md-4"> <%= link_to "Input Items", master_list(@group.list) %> </li> 


