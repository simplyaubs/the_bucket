class AddTimestampsToStatements < ActiveRecord::Migration
  def change
    change_table :statements do |t|
      t.timestamps
    end
  end
end
