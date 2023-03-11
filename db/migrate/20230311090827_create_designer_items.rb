class CreateDesignerItems < ActiveRecord::Migration[7.0]
  def change
    create_table :designer_items do |t|
      t.references :designer_model, null: false, foreign_key: true
      t.string :name
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
