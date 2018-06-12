Feature: User can fork recipie
  As a user
  In order to customize a recipe
  I should be able to fork and edit other users recipes

Background:
  Given We have the following user:
    | email             | password |
    | maran@test.com    | 12345678 |
    | author@test.com   | 12345678 |

  And We have the following recipes:
    | title         | description             | user             |
    | Meatball-Stew | This will make you sick | author@test.com  |

  And I am logged in as "maran@test.com"

Scenario: User forks a recipe edits its title
  Given I am on the "Meatball-Stew" page
  When I click "fork"
  Then I should see "You have succsessfully forked the recipe"
  And I should be on the "Meatball-Stew" edit page
  When I fill in "Title" with "Maran's Meatball-Stew"
  And I click "Update Recipe"
  Then I should see "Maran's Meatball-Stew"
  And I should see "Posted by maran@test.com"
  And I should see "Forked from author@test.com"