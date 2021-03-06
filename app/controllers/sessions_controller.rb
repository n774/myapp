class SessionsController < ApplicationController
  def index
    render 'login', :layout => true
  end
  
  def new
    @user = User.new
  end

  def create
    user = User.find_by_u_id params[:account]
    if user && user.authenticate(params[:pass])
      session[:user_id] = user.id
      session[:user_u_id] = user.u_id

      @login = User.find_by_u_id params[:account]

      cookies[:key] = @login

  	   respond_to do |format|
	       format.html {render 'login_success'}
	       format.json {render :json => @login}
        end
    else
      render 'login_failure', :layout => true
    end
  end

  def show
    render 'show'
  end
  
end
