class HomeController < ApplicationController
  before_action :reqire_login
  
  def login
    @users = User.all
    @user = current_user
    @useremail = @user.email
    @usernick = @useremail.split('@')[0]
  end

  def index
  end
  
  def main1
    @subjects = Subject.all
    @allsc = Success.all
  end
  
  def main2
    @subjects = Subject.all
    @allsc = Success.all
  end
  
  def findTkcrs
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
    @cr_user = User.where('last_seen > ?', 5.minutes.ago)
  end
end