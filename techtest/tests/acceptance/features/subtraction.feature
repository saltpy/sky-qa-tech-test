Feature: Subtraction

@example
Scenario: Subtract two positive whole numbers
    Given I enter "2" into the calculator
    And I hit "subtract"
    And I enter "2" into the calculator
    And I hit "equals"
    Then I see a result of "0"


@example
Scenario: Subtract two negative whole numbers
    Given I enter "-2" into the calculator
    And I hit "subtract"
    And I enter "-2" into the calculator
    And I hit "equals"
    Then I see a result of "0"


@example
Scenario: Subtract two floating numbers
    Given I enter "1.5" into the calculator
    And I hit "subtract"
    And I enter "1.4" into the calculator
    And I hit "equals"
    Then I see a result of "0.1"


