Feature: My First Karate Test GET Call
  This is my first karate test GET call

  Background: This is test pre-requisites
    When url 'https://reqres.in'
    Then header Accept = 'application/json'

  # GET Call
  @smoke
  Scenario: GET Call 1
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies

  # GET Call with Background
  Scenario: GET Call 2
    Given path '/api/users?page=2'
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies

  # GET Call with Background and param
  Scenario: GET Call 3
    Given path '/api/users'
    And param page = 2
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies

  # GET Call with assertions
  Scenario: GET Call 4
    Given path '/api/users'
    And param page = 2
    When method GET
    Then status 200
    And print response
    And assert response.data.length == 6
    And match response.data[0].first_name != null
    And match response.data[4].last_name == 'Edwards'
    And match $.data[1].first_name == 'Lindsay'
