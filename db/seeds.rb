#notebook will be created within app
User.destroy_all
Notebook.destroy_all

User.create(user_email: 'mintholic1@gmail.com')
