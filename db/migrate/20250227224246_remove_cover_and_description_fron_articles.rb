class RemoveCoverAndDescriptionFronArticles < ActiveRecord::Migration[7.1]
  def change
    remove_column :articles, :cover, :string
    remove_column :articles, :description, :text
  end
end
