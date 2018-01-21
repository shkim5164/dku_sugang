class CreateSuccesses < ActiveRecord::Migration
  def change
    create_table :successes do |t|
      t.integer :user_id
      t.integer :time_1, :limit => 8
      t.integer :time_2, :limit => 8
      t.integer :time_3, :limit => 8
      t.integer :time_4, :limit => 8
      t.integer :time_5, :limit => 8
      t.integer :time_6, :limit => 8
      t.timestamps null: false
    end
  end
  
end
