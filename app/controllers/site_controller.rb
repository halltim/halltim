class SiteController < ApplicationController
  def index
  end

  def contact_me
    # redirect_to root_path

    @name = params[:name]
    @phone = params[:phone]
    @email = params[:email]
    @message = params[:message]

    puts @name
    puts @phone
    puts @email
    puts @message

    ContactMe.contact_email(@name, @email, @phone, @message).deliver_now

    redirect_to root_path

  end

end
