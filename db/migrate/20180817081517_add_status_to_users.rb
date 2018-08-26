class AddStatusToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :complaints, :status, :boolean, default: false
  end
end
