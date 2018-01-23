class HomeController < ApplicationController
  
  before_action :reqire_login
  
  def index
  end
  def main
    @subjects = Subject.all
    @allsc = Success.all
  end
  
  def findTkcrs
  end
  
  def login
  end
  
  def sucess
    #신청완료로직
    @scess = Success.new
    @scess.time_1 = params[:ck_time1]
    @scess.time_2 = params[:ck_time2]
    @scess.time_3 = params[:ck_time3]
    @scess.time_4 = params[:ck_time4]
    @scess.time_5 = params[:ck_time5]
    @scess.time_6 = params[:ck_time6]
    @scess.user_id = params[:userid]
    @scess.save
    
    redirect_to '/home/result'
  end
  
  def result
    @users = User.all
    @cr_user = User.where('last_seen > ?', 5.minutes.ago)
    @users.each do |v|
      
      if v.last_sign_out_at.nil? or v.last_sign_in_at > v.last_sign_out_at
        @on_user = []
        @on_user.push(v.id)
      end
    end
  end
end
