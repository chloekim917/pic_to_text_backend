# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Notebook.destroy_all

User.create(user_email: 'mintholic1@gmail.com')

# Notebook.create(user_id: 1, notebook_name: 'Korean')
# Notebook.create(user_id: 1, notebook_name: 'Japanese')

# Note.create(notebook_id: 1, title: 'hello', content: 'this is korean')
# Note.create(notebook_id: 1, title: 'hi', content: 'im korean')
# Note.create(notebook_id: 1, title: 'anyung', content: 'hello korean')
# Note.create(notebook_id: 2, title: 'howdy', content: 'this is japanese')
# Note.create(notebook_id: 2, title: 'gonichiwa', content: 'hello japanese')