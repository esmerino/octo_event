class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.jsonb :data

      t.timestamps
    end
    add_index :events, :data, using: :gin
  end
end
