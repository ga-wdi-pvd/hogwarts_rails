class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |f|
      f.string :name, null: false
      f.string :img_url
      f.references :house, null: false, index:true

      f.timestamps
    end
  end
end
