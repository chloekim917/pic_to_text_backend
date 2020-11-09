class NoteSerializer
  include FastJsonapi::ObjectSerializer
  # attributes :title, :content, :image
  belongs_to :notebook
  attributes ..., :image, 

  # def image
  #   return unless object.image.attached?

  #   object.image.blob.attributes
  #         .slice('filename', 'byte_size')
  #         .merge(url: image_url)
  #         .tap { |attrs| attrs['name'] = attrs.delete('filename') }
  # end

  def image_url
    url_for(object.image)
  end

  # def note_attributes(note)
  #   # serialize_new_note=
  #   {note: {
  #     id: note.id,
  #     title: note.title,
  #     content: note.content,
  #     image: note.get_image_url()
  #   }}.to_json()

  end
end

