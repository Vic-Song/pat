class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :title
      t.integer :style
      t.references :survey, foreign_key: true

      t.timestamps
    end
  end
end
