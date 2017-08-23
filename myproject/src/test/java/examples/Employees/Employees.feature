Feature: Employees test
In order to value
As a role
I want feature

Scenario: create a character

* def user =
"""
{
 "id": 0,
 "name": "string"
}
"""

Given url 'http://localhost:8080/api/characters'
And request user
When method post
Then status 200

Scenario: Get all character

Given url 'http://localhost:8080/api/characters'
When method get
Then status 200

Scenario: Delete a character

Given url 'http://localhost:8080/api/characters/3'
When method delete
Then status 500

Scenario: Update a character

* def put =
"""
{
 "id": 20,
 "name": "cowsy"
}
"""

Given url 'http://localhost:8080/api/characters/'+put.id
And request put
When method put
Then status 200