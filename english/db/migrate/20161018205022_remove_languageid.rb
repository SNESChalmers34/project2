class RemoveLanguageid < ActiveRecord::Migration[5.0]
  def change
    remove_column :proficiencies, :language_id, :integer
  end
end
