class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.references :hotel_id, index: true, foreign_key: true
      t.datetime :requested_at
      t.string :title
      t.text :special_request

      t.timestamps null: false
    end
  end
end
