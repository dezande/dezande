class Skill
  include Mongoid::Document

  # Field
  field :name, type: String
  field :color, type: String

  # Validates
  validates :name,  presence: true, uniqueness: true
  validates :color, presence: true, format: { with: /\A\h{6}\z/ }
end
