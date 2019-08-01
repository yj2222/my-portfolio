class CreatePortfolios < ActiveRecord::Migration[5.2]
  def change
    create_table :portfolios do |t|
      t.string     :title,       null: false
      t.string     :sub_title,   null: false
      t.string     :top_image,   null: false
      t.text       :environment, null: false      
      t.text       :discription, null: false      
      t.text       :usage,       null: false      
      t.string     :github_url,  null: false
      t.string     :app_url,     null: false
      t.references :user,        null: false, index: true, foreign_key: true
      t.timestamps
    end
  end
end