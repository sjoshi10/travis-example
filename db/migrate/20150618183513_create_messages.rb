class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :username, null: false
      t.string :message, null: false

      t.timestamps null: false
    end
  end
end
