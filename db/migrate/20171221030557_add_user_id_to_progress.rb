class AddUserIdToProgress < ActiveRecord::Migration[5.1]
  def change
    add_column :progresses, :user_id, :integer
  end
end
