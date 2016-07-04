Feature: Calculator form
  As a website visitor
  I can perform calculations on interest rate
  So I can view the total amount

  @jira:CAL-1 @smoke @sanity
  Scenario: Verify the calculation result is correct for 1 year
    Given I am on homepage
    When I fill in the input field "Start Date:" with "01-01-2015"
    And I fill in the input field "End Date:" with "01-01-2016"
    And I fill in the input field "Starting Amount:" with "1000"
    And I fill in the input field "Annual Interest Rate:" with "5"
    # When I fill in the following:
    #   | startdate | 01-01-2015 |
    #   | enddate | 01-01-2016 |
    #   | amount | 1000 |
    #   | interest | 5 |
    And I press "Submit"
    Then I should see "Result Annual interest 5 %"
    And I should see "Amount at start $1000"
    And I should see "Amount at end $1005"