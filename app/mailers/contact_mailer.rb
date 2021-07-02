class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
    mail to:"rge@maxisol.fr", subject: "Nous contacter"
  end
end
