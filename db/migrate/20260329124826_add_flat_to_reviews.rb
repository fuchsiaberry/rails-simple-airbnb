class AddFlatToReviews < ActiveRecord::Migration[7.2]
  def change
    add_reference :reviews, :flat, null: false, foreign_key: true
  end
end
