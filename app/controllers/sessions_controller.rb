class SessionsController < ApplicationController
    # app/controllers/sessions_controller.rb

    def new1
      # Render the login form
        @user = User.new
    end
    def destroy
      # Remove the user id from the session
      session.delete(:current_user_id)
      # Clear the memoized current user
      if @_current_user = nil
      redirect_to clients_path, status: :see_other
      end
    end
  # end
    def create
        @user = User.new(user_params)
    
        if @user.save
          redirect_to login_user_path, notice: "Registration successful!"
        else
          render :new
        end
      end
      def login

      end
      def login_in
        @user = User.find_by(email: params[:email])
      
        if @user&.authenticate(params[:password])
          session[:current_user_id] = @user.id
          redirect_to clients_path, notice: "Logged in successfully!"
        else
          flash.now[:alert] = "Invalid email or password"
          render :new1
        end
      end
      
      # def login_in
      #   # session[:current_single_id] = user.id
      # # redirect_to root_url
      #  if @user=User.find_by(email:params[:email],password:params[:password])
      #   session[:current_user_id] = @user.id
      #   redirect_to clients_path

      #  end

      # end
    
    
      private
    
      def user_params
        params.require(:user).permit(:name, :age,:email, :password)
      end
      def current_user
        @_current_user ||= session[:current_user_id] && User.find_by(id: session[:current_user_id])
      end
      # def current_user
      #   @_current_user ||= session[:current_user_id] &&
      #     User.find_by(id: session[:current_user_id])
      # end
  
end