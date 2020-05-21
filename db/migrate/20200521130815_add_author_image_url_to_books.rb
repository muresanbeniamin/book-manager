class AddAuthorImageUrlToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :author_image_url, :string
  end
end
