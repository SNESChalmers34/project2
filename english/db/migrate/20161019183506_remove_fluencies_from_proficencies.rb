class RemoveFluenciesFromProficencies < ActiveRecord::Migration[5.0]
  def change
    remove_column :proficiencies, :fluent_in, :boolean
    remove_column :proficiencies, :years_exp, :integer
    remove_column :proficiencies, :language_id, :integer
    remove_column :proficiencies, :language_know, :string

  end
end
