
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

## HomePage
![](app/assets/images/readme/wireframe1.jpg)

## Search Results Page
![](app/assets/images/readme/wireframe2.jpg)

## Register
![](app/assets/images/readme/wireframe3.jpg)

## Login
![](app/assets/images/readme/wireframe4.jpg)

## <center>User Stories

### FoodSpace

How Customers would use this:
1. When a Customer loads the landing page, they can search for particular menu items they enjoy
2. A list of various restaurants serving the menu item appears, allowing customers to see which restaurant is the most popular for that specific menu item
3. Customers can upvote the menu items they prefer, allowing the public to control rankings of the menu items
4. Customers can upload pictures of dishes they enjoy if they are not in the list, subject to verification by admins
5. Customers must register and login to vote/upload

How Restaurant Owners/Staff would use this:
1. Owners can see where their menu items are located in the rankings and choose to give discounts on the specific menu items
3. Owners can also gain valuable feedback in the form of user ratings and reviews to adapt their menu
4. Owners are required to submit updated menus periodically to admins to confirm that dishes actually exist

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
2| Loaded initial migration and seed data | Framework
3| Added working pages and default routes | Framework
4| Modified profile_edit page to contain & change more fields | Framework
5| Created case insensitive search function for home page | Framework
6| Added voting system | Framework
7| Resolved ruby in js.erb code bug (Needs to be placed elsewhere) | Bug
8| Resolved !user.owner bug | Bug
9| Resolved bug for edit page | Bug

Charmaine | Description | Bug/Framework
------ | --- | ---
1| Created edit page for dish details | Framework
2| Created delete page for dish details | Framework
3| Created function to check if user is owner | Framework
4| Added dish picture upload function | Framework

Li Yuan | Description | Bug/Framework
------ | --- | ---
1| Landing Pages: home/register/login | Framework
2| User Stories| Framework
3| Data scraping for restaurants | Framework
4| Added wireframes | Framework
___
## Ask During Consultation
* How to make search asynchronous

## Assumptions
* Owners may have more than one restaurant

## <center> To Do List
Description    | Importance | Type
-------- | --- | ---  
Add OCR API to allow users to scan the menu| Medium | Framework
Scrape restaurant data | Medium | Framework
Add google maps to allow search function based on user location | Framework
~~Make search function async~~ | Medium | Framework
~~Add images to user profile~~ | Low | Framework
~~Update README with latest wireframe images~~ | Low | Framework
~~Add working routes for default pages~~ | **HIGH** | Framework
~~Implement CSS Framework and working form routes~~ | **HIGH** | Framework
~~Come up with search page logic~~ | **HIGH** | Framework

## Potential Improvements
* Add reviews for each dish
* Facebook login and share
* Additional promotions
* OCR scanning of bill to split payment
