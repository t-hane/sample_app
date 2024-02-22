class AddStatusToPosts < ActiveRecord::Migration[7.1]
  def change
    change_table :posts do |t|
      t.integer :status
    end
  end
end
