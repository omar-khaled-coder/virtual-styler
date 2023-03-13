class CreateDesigners < ActiveRecord::Migration[7.0]
  def change
    create_table :designers do |t|
      t.text :bio
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
