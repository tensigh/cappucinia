class MakeNullNotNull < ActiveRecord::Migration
  def change
    change_column_null(:cappucinia, :restaurantName, false, "NONAME")
  end
end
