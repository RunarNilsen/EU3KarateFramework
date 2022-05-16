Feature: exchange rate api tests

  @wip
  Scenario: basic test with status code validation
    Given url 'https://api.exchangeratesapi.io/2010-01-10'
    When method  GET
    Then status 200