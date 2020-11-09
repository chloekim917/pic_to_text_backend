class NoteSerializer
  include FastJsonapi::ObjectSerializer

  belongs_to :notebook
  attributes ..., :image, 

  def image_url
    url_for(object.image)
  end

  end
end

