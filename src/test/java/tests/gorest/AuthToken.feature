Feature: Pass auth token in request headers
  This is to test GET calls with auth token

  # GET Call with auth token
  Scenario: GET Call - Pass auth token in request headers
    Given header Authorization = 'Bearer '+goRestAuthToken
    When url baseUrl+'/public/v1/users'
    And path '30'
    When method GET
    Then status 200
    And print response
