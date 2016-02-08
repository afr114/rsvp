#RSVP

####Version 1.0, January, 30, 2016
By Aileen Cacayorin, Shannon Mulloy, Abdul Rahimi, Jake Glassman, and Austin Kincaid

###Description
An event manager for those times when many loved-ones all come together off different flights. Finalist at Expedia Seattle Hackathon 2016.

** A live demo was originally built in two days for the hackaton submission and can be viewed here: (http://rsvp-list.herokuapp.com/). The project is now ongoing.

Here are the users' stories:
* [Complete] User signs up with RSVP: The PREMIER event manager.
* [Complete] User creates a new event for a gathering.
* [Complete] User invites Guests with their emails.
* [Complete] Guests are emailed an invite to the Event and can follow a special link that will link their account to the Event.
* [Complete] Guests can enter their lodging location and room number.
* [Complete] If a Guest wants to stay somewhere that other Guests are staying, they can see Expedia provided prices for lodging at the same location.
* [Complete] If Guest adds a new location, it is added to the Event as a new lodging location.
* [Complete] If a guest wants to search for a



###Setup
1. Clone the repo
2. To bundle the gems, type `bundle` into the terminal
3. To launch Postgres, type `postgres` into the terminal
4. To create the database, type `rake db:create` into the terminal
5. To create the tables in the database, type `rake db:migrate` into the terminal
6. Launch server by typing `rails s` into the terminal and going to `localhost:3000` in your browser

###Technologies Used
This app relies on Ruby on Rails, PostgreSQL, Action Mailer (with MailGun), Bootstrap, and the Hotel APIs provided by Expedia.

###Legal

Copyright (c) 2015 Shannon Mulloy, Aileen Cacayorin, Abdul Rahimi, Jake Glassman, and Austin Kincaid

This software is licensed under the MIT license.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
