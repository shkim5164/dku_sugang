# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
   Subject.create(subjid: '123123', #과목번호
      subjname: '멋쟁이사자처럼', #과목이름
      divclass: 1, #분반번호
      subjpoint: 3, #학점
      teacher: '김순후', #교강사
      tabletime: '월 1,2,3,4,5,6,7,8,9,10', #시간
      limitst: 50,
      campus: '죽전')
