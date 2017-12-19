class RemoveColumnsFromProjectTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :projects, :action
    remove_column :projects, :frequency
  end
end
