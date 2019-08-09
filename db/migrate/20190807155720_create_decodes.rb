class CreateDecodes < ActiveRecord::Migration[6.0]
  def change
    create_table :decodes do |t|
      t.string :inputed_encode
      t.string :inputed_key

      t.timestamps
    end
  end
end
