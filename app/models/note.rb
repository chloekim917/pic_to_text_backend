class Note < ApplicationRecord
    include Rails.application.routes.url_helpers
    belongs_to :notebook
     # has_one_attached :image
  
    # def get_image_url
    #     url_for(self.image)
    # end
   
end
