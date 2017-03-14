# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# testユーザ追加
EMAIL_SUFFIX = 'example.com'
test_users = [
  { name: 'takizawa' },
  { name: 'hachimantai' },
  { name: 'shizukuishi' },
  { name: 'iwatemachi' },
  { name: 'kuzumaki' },
  { name: 'morioka' },
  { name: 'yahaba' },
  { name: 'shiwa' },
  { name: 'hanamaki' },
  { name: 'nishiwaga' }
]

test_users.each do |test_user|
  User.find_or_create_by(email: "#{test_user[:name]}@#{EMAIL_SUFFIX}") do |user|
    user.email = "#{test_user[:name]}@#{EMAIL_SUFFIX}"
    user.password = test_user[:name]
  end
end
