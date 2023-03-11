class CreateDesignerModels < ActiveRecord::Migration[7.0]
  def change
    create_table :designer_models do |t|
      t.references :booking, null: false, foreign_key: true
      t.references :designer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
