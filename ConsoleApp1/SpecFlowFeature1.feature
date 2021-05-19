#@Password @PersonalData @ForgotPassword
#Feature: ForgotPassword
#	In order to restore access to MyAccount
#	As a client
#	I want to change password using email
#
#@non-valid_test
#Scenario Outline: It is impossible to change passord on Forgot Password page in Myaccount with invalid data
#	Given Clients exist with open in MyAccount
#	| Email        | Password |
#	| ddd@mail.com | kt*19    |
#	And Forgot password page open in MyAccount
#	And Template exists with parametrs
#	| Body emal template  | Subject         | Type            |
#	| Here is your 'link' | Forgot password | Forgot password |
#	When I request to Forgot password with email 'ddd@mail.com' on Forgot password page open in MyAccount
#	And follow by libk in email with 'Forgot password' Subject
#	And I change password on Reset page in MyAccount
#	| New Password   | Confirm New Password   |
#	| <new_password> | <confirm_new_password> |
#	Then Client see <error_message>
#Examples: 
#| new_password | confirm_new_password | error_message |
#| qweqwe1      | QWEQWEe              | Not Similar   |
#| qweqwe       |                      | Cofrirm pass  |
#
#
#
#
#Scenario Outline: Create client using API request POST method -  registration/registration-client
#	When I create client using API request POST method -  registration/registration-client with valid data
#	| Email      | Password | <parameters> |
#	| sd@dsd.com | 123w     | <value>      |
#	Then '200' status code is recieved from the Api request
#	And Response body contains 'Success'
#Examples:
#	| params  | value  |
#	| params1 | value1 |
#	| params2 | value2 |
#	| params3 | value3 |
#	| params4 | value4 |
#
#
#
#
#
#Scenario Outline: Create client using API request POST method -  registration/registration-client with invalid data
#	When I create client using API request POST method -  registration/registration-client with invalid data
#	| Email   | Password |
#	| <email> | <pass>   |
#	Then <code> status code is recieved from the Api request
#	And Response body contains <massage>
#Examples:
#	| params  | value  | code | massage |
#	| params1 | value1 | 400  | error   |
#	| params2 | value2 | 404  | error   |
#	| params3 | value3 | 400  | error   |
#	| params4 | value4 | 500  | error   |