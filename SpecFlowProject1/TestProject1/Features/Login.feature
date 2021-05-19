Feature: Login
	In order to login in NewBookModels
	As a client of NewBookModels
	I want to be logged in NewBookModels

@mytag
Scenario: It is possible to login in NewBookModels with valid data
	Given Client is created
	And Sign in page is opened
	When I input email of created client in email field
	And I input passwordof created client in password field
	And I click Log In button
	Then I sucssesfully 