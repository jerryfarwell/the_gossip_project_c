class UsersController < ApplicationController
  def new
  end

  def index
    @user = User.all
  end

  def create
    @user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])

    if @user.save
      puts "it saved"
      redirect_to '/'
    else
      puts "no"
      render new
    end
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
  end
end
