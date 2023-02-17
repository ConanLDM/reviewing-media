require "open-uri"

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
Movie = Movie.new(title: "NES", body: "A great console")
Movie.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
Movie.save
