class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :title

      t.timestamps
    end
  end
end
