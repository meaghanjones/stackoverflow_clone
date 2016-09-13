FactoryGirl.define do

  factory(:question) do
    text('Why dont fish sleep?')
    votes(0)
    user
  end
  factory(:user) do
    name('meaghan')
    email('meaghan5@gmail.com')
    password('password')
  end
end
