class CreateProgresses < ActiveRecord::Migration[5.1]
  def change
    create_table :progresses do |t|
      t.string :comment

      t.timestamps
    end
  end
end
