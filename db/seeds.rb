# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

students = Student.create([
  {name: 'paul',  email: 'paul@gmail.com', password: '123456', age: 23},
  {name: 'sara',  email: 'sara@gmail.com', password: '123456', age: 30},
  {name: 'victor', email: 'victor@gmail.com', password: '123456', age: 35}, 
  {name: 'bea', email: 'bea@gmail.com', password: '123456', age: 35} 
])


teachers = Teacher.create([
  {name: 'raul_f',  email: 'raulf@gmail.com', age: 23, password: '123456', description: 'profesional', sport_id: 1},
  {name: 'rafa_f',  email: 'rafaf@gmail.com', age: 30, password: '123456', description: 'titulado', sport_id: 1},
  {name: 'mick_t', email: 'mickt@gmail.com', age: 35, password: '123456', description: 'experto', sport_id: 2}, 
  {name: 'raul_t',  email: 'rault@gmail.com', age: 23, password: '123456', description: 'profesional', sport_id: 2},
  {name: 'rafa_b',  email: 'rafab@gmail.com', age: 30, password: '123456', description: 'titulado', sport_id: 3},
  {name: 'mick_b', email: 'mickb@gmail.com', age: 35, password: '123456', description: 'experto', sport_id: 3},
  {name: 'alex_p',  email: 'alexp@gmail.com', age: 30, password: '123456', description: 'titulado', sport_id: 4},
  {name: 'mick_p', email: 'mickp@gmail.com', age: 35, password: '123456', description: 'experto', sport_id: 4}  
])

sports = Sport.where(name: 'futbol').first_or_create
sports = Sport.where(name: 'tenis').first_or_create
sports = Sport.where(name: 'basket').first_or_create
sports = Sport.where(name: 'padel').first_or_create


#binding.pry
# t = Teacher.first
# s = Student.first
# sp = Sport.first

# appointments = Appointment.create([
#   {date: DateTime.new(2015, 6, 22), student_id: s.id, teacher_id: t.id, sport_id: sp.id}
# ])



