class Skill
  include Mongoid::Document

  # Field
  field :name,      type: String
  field :color,     type: String
  field :devicon,   type: String,  default: ""
  field :view,      type: Boolean
  field :priority,  type: Boolean

  # Validates
  validates :name,  presence: true, uniqueness: true
  validates :color, presence: true, format: {
            with: /\A\h{6}\z/,
            message: "n'est pas au format hexa sans le #. Par exemple, 458569."
  }
end
