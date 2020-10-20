class AddColumnsComments < ActiveRecord::Migration[6.0]
  def change
    add_timestamps(:comments)
  end
end
