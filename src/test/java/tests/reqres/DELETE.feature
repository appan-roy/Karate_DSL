Feature: My First Karate Test DELETE Call
  This is my first karate test DELETE call

  Background: This is test pre-requisites
    When url 'https://reqres.in'
    Then header Accept = 'application/json'

  # DELETE Call
  Scenario: DELETE Call 1
    Given url 'https://reqres.in/api/users/2'
    When method DELETE
    Then status 204
    And print response

  # DELETE Call with Background
  Scenario: DELETE Call 2
    Given path '/api/users/2'
    When method DELETE
    Then status 204
    And print response
