class CreatePapers < ActiveRecord::Migration[5.1]
  def change
    create_table :papers do |t|
      t.string :title
      t.string :authorName1
      t.string :authorName2
      t.string :authorName3
      t.string :authorName4
      t.string :authorName5
      t.string :authorName6
      t.string :authorName7
      t.string :authorName8
      t.string :authorName9
      t.string :authorName10
      t.string :comAuthor
      t.text :comAddr
      t.string :pubYear
      t.string :journal
      t.references :survey, foreign_key: true

      t.timestamps
    end
  end
end
