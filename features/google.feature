Feature: Demo
    In order to keep unwanted people out of azazo.coredata.is
    As a user
    I need to be not allowed to login with bad credentials

    Scenario: Inputting wrong password on azazo.coredata.is
        Given I go to "http://azazo.coredata.is/"
        When I fill in "username" with "NotAHacker"
        When I fill in "password" with "213374u"
        When I press "Login"
        Then I should see "Please enter a correct username and password. Note that both fields are case-sensitive." within 5 second
