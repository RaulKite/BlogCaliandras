Feature: See Articles
	Scenario: See user's articles
		Given there is a User
		And the User has posted an article titled "Test Article"
		When I visit the page "blog"
		Then I should see "Test Article"

		
