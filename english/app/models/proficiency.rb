class Proficiency < ActiveRecord::Base
  belongs_to :student
  belongs_to :language
end
