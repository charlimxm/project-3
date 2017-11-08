
# FoodSpace
##### PROJECT 3

## Description
 Ever had problems deciding where to eat because you were not sure if your favourite restaurant was packed? We've got you covered, with FoodSpace you can now view available seats , book a reservation, pre-order your food as well as pay for your meal through one application!

 ### <center> Welcome to the future, welcome to FoodSpace

_____
## <center>Installation instructions

```sh
gem install
rails db:migrate
rails db:seed
```

## ERD
![](app/assets/images/readme/ERD.png)
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

* Registration page

![](/app/assets/images/readme/wireframe1.jpeg)

* Login page

![](/app/assets/images/readme/wireframe2.jpeg)

* Search by Location/Cuisine page

![](/app/assets/images/readme/wireframe3.jpeg)

* Search By Restaurant Name page

![](/app/assets/images/readme/wireframe4.jpeg)

* Search Results page

![](/app/assets/images/readme/wireframe5.jpeg)

* Restaurant Booking Page

![](/app/assets/images/readme/wireframe6.jpeg)

# <center>Team Notes</center>
* If you are using seed data please propagate the restaurants before seeding data for the staffs table as the restaurant ID is required for the staff table.
___
## <center>Team Journal</center>
Joseph | Description | Bug/Framework
------ | --- | ---
1| Added working models | Framework
2| Resolved non appearing data in tables | Bug
3| Resolved issue with Booking table | Bug
4| Added working routes & changed home page route | Framework
5| Loaded initial data | Framework

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
* Should we allocate one column per slot in our model tables? Is it practical?
* Our admins/staff need to be linked to the restaurants and have custom access, can we check current_user.type?
* How do i allow edit page to take in another field? Specifically how to do find out the names of the pages
* How to resolve 1 restaurant having more than one outlet

asuyefasdjgajhsdgfjhdsgfjhasdgfjhkasdgfjahsd

## <center> To Do List
Description    | Importance | Type
-------- | --- | ---
Create working buttons (7/11/12) | **HIGH** | Framework
Implement CSS Framework and working form routes | **HIGH** | Framework
Come up with search page logic | **HIGH** | Framework
Find out how to keep track of the available tables | **HIGH** | Framework
Setup initial loading page with search function | Medium | Framework
Come up with a plan as to how to seat customers and update the system   | Medium | Framework
Come up with working POS and Queue system | Low | Framework
Add images/videos to restaurant page? | Low | Framework
Add menus to allow customers to order food after they have seated? How to measure they are seated... | Low | Framework
Add payment system to allow customers to pay | Low | Framework
~~Seed default data for bookings table~~ | **HIGH** | Bug
