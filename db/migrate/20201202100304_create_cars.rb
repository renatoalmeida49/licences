class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :placa
      t.string :proprietario
      t.string :modelo
      t.string :ano

      t.timestamps
    end
  end
end
