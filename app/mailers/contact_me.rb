class ContactMe < ApplicationMailer
  default from: "contact@halltim.com"
  def contact_email (name, email, phone, message)
    @name = name
    @email = email
    @phone = phone
    @message = message
    @recipient_email = "timhall3000@gmail.com"
    @subject = "Website Contact Form:  #{@name}"
    @sender_email = "contact@halltim.com"
    mail(to: @recipient_email, subject: @subject)
  end
end
