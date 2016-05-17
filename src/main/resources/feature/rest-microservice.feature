Feature: Validate "/restms/welcome" service
  Http method 			: 	GET 
  Context path 			: 	/restms/welcome

  @rest-microservice @Fast @Smoke @Regression
  Scenario: Validate rest-microservice message API
    Given I use "welcome" service
    When I make "GET" api "/message/" call
    And add below headers:
      | headerName   | headerValue      |
      | Accept       | application/json |
      | Content-Type | application/json |
    And I retrieve JSON results
    Then expect a status code 200
    And The response should contain "$..message" with value "Welcome to micro services"
    
    
  @rest-microservice @Fast @Smoke @Regression
  Scenario: Validate rest-microservice name API
    Given I use "welcome" service
    When I make "GET" api "/name/" call
    And add below headers:
      | headerName   | headerValue      |
      | Accept       | application/json |
      | Content-Type | application/json |
    And I retrieve JSON results
    Then expect a status code 200
    And The response should contain "$..name" with value "Magpie !!!"
    
  @rest-microservice @Fast @Smoke @Regression
  Scenario: Not API found, 404 case
    Given I use "welcome" service
    When I make "GET" api "/notFound/" call
    And I retrieve JSON results
    Then expect a status code 404