class CreateSubOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :sub_options do |t|
      t.string :title
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
