class CreatePacketTools < ActiveRecord::Migration[6.0]
  def change
    create_table :packet_tools do |t|
      t.tools :references
      t.packets :references

      t.timestamps
    end
  end
end
