class CreateDesigners < ActiveRecord::Migration[7.0]
  def change
    create_table :designers do |t|
      t.string :first_name
      t.string :last_name
      t.text :bio

      t.timestamps
    end
  end
end
