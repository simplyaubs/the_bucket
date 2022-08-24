class AddTimestampsToStatements < ActiveRecord::Migration[4.2]
  def change
    change_table :statements do |t|
      t.timestamps
    end
  end
end
