class RemoveHouseIdFromStudent < ActiveRecord::Migration[5.0]
  def change
     remove_column :house_id, :integer
     
  end
end
