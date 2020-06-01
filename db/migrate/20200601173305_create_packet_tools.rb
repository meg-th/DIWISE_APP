class CreatePacketTools < ActiveRecord::Migration[6.0]
  def change
    create_table :packet_tools do |t|
      t.references :packets, null: false, foreign_key: true
      t.references :tools, null: false, foreign_key: true

      t.timestamps
    end
  end
end
