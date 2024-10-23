Feature: My First Karate Test POST Call
  This is my first karate test POST call

  Background: This is test pre-requisites
    When url 'https://reqres.in'
    Then header Accept = 'application/json'

  # POST Call
  Scenario: POST Call 1
    Given url 'https://reqres.in/api/users'
    And request {"name": "morpheus", "job": "leader"}
    When method POST
    Then status 201
    And print response

  # POST Call with Background
  Scenario: POST Call 2
    Given path '/api/users'
    And request {"name": "morpheus", "job": "leader"}
    When method POST
    Then status 201
    And print response

  # POST Call with assertions
  Scenario: POST Call 3
    Given path '/api/users'
    And request {"name": "morpheus", "job": "leader"}
    When method POST
    Then status 201
    And match response == {"name": "morpheus", "job": "leader", "id": "#string", "createdAt": "#ignore"}
    And match $ == {"name": "morpheus", "job": "leader", "id": "#string", "createdAt": "#ignore"}
    And print response

  # POST Call with req body and res body from file
  Scenario: POST Call 4
    Given path '/api/users'
    And def requestBody = read('Request.json')
    And request requestBody
    When method POST
    Then status 201
    And def responseBody = read('Response.json')
    And match $ == responseBody
    And print response

  # POST Call with change req body data from feature step
  Scenario: POST Call 5
    Given path '/api/users'
    And def requestBody = read('Request.json')
    And request requestBody
    And set requestBody.job = 'engineer'
    When method POST
    Then status 201
    And def responseBody = read('Response2.json')
    And match $ == responseBody
    And print response
