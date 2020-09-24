Feature: Validation of wiremock server Post call

@postWireMock
Scenario Outline: To verify the Post call on wiremock server
Given Stubbing of wireMock for post request with <host> and <port> and <stubstatus>
When Post request is processed with the body <name> and <role> and <firstname> and <lastname> and <email> and <password> and <phone> and assert the status code with http status <status>
Then wiremock is shut down successfully

Examples:
|stubstatus|host     |port|name   |role     |firstname|lastname|email            |password|phone     |status|
|200       |localhost|8080|Charles|Developer|Charles  |Robert  |charles@gmail.com|123poiuc|9900992872|200   |

