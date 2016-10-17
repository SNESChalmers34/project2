class Language < ApplicationRecord
  has_many :proficiencies
  has_many :students, through: :proficiencies
end
