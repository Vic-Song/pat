class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.string :content
      t.references :question, foreign_key: true
      t.references :paper, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
