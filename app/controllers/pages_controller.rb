class PagesController < ApplicationController
    def about
        @users = User.all
        @message = "Welcome to the about page"
    end
end
