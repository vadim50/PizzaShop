class AggProducts < ActiveRecord::Migration[5.0]
  def change
  	Product.create :title => 'Hawaiian', :description => 'This is Hawaiian pizza',:price => 350,:size => 30, :is_spicy => false,:is_veg => false, :is_best_offer => false, :path_to_image => '/images/hawaiiian.jpg'
  	

  	Product.create :title => 'Pepperoni2', :description => 'This is Pepperoni pizza',:price => 450,:size => 30, :is_spicy => false,:is_veg => false, :is_best_offer => true, :path_to_image => '/images/pepperoni.jpg'
  	
  	
  	
  	Product.create :title => 'Vegetable', :description => 'This is Vegetable pizza',:price => 400,:size => 30, :is_spicy => false,:is_veg => false, :is_best_offer => false, :path_to_image => '/images/veg.jpg'
  	

  end
end
