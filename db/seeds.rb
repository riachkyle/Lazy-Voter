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
    date:'08/04/2014'
    
  },
  {
    state: 'California',
    city:'Los Angeles',
    date:'08/05/2015'
  }])



propositon = Proposition.create([{
    propid: '001',
    whatitmeans:'Beer instead of water for all drinking fountains(Brant)',
    howtovote: 'Yes on Prop 1',
    why: 'Because....thats just beautiful',
    howtovoteno: "No on Prop 1",
    whyno: 'Because you hate beautiful things',
    date:'08/05/2015'
  },
  {
    propid: '002',
    whatitmeans:'Ian funds the free Kites for everyone(Levani)',
    howtovote: 'Yes on Prop 2',
    why: 'Because you think kites are awesome',
    howtovoteno: "No on Prop 2",
    whyno: "Because kites suck I guess?",
    date:'08/05/2015'
  },
  {
    propid: '003',
    whatitmeans:'Adopt football as the national sport(Zach)',
    howtovote: 'Yes on Prop 3',
    why: 'Because baseball is hella boring',
    howtovoteno: "No on Prop 3",
    whyno: "Because baseball is awesome!!!",
    date:'08/05/2015'
  },
  {
    propid: '001',
    whatitmeans:'Free kites for Everyone(Ian)',
    howtovote: 'Yes on Prop 1',
    why: 'Because you think kites are awesome',
    howtovoteno: "No on Prop 1",
    whyno: "Because kites suck I guess?",
    date:'08/04/2014'
  },
  {
   propid: '002',
    whatitmeans:'Mandatory ice cream trucks for every neighborhood(Hamilton)',
    howtovote: 'Yes on Prop 2',
    why: 'Because Hamilton didnt have one while growing up',
    howtovoteno: "No on Prop 2",
    whyno: "Because youre a frozen yogurt kinda person",
    date:'08/04/2014'
  }])
