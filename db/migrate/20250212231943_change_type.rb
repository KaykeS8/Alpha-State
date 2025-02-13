class ChangeType < ActiveRecord::Migration[7.1]
  def change
    rename_column :categories, :type, :kind
  end
end
