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
    @scess.subjid = params[:subjId]
    @scess.subjname = params[:subjNm]
    @scess.divclass = params[:dvclsNb]
    @scess.subject_id = params[:subject_id]
    @scess.save
    
    redirect_to '/home/main'
  end
end
