class CreateReasons < ActiveRecord::Migration[5.2]
  def change
    create_table :reasons do |t|
      t.string :description

      t.timestamps
    end
  end
end
