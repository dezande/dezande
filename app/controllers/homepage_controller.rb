class HomepageController < ApplicationController
  # GET /
  def index
    @skills_language = Skill.where(view: true, type: "language")
    @skills_other = Skill.where(view: true).nin(type: "language")
    @contact = Contact.new
  end

  # POST /homepage
  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      flash[:notice] = "Votre message a bien été envoyer. Nous vous contacterons trés prochainement par email."
      ContactMailer.reception(@contact.id).deliver_now
      ContactMailer.answer(@contact.id).deliver_now
    else
      flash[:alert] = "Nous avons eu un problème lors de l'enregistrement de votre message. Veuillez utiliser les autres moyens mise à votre disposition dessous le formulaire."
    end
    redirect_to :root
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :subject, :message)
  end
end
