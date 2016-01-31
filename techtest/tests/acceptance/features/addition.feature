Feature: Addition

@example
Scenario: Add two positive whole numbers
    Given I enter "2" into the calculator
    And I hit "add"
    And I enter "2" into the calculator
    And I hit "equals"
    Then I see a result of "4"


@example
Scenario: Add two negative whole numbers
    Given I enter "-2" into the calculator
    And I hit "add"
    And I enter "-2" into the calculator
    And I hit "equals"
    Then I see a result of "-4"
