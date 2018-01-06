class CreateSuccesses < ActiveRecord::Migration
  def change
    create_table :successes do |t|
      t.string :subjid
      t.string :subjname
      t.integer :divclass
      t.integer :subject_id
      t.integer :user_id
      
      t.timestamps null: false
    end
  end
end
