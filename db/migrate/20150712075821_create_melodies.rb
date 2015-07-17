class CreateMelodies < ActiveRecord::Migration
  def change
    create_table :melodies do |t|
      t.string :title
      t.text :melody

      t.timestamps null: false
    end
  end
end
