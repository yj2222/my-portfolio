class CreateStudyOutputs < ActiveRecord::Migration[5.2]
  def change
    create_table :study_outputs do |t|
      t.text       :text,    null: false
      t.string     :url,     null: false
      t.references :user,    null: false, index: true, foreign_key: true
      t.timestamps
    end
  end
end
