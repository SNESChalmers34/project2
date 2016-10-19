class AddFluenciesToStudent < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :fluencies, :string
  end
end
