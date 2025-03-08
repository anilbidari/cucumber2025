Feature: Add Todo
  Scenario: Create todo by POST /todos
    Given todo application is online
    When a POST request to /todos is made
    And the request body is
      """
{
  "targetDate": "2025-11-01",
  "description": "email sned to bank",
  "user": "anil",
  "done": false
}
      """
    Then a 201 response is returned within 10000ms
