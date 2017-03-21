class AddErrorsToPeople < ActiveRecord::Migration[5.0]
  def change
    add_column :people, :errors, :string, array: true
  end
end
