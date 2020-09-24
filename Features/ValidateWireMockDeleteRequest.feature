Feature: Validation of wiremock server delete call

@deleteWireMock
Scenario Outline: To verify the delete call on wiremock server - valid parameters
Given Stubbing of wireMock for delete request with <host> and <port> and <stubstatus> with path param <id>
When assertion of status code in the delete response with http <status> and id <id>
Then wiremock is shut down successfully for delete request

Examples:
|status|host     |port|id|stubstatus|
|200   |localhost|8080|1 |200       |

@deleteWireMock
Scenario Outline: To verify the delete call on wiremock server - valid parameters
Given Stubbing of wireMock for delete request with <host> and <port> and <stubstatus> with path param <id>
When assertion of status code in the delete response with http <status> and id <id>
Then wiremock is shut down successfully for delete request

Examples:
|status|host     |port|id|stubstatus|
|200   |localhost|8080|2 |200       |
