class CreateAuthors < ActiveRecord::Migration[6.1]
  validates :name, uniqueness: true
  validates :phone_number, length: 10

  def change
    create_table :authors do |t|
      t.string :name
      t.string :phone_number

      t.timestamps
    end
  end
end
