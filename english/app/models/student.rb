class Student < ApplicationRecord
  has_many :proficiencies
  has_many :languages, through: :proficiencies

  accepts_nested_attributes_for :languages
end
