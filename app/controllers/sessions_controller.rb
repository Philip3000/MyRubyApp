class SessionsController < ApplicationController
  def new
  end

  def create
    member = Member.find_by(username: params[:session][:username])
    if member&.authenticate(params[:session][:password])
      session[:member_id] = member.id
      redirect_to root_path, notice: 'Logged in successfully.'
    else
      flash.now[:alert] = 'Invalid username or password.'
      render :new
    end
  end

  def destroy
    session[:member_id] = nil
    redirect_to root_path, notice: 'Logged out successfully.'
  end
end
  