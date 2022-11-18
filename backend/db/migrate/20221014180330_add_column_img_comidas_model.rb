class AddColumnImgComidasModel < ActiveRecord::Migration[7.0]
  def change
    add_column :comidas, :img_url, :text
  end
end
