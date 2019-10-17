class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastname
      t.integer :identification, unique:true
      t.string :email, unique:true

      t.timestamps
    end
  end
end
