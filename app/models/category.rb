class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '高校受験' },
    { id: 3, name: '大学受験' },
    { id: 4, name: '理系教科' },
    { id: 5, name: '文系教科' },
    { id: 6, name: '進路相談' },
    { id: 7, name: '経済・金融' },
    { id: 8, name: '教育・学習方法' },
    { id: 9, name: '転職' },
    { id: 10, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :users
end
