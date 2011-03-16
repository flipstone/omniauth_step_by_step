class AssociateBooksWithIdentities < ActiveRecord::Migration
  def self.up
    add_column :books, :identity_id, :integer
    execute %{UPDATE books SET identity_id = (SELECT(MIN(id)) FROM identities)}
  end

  def self.down
    remove_column :books, :identity_id
  end
end
