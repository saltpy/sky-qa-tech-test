Feature: Conversion

@example
Scenario: 11 dec converts to A hex
    Given I enter "11" into the calculator
    And I hit "hex"
    And I hit "equals"
    Then I see a result of "b"


@example
Scenario: 3735928559 dec converts to DEADBEEF hex
    Given I enter "3735928559" into the calculator
    And I hit "hex"
    And I hit "equals"
    Then I see a result of "deadbeef"
