class NotebookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :notebook_name
  belongs_to :user
end
