class CreateBoardbookings < ActiveRecord::Migration[6.1]
  def change
    create_table :boardbookings do |t|
      t.integer :booking_length
      t.date :start_date
      t.references :client, null: false, foreign_key: true
      t.references :surfboard, null: false, foreign_key: true

      t.timestamps
    end
  end
end
