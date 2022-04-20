class DropCcomments < ActiveRecord::Migration[7.0]
  def change
    drop_table :ccomments
  end
end
