class InitialSchema < ActiveRecord::Migration
  def self.up
    create_table :sessions do |t|
      t.string :session_id
      t.text :data
      t.datetime :updated_at
    end

    add_index :sessions, :session_id
    add_index :sessions, :updated_at

    create_table "test", :force => true do |t|
      t.column "string", :string, :limit => 50, :default => "", :null => false
      t.column "number", :integer, :default => 0, :null => false
    end
  end

  def self.down
    raise IrreversibleMigration
  end
end
