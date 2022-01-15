class UsersController < ApplicationController
    include UsersHelper

    def new
    end 

    def create
        user = User.find_by(email: params[:users][:email].downcase)
        if user
            flash.now[:danger] = 'User with this email already exists.'
            render('new')
        
        else
            user = { name: params[:users][:name], email: params[:users][:email].downcase, password: params[:users][:password] }
            if sign_up(user)
                redirect_to(login_path)
            else 
                flash[:danger] = "Failed to create user. Make sure the password is more than 8 characters."
                render('new')
            end
        end
    end

end
