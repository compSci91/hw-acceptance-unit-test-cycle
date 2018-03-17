Feature: Create

As a user
I want to be able to create a movie
So that I can add to my catalogue

Background: Movies in Database

  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |

Scenario: Creation of Movie
  When I am on the RottenPotatoes homepage
  And I follow "Add new movie"
  And I fill in "Title" with "Annihilation"
  And I select "R" from "Rating"
  And I select "2018" from "movie_release_date_1i"
  And I select "February" from "movie_release_date_2i"
  And I select "23" from "movie_release_date_3i"
  And I press "Save Changes"
  Then I should see "Annihilation was successfully created."
  And I should see "R"
  And I should see "2018-02-23"
