class Projects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :desc
      t.integer :action
      t.integer :frequency

      t.timestamps
    end
  end
end
