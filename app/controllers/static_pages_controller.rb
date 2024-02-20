class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end 

  # Create a new action for the contact page  
  def contact
      # Include a code to read a form submission for user name and email
      # and display it in the view
      @name = params[:name]
      @email = params[:email]
      @message = params[:message]
  end
end


