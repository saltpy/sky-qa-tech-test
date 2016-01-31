Feature: Root

@example
Scenario: Cube root of 9 is 2.08008382305
    Given I enter "9" into the calculator
    And I hit "cuberoot"
    And I hit "equals"
    Then I see a result of "2.08008382305"


