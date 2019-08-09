class CreateEncodes < ActiveRecord::Migration[6.0]
  def change
    create_table :encodes do |t|
      t.text :plain_message
      t.string :generated_key

      t.timestamps
    end
  end
end
