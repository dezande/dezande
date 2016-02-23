class Contact
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :email, type: String
  field :subject, type: String
  field :message, type: String

  validates :name,  presence: true
  validates :email, presence: true, format: { with: /\A[^@\s]+@([a-z]+\.)+[a-z]{2,4}\z/, message: "Format email non valide" }
  validates :subject, presence: true
  validates :message, presence: true
end
