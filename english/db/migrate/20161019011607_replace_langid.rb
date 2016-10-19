class ReplaceLangid < ActiveRecord::Migration[5.0]
  def change
    add_column :proficiencies, :language_id, :integer
  end
end
