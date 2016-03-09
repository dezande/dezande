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

       ContactMailer.reception(@contact.id).deliver_now
       ContactMailer.answer(@contact.id).deliver_now

       @message = {
         message: "Votre message a bien été envoyer. Nous vous contacterons très prochainement par email."
       }
    else
      @message ={
        message: "Nous avons eu un problème lors de l'enregistrement de votre message. Veuillez utiliser les autres moyens mise à votre disposition dessous le formulaire."
      }
    end
    # redirect_to :root
    render json: @message
  end

  private

  def contact_params
    params.require(:homepage).permit(:name, :email, :subject, :message)
  end
end
