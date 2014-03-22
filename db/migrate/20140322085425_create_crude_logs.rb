class CreateCrudeLogs < ActiveRecord::Migration
  def change
    create_table :crude_logs do |t|
      t.references :miner, index: true
      t.text :devs
      t.text :pools
      t.text :summary
      t.boolean :processed

      t.timestamps
    end
  end
end
