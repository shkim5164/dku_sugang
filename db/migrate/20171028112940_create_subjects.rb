class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :subjid #과목번호
      t.string :subjname #과목이름
      t.integer :divclass #분반번호
      t.integer :subjpoint #학점
      t.string :teacher #교강사
      t.string :tabletime #시간
      #신청인원
      t.integer :limitst#제한인원
      t.string :campus #캠퍼스구분
      
      t.timestamps null: false
    end
  end
end
