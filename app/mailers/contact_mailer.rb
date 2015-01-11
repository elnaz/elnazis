class ContactMailer < ApplicationMailer
  def send_contact(message)
    mail(to: ENV["CONTACT_EMAIL"], 
      from: "\"#{message.name}\" <#{message.email}>",
      body: message.body,
      content_type: "text/html",
      subject: "Contact via www.elnaz.is")
  end
end

