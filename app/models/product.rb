class Product < ActiveRecord::Base
  belongs_to :category
   attr_accessible :name, :price , :info ,:quantity,:image
   
   validates(:name, :presence => true)
   validates(:price, :presence => true)
   validates(:quantity, :presence => true)
   
  def get_image
    return image || 'default.jpg'
  end
  
  def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end
  
end
