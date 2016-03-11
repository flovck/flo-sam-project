
User.create(email: 'toto1@tata.com', password: 'norautolol', name: 'George', address: '13 rue de la Gaité 59100 Roubaix' , phone: '03 20 12 45 45')
User.create(email: 'toto2@tata.com', password: 'norautolol', name: 'Abdel', address: '31 rue de la Fonderie 59200 Tourcoing' , phone: '06 32 21 54 14')
User.create(email: 'toto3@tata.com', password: 'norautolol', name: 'Thomas', address: '43 rue de la Blanche Porte 59200 Tourcoing', phone: '06 17 17 17 18')
User.create(email: 'toto4@tata.com', password: 'norautolol', name: 'Floflo', address: '3 rue des Champs 59223 Roncq', phone: '06 43 43 43 48')
User.create(email: 'toto5@tata.com', password: 'norautolol', name: 'Samy', address: '143 avenue de la Liberté 59000 Lille', phone: '03 20 31 63 98')


Lift.create(name: 'Garage Vroom', address: '13 rue de la Gaité 59100 Roubaix', user: User.all.sample, photo: "images/garage1.jpg")
Lift.create(name: 'Garage de la Rivière', address: '31 rue de la Fonderie 59200 Tourcoing' , user: User.all.sample, photo: "garage2.jpg")
Lift.create(name: 'Speedy up', address: '43 rue de la Blanche Porte 59200 Tourcoing', user: User.all.sample, photo: "garage3.jpg")
Lift.create(name: 'Jacky Mécano', address: '3 rue des Champs 59223 Roncq', user: User.all.sample, photo: "garage4.jpg")
Lift.create(name: 'Ma Belle Auto', address: '143 avenue de la Liberté 59000 Lille', user: User.all.sample, photo: "garage5.jpg")
