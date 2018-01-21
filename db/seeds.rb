# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
Subject.create([
      {subjid: '1231234', #과목번호
      subjname: '멋쟁이사자처럼', #과목이름
      divclass: 1, #분반번호
      subjpoint: 3, #학점
      teacher: '김순후', #교강사
      tabletime: '월1,2,3,4,5,6,7,8,9,10(상경관 206)', #시간
      limitst: 50,
      campus: '죽전'},
      
      {subjid: '3453456', #과목번호
      subjname: '안뇽안뇽', #과목이름
      divclass: 1, #분반번호
      subjpoint: 3, #학점
      teacher: '최수빈', #교강사
      tabletime: '화1,2,3,4,5,6,7,8,9,10(혜당관 603)', #시간
      limitst: 50,
      campus: '죽전'},
      
      {subjid: '6786789', #과목번호
      subjname: '자라나라머리머리', #과목이름
      divclass: 1, #분반번호
      subjpoint: 3, #학점
      teacher: '머머리', #교강사
      tabletime: '수1,2,3,4,5,6,7,8,9,10(단대앞 S헤어)', #시간
      limitst: 50,
      campus: '죽전'},
      
      {subjid: '8908989', #과목번호
      subjname: '비트코인 가즈아', #과목이름
      divclass: 1, #분반번호
      subjpoint: 3, #학점
      teacher: '리플떡락', #교강사
      tabletime: '목1,2,3,4,5,6,7,8,9,10(빗썸 거래소)', #시간
      limitst: 50,
      campus: '죽전'},
      
      {subjid: '1588338', #과목번호
      subjname: '개꿀강의', #과목이름
      divclass: 1, #분반번호
      subjpoint: 3, #학점
      teacher: '김허니', #교강사
      tabletime: '금1,2,3,4,5,6,7,8,9,10(꿀통)', #시간
      limitst: 50,
      campus: '죽전'},
      
      {subjid: '5643452', #과목번호
      subjname: '연애실습', #과목이름
      divclass: 1, #분반번호
      subjpoint: 3, #학점
      teacher: '홍석천', #교강사
      tabletime: '토1,2,3,4,5,6,7,8,9,10(솔로)', #시간
      limitst: 50,
      campus: '죽전'}
      
      ])
User.create(email: "a@a.com", encrypted_password: "123123")