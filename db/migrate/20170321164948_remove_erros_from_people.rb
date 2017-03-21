class RemoveErrosFromPeople < ActiveRecord::Migration[5.0]
  def change
    remove_column :people, :errors, array: true, default: []
  end
end
