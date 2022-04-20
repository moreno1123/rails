class DropCommments < ActiveRecord::Migration[7.0]
  def change
    drop_table :commments
  end
end
