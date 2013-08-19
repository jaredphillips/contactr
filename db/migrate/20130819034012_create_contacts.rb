class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.references :users, index: true
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phone
      t.text :notes
    end
  end
end
