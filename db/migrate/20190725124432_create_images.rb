class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string     :image,     null: false
      t.references :portfolio, null: false, index: true, foreign_key: true
      t.timestamps
    end
  end
end
