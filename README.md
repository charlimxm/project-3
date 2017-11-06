
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
![](/public/images/ERD.png)
## <center>User Stories

* Customers can make multiple bookings for different restaurants
* Customers can see seating chart for different restaurants
* Owners can control restaurant details (restaurant number, address, max-seats, opening hours)
* Staff can only access restaurant details
* Both Customers and Staff can access booking details
* FOR NEXT TIME
* Customers can only pay via credit card
* Customers can see menus to order food and beverages

## <center> Use Cases

* TBD

## <center> Wireframes

* Registration page

![](/public/images/wireframe1.jpeg)

* Login page

![](/public/images/wireframe2.jpeg)

* Search by Location/Cuisine page

![](/public/images/wireframe3.jpeg)

* Search By Restaurant Name page

![](/public/images/wireframe4.jpeg)

* Search Results page

![](/public/images/wireframe5.jpeg)

* Restaurant Booking Page

![](/public/images/wireframe6.jpeg)

# <center>Team Notes</center>
* If you are using seed data please propagate the restaurants before seeding data for the staffs table as the restaurant ID is required for the staff table.
___
## <center>Team Journal</center>
Joseph | Description | Bug/Framework
------ | --- | ---
1| Added working models | Framework
2| Resolved non appearing data in tables | Bug

Charmaine | Description | Bug/Framework
------ | --- | ---
1| Added ERDs | Framework
2| text | text
3| text | text

Liyuan | Description | Bug/Framework
------ | --- | ---
1| Added Landing Pages: home/register/login | Framework
2| Added User Stories| Framework
3| text | text
___
## <center> To Do List

Description    | Importance | Type
-------- | --- | ---
Seed default data for bookings table | **HIGH** | Bug
Come up with a plan as to how to seat customers and update the system   | Medium | Framework
Come up with working POS and Queue system | Low | Framework
Add images/videos to restaurant page? | Low | Framework
