class RenameColumnTypeOfComidasModel < ActiveRecord::Migration[7.0]
  def change
    change_table :comidas do |t|
      t.rename :type, :typeC
    end
  end
end
