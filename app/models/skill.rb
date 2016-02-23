class Skill
  include Mongoid::Document
  include Mongoid::Timestamps

  # Select
  TYPES = %w(language framework cms library)

  # Field
  field :name,      type: String
  field :color,     type: String
  field :devicon,   type: String
  field :type,      type: String
  field :view,      type: Boolean

  # Validates
  validates :name,  presence: true, uniqueness: true
  validates :color, presence: true, format: {
            with: /\A\h{6}\z/,
            message: "n'est pas au format hexa sans le #. Par exemple, 458569."
  }
  validates :type, inclusion: {
            in: TYPES,
            message: "Choisissez parmit ceux qui sont présenté."
  }
  validates :devicon,  presence: true, uniqueness: true


  # Fonction
  def color_hex
    "##{self.color}"
  end

  def devicon_class
    "devicon-#{self.devicon}"
  end
end
