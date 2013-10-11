class RemovePasswordFromUsers < ActiveRecord::Migration
  def up
    remove_column :password
  end

  def down
  end
end
