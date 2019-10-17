class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.string :message
      t.references :reason, foreign_key: true
      t.references :user, foreign_key: true
      t.references :visitor, foreign_key: true

      t.timestamps
    end
  end
end
