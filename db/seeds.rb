category = Category.create(name: 'Therapist')
category2 = Category.create(name: 'Oculist')
category3 = Category.create(name: 'Cardiologist')
category4 = Category.create(name: 'Virology')
category5 = Category.create(name: 'Dentistry')
category6 = Category.create(name: 'Neurologist')
category7 = Category.create(name: 'Pediatrician')

doctor = Doctor.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  gender: Faker::Gender.binary_type,
  date_of_birth: Faker::Date.between(from: '1960-09-23', to: '2022-09-25'),
  phone: '050-1111-11-11',
  category_id: category.id,
  password: '121212')
doctor2 = Doctor.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  gender: Faker::Gender.binary_type,
  date_of_birth: Faker::Date.between(from: '1960-09-23', to: '2022-09-25'),
  phone: Faker::PhoneNumber.cell_phone,
  category_id: category.id,
  password: '121212')
doctor3 = Doctor.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  gender: Faker::Gender.binary_type,
  date_of_birth: Faker::Date.between(from: '1960-09-23', to: '2022-09-25'),
  phone: Faker::PhoneNumber.cell_phone,
  category_id: category2.id,
  password: '121212')
doctor4 = Doctor.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  gender: Faker::Gender.binary_type,
  date_of_birth: Faker::Date.between(from: '1960-09-23', to: '2022-09-25'),
  phone: Faker::PhoneNumber.cell_phone,
  category_id: category2.id,
  password: '121212')
doctor5 = Doctor.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  gender: Faker::Gender.binary_type,
  date_of_birth: Faker::Date.between(from: '1960-09-23', to: '2022-09-25'),
  phone: Faker::PhoneNumber.cell_phone,
  category_id: category3.id,
  password: '121212')
doctor6 = Doctor.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  gender: Faker::Gender.binary_type,
  date_of_birth: Faker::Date.between(from: '1960-09-23', to: '2022-09-25'),
  phone: Faker::PhoneNumber.cell_phone,
  category_id: category3.id,
  password: '121212')
doctor7 = Doctor.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  gender: Faker::Gender.binary_type,
  date_of_birth: Faker::Date.between(from: '1960-09-23', to: '2022-09-25'),
  phone: Faker::PhoneNumber.cell_phone,
  category_id: category4.id,
  password: '121212')
doctor8 = Doctor.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  gender: Faker::Gender.binary_type,
  date_of_birth: Faker::Date.between(from: '1960-09-23', to: '2022-09-25'),
  phone: Faker::PhoneNumber.cell_phone,
  category_id: category5.id,
  password: '121212')
doctor9 = Doctor.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  gender: Faker::Gender.binary_type,
  date_of_birth: Faker::Date.between(from: '1960-09-23', to: '2022-09-25'),
  phone: Faker::PhoneNumber.cell_phone,
  category_id: category6.id,
  password: '121212')
doctor10 = Doctor.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  gender: Faker::Gender.binary_type,
  date_of_birth: Faker::Date.between(from: '1960-09-23', to: '2022-09-25'),
  phone: Faker::PhoneNumber.cell_phone,
  category_id: category7.id,
  password: '121212')
  
user = User.create(
  first_name: 'Denis',
  last_name: 'Yars',
  gender: 'man',
  date_of_birth: '2023/01/22',
  phone: '050-1111-11-11',
  password: '121212')
user2 = User.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  gender: Faker::Gender.binary_type,
  date_of_birth: Faker::Date.between(from: '1960-09-23', to: '2022-09-25'),
  phone: '050-1111-11-12',
  password: '121212')
user3 = User.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  gender: Faker::Gender.binary_type,
  date_of_birth: Faker::Date.between(from: '1960-09-23', to: '2022-09-25'),
  phone: '050-1111-11-13',
  password: '121212')