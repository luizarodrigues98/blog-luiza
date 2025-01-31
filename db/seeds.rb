user = User.create(email: "admin@exemplo.com", password: "123456")
user2 = User.create(email: "use2@teste.com", password: "123456")
Post.create(title: "Teste", content: "Teste", user: user)
image = ActiveStorage::Blob.create_and_upload!(
  io: File.open(Rails.root.join("public/images/teste.png")),
  filename: "rails.webp",
  content_type: "image/webp"
)
image2 = ActiveStorage::Blob.create_and_upload!(
  io: File.open(Rails.root.join("public/images/IntroducaoMVC02.jpg")),
  filename: "rails.webp",
  content_type: "image/webp"
)

image3 = ActiveStorage::Blob.create_and_upload!(
  io: File.open(Rails.root.join("public/images/ia.jpeg")),
  filename: "rails.webp",
  content_type: "image/webp"
)
Post.create(title: "Inteligência Artificial", content: "Na área de Inteligência Artificial, a linguagem pode ser utilizada para construir chatbots, processamento de linguagem natural e análise de dados. Em Machine Learning, é possível usar Ruby on Rails para construir algoritmos de aprendizado de máquina, enquanto na Internet das Coisas pode ser usada para controlar dispositivos remotos e coletar dados. Por exemplo, é possível criar um aplicativo web usando o Ruby on Rails que usa um modelo de Machine Learning treinado para fazer previsões sobre o comportamento do usuário ou recomendar produtos personalizados com base em suas preferências de histórico de compras. O aplicativo pode ser projetado para coletar dados de usuário em tempo real e integrar esses dados com o modelo de Machine Learning para fornecer previsões e recomendações mais precisas e personalizadas.
Para implementar isso em Ruby on Rails, o programador pode usar uma biblioteca como o scikit-learn, que é uma biblioteca popular de Machine Learning em Python, mas que pode ser integrada com o Ruby on Rails por meio de um wrapper chamado SciRuby. O programador também pode usar outras bibliotecas e ferramentas de Machine Learning que têm suporte para Ruby, como o H2O, que é uma plataforma de Machine Learning de código aberto com uma API para Ruby.", user_id: user2.id, photos: [image, image3])
Post.create(title: "MVC", content: "O MVC é utilizado em muitos projetos devido a arquitetura que possui, o que possibilita a divisão do projeto em camadas muito bem definidas. Cada uma delas, o Model, o Controller e a View, executa o que lhe é definido e nada mais do que isso.
A utilização do padrão MVC traz como benefício o isolamento das regras de negócios da lógica de apresentação, que é a interface com o usuário. Isto possibilita a existência de várias interfaces com o usuário que podem ser modificadas sem a necessidade de alterar as regras de negócios, proporcionando muito mais flexibilidade e oportunidades de reuso das classes.", user_id: user2.id, photos: [image2])


