class NoteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content
  belongs_to :notebook
end
