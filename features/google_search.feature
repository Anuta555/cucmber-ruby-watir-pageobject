Feature: As a user I want to be able to search by artist name to see artist's info

  Background: Given I'm on Search page

    Scenario: Verify single word, exact match
      When I search by 'Rihanna'
      Then I see the following info about 'Rihanna':
      | Info:              |
      | recent news        |
      | wiki page          |
      | official website   |
      | social media links |
      | images             |
      | albums             |



