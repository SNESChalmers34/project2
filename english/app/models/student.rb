class Student < ApplicationRecord
  has_many :proficiencies
  has_many :languages, through: :proficiencies
end
