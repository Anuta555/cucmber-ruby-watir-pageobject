Feature: As a user I want to be able to search by artist name to see artist's info
  Search results should return:
    - recent news
    - wiki page
    - official website
    - social media links
    - images
    - albums

  Background: Given I'm on Google search page

    Scenario: Verify single word, exact match
      When I search by 'Rihanna'
      Then I see 'Rihanna' in recent news
       And I see 'Rihanna' wiki page
#       And I see 'Rihanna' official website
#       And I see 'Rihanna' social media links
#       And I see 'Rihanna' images
#       And I see 'Rihanna' albums


