class CreateBluepanCities < ActiveRecord::Migration
  def change
    create_table :bluepan_cities do |t|
      t.integer :external_id
      t.string :name_en
      t.string :name_cn
      t.references :province
    end
    add_index :bluepan_cities, :external_id
  end
end
