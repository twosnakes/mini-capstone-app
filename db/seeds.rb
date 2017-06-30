Supplier.create!([
  {name: "Athena Hera", email: "Ahera@gmail.com", phone: "773-981-5267"},
  {name: "Jasper Stone", email: "Jstone@gmail.com", phone: "345-678-9876"},
  {name: "Sampson Longhair", email: "slonghair@gmail.com", phone: "234-765-0765"}
])
User.create!([
  {name: "Daisy Flowers", email: "dflowers@gmail.com", password_digest: "$2a$10$PZEOPexqx9CZMD72eK1CXeLVPE1DjnqEwcbfit0d4MWjvS8p6kT/m", admin: false},
  {name: "Daisy Flowers", email: "dflowers@gmail.com", password_digest: "$2a$10$m/i3QhuHiDF4VI6v0f948.kBnBG2PrygyO0vnc5sTwc1LLLVMhSAO", admin: false},
  {name: "Bruce Lee", email: "Blee@gmail.com", password_digest: "$2a$10$UnZ.RSPOosAbxZZkDHnoA.OLFXaOnpfH7akJdJ0O.1cL2DGumE6xK", admin: false},
  {name: "Damian Dollars", email: "ddollars@gmail.com", password_digest: "$2a$10$zHlXr/6pFZOzZhElUCoCoegbAj5qkq869CbDN519HwW.bMGItDc.O", admin: true},
  {name: "nan South", email: "nsouth@gmail.com", password_digest: "$2a$10$Uzgh9opRKCbSfAkKNOxMCOqhFfcAiC1MmqoT.Fsu3GL7C906ckws2", admin: false}
])

Category.create!([
  {name: "expensive"},
  {name: "black and white"},
  {name: "gift price"}
])
CategoryProduct.create!([
  {category_id: 4, product_id: 7},
  {category_id: 4, product_id: 8},
  {category_id: 4, product_id: 4},
  {category_id: 5, product_id: 9},
  {category_id: 5, product_id: 4},
  {category_id: 5, product_id: 2},
  {category_id: 5, product_id: 6},
  {category_id: 6, product_id: 4},
  {category_id: 6, product_id: 6}
])
Image.create!([
  {url: "http://3.bp.blogspot.com/-13P1t4UYUjA/WPZiWg3AsUI/AAAAAAAAGME/pZJ9KLsUHecm36ifpvZsWwgoPnBCZCkugCK4B/s1600/La%2BHabana.jpg", product_id: 2},
  {url: "http://2.bp.blogspot.com/-MTpdNfF7v-4/WPMEmKcgOyI/AAAAAAAAGIA/AhGxAvstzw80tinK5a6q_RBa9dtyfaDBQCK4B/s1600/Husky%2BIn%2BThe%2BWindow.jpg", product_id: 6},
  {url: "http://4.bp.blogspot.com/-KBGlML58too/WPMGZekRdgI/AAAAAAAAGIk/zp71ZRMTxrAGJG9v0aNzjYWAk1YJaWrIQCK4B/s1600/Sass.jpg", product_id: 7},
  {url: "http://4.bp.blogspot.com/-skbByjZTk-I/WPMF73m_rLI/AAAAAAAAGIc/41SwI3Sq_4oEJcDbs5NepMbhzt_Zuc-6wCK4B/s1600/Rollerbladers.jpg", product_id: 8},
  {url: "http://1.bp.blogspot.com/-Ix_NFvs4n5Q/WPMGuOwTuLI/AAAAAAAAGIs/uoJxJLyqjTsvslvT0rX7FgedfQkoC25lwCK4B/s1600/Schoolgirl.jpg", product_id: 9},
  {url: "http://4.bp.blogspot.com/-l49E3dG9qno/WPMSuQhxvfI/AAAAAAAAGKU/oZW0Vij292EYrubV-QnPlbILzlihSLMAgCK4B/s1600/Arcs.jpg", product_id: 5},
  {url: "http://1.bp.blogspot.com/-AOErcmRKKKg/WPMD50fgp3I/AAAAAAAAGHs/QHlvsOWbvQgsPt1qPQnfHnPbgywPS_wuQCK4B/s1600/Fishing%2BBoys.jpg", product_id: 4},
  {url: "http://4.bp.blogspot.com/-skbByjZTk-I/WPMF73m_rLI/AAAAAAAAGIc/41SwI3Sq_4oEJcDbs5NepMbhzt_Zuc-6wCK4B/s1600/Rollerbladers.jpg", product_id: 12}
])

Product.create!([
  {name: "Arcs", price: 300, description: "Black and white photo of arcs in Havana, Cuba", supplier_id: 3},
  {name: "Sass", price: 300, description: "Black and white photo of women walking in Havana, Cuba", supplier_id: 1},
  {name: "After School Girl", price: 300, description: "Black and white photo of girl after school in Havana, Cuba", supplier_id: 3},
  {name: nil, price: nil, description: nil, supplier_id: 3},
  {name: nil, price: nil, description: nil, supplier_id: 2},
  {name: "La Habana", price: 250, description: "Black and white street in Havana, Cuba", supplier_id: 2},
  {name: "Husky In The Window", price: 180, description: "Black and white photo of Husky in Havana, Cuba", supplier_id: 2},
  {name: "Cousins", price: 290, description: "Black and white photo of cousins in Havana, Cuba", supplier_id: 3},
  {name: "Rollerbladers", price: 300, description: "Black and white photo of rollerbladers in Havana, Cuba", supplier_id: 3}
])
