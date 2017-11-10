
# FoodSpace
##### PROJECT 3

## Description
Find the most popular dishes in town and vote to make your best dish famous! Restaurants may also offer discounts on our app!

_____
## <center>Installation instructions

```sh
gem install
rails db:create
rails db:migrate
rails db:seed
```

## ERD
![](app/assets/images/readme/ERD.png)

##
## <center>User Stories

How Customers would use this:
1. When a Customer loads the landing page, they can search for restaurants to book either by cuisine and location OR by the restaurant name
2. Customers can view different restaurant details and seating chart for availability
3. However, Customers must register and login to actually make a booking
4. Customers can make multiple bookings for different restaurants at any one time

How Restaurant Owners/Staff would use this:
1. Owners have to register and login to create/edit their restaurant details page (incl. restaurant number, address, max seats, opening hours)
2. Both Owners and Staff(waiters) have access to restaurant details and customers’ booking details (incl. number of pax, time, date, comments)

## <center> Use Cases

* TBD

## <center> Wireframes

* Home page
![](/app/assets/images/readme/wireframe1.jpg)

# <center>Team Notes</center>
* If you are using seed data please propagate the restaurants before seeding data for the staffs table as the restaurant ID is required for the staff table.
___
## <center>Team Journal</center>
Joseph | Description | Bug/Framework
------ | --- | ---
1| Added working models | Framework
2| Loaded initial data | Framework

Charmaine | Description | Bug/Framework
------ | --- | ---
1| Added ERDs | Framework
2| text | text
3| text | text

Li Yuan | Description | Bug/Framework
------ | --- | ---
1| Landing Pages: home/register/login | Framework
2| User Stories| Framework
3| text | text
___
## Ask During Consultation
* Assistance in installing CSS Frameworks


## Assumptions
* Owners may have more than one restaurant

## <center> To Do List
Description    | Importance | Type
-------- | --- | ---
Update README with latest wireframe images | Low | Framework
Add working routes for default pages | **HIGH** | Framework
Implement CSS Framework and working form routes | **HIGH** | Framework
~~Come up with search page logic~~ | **HIGH** | Framework

## Potential Improvements
* Add individual dish pages (with restaurant info)
* Add reviews for each dish
