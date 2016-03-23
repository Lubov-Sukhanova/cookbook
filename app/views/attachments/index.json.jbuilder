json.array!(@attachments) do |attachment|
  json.extract! attachment, :id, :image, :position, :dish_id, :comment
  json.url attachment_url(attachment, format: :json)
end
