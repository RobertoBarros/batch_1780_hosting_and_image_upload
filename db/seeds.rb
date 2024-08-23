Article.destroy_all

Article.create(title: 'Esse article veio do seed', body: 'Esse é o body que veio do seed')


file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
article = Article.new(title: "NES", body: "A great console")
article.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
article.save
