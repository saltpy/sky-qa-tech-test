Feature: Addition

@example
Scenario: Add to positive whole numbers
    Given I enter "2" into the calculator
    And I hit "add"
    And I enter "2" into the calculator
    And I hit "equals"
    Then I see a result of "4"
