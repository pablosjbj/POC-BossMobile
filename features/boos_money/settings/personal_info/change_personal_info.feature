Feature: Change personal info using Boss Money Mobile

  Scenario: Change first and last name
    Given I am on the Boss Money App Screen
    And I verify if exist a update available
    When I touch the Settings button
    And I touch the Personal Info button
    And I use the keyboard on personal information and type:
      | FirstName  | LastName        |
      | Raul Pablo | Ramirez Zegarra |
    And I touch the Save button
    Then I should see The personal information was changed
