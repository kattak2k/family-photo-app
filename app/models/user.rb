class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, 
         :confirmable,   #Ins Katta
         :recoverable, :rememberable, :trackable, :validatable
  #Ins Start Katta       
  has_one :payment
  #By default nested attribute updating is turned off and you can enable it using the #accepts_nested_attributes_for class method
  accepts_nested_attributes_for :payment  
  #Ins End Katta
end

