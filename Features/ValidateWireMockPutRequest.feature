Feature: Validation of wiremock server put call

@putWireMock
Scenario Outline: To verify the put call on wiremock server
Given Stubbing of wireMock for put request with <host> and <port> and <stubstatus> with path param <id>
When put request is processed with the body <name> and <role> and <firstname> and <lastname> and <email> and <password> and <phone> and assert the status code with http status <status> for id <id>
Then wiremock is shut down successfully for put request

Examples:
|stubstatus|host     |port|name   |role     |firstname|lastname|email            |password|phone     |id|status|
|200       |localhost|8080|Charles|Developer|Charles  |Robert  |charles@gmail.com|123poiuc|9900992872|1 |200   |
|200       |localhost|8080|Charles|Developer|Charles  |Robert  |charles@gmail.com|123poiuc|9900992872|2 |200   |
