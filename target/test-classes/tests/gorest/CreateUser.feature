Feature: POST Call - GoREST
  This is to test POST call in GoREST

  Background: 
    * url baseUrl
    * def reqPayload =
      """
      {
      "name": "tom",
      "email": "tom20@rhyta.com",
      "gender": "male",
      "status": "active"
      }
      """

  Scenario: Create a user with given data
    Given path '/public/v1/users'
    And header Authorization = 'Bearer '+goRestAuthToken
    And request reqPayload
    When method POST
    Then status 201
    And print response
    And match $.data.id == '#present'
    And match $.data.name == '#present'
    And match $.data.email == 'tom20@rhyta.com'
