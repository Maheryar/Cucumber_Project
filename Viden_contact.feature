Feature: Viden_Contact
  As a Viden customer
  I want to be able to send email from website
  So that I can contact the Viden customer service
  @company_contact
  Scenario: Verify user can send email using Contact view.
    Given user is on Contact tab of webpage.
    When user enters their Hussain Maheryar in Name field
    And enters in Subject field
    And provides their in Email address field
    And adds in Message field.
    And Clicks on Send button.
    Then message "Thank you for your email." is displayed.
