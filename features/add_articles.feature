Feature: Add Articles

Scenario: See user's articles
		Given I am a new, authenticated user
    Then I visit the page "New article"
		When I fill the field "Title" with "Titulo de Prueba"
		And I fill the field "Content" with "Contenido de prueba"
    And I click "Create Article" button
    And I should see "Article was successfully created" 
    

		
