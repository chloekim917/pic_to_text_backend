class NoteSerializer
  include FastJsonapi::ObjectSerializer
  
  belongs_to :notebook
  #wanted to save picture as well but react native version update prevented me from doing it
  attributes ..., :image, 

  def image_url
    url_for(object.image)
  end

  end
end

