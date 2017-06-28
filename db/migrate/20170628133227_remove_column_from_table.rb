class RemoveColumnFromTable < ActiveRecord::Migration
  def change
    remove_column :cappucinia, :name
    remove_column :cappucinia, :body
  end
end
