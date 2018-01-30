class HomeController < ApplicationController
  before_action :reqire_login

  def index
  end
  
  def login
    @user = current_user
    @users = User.all
    @useremail = @user.email
    @usernick = @useremail.split('@')[0]
     # 현재 로그인한 사람 카운트
    @users = User.all
    @cr_user = User.where('last_seen > ?', 5.minutes.ago)
    @on_user = []
    @users.each do |v|
      if v.last_sign_out_at.nil? or v.last_sign_in_at > v.last_sign_out_at or v.current_sign_in_at > v.last_sign_out_at
        @on_user << v.id
      end
    end
  end
  
  def main2
    @subjects = Subject.all
    @allsc = Success.all
    @user_sc = Success.where(user_id: current_user.id, chasi: @chasinow)
    unless @user_sc.empty?
        flash[:notice] = "이미 #{@chasinow}차시를 완료하였습니다."
        redirect_to "/home/my_page/#{current_user.id}"
    end
    
    # 현재 로그인한 사람 카운트
    @users = User.all
    @cr_user = User.where('last_seen > ?', 5.minutes.ago)
    @on_user = []
    @users.each do |v|
      if v.last_sign_out_at.nil? or v.last_sign_in_at > v.last_sign_out_at or v.current_sign_in_at > v.last_sign_out_at
        @on_user << v.id
      end
    end
  end

  def main1
    @subjects = Subject.all
    @allsc = Success.all
  end
  
  def findTkcrs
  end
  
  def sucess
    #신청완료로직
    # @scess = Success.new
    @scess.time_1 = params[:ck_time1]
    @scess.time_2 = params[:ck_time2]
    @scess.time_3 = params[:ck_time3]
    @scess.time_4 = params[:ck_time4]
    @scess.time_5 = params[:ck_time5]
    @scess.time_6 = params[:ck_time6]
    @scess.user_id = params[:userid]
    @scess.save
    
    redirect_to "/home/my_result/#{@scess.user_id}/#{@scess.chasi}"
  end
  
  def result
  end
  
  def done
  end
  
  def my_page
    @allresult = Success.where(user_id: params[:user_id])
    unless current_user.id == params[:user_id]
       flash[:notice] = "자신의 페이지에만 접속이 가능합니다."
      redirect_to "/home/my_page/#{params[:user_id]}"
    end
  
  end
  
  def my_result
    unless current_user.id == params[:user_id]
       flash[:notice] = "자신의 페이지에만 접속이 가능합니다."
      redirect_to "/home/my_page/#{params[:user_id]}"
    end
    @o_1 = []
    @o_2 = []
    @o_3 = []
    @o_4 = []
    @o_5 = []
    @o_6 = []
    @ch = params[:chasi]
    @subjects = Subject.all
    @my_result = Success.where(user_id: params[:user_id], chasi: params[:chasi])
    @chasi_all = Success.where(chasi: params[:chasi]) # ?차시에 한 것 모두
    @ribal = @chasi_all.count(:conditions => "chasi = #{params[:chasi]}")
   
    @order_1 = @chasi_all.order(:time_1)
    @order_1.each do |b|
      @o_1 << b.user_id
    end
    @rank_1 = @o_1.index(current_user.id)
    
    @order_2 = @chasi_all.order(:time_2)
    @order_2.each do |b|
      @o_2 << b.user_id
    end
    @rank_2 = @o_2.index(current_user.id)
    
    @order_3 = @chasi_all.order(:time_3)
    @order_3.each do |b|
      @o_3 << b.user_id
    end
    @rank_3 = @o_3.index(current_user.id)
    
    @order_4 = @chasi_all.order(:time_4)
    @order_4.each do |b|
      @o_4 << b.user_id
    end
    @rank_4 = @o_4.index(current_user.id)
    
    @order_5 = @chasi_all.order(:time_5)
    @order_5.each do |b|
      @o_5 << b.user_id
    end
    @rank_5 = @o_5.index(current_user.id)
    
    @order_6 = @chasi_all.order(:time_6)
    @order_6.each do |b|
      @o_6 << b.user_id
    end
    @rank_6 = @o_6.index(current_user.id)
    
  end
end