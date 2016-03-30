Actor.delete_all
Character.delete_all
Show.delete_all

khaleesi = Character.create(name: "Daenerys Targaryen")
jon = Character.create(name: "Jon Snow")
tyrion = Character.create(name: "Tyrion Lannister")
arya = Character.create(name: "Arya Stark")

emilia = Actor.create(first_name: "Emilia", last_name: "Clarke")
peter = Actor.create(first_name: "Peter", last_name: "Dinklage")
kit = Actor.create(first_name:"Kit", last_name:"Harington")
maisie = Actor.create(first_name:"Maisie", last_name:"Williams")

game_of_thrones = Show.create(name:"Game of Thrones")

khaleesi.show = game_of_thrones
jon.show = game_of_thrones
tyrion.show = game_of_thrones
arya.show = game_of_thrones

#khaleesi.actor = emilia
#jon.actor = kit
#tyrion.actor = peter
#arya.actor = maisie


