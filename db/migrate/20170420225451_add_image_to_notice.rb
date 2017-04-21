class AddImageToNotice < ActiveRecord::Migration[5.0]
  def change
    add_column :notices, :image_uid, :string
  end
end
