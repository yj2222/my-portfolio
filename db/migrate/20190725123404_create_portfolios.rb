class CreatePortfolios < ActiveRecord::Migration[5.2]
  def change
    create_table :portfolios do |t|
      t.string       :title,       null: false
      t.string       :environment, null: false      
      t.timestamps
    end
  end
end
