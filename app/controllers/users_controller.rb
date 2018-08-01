class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token, only: [:create, :auth]
  # GET /users/new
  def new
    @user = User.new
  end

  # GET /logout
  def logout
    session[:user_id] = nil
    
    respond_to do |format|
      format.html { redirect_to flights_path }
      format.json { render json: {logout: 'success'} }
    end
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to flights_path, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def login
  end

  def auth
    user = User.find_by(email: params['email'])
    respond_to do |format|
      if (user.password_digest == params['password'] || user.authenticate(params['password']))
        session[:user_id] = user.id
        format.html { redirect_to flights_path, notice: 'Login Successful'}
        format.json { render :show, status: :ok, location: user }
      else
        format.html { redirect_to login_path, notice: 'Incorrect Details'}
        format.json { render json: {login: 'failed'}, status: :failed }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
