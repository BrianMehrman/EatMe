class User < ActiveRecord::Base
  has_secure_password
  has_many :meals
  has_many :trackings

  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  validates_uniqueness_of :email
  validates_presence_of :email


  def foods
    FoodDes.where(["\"user_id\" = ?", self.id])
  end
end
