class Track < ActiveRecord::Base
  belongs_to :user, :class_name => "User", :foreign_key => "author_id", :primary_key => "id"
  has_many :factors
  has_many :rules
end
