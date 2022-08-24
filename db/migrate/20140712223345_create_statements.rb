class CreateStatements < ActiveRecord::Migration[4.2]
  def change
    create_table :statements do |t|
      t.string :statement
    end
  end
end
