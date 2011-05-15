Feature: user creates a book
    Scenario: User adds a book
        Given I go to the new book page
        And I fill in "Title" with "Kafka On The Shore"
		And I fill in "Author" with "Haruki Murakami"
		And I fill in "Year" with "2002"
		And I fill in "Description" with "'Kafka on the Shore' follows the fortunes of two remarkable characters. Kafka Tamura runs away from home at fifteen, under the shadow of his father's dark prophesy. The aging Nakata, tracker of lost cats, who never recovered from a bizarre childhood affliction, finds his pleasantly simplified life suddenly turned upside down. Their parallel odysseys are enriched throughout by vivid accomplices and mesmerising dramas. Cats converse with people; fish tumble from the sky; a ghostlike pimp deploys a Hegel-spouting girl of the night; a forest harbours soldiers apparently un-aged since WWII. There is a savage killing, but the identity of both victim and killer is a riddle. Murakami's new novel is at once a classic tale of quest, but it is also a bold exploration of mythic and contemporary taboos, of patricide, of mother-love, of sister-love. Above all it is an entertainment of a very high order."
		When I press "Create Book"
		Then I should be on the books page
		And I should see "Kafka On The Shore"
       
