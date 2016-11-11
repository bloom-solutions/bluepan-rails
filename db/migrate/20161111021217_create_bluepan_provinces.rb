class CreateBluepanProvinces < ActiveRecord::Migration
  def change
    create_table :bluepan_provinces do |t|
      t.integer :external_id
      t.string :name_en
      t.string :name_cn

      t.timestamps null: false
    end

    add_index :bluepan_provinces, :external_id
  end
end
