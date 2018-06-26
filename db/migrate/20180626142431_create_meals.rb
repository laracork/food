class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.string :main 
      t.string :side
      t.timestamps
    end
  end
end
