class CreatePlanets < ActiveRecord::Migration[5.1]
  def change
    create_table :planets do |t|
      t.string :planet_name
      t.float :planet_mass
      t.float :rotation_period
      t.float :day_length
      t.float :orbital_period
      t.float :distance_from_sun
      t.float :mean_temperature
      t.integer :number_of_moons

      t.timestamps
    end
  end
end
