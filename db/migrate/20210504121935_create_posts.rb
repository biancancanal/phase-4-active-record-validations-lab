class CreatePosts < ActiveRecord::Migration[6.1]
  validates :title, :content

  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.text :summary
      t.string :category

      t.timestamps
    end
  end
end
