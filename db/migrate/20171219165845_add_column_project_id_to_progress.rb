class AddColumnProjectIdToProgress < ActiveRecord::Migration[5.1]
  def change
    add_column :progresses, :project_id, :integer
  end
end
