class DishesController < ApplicationController

  def mass_delete
    @dishes = params[:dishes][0]
    @dishes.each do |dish, id|
      Dish.find(id).destroy
    end
    respond_to do |format|
      format.html{ redirect_to users_update_path}
    end
  end

  def mass_update
    @dishes = params[:dishes2][0]
    @dishes.each do |dish, id|
      Dish.find(id).update_attribute(:discount, params[:discount])
    end
    respond_to do |format|
      format.html{ redirect_to users_update_path}
    end
  end

  def index
    @dishes = Dish.all
    @resultsHash = {}
    @dishes.each do |dish|
      @resultsHash[dish] = dish.ratings.count
    end
    @dishesSorted = @resultsHash.sort_by { |_name, rating| rating }.reverse
  end

  def show
    @dish = Dish.find(params[:id])
    @resto = Restaurant.find(@dish.restaurant_id)
    @reviews = Review.where("dish_id=#{@dish.id}")
    @new_review = @dish.reviews.build
    @dishRating = @dish.ratings.count
  end

  def create
    @user = current_user
    @resto = Restaurant.where("user_id=#{@user.id}").first

    @dish = Dish.new
    @dish.name = params[:dish][:name]
    @dish.price = params[:dish][:price]
    @dish.restaurant_id = @resto.id
    @dish.discount = params[:dish][:discount]
    @dish.photourl = if !params[:dish][:photourl].present?
                       'dishPic.png'
                     else
                       params[:dish][:photourl]
                     end
    @dish.save
    flash[:success] = 'Dish was successfully added!'
    redirect_to new_dish_path
  end

  def scrape
    @siteURL = 'https://www.burpple.com/categories/sg/burpple-guides'
    response = RestClient.get(@siteURL)
    html = response.body
    data = Nokogiri::HTML(html)

    @restaurants_url_list = []
    # get individual restaurant page urls from burpple
    data.css('.topVenue-details-info-details a:first-child').each do |restaurant_link|
      query = restaurant_link['href'].sub('?bp_ref=%2Fcategories%2Fsg%2Fcafes-and-coffee', '')
      @restaurants_url_list << 'https://www.burpple.com' + query
    end

    @restaurant_details = []

    @restaurants_url_list.each do |restaurant_url|
      response = RestClient.get(restaurant_url)
      html = response.body
      data = Nokogiri::HTML(html)

      restaurant_address = data.css('.venueInfo-details-header-item-body p')[0].text
      restaurant_name = data.css('.venueInfo-profile-header-text h1')[0].text
      restaurant_phone = data.css('.venueInfo-details-header-item:nth-child(3) p').text
      restaurant_description = data.css('.venueInfo-profile-body').text
      restaurant_photo_url = data.css('.venueInfo-profile-header-avatar img').attr('src')
      # dish one
      restaurant_dish_one_title = data.css('.food-description-title')[0].text
      restaurant_dish_one_price = data.css('.food-image')[0].text.delete('$').to_f
      restaurant_dish_one_url = 'https://www.burpple.com' + data.css('.food--dish a').first.attr('href')

      response_two = RestClient.get(restaurant_dish_one_url)
      html_two = response_two.body
      data_two = Nokogiri::HTML(html_two)
      restaurant_dish_one_picture = data_two.css('.food-image img').attr('src')

      # dish two
      restaurant_dish_two_title = data.css('.food-description-title')[1].text
      restaurant_dish_two_price = data.css('.food-image')[1].text.delete('$').to_f
      restaurant_dish_two_url = 'https://www.burpple.com' + data.css('.collectionFeed-body .food--dish:nth-child(2) a').to_s.split('"')[1].to_s

      response_three = RestClient.get(restaurant_dish_two_url)
      html_three = response_three.body
      data_three = Nokogiri::HTML(html_three)
      restaurant_dish_two_picture = data_three.css('.food-image img').attr('src')

      # dish three
      restaurant_dish_three_title = data.css('.food-description-title')[2].text
      restaurant_dish_three_price = data.css('.food-image')[2].text.delete('$').to_f
      restaurant_dish_three_url = 'https://www.burpple.com' + data.css('.collectionFeed-body .food--dish:nth-child(3) a').to_s.split('"')[1].to_s

      response_four = RestClient.get(restaurant_dish_three_url)
      html_four = response_four.body
      data_four = Nokogiri::HTML(html_four)
      restaurant_dish_three_picture = data_four.css('.food-image img').attr('src')

      # dish four
      restaurant_dish_four_title = data.css('.food-description-title')[3].text
      restaurant_dish_four_price = data.css('.food-image')[3].text.delete('$').to_f
      restaurant_dish_four_url = 'https://www.burpple.com' + data.css('.collectionFeed-body .food--dish:nth-child(4) a').to_s.split('"')[1].to_s

      response_five = RestClient.get(restaurant_dish_four_url)
      html_five = response_five.body
      data_five = Nokogiri::HTML(html_five)
      restaurant_dish_four_picture = data_five.css('.food-image img').attr('src')

      # dish five
      restaurant_dish_five_title = data.css('.food-description-title')[4].text
      restaurant_dish_five_price = data.css('.food-image')[4].text.delete('$').to_f
      restaurant_dish_five_url = 'https://www.burpple.com' + data.css('.collectionFeed-body .food--dish:nth-child(5) a').to_s.split('"')[1].to_s

      response_six = RestClient.get(restaurant_dish_five_url)
      html_six = response_six.body
      data_six = Nokogiri::HTML(html_six)
      restaurant_dish_five_picture = data_six.css('.food-image img').attr('src')

      restaurant_detail = {
        address: restaurant_address,
        name: restaurant_name,
        phone: restaurant_phone,
        description: restaurant_description,
        photo_url: restaurant_photo_url,
        dish_one_title: restaurant_dish_one_title,
        dish_one_price: restaurant_dish_one_price,
        dish_one_url: restaurant_dish_one_url,
        dish_one_picture: restaurant_dish_one_picture,

        dish_two_title: restaurant_dish_two_title,
        dish_two_price: restaurant_dish_two_price,
        dish_two_url: restaurant_dish_two_url,
        dish_two_picture: restaurant_dish_two_picture,

        dish_three_title: restaurant_dish_three_title,
        dish_three_price: restaurant_dish_three_price,
        dish_three_url: restaurant_dish_three_url,
        dish_three_picture: restaurant_dish_three_picture,

        dish_four_title: restaurant_dish_four_title,
        dish_four_price: restaurant_dish_four_price,
        dish_four_url: restaurant_dish_four_url,
        dish_four_picture: restaurant_dish_four_picture,

        dish_five_title: restaurant_dish_five_title,
        dish_five_price: restaurant_dish_five_price,
        dish_five_url: restaurant_dish_five_url,
        dish_five_picture: restaurant_dish_five_picture
      }
      # create new restaurant
      new_restaurant = Restaurant.new do |r|
        r.name = restaurant_name
        r.address = restaurant_address
        r.phone_number = restaurant_phone
        r.photo_url = restaurant_photo_url
        r.description = restaurant_description
      end
      new_restaurant.save

      new_restaurant.dishes.create do |d|
        d.name = restaurant_dish_one_title
        d.price = restaurant_dish_one_price
        d.photourl = restaurant_dish_one_picture
      end

      new_restaurant.dishes.create do |d|
        d.name = restaurant_dish_two_title
        d.price = restaurant_dish_two_price
        d.photourl = restaurant_dish_two_picture
      end

      new_restaurant.dishes.create do |d|
        d.name = restaurant_dish_three_title
        d.price = restaurant_dish_three_price
        d.photourl = restaurant_dish_three_picture
      end

      new_restaurant.dishes.create do |d|
        d.name = restaurant_dish_four_title
        d.price = restaurant_dish_four_price
        d.photourl = restaurant_dish_four_picture
      end

      new_restaurant.dishes.create do |d|
        d.name = restaurant_dish_five_title
        d.price = restaurant_dish_five_price
        d.photourl = restaurant_dish_five_picture
      end

      @restaurant_details << restaurant_detail
    end
  end

  def update
    @dish = Dish.find(params[:id])
    @dish.update_attributes(dish_params)
    flash[:success] = 'Dish was successfully updated!'
    redirect_to dish_path(params[:id])
  end

  def destroy
    @dish = Dish.find(params[:id])
    @dish.destroy
    flash[:alert] = 'Dish was successfully deleted!'
    redirect_to root_path
  end

  private

  def dish_params
    params.require(:dish).permit(:name, :price, :photourl)
  end
end
