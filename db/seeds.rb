User.create(email: 'test@example.com', first_name: 'Bob', last_name: 'Bobson', password: 'password1', password_confirmation: 'password1')
User.create(email: 'test2@example.com', first_name: 'Jim', last_name: 'Turner', password: 'password2', password_confirmation: 'password2')
User.create(email: 'test3@example.com', first_name: 'Mary', last_name: 'Jackson', password: 'password3', password_confirmation: 'password3')
User.create(email: 'test4@example.com', first_name: 'Lou', last_name: 'Roberts', password: 'password4', password_confirmation: 'password4')

Guest.create(user_id: 1, event_id: 1)
Guest.create(user_id: 2, event_id: 1)
Guest.create(user_id: 3, event_id: 1)
Guest.create(user_id: 4, event_id: 1)
Guest.create(user_id: 1, event_id: 2)
Guest.create(user_id: 2, event_id: 2)
Guest.create(user_id: 3, event_id: 2)
Guest.create(user_id: 4, event_id: 2)


Event.create(user_id: 1, title: "Dope Wedding", start_date: "February 18, 2016 15:00", end_date: "February 22, 2016 22:00", description: "Yo come to this wedding bruh it's gon be so tight. So many cool peeps coming and they all know how to party yo. Omg it's gon' be soooooooooo dope.")
Event.create(user_id: 2, title: "Classy Party", start_date: "August 3, 2016 14:00", end_date: "August 6, 2016 22:00", description: "This party so freaking classy. Come dressed in your most classy attire. There's gon' be so much wine and cheese and stuff. Bring your own olives.")

Location.create(name: 'Ace Hotel', street: "1022 SW Stark St", city: "Portland", state: "OR", zip: "97205", event_id: 1)
Location.create(name: 'The Marriott', street: "1401 SW Naito Pkwy", city: "Portland", state: "OR", zip: "97201", event_id: 1)
Location.create(name: 'The Nines', street: "525 SW Morrison St", city: "Portland", state: "OR", zip: " 97204", event_id: 2)
Location.create(name: 'Jupiter Hotel', street: "800 E Burnside St", city: "Portland", state: "OR", zip: "97214", event_id: 2)

Room.create(start_date: "February 18, 2016 15:00", end_date: "February 22, 2016 11:00", guest_id: 1, location_id: 1, room_number: 345, event_id: 1)
Room.create(start_date: "February 18, 2016 15:00", end_date: "February 22, 2016 11:00", guest_id: 3, location_id: 2, room_number: 119, event_id: 1)
Room.create(start_date: "February 18, 2016 15:00", end_date: "February 22, 2016 11:00", guest_id: 4, location_id: 2, room_number: 234, event_id: 1)
Room.create(start_date: "August 3, 2016 14:00", end_date: "August 6, 2016 10:00", guest_id: 5, location_id: 3, room_number: 111, event_id: 2)
Room.create(start_date: "August 3, 2016 14:00", end_date: "August 6, 2016 10:00", guest_id: 7, location_id: 3, room_number: 113, event_id: 2)
Room.create(start_date: "August 3, 2016 14:00", end_date: "August 6, 2016 10:00", guest_id: 8, location_id: 4, room_number: 231, event_id: 2)
Room.create(start_date: "August 3, 2016 14:00", end_date: "August 6, 2016 10:00", guest_id: 5, location_id: 3, room_number: 111, event_id: 2)
Room.create(start_date: "August 3, 2016 14:00", end_date: "August 6, 2016 10:00", guest_id: 7, location_id: 3, room_number: 113, event_id: 2)
Room.create(start_date: "August 3, 2016 14:00", end_date: "August 6, 2016 10:00", guest_id: 8, location_id: 4, room_number: 231, event_id: 2)
Room.create(start_date: "August 3, 2016 14:00", end_date: "August 6, 2016 10:00", guest_id: 5, location_id: 3, room_number: 111, event_id: 2)
Room.create(start_date: "August 3, 2016 14:00", end_date: "August 6, 2016 10:00", guest_id: 7, location_id: 3, room_number: 113, event_id: 2)
Room.create(start_date: "August 3, 2016 14:00", end_date: "August 6, 2016 10:00", guest_id: 8, location_id: 4, room_number: 231, event_id: 2)
Room.create(start_date: "August 3, 2016 14:00", end_date: "August 6, 2016 10:00", guest_id: 5, location_id: 3, room_number: 111, event_id: 2)
Room.create(start_date: "August 3, 2016 14:00", end_date: "August 6, 2016 10:00", guest_id: 7, location_id: 3, room_number: 113, event_id: 2)
Room.create(start_date: "August 3, 2016 14:00", end_date: "August 6, 2016 10:00", guest_id: 8, location_id: 4, room_number: 231, event_id: 2)
Room.create(start_date: "August 3, 2016 14:00", end_date: "August 6, 2016 10:00", guest_id: 5, location_id: 3, room_number: 111, event_id: 2)
Room.create(start_date: "August 3, 2016 14:00", end_date: "August 6, 2016 10:00", guest_id: 7, location_id: 3, room_number: 113, event_id: 2)
Room.create(start_date: "August 3, 2016 14:00", end_date: "August 6, 2016 10:00", guest_id: 8, location_id: 4, room_number: 231, event_id: 2)
Room.create(start_date: "August 3, 2016 14:00", end_date: "August 6, 2016 10:00", guest_id: 5, location_id: 3, room_number: 111, event_id: 2)
Room.create(start_date: "August 3, 2016 14:00", end_date: "August 6, 2016 10:00", guest_id: 7, location_id: 3, room_number: 113, event_id: 2)
Room.create(start_date: "August 3, 2016 14:00", end_date: "August 6, 2016 10:00", guest_id: 8, location_id: 4, room_number: 231, event_id: 2)
Room.create(start_date: "August 3, 2016 14:00", end_date: "August 6, 2016 10:00", guest_id: 5, location_id: 3, room_number: 111, event_id: 2)
Room.create(start_date: "August 3, 2016 14:00", end_date: "August 6, 2016 10:00", guest_id: 7, location_id: 3, room_number: 113, event_id: 2)
Room.create(start_date: "August 3, 2016 14:00", end_date: "August 6, 2016 10:00", guest_id: 8, location_id: 4, room_number: 231, event_id: 2)
