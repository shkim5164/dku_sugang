# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
Subject.create([
      {subjid: '1231234', #과목번호
      subjname: '경쟁률 10:1 과목', #과목이름
      divclass: 1, #분반번호
      subjpoint: 3, #학점
      teacher: '강호동', #교강사
      tabletime: '월1,2,3,4,5,6,7,8,9,10(상경관 206)', #시간
      limitst: 10,
      campus: '죽전'},
      
      {subjid: '3453456', #과목번호
      subjname: '경쟁률 5:1 과목', #과목이름
      divclass: 1, #분반번호
      subjpoint: 3, #학점
      teacher: '조규현', #교강사
      tabletime: '화1,2,3,4,5,6,7,8,9,10(소프트웨어ICT관 603)', #시간
      limitst: 5,
      campus: '죽전'},
      
      {subjid: '6786789', #과목번호
      subjname: '경쟁률 4:1 과목', #과목이름
      divclass: 1, #분반번호
      subjpoint: 3, #학점
      teacher: '송민호', #교강사
      tabletime: '수1,2,3,4,5,6,7,8,9,10(사회과학관 202)', #시간
      limitst: 4,
      campus: '죽전'},
      
      {subjid: '8908989', #과목번호
      subjname: '경쟁률 3:1 과목', #과목이름
      divclass: 1, #분반번호
      subjpoint: 3, #학점
      teacher: '안재현', #교강사
      tabletime: '목1,2,3,4,5,6,7,8,9,10(사범관 202)', #시간
      limitst: 3,
      campus: '죽전'},
      
      {subjid: '1588338', #과목번호
      subjname: '경쟁률 2:1 과목', #과목이름
      divclass: 1, #분반번호
      subjpoint: 3, #학점
      teacher: '이수근', #교강사
      tabletime: '금1,2,3,4,5,6,7,8,9,10(서관 B101)', #시간
      limitst: 2,
      campus: '죽전'},
      
      {subjid: '5643452', #과목번호
      subjname: '경쟁률 1:1 과목', #과목이름
      divclass: 1, #분반번호
      subjpoint: 3, #학점
      teacher: '은지원', #교강사
      tabletime: '토1,2,3,4,5,6,7,8,9,10(제2공학관 202)', #시간
      limitst: 1,
      campus: '죽전'}
      
      ])
User.create(email: "a@a.com", password: 123123, password_confirmation: 123123)
Tt.create([{
            chch: 1,
            mornig_time_st: Time.new(2018, 02, 01, 1, 00, 00, "+00:00").to_i,
            mornig_time_end: Time.new(2018, 02, 01, 1, 10, 00, "+00:00").to_i
      },
      {
            chch: 2,
            mornig_time_st: Time.new(2018, 02, 01, 10, 00, 00, "+00:00").to_i,
            mornig_time_end: Time.new(2018, 02, 01, 10, 10, 00, "+00:00").to_i
      },{
            chch: 3,
            mornig_time_st: Time.new(2018, 02, 02, 1, 00, 00, "+00:00").to_i,
            mornig_time_end: Time.new(2018, 02, 02, 1, 10, 00, "+00:00").to_i
      },
      {
            chch: 4,
            mornig_time_st: Time.new(2018, 02, 02, 10, 00, 00, "+00:00").to_i,
            mornig_time_end: Time.new(2018, 02, 02, 10, 10, 00, "+00:00").to_i
      },{
            chch: 5,
            mornig_time_st: Time.new(2018, 02, 03, 1, 00, 00, "+00:00").to_i,
            mornig_time_end: Time.new(2018, 02, 03, 1, 10, 00, "+00:00").to_i
      },
      {
            chch: 6,
            mornig_time_st: Time.new(2018, 02, 03, 10, 00, 00, "+00:00").to_i,
            mornig_time_end: Time.new(2018, 02, 03, 10, 10, 00, "+00:00").to_i
      },{
            chch: 7,
            mornig_time_st: Time.new(2018, 02, 04, 1, 00, 00, "+00:00").to_i,
            mornig_time_end: Time.new(2018, 02, 04, 1, 10, 00, "+00:00").to_i
      },
      {
            chch: 8,
            mornig_time_st: Time.new(2018, 02, 04, 10, 00, 00, "+00:00").to_i,
            mornig_time_end: Time.new(2018, 02, 04, 10, 10, 00, "+00:00").to_i
      },{
            chch: 9,
            mornig_time_st: Time.new(2018, 02, 05, 1, 00, 00, "+00:00").to_i,
            mornig_time_end: Time.new(2018, 02, 05, 1, 10, 00, "+00:00").to_i
      },
     {
            chch: 10,
            mornig_time_st: Time.new(2018, 02, 05, 10, 00, 00, "+00:00").to_i,
            mornig_time_end: Time.new(2018, 02, 05, 10, 10, 00, "+00:00").to_i
      },
      {
            chch: 11,
            mornig_time_st: Time.new(2018, 02, 06, 1, 00, 00, "+00:00").to_i,
            mornig_time_end: Time.new(2018, 02, 06, 1, 10, 00, "+00:00").to_i
      },{
            chch: 12,
            mornig_time_st: Time.new(2018, 02, 06, 10, 00, 00, "+00:00").to_i,
            mornig_time_end: Time.new(2018, 02, 06, 10, 10, 00, "+00:00").to_i
      },
      {
            chch: 13,
            mornig_time_st: Time.new(2018, 02, 07, 1, 00, 00, "+00:00").to_i,
            mornig_time_end: Time.new(2018, 02, 07, 1, 10, 00, "+00:00").to_i
      },{
            chch: 14,
            mornig_time_st: Time.new(2018, 02, 07, 10, 00, 00, "+00:00").to_i,
            mornig_time_end: Time.new(2018, 02, 07, 10, 10, 00, "+00:00").to_i
      },
      {
            chch: 15,
            mornig_time_st: Time.new(2018, 02, 8, 1, 00, 00, "+00:00").to_i,
            mornig_time_end: Time.new(2018, 02, 8, 1, 10, 00, "+00:00").to_i
      },
      {
            chch: 16,
            mornig_time_st: Time.new(2018, 02, 8, 10, 00, 00, "+00:00").to_i,
            mornig_time_end: Time.new(2018, 02, 8, 10, 10, 00, "+00:00").to_i
      },
     #----------------------------------------------------------------------------
      {
            chch: 17,
            mornig_time_st: Time.new(2018, 02, 18, 1, 00, 00, "+00:00").to_i,
            mornig_time_end: Time.new(2018, 02, 18, 1, 10, 00, "+00:00").to_i
      },{
            chch: 18,
            mornig_time_st: Time.new(2018, 02, 18, 10, 00, 00, "+00:00").to_i,
            mornig_time_end: Time.new(2018, 02, 18, 10, 10, 00, "+00:00").to_i
      },
      {
            chch: 19,
            mornig_time_st: Time.new(2018, 02, 19, 1, 00, 00, "+00:00").to_i,
            mornig_time_end: Time.new(2018, 02, 19, 1, 10, 00, "+00:00").to_i
      },{
            chch: 20,
            mornig_time_st: Time.new(2018, 02, 19, 10, 00, 00, "+00:00").to_i,
            mornig_time_end: Time.new(2018, 02, 19, 10, 10, 00, "+00:00").to_i
      },
      {
            chch: 21,
            mornig_time_st: Time.new(2018, 02, 20, 1, 00, 00, "+00:00").to_i,
            mornig_time_end: Time.new(2018, 02, 20, 1, 10, 00, "+00:00").to_i
      },{
            chch: 22,
            mornig_time_st: Time.new(2018, 02, 20, 10, 00, 00, "+00:00").to_i,
            mornig_time_end: Time.new(2018, 02, 20, 10, 10, 00, "+00:00").to_i
      },
      {
            chch: 23,
            mornig_time_st: Time.new(2018, 02, 21, 1, 00, 00, "+00:00").to_i,
            mornig_time_end: Time.new(2018, 02, 21, 1, 10, 00, "+00:00").to_i
      },{
            chch: 24,
            mornig_time_st: Time.new(2018, 02, 21, 10, 00, 00, "+00:00").to_i,
            mornig_time_end: Time.new(2018, 02, 21, 10, 10, 00, "+00:00").to_i
      },
      {
            chch: 25,
            mornig_time_st: Time.new(2018, 02, 22, 1, 00, 00, "+00:00").to_i,
            mornig_time_end: Time.new(2018, 02, 22, 1, 10, 00, "+00:00").to_i
      },
      {
            chch: 26,
            mornig_time_st: Time.new(2018, 02, 22, 10, 00, 00, "+00:00").to_i,
            mornig_time_end: Time.new(2018, 02, 22, 10, 10, 00, "+00:00").to_i
      }])
      