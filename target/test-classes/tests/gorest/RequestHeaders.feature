Feature: Pass request headers
  This is to test GET calls with request headers

  # GET Call with request headers 1
  Scenario: GET Call - Pass request headers 1
    Given header Content-Type = 'application/json'
    And header Accept-Encoding = 'gzip, deflate'
    And header Connection = 'Keep-Alive'
    When url baseUrl+'/public/v1/users'
    And path '30'
    When method GET
    Then status 200
    And print response

  # GET Call with request headers 2
  Scenario: GET Call - Pass request headers 2
    * def request_headers = {Content-Type: 'application/json', Accept-Encoding: 'gzip, deflate', Connection: 'Keep-Alive'}
    Given headers request_headers
    When url baseUrl+'/public/v1/users'
    And path '30'
    When method GET
    Then status 200
    And print response

  # GET Call with request headers 3
  Scenario: GET Call - Pass request headers 3
    * configure headers = {Content-Type: 'application/json', Accept-Encoding: 'gzip, deflate', Connection: 'Keep-Alive'}
    When url baseUrl+'/public/v1/users'
    And path '30'
    When method GET
    Then status 200
    And print response
