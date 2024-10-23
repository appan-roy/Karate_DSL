Feature: GET call with Config file

	# baseURL is fetched from config file
  Background: This is test pre-requisites
    When url baseURL
    Then header Accept = 'application/json'

  # GET Call with Background
  Scenario: GET Call
    Given path '/api/users?page=2'
    When method GET
    Then status 200
    And print response
