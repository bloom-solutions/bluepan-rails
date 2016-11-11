class CreateBluepanRailsProvinces < ActiveRecord::Migration
  def change
    create_table :bluepan_rails_provinces do |t|
      t.integer :external_id
      t.string :name_en
      t.string :name_cn

      t.timestamps null: false
    end

    add_index :bluepan_rails_provinces, :external_id
  end
end
