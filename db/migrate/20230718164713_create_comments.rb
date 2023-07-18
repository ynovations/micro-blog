class CreateComments < ActiveRecord::Migration[7.0]
  def change

    create_table :comments do |t|
      t.string :comment_message


      t.timestamps
    end

    add_reference :comments, :post, null: false, foreign_key: true
    add_reference :comments, :user, null: false, foreign_key: true

  end
end
