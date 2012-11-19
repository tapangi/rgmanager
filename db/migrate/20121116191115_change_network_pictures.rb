class ChangeNetworkPictures < ActiveRecord::Migration
  def change
    rename_column :networks, :picture, :banner_image
    add_column :networks, :thumbnail_image, :string
  end

end
