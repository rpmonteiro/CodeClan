require( 'minitest/autorun' )
require_relative( '../friends' )

class TestFriends < MiniTest::Test

  def setup

    @person1 = {
      name: "Rick",
      age: 20,
      monies: 1,
      friends: ["Jay","Keith","Marc", "Val"],
      favourites: {
        tv_show: "Friends",
        things_to_eat: ["charcuterie", "soup", "spinach"]
      } 
    }
    
    @person2 = {
      name: "Jay",
      age: 15,
      monies: 2,
      friends: ["Keith"],
      favourites: {
        tv_show: "Scrubs",
        things_to_eat: ["soup","bread"]
      } 
    }

    @person3 = {
      name: "Val",
      age: 18,
      monies: 20,
      friends: ["Rick", "Jay"],
      favourites: {
        tv_show: "Pokemon",
        things_to_eat: ["ratatouille", "stew"]
      } 
    }

    @person4 = {
      name: "Keith",
      age: 18,
      monies: 20,
      friends: ["Rick", "Jay", "Marc"],
      favourites: {
        tv_show: "Pokemon",
        things_to_eat: ["spaghetti", "spinach"]
      } 
    }

    @person5 = {
      name: "Marc",
      age: 20,
      monies: 100,
      friends: [],
      favourites: {
        tv_show: "Scrubs",
        things_to_eat: ["spinach"]
      } 
    }

    @people = [@person1, @person2, @person3, @person4, @person5]
    @rick_and_jay = [@person1, @person2]

  end

  def test_favorite_tv_show
    assert_equal("Scrubs", favorite_tv_show(@person5))
  end

 ############# begin of person_likes_certain_food? #############

  def test_person_likes_certain_food?
    assert_equal(true, person_likes_certain_food?(@person5, "spinach"))
    assert_equal(false, person_likes_certain_food?(@person5, "broccoli"))
  end

  def test_make_new_friends
    assert_equal(["Erik", "Ric", "Tony"], make_new_friends(@person5, "Erik", "Ric", "Tony"))
    assert_equal(["Keith", "Erik"], make_new_friends(@person2, "Erik"))
  end

  #assert if program breaks when no args passed. It doesn't.
  #
  def test_make_new_friends_when_no_new_friends_in_args
    assert_equal(["Keith"], make_new_friends(@person2))
  end

  #assert if what we're getting back is a copy or the original array modified. It should be the original.
  #
  def test_make_new_friends_is_array_modified?
    make_new_friends(@person2, "Erik")
    assert_equal(["Keith", "Erik"], make_new_friends(@person2))
  end

  ############# end of person_likes_certain_food? #############
  




  ############# begin of remove friend(s) #############

  # We're first removing the friend from the original array so we're absolutely sure that we're still dealing with the original when it returns the result.
  # 
  def test_remove_single_friend
    remove_friend(@person2, "Keith")
    assert_equal([], @person2[:friends])
  end

  def test_remove_multiple_friends
    remove_friend(@person4, "Rick", "Jay")
    assert_equal(["Marc"], @person4[:friends])
  end

  ############# end of remove friend(s) #############
  




  ############# begin of total_money(s) #############
  
  def test_total_money_everyone
    result = total_money(@people)
    assert_equal(143, result)
  end

  ############# end of total_money(s) ###############
  



  ############# begin of lend_money ###############
  
  def test_lend_money
    person5_initial_amount = @person5[:monies]
    person1_initial_amount = @person1[:monies]

    lend_money(@person5, @person1, 50)

    assert_equal(person5_initial_amount - 50, @person5[:monies])
    assert_equal(person1_initial_amount + 50, @person1[:monies])
  end

  def test_lend_money_if_lender_doesnt_have_enough
    assert_equal(false, lend_money(@person1, @person2, 300))
  end

  def test_lend_money_all_goes_well
    assert_equal(true, lend_money(@person4, @person5, 10))
  end

  ############## end of lend_money ################




  ############## begin of everyones_favourite_food ################
  
  def test_everyones_favourite_food
    all_food = ["charcuterie", "soup", "spinach", "soup","bread", "ratatouille", "stew", "spaghetti", "spinach", "spinach"]
    assert_equal(all_food, everyones_favourite_food(@people))
  end

  ############## end of everyones_favourite_food ################
  



  ############## begin of forever_alone ################
  
  def test_forever_alones
    assert_equal(["Marc"], forever_alone(@people))
  end

  ############## end of forever_alone ################
  
end













