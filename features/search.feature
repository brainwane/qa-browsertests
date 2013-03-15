Feature: Search

  Scenario: Search suggestions
    Given I am at random page
    When I search for: main
    Then a list of suggested pages should appear
      And Main Page should be the first result

 Scenario: Fill in search term and click search
    Given I am at random page
    When I search for: ma
      And I click the Search button
    Then I should land on Search Results page

 Scenario: Find tokens in the captions of uploaded files
    Given I am on http://commons.wikimedia.beta.wmflabs.org/
      And http://commons.wikimedia.beta.wmflabs.org/wiki/File:Presentation.pdf exists
      And http://commons.wikimedia.beta.wmflabs.org/wiki/File:Presentation.pdf has the caption "This is a presentation about snails that User:GreenSpark gave on 6 December 2010 in Athens."
    When I search for: snails
    Then Presentation.pdf should be a result
