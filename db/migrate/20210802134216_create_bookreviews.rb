class CreateBookreviews < ActiveRecord::Migration[6.1]
  def change
    create_table :bookreviews do |t|
      t.string :book
      t.text :body

      t.timestamps
    end
  end
end
