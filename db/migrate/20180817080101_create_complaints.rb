class CreateComplaints < ActiveRecord::Migration[5.1]
  def change
    create_table :complaints do |t|
      t.text :content
      t.text :title
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :complaints, [:user_id, :created_at]
  end
end
