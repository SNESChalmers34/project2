class CreateProficiency < ActiveRecord::Migration[5.0]
  def change
    create_table :proficiencies do |t|

      t.references :student
      t.references :language
      t.boolean :fluent_in
      t.boolean :want_to_learn
      t.integer :years_exp
      t.string :reason

      t.timestamps
    end
  end
end
