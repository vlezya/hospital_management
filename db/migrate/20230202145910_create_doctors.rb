class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date :date_of_birth

      t.timestamps
    end
  end
end
