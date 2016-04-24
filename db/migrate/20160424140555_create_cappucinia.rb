class CreateCappucinia < ActiveRecord::Migration
  def change
    create_table :cappucinia do |t|
      t.string :name
      t.string :body

      t.timestamps null: false
    end
  end
end
