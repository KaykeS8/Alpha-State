class CreateProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :profiles do |t|
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.string :website_url
      t.string :x_url
      t.string :instagram_url
      t.string :linkedin_url

      t.timestamps
    end
  end
end
