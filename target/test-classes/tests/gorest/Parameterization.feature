Feature: Test Parameterization
  This is to test GET calls with path and query params

  # GET Call with path param
  Scenario: GET Call - Path Param
    Given url baseUrl+'/public/v1/users'
    And path '30'
    When method GET
    Then status 200
    And print response

  # GET Call with single query param
  Scenario: GET Call - Single Query Param
    * def query = {status: 'active'}
    Given url baseUrl+'/public/v1/users'
    And params query
    When method GET
    Then status 200
    And print response

  # GET Call with multiple query params
  Scenario: GET Call - Multiple Query Params
    * def query = {status: 'active', gender: 'female'}
    Given url baseUrl+'/public/v1/users'
    And params query
    When method GET
    Then status 200
    And print response
    * def jsonResponse = response
    * def userCount = jsonResponse.data.length
    * match userCount == 20
