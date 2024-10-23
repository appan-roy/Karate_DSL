Feature: My First Karate Test PUT Call
  This is my first karate test PUT call

  Background: This is test pre-requisites
    When url 'https://reqres.in'
    Then header Accept = 'application/json'

  # PUT Call
  Scenario: PUT Call 1
    Given url 'https://reqres.in/api/users/2'
    And request {"name": "morpheus", "job": "zion resident"}
    When method PUT
    Then status 200
    And print response

  # PUT Call with Background
  Scenario: PUT Call 2
    Given path '/api/users/2'
    And request {"name": "morpheus", "job": "zion resident"}
    When method PUT
    Then status 200
    And print response
