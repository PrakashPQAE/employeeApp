Feature: Validation of wiremock server get call

@getWireMock
Scenario Outline: To verify the get call on wiremock server - valid parameters
Given Stubbing of wireMock for get request with <host> and <port> and <stubstatus>
When assertion of status code in the get response with http <status>
Then wiremock is shut down 

Examples:
|status|host     |port|stubstatus|
|200   |localhost|8080|200       |

@getWireMock
Scenario Outline: To verify the get call on wiremock server  - invalid status code in stub
Given Stubbing of wireMock for get request with <host> and <port> and <stubstatus>
When assertion of status code in the get response with http <status>
Then wiremock is shut down 

Examples:
|status|host     |port|stubstatus|
|200   |localhost|8080|500       |


