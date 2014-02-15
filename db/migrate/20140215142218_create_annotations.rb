class CreateAnnotations < ActiveRecord::Migration
  def change
    create_table :annotations do |t|
      t.text :body
      t.integer :track_id

      t.timestamps
    end
  end
end
