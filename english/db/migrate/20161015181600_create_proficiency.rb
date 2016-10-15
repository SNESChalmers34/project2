class CreateProficiency < ActiveRecord::Migration[5.0]
  def change
    create_table :proficiencies do |t|

      t.integer :student_id
      t.integer :language_id
      t.boolean :fluent_in
      t.boolean :want_to_learn

      t.timestamps
    end
  end
end
