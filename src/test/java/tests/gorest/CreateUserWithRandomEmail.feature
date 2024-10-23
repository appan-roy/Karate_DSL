Feature: Create User with Random Email
  This is to test POST call in GoREST

  Background: 
    * url baseUrl
    * def generateRandomString =
      """
      function(s){
      	text = ""
      	pattern = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
      	for(i = 0; i < s; i++)
      		text += pattern.charAt(Math.floor(Math.random() * pattern.length()))
      	return text
      }
      """
    * def randomString = generateRandomString(10)
    * print randomString
    * def reqPayload =
      """
      {
      "name": "tom",
      "gender": "male",
      "status": "active"
      }
      """
    * reqPayload.email = randomString + '@rhyta.com'
    * print reqPayload

  Scenario: Create a user with given data
    Given path '/public/v1/users'
    And header Authorization = 'Bearer '+goRestAuthToken
    And request reqPayload
    When method POST
    Then status 201
    And print response
    And match $.data.id == '#present'
    And match $.data.name == '#present'
    And match $.data.email == reqPayload.email
