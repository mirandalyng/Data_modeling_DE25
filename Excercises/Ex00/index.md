# Exersice 0

## 0. Library Bookly

### A) Intities and attributes

**Book** (_title, author_id, ISB-number_)

**Member** (_membership_id, first_name, last_name, contact_id_)

**Author** (_author_id, first_name, last_name_)

**Contact_information** (_contact_id, phone_nr, email_)

### B) Determine the relationship between member and books.

- A member can borrow _one or many_ books
- A book can be borrowed by _one and only one_ customer

### c) Draw a conceptual ERD using crow foots notation

<img src = "pictures/Library_Bookly.png" height=100 width=700 >

## 1. Conceptual ERD to words

This is an ERD conceptual diagram that a database designer and the business stakeholders agreed upon in a car rental company called Carent.

<img src = "pictures/car_rental.png" height=80 width=600 >

### A) Describe the entities in this conceptual ERD.

**Customer** (customer_id(PK), first_name, last_name, rent_id(FK), phone_nr, card_nr)

- _customer_id_ - PK and has an unique value for each customer
- _fist_name_ - first name of the customer
- _last_name_ - last name of the customer
- _phone_nr_ - phone number is the required contact information for the customer
- _card_nr_ - card number is the payment info from the customer

**Rental** (rent_id(PK), licence_plate(FK), rental_period)

- _rent_id_ - PK and unique
- _licence_plate_ - FK and unique for the car
- _rental_period_ - rental period counted in days

**Car** (licence_plate(PK), model, fuel_type,transmission, price_per_day)

- _licence_plate_ - PK and uniqe for each car
- _model_ - the model of the car
- _fuel_type_ -energy source (Gasoline, Diesel, Electric, Hybrid)
- _transmission_ - type of gearbox (Manual, Automatic)
- _price_per_day_ - cost to rent the car per day

### B) Write out the relationship labels.

**Customer** -- _books_ -- **Rental** -- _uses_ -- **Car**

### C) Describe the relationships between the entities (one-to-many, one-to-one and many-to-many).

Customer -- _one-or-many_ -- Rental

Rental -- _one-and-only one_ -- Customer

Rental -- _one-or-many_ -- Cars

Car -- _one-and-only one_ -- Rental

### D) Define the relationship statement for example: "A Customer can have one or more Rentals".

- A Customer can book one or many Rentals
- A Rental can have exactly one Customer
- A Rental can include one or many Cars
- A Car can just be included in one Rental

## 2. University management system

A university needs a system to manage students, courses, and professors.

- each student can enroll in multiple courses.
- each course is taught by one professor.
- a teacher can teach multiple courses.

### A) Identify entities and their relationships

### B) Come up with possible attributes for the entities

### C) Draw conceptual ERD with cardinalities

### D) Define business rules (e.g. a student can enroll in max 4 courses)
