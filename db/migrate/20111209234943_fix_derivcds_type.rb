class FixDerivcdsType < ActiveRecord::Migration
  def change 
    remove_column :deriv_cds, :Deriv_Desc
    add_column :deriv_cds, :Deriv_Desc, :text
  end
  
end
