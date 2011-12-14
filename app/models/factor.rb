class Factor < ActiveRecord::Base
  belongs_to :factoree, :polymorphic => true
  belongs_to :track
end
