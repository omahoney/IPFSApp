class AddHashToWorks < ActiveRecord::Migration
  def change
    add_column :works, :ipfshash, :string
  end
end
