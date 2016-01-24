class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged


  attr_accessor :image

   after_save :save_add_image, if: :image


   def save_add_image
    filename = image.original_filename
    folder = "public/uploads/#{id}/photos"

    FileUtils::mkdir_p folder

    f = File.open File.join(folder, filename), "wb"
    f.write image.read()
    f.close


    self.image = nil
  
    update image_filename: filename
   end
end
