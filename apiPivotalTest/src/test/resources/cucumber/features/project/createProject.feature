Feature: create project

  Scenario: Get projects
    Given I send a GET request to /projects endpoint
    Then I expect the status code 200

  @project
  Scenario: Create project
    Given I have the next parameters:

      | name   | test name |
      | public | true      |
    And I have the /projects endpoint
    When I send a POST request
    Then I expect the status code 200
    And The project name should be equal to test name