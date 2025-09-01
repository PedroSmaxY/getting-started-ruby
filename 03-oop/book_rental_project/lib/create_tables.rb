require_relative 'database_config'

ActiveRecord::Schema.define do
  create_table :books, force: true do |t|
    t.string :title, null: false
    t.string :author, null: false
    t.integer :copies, default: 1, null: false
    t.timestamps
  end
  
  create_table :users, force: true do |t|
    t.string :name, null: false
    t.timestamps
  end
  
  create_table :book_checkouts, force: true do |t|
    t.references :book, null: false
    t.references :user, null: false
    t.timestamps
  end
end

puts "Tables created successfully!"