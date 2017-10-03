Feature: Change personal info using Boss Money Mobile

  Scenario: Change first and last name
    Given I go to Boss Revolution Money app
    And I verify if exist a update available
    When I press on Settings button
    And I press on Personal Info button
    And I change the personal information with the following data:
      | FirstName  | LastName        |
      | Raul Pablo | Ramirez Zegarra |
    And I press Save button
    Then The personal information was changed
