class CreatePedidos < ActiveRecord::Migration[7.0]
  def change
    create_table :pedidos do |t|
      t.text :descrição
      t.float :price
      t.belongs_to :comida, null: false, foreign_key: true

      t.timestamps
    end
  end
end
