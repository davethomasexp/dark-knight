class CreateBatmen < ActiveRecord::Migration[5.0]
  def change
    create_table :batmen do |t|
      t.string :name
      t.text :backstory
      t.string :allies
      t.string :enemies
      t.string :nemesis

      t.timestamps
    end
  end
end
