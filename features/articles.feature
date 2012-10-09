

Feature: See Articles

Scenario: See user's articles
		Given there is a User
		And the User has posted an article with content "Test Content" titled "Test Article"
		When I visit the index blog page
		Then I should see "Test Article"
		And I should see "Test Content"

		

Scenario: Create article (by User)
		Given I am a new, authenticated user
    	Then I visit the page "New article"
		When I fill the field "Title" with "Titulo de Prueba"
		And I fill the field "Content" with "Contenido de prueba"
    	And I click "Create Article" button
    	And I should see "Article was successfully created" 
    


Scenario: List user's articles after create article
		Given I am a new, authenticated user
    	Then I visit the page "New article"
		When I fill the field "Title" with "Titulo de Prueba"
		And I fill the field "Content" with "Contenido de prueba"
    	And I click "Create Article" button
    	And I should see "Article was successfully created" 
    	And I should see "Titulo de Prueba"



Scenario: List user's articles 
		Given I am a new, authenticated user
    	Then I visit the page "New article"
		When I fill the field "Title" with "Titulo de Prueba"
		And I fill the field "Content" with "Contenido de prueba"
    	And I click "Create Article" button
    	And I should see "Article was successfully created" 
    	And I visit the page "Articles List"
    	And I should see "Titulo de Prueba"
    	And I should see "Edit" 
    	And I should see "Delete" 
    	And I should see "Show" 



		


