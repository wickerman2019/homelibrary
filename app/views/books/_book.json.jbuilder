json.extract! book, :id, :name, :author, :publisher, :year, :genre_id, :created_at, :updated_at
json.url book_url(book, format: :json)
