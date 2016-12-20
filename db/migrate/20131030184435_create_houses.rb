class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |h|
      h.string :name, null: false
      h.string :img_url

      h.timestamps
    end
  end
end
