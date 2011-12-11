class Track < ActiveRecord::Base
  belongs_to :user, :class_name => "User", :foreign_key => "author_id", :primary_key => "id"
end
