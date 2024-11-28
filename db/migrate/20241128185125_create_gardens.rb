class CreateGardens < ActiveRecord::Migration[7.1]
  def change
    create_table :gardens do |t|
      t.string :name
      t.string :background_image

      t.timestamps
    end
  end
end
