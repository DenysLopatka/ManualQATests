@Password @PersonalData @ForgotPassword
Feature: ForgotPassword
	In order to restore access to MyAccount
	As a client
	I want to change password using email
	

@non-valid_test
Scenario: It is impossible to change passord on Forgot Password page in Myaccount with invalid data
	Given Client exist with "test@mail.com" email
	And "123123" password
	When the two numbers are added
	Then the result should be 120