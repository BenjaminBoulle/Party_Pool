class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :comment
      t.decimal :rating
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
