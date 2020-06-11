class AddUserIdToFaphras < ActiveRecord::Migration[6.0]
  def change
    add_column :faphras, :user_id, :integer
  end
end
