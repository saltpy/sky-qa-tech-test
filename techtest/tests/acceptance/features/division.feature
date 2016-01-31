Feature: Division

@example
Scenario: Divide by 0 
    Given I enter "10" into the calculator
    And I hit "divide"
    And I enter "0" into the calculator
    And I hit "equals"
    Then I see a result of "NaN"


@example
Scenario: Divide by whole number
    Given I enter "10" into the calculator
    And I hit "divide"
    And I enter "10" into the calculator
    And I hit "equals"
    Then I see a result of "1"


@example
Scenario: Divide by floating number
    Given I enter "10" into the calculator
    And I hit "divide"
    And I enter "0.1" into the calculator
    And I hit "equals"
    Then I see a result of "100"


@example
Scenario: Divide by 0 mid stream
    Given I enter "10" into the calculator
    And I hit "add"
    And I enter "10" into the calculator
    And I hit "divide"
    And I enter "0" into the calculator
    And I hit "add"
    And I enter "1" into the calculator
    And I hit "equals"
    Then I see a result of "1"
