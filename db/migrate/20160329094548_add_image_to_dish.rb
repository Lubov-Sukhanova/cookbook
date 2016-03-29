class AddImageToDish < ActiveRecord::Migration
  def change
    add_attachment :dishes, :image
  end
end
