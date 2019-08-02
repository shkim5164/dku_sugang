# 단국대 수강신청 리허설

## 에러 리포트 - 2019.08.02 기준
- 루비버전은 2.6.0으로 설정
```
$ rbenv local 2.6.0
```
- mysql 버그시 맥의 경우
```
$ brew install openssl
$ export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/
```
- Overstack 등의 이상한 에러 대응
```
$ bundle update
```
- 로컬작업시 기초 작업
```
$ rake db:migrate RAILS_ENV=development
$ rake db:seed
```
