# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# users
@users = User.create([{name: 'John Doe', email: 'johndoe@example.com', password: 'pattohoh'}, {name: 'Felix Oduor', email: 'felixoduor@example.com', password: 'pattohoh'}])

# payments
@payments = Payment.create([{name: 'YTFGJKBVGFHJ876FBNUYTYFV', amount: 52, author_id: 1}, {name: 'RTYFR88FDUHJSIURNFII9', amount: 84, author_id: 1}, {name: 'RTYUWEUI887DFNIUUIFDK', amount: 42, author_id: 1}])

# Groups
@groups = Group.create([{name: 'McDonalds', icon: 'https://www.mcdonalds.com/content/dam/sites/usa/nfl/icons/arches-logo_108x108.jpg', author_id: 1}, {name: 'BrookSide', icon: 'https://www.brookside.co.ke/images/logo.png', author_id: 1}])

# GroupPayments
# @group_payment = GroupPayment.create(group: @groups.id, payment: @payments.id)
