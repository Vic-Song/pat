class CreateObjOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :obj_options do |t|
      t.string :title
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
