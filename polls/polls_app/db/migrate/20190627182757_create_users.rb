class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.timestamps
    end
    #add_index makes table lookup binary search, thus O(log n).
    add_index :users, :username, unique: true #database validation. 
    #To check for uniqueness we have to look through the table each time we add a new user to check for uniqueness; therefore, add_index will make
    #this frequent lookup mmuch faster. If we will be continuously searching for a column, an index makes it faster. All foreign keys need an add_index.
    #add_index adds an extra column to our table. If we add_index to everything without need, it could make the table too large. Without add_index, the 
    #search is O(n) linear. 
  end
end
