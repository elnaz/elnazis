class AddSortOrderToWorking < ActiveRecord::Migration
  def change
    add_column :working, :sort_order, :int
  end
end
