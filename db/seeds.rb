user = User.create!(email: "admin21@exemplo.com", password: "123456")
user2 = User.create!(email: "use2@teste.com", password: "1234567")

post = Post.create(title: "Teste", content: "Teste", user: user)

post = Post.create(title: "Teste", content: "Teste", user: user)

image = ActiveStorage::Blob.create_and_upload!(
  io: File.open(Rails.root.join("public/images/teste.png")),
  filename: "teste.png",
  content_type: "image/png"
)

post = Post.create(title: "Teste", content: "Teste", user_id: user2.id, photos: [image])

post = Post.create(title: "Teste", content: "Teste", user_id: user2.id, photos: [image])


