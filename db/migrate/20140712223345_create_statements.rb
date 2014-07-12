class CreateStatements < ActiveRecord::Migration
  def change
    create_table :statements do |t|
      t.string :statement
    end
  end
end
