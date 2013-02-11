Feature: Account management
  As a account manager
  In order to be able to bill each user
  I want to show each user's expenses

Background:
    Given the following users
  | User | Email                      | Phone |
  | Foo  | vladimir.brasil2@gmail.com | 51 7777-7777 |
  | Foo  | vladimir.brasil2@gmail.com | 51 8888-8888 |
  | Bar  | vladimir.brasil2@gmail.com | 51 9999-9999 |
    And the following expenses
  | Phone 			  | Value   	| Expense 	|
  | 51 7777-7777 	| 1,00			| Despesa 1		|
  | 51 8888-8888 	| 2,00			| Despesa 2		|
  | 51 7777-7777 	|     			| Despesa 3		|
  | 51 9999-9999 	| 4,00			| Despesa 4		|
  | 51 9999-9999 	| 5,00			| Despesa 5		|
  
Scenario: Import expenses
    When I choose "Importar contas"
    Then I should see the following answer:
  | User	| Total expenses 	| 
  | Foo 	| 3,00		| 
  | Bar 	| 9,00		| 

   Scenario: Send emails
    When I choose "Enviar emails"
    Then an email should be sent to “Foo” with his two expense sheets attached
    And an email should be sent to “Bar” with his expense sheet attached
 