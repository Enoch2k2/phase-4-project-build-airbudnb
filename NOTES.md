AirBudNB

Overview (features we want):
- Dogs that were guest in dog homes.
- Dog's will leave the review
- Dog's will also be the user
- Dog's will have to pay for their stay (which will create the relationships)


MVP:


(Routes):
Landing Page: /
Home route: /homes the homes
Login: /login
Signup: /signup
Detailed Home: /homes/:id (displays information about the house, as well as the reviews)
Checkout: /checkout

Stretch Goals:
Confirmation: /confirmation/:random_hexicecimal_number
Order History: /order-history


Backend:

Models:
Dog
---
username
password_digest

Review
---
dog_id: belongs_to
dog_house_id: belongs_to
trip_id : belongs_to
content : text
rating : integer (between 1 and 5)
can only leave a review if trip has been taking to that address (past the end date of that trip)

DogHouse
---
address: string
state: string
zipcode: integer
image_url: string
short_description: text

Trip
---
belong_to Dog
belong_to DogHouse
has_one review
start_date : Date
end_date : Date