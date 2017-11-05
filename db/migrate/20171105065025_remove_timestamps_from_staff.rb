class RemoveTimestampsFromStaff < ActiveRecord::Migration[5.1]
  def change
    remove_column :staffs, :created_at, :string
    remove_column :staffs, :updated_at, :string
  end
end
