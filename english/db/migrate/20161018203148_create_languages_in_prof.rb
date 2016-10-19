class CreateLanguagesInProf < ActiveRecord::Migration[5.0]
  def change
    add_column :proficiencies, :language_know, :string
    add_column :proficiencies, :language_learn, :string

  end
end
