class CreateJoinTableDoctorUser < ActiveRecord::Migration[7.0]
  def change
    create_join_table :doctors, :users do |t|
      t.index [:doctor_id, :user_id]
      t.index [:user_id, :doctor_id]
    end
  end
end
