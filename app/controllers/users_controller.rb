class UsersController  < ApplicationController
    before_filter :check_if_logged_in, :except => [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new params[:user]

    if @user.save
      session[:user_id] = @user.id
      redirect_to new_house_path
    else
      render :new
    end
  end

  def edit
    @user = @authenticated
    render :new
  end

  def update
    @user = @authenticated
    if @user.update_attributes params[:user]
      redirect_to root_path
    else
      render :new
    end
  end

  def welcome
  end

  private

  def check_if_logged_in
    redirect_to(root_path) unless @authenticated.present?
  end
end