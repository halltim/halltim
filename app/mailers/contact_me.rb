class ContactMe < ApplicationMailer
  def contact_email (name, email, phone, message)
    @name = name
    @email = email
    @phone = phone
    @message = message
    @recipient_email = "timhall3000@gmail.com"
    @subject = "Website Contact Form:  #{@name}"
    mail(to: @recipient_email, subject: @subject)
  end
end
