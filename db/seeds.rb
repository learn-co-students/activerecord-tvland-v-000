Actor.delete_all
Character.delete_all
Network.delete_all
Show.delete_all

harry = Actor.create(:first_name=>'Harry')
johnson = Actor.create(:last_name=>'Johnson')

sm = Character.create(:name=>'Spiderman')
pres = Character.create(:name=>'President')
everyman = Character.create(:name=>'Everyman')

cbs = Network.create(:call_letters=>'KSUA', :channel=>7)
abc = Network.create(:call_letters=>'KTVF', :channel=>2)

simpsons = Show.create(:name=>'Simpsons')
sos = Show.create(:name=>'Some Other Show')

sm.actor = harry
pres.actor = johnson
everyman.actor = harry

harry.characters << sm
harry.characters << everyman
johnson.characters << pres

cbs.shows << sos
abc.shows << simpsons

simpsons.characters << sm
simpsons.characters << pres
sos.characters << sm
