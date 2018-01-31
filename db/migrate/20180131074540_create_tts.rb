class CreateTts < ActiveRecord::Migration
  def change
    create_table :tts do |t|
      t.integer :mornig_time_st, :limit => 8
      t.integer :mornig_time_end, :limit => 8
      t.integer :chch
      t.timestamps null: false
    end
  end
end
