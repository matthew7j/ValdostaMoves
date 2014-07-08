class UsersController < ApplicationController
  load_and_authorize_resource except: :create

  def index
    @users = User.all
  end

  def edit

  end

  #def create
   # @user = User.new(params[:user])
    #@user_session = UserSession.new(params[:user])
 
    #respond_to do |format|
     # if @user.save && @user_session.save
      #  format.html { redirect_to(home_index, :notice => 'Registration successfull.') }
      #else
        
      #end
    #end
  #end
  
  
  def update
    if @user.update(user_params)
      redirect_to user_path @user
    else
      render action: 'edit'
    end
  end

  #def new    
   # @user = User.new
    
    #if current_user
     # redirect_to(home_index, :notice => 'Already registered')
    #end
  #end
  
  def show
    #@user = User.find(params[:id])
  end

  def destroy
    #clear_facebook_session_information
    @user.destroy
    redirect_to users_path
  end 

  #def is_user
   # if User.exists?(params[:id])
    #  @user = User.find(params[:id]);
     # if !current_user || current_user.id != @user.id
      #  redirect_to(home_index_path, :notice =>"You do not have access to that page")
     # end
    #else
     # redirect_to(home_index_path, :notice =>"You do not have access to that page")
    #end
  #end
  
  private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :category)
    end
end