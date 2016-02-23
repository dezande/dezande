class ContactMailer < ApplicationMailer
  default from: "contact@vincent-corniere.fr"

  def answer(id)
    @contact = Contact.find(id)
    mail(to: @contact.email, subject: 'Vincent Cornière - Votre email a bien été enregistrer')
  end

  def reception(id)
    @contact = Contact.find(id)
    mail(to: "vincent.corniere@gmail.com", subject: "Demande de contact - #{@contact.subject}")
  end
end
