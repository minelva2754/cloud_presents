class CreatePresents < ActiveRecord::Migration
  def change
    create_table :presents do |t|
      t.string :name
      t.integer :price
      t.text :descript

      t.timestamps null: false
    end
  end
end
