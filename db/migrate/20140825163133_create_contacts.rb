class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.column :name, :string
      t.column :phone, :string
      t.string :email

      t.timestamps
    end
  end
end
