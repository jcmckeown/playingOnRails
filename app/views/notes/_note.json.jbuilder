json.extract! note, :id, :note_title, :note_contents, :note_auth, :created_at, :updated_at
json.url note_url(note, format: :json)
