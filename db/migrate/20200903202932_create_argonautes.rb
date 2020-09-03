class CreateArgonautes < ActiveRecord::Migration[6.0]
  def change
    create_table :argonautes do |t|
      t.string :name
      t.boolean :half_god
      t.boolean :captain
      t.string :notes

      t.timestamps
    end
  end
end
