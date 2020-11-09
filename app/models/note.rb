class Note < ApplicationRecord
    include Rails.application.routes.url_helpers
    belongs_to :notebook
   
end
