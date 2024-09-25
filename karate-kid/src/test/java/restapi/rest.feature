Feature: rest
  Scenario: Test GET request exact response
    Given url 'http://127.0.0.1:5000/rest-api'
    When method GET
    Then status 200
    And match $ == {"count":10,"result":"rest api"}

  Scenario: Test POST request exact response
    Given url 'http://127.0.0.1:5000/none'
    When method POST
    Then status 200
    And match $ == {'result': 'hola'}

  Scenario: Test POST request exact response with payload
    Given url 'http://127.0.0.1:5000/sqr'
    And request {"number": 8}
    When method POST
    Then status 200
    And match $ == {"result":64}