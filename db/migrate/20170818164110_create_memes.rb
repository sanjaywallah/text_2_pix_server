class CreateMemes < ActiveRecord::Migration[5.1]
  def change
    create_table :memes do |t|
      t.string :text
      t.string :img_url

      t.timestamps
    end
  end
end
