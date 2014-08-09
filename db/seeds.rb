# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create([{
    username: 'Kyle Riach',
    email:'riachkyle@gmail.com',
    dateofbirth:'08/17/1987'

  },
  {
    username: 'Brandon Kwong',
    email:'bk@gmail.com',
    dateofbirth:'09/19/1987'
  }])


ballot = Ballot.create([{
    state: 'California',
    city:'Los Angeles',
    date:'08/04/2014',
    
  }])



propositon = Proposition.create([{
    propid: '006',
    whatitmeans:'Raising Taxes Temporarily to fund education',
    whatyouthink:'do it',
    howtovote: 'yes',
    why: 'Because you care about the kids',
    date:'08/05/2014',
    comment: ''

  },
  {
    propid: '002',
    whatitmeans:'Political contributions by payroll deductions',
    whatyouthink:'dont do it',
    howtovote: 'no',
    why: 'Beacuse Im not a fucking idiot',
    date:'08/05/2014',
    comment: ''
  }])
