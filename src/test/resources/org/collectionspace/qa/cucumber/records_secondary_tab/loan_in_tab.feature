# Created by Cesar Villalobos on 12/27/2015

@recordssecondarytab
Feature: Loan In Tab 
  # Enter feature description here

#UI Layer
	Scenario: Test 1
	    Given user is on the "My CollectionSpace" page 
	   	
	   	And user goes to the record with identification number "CQA111_E"
	    And user selects the "Loan In" tab 
	    Then the "Related Loan In Records" area should be empty

	    And user goes to the record with identification number "CQA111_NE"
	    And user selects the "Loan In" tab 
	    Then "CQA111.1" should appear in the "Related Loan In Records" area

 

	Scenario: Test 3 -> Continued from Test 1
		And user clicks the "Add record" button  
	    # Then  a pop-up window will appear with the option to add a relationship to an existing record or create a new record
	    And the user clicks the "close" button 
	    Then the "Related Loan In Records" area should only contain "CQA111.1"

	    And user clicks the "Add record" button
	    And the user presses the "ESC" key  
	    Then the "Related Loan In Records" area should only contain "CQA111.1"
	
	Scenario: Test 5-> Searching and ading multiple Loan In records. Continued from Test 3
		And user clicks the "Add record" button  
	    And the user clicks the "search" button   maybe? 
	    Then the search results should contain "CQA111.2"
	    Then the search results should contain "CQA111.3" 

	    And the user selects the box with result "CQA111.3"    #6
	    And the user selects the box with result "CQA111.2"    #6 
	    And the user clicks the "Add to current record" button   #7

	    #Expected, Group #1
	    Then the dialogue should be dismissed 
	    Then "CQA111.2" should appear in the "Related Loan In Records" area   
	    Then "CQA111.3" should appear in the "Related Loan In Records" area   
	    Then "CQA111.2" should appear in the "Procedures" area   
	    Then "CQA111.3" should appear in the "Procedures" area   


	    And the user clicks on result with text "CQA111.2"  . #Change num?
	    Then an "Edit Loan In Record" form should be displayed # Be more specific?  
	   	Then the "Loan In Number" field should contain "CQA111.2"

	   	And the user clicks on the result with text "CQA111.3"
	    Then an "Edit Loan In Record" form should be displayed # Be more specific?  
	    Then the "Loan In Number" field should contain "CQA111.3"


	    And the user clicks the "Delete this relation." button
	    Then a delete confirmation dialogue should appear
	    And the user clicks the delete button 
	    Then the deletion should be confirmed in a dialogue
	    Then "CQA111.3" should not appear in the "Related Loan In Records" area 

	    And the user clicks on result with text "CQA111.2"
	    And the user clicks the "Delete this relation." button
	    Then a delete confirmation dialogue should appear 
	    And the user clicks the delete button 
	    Then the deletion should be confirmed in a dialogue
	    Then "CQA111.2" should not appear in the "Related Loan In Records" area 

	    Then close the browser

	Scenario: Test 7--> Warning when navigating away from new Loan In record
	    Given the user is in the "My CollectionSpace" page
	   	And user goes to the record with identification number "CQA111_NE"
	    And user selects the "Loan In" tab 
	    

	    And user clicks the "Add record" button
	    And clicks on the Create button

	    Then the message "Creating new record..." should be displayed
	    Then the "Loan In Number" field should be empty
	    And user enters "CQA111.4" in the "Loan In Number" field

		### VARIATION A	    
	    And user selects the "Current Record" tab
	    Then a leave confirmation dialogue should appear 
	    And the user clicks the close button 
	    Then the "Loan In Number" field should contain "CQA111.4"


	    ## VARIATION B
	    And user selects the "Current Record" tab
	    Then the dialogue should be dismissed 
	    And the user clicks the cancel button 
	    Then the "Loan In Number" field should contain "CQA111.4"

	    ## Variation D
	    And user selects the "Current Record" tab
	    And the user clicks the "Don't save" button 
	   	And user selects the "Loan In" tab 
	    Then "CQA111.4" should not appear in the "Related Loan In Records" area


	    ## Variation C
	    And user clicks the "Add record" button
	    And clicks on the Create button
	    And user enters "CQA111.4" in the "Loan In Number" field 
	    And user selects the "Current Record" tab
	    Then a leave confirmation dialogue should appear
	    And the user clicks the save button

	    And user selects the "Loan In" tab 
	    Then "CQA111.4" should appear in the "Related Loan In Records" area 

	    ## Deleting records so we can reuse
	    And user goes to the record with identification number "CQA111.4"
	    And the user clicks the delete button
	    Then a delete confirmation dialogue should appear
	    And the user clicks the delete button 
	    Then the deletion should be confirmed in a dialogue
	    Then close the browser



	Scenario: Test 9: Testing Cancel Changes button 
		Given the user is in the "My CollectionSpace" page
		And user goes to the record with identification number "CQA111_NE"
		
		And user selects the "Loan In" tab
	    And user clicks the "Add record" button  
	    And user clicks the "Create new" button

	    # Variation A
	    Then the message "Creating new record..." should be displayed
	   	Then the "cancel changes" button at the bottom of the page should not be clickable  
	    Then the "cancel changes" button at the top of the page should not be clickable  
	    
	    And user enters "CQA111.5" in the "Loan In Number" field  
	    And the user clicks the "cancel changes" button 
    	Then the "Loan In Number" field should be empty

	    # Variation B
	    And user enters "CQA111.5" in the "Loan In Number" field  
	    And the user clicks the "save" button 
	    Then the "cancel changes" button at the top of the page should not be clickable 
    	Then the "cancel changes" button at the bottom of the page should not be clickable 
   
   
	    And the user clicks the "Go to record" button
	    And the user clicks the "Delete" button 
	    Then a delete confirmation dialogue should appear
	    And the user clicks the confirmation delete button
	    Then a deletion should be confirmed in a dialogue
	    Then close the browser



	# Scenario: Test 11--> Successful save
        Given user is on the "My CollectionSpace" page 
        And user goes to the record with identification number "CQA111_NE"
        And user selects the "Loan In" tab 

        And user clicks the "+ Add Record" button
        And clicks on the Create button
        And the user saves the record # click the save button
        Then the message "Please specify a Loan In Number" should appear 

        And user enters "CQA111.11" in the "Loan In Number" field
        And user clicks the "Save" button

        Then the message "Relation successfully created." should appear
        Then "CQA111.11" should appear in the "Related Loan In Records" area


        And user selects "Exhibition" from the "Loan Purpose" drop down box        
        And user enters "2016-01-27" in the "Loan Status Date" field
        And user enters "CQA-111: Loan Status" in the "Loan Status Note" field
        And user selects "Agreed" from the "Loan Status" drop down box
        And user enters "Cesar Villalobos" in the "Lender" field
        And user selects "Cesar Villalobos" from autocomplete options
        And user enters "Cesar Villalobos" in the "Lender's Contact" field
        And user selects "Cesar Villalobos" from autocomplete options
        And user enters "Cesar Villalobos" in the "Lender's Authorizer" field
        And user selects "Cesar Villalobos" from autocomplete options
        And user enters "2016-01-01" in the "Authorization Date" field
        And user enters "Cesar Villalobos" in the "Borrower's Contact" field
        And user selects "Cesar Villalobos" from autocomplete options
        And user enters "Cesar Villalobos" in the "Borrower's Authorizer" field
        And user selects "Cesar Villalobos" from autocomplete options
        And user enters "2016-02-02" in the "Borrower's Authorization Date" field
        And user enters "This \n Is \n A test \n for CQA-111" in the "Loan In Conditions" field
        And user enters "CQA-111" in the "Loan In Note" field
        And user enters "2015-03-05" in the "Loan In Date" field
        And user enters "2016-05-03" in the "Loan Return Date" field
        And user enters "2017-06-01" in the "Loan Renewal Application Date" field
        And user clicks the "Save" button

        Then the message "Loan In successfully saved" should appear


        Then the "Loan In Number" field should contain "CQA111.11"
        Then the "Loan In Purpose" field should contain "Exhibition"
        Then the "Loan Status Date" field should contain "2016-01-27"
        Then the "Loan Status Note" field should contain "CQA-111: Loan Status"
        Then the "Loan Status" field should contain "Agreed"
        Then the "Lender" field should contain "Cesar Villalobos"
        Then the "Lender's Contact" field should contain "Cesar Villalobos"
        Then the "Lender's Authorizer" field should contain "Cesar Villalobos"
        Then the "Authorization Date" field should contain "2016-01-01"
        Then the "Borrower's Contact" field should contain "Cesar Villalobos"
        Then the "Borrower's Authorizer" field should contain "Cesar Villalobos"
        Then the "Borrower's Authorization Date" field should contain "2016-02-02"
        Then the "Loan In Conditions" field should contain "This \n Is \n A test \n for CQA-111"
        Then the "Loan In Note" field should contain "CQA-111"
        Then the "Loan In Date" field should contain "2015-03-05"
        Then the "Loan Return Date" field should contain "2016-05-03"
        Then the "Loan Renewal Application Date" field should contain "2017-06-01"

        
	Scenario: Test 13-->
        And user selects "Research" from the "Loan Purpose" drop down box        
        And user enters "2016-02-22" in the "Loan Status Date" field
        And user enters "CQA-111: Loan Status Test 13" in the "Loan Status Note" field
        And user selects "Authorized" from the "Loan Status" drop down box
        And user enters "Jennifer Be" in the "Lender" field
        And user selects "Jennifer Be" from autocomplete options
        And user enters "Jennifer Be" in the "Lender's Contact" field
        And user selects "Jennifer Be" from autocomplete options
        And user enters "Jennifer Be" in the "Lender's Authorizer" field
        And user selects "Jennifer Be" from autocomplete options
        And user enters "2002-02-02" in the "Authorization Date" field
        And user enters "Jennifer Be" in the "Borrower's Contact" field
        And user selects "Jennifer Be" from autocomplete options
        And user enters "Jennifer Be" in the "Borrower's Authorizer" field
        And user selects "Jennifer Be" from autocomplete options
        And user enters "2016-03-03" in the "Borrower's Authorization Date" field
        And user enters "This \n Is \n A test \n for CQA-111 Test 13" in the "Loan In Conditions" field
        And user enters "CQA-111 Test 13" in the "Loan In Note" field
        And user enters "2015-03-08" in the "Loan In Date" field
        And user enters "2018-05-03" in the "Loan Return Date" field
        And user enters "2017-06-01" in the "Loan Renewal Application Date" field
        And user clicks the "Save" button

        Then the message "Loan In successfully saved" should appear


        Then the "Loan In Number" field should contain "CQA111.11"
        Then the "Loan In Purpose" field should contain "Research"
        Then the "Loan Status Date" field should contain "2016-02-22"
        Then the "Loan Status Note" field should contain "CQA-111: Loan Status Test 13"
        Then the "Loan Status" field should contain "Authorized"
        Then the "Lender" field should contain "Jennifer Be"
        Then the "Lender's Contact" field should contain "Jennifer Be"
        Then the "Lender's Authorizer" field should contain "Jennifer Be"
        Then the "Authorization Date" field should contain "2002-02-02"
        Then the "Borrower's Contact" field should contain "Jennifer Be"
        Then the "Borrower's Authorizer" field should contain "Jennifer Be"
        Then the "Borrower's Authorization Date" field should contain "2016-03-03"
        Then the "Loan In Conditions" field should contain "This \n Is \n A test \n for CQA-111 Test 13"
        Then the "Loan In Note" field should contain "CQA-111 Test 13"
        Then the "Loan In Date" field should contain "2015-03-08"
        Then the "Loan Return Date" field should contain "2018-05-03"
        Then the "Loan Renewal Application Date" field should contain "2017-06-01"
        And the user clicks the "Go To Record" button        
        And the user clicks the "Delete" button
        Then a delete confirmation dialogue should appear #needs Step
        And the user clicks the delete button
        
        Then close the browser


	Scenario: Test 23--> Testing links and "Go To Record" works
	    Given the user is in the "My CollectionSpace" page
	    And user goes to the record with identification number "CQA111_NE"
	    And user selects the "Loan In" tab 
	    And the user clicks on result with text "CQA111.1"
	    Then the "Loan In Number" field should contain "CQA111.1"
	    And the user clicks the "Go to record" button
	    Then the titlebar should contain "CQA111.1"
	    Then the "Loan In Number" field should contain "CQA111.1"
	    Then close the browser		

	Scenario: Test 25--> Deleting relation via list
	    Given the user is in the "My CollectionSpace" page
	    And user goes to the record with identification number "CQA111_NE"
	    And user selects the "Loan In" tab 

	    And user clicks the "Add record" button  
	    And clicks on the Create button
	    And user enters "CQA111.6" in the "Loan In Number" field   
	    And the user saves the record

	    And user clicks the "Delete Relation" button on the row that reads "CQA111.6" #Green "X" button. Needs step def
	    Then delete confirmation dialogue should appear # Then the dialogue should appear asking you to delete this relation
	    And user clicks cancel button
	    Then the dialogue should be dismissed  
	    Then the "Related Loan In Records" area should contain "CQA111.6"

	    And user clicks the "Delete Relation" button on the row that reads "CQA111.6" #Green "X" button. Needs step def. Again
	    Then delete confirmation dialogue should appear
	    And user clicks the "close" button # close button == close symbol?  ???
	    Then the dialogue should be dismissed
	    Then the "Related Loan In Records" area should contain "CQA111.6"

	    And user clicks the "Delete Relation" button on the row that reads "CQA111.6" #Green "X" button. Needs step def. Last time.
	    Then delete confirmation dialogue should appear
	    And user clicks on the delete button
	    Then "CQA111.6" should not appear in the "Procedures" area   #notlogged
	    Then "CQA111.6" should not appear in the "Related Loan In Records" area   #not logged

        And user goes to the record with identification number "CQA111.6"
        And user selects the "Loan In" tab 
	    Then "CQA111_NE" should not appear in the "Related Loan In Records" area   
	    And user selects the "Current Record" tab

	    And the user clicks the delete button
	    Then a delete confirmation dialogue should appear
	    And the user clicks the delete button 
	    Then the deletion should be confirmed in a dialogue
	    Then close the browser

	 

	Scenario: Test 27--> Deleting relation via record editor
	    Given the user is in the "My CollectionSpace" page
	    And user goes to the record with identification number "CQA111_NE"
	    Then "CQA111_NE" should be in the "Identification Number" field

	    And user selects the "Loan In" tab 
	    And user clicks the "Add record" button  
	    And clicks on the Create button
	    And user enters "CQA111.7" in the "Loan In Number" field   
	    And the user saves the record
	    And the user clicks on result with text "CQA111.7"

	    
	    And the user clicks the "Delete this relation." button
	    Then a delete confirmation dialogue should appear  
	    And user clicks cancel button # click cancel
	    Then the dialogue should be dismissed  
	    Then the "Related Loan In Records" area should contain "CQA111.7"

	    And the user clicks the "Delete this relation" button
	    Then a delete confirmation dialogue should appear  
	    And user clicks close button # close button == close symbol?
	    Then the dialogue should be dismissed  
	    Then the "Related Loan In Records" area should contain "CQA111.7"

	    And the user clicks the "Delete this relation" button
	    Then a delete confirmation dialogue should appear #needs Step
	    And the user clicks the delete button 
	    Then the deletion should be confirmed in a dialogue
	    Then "CQA111.7" should not appear in the "Procedures" area   
		Then "CQA111.7" should not appear in the "Related Loan In Records Area"

	    And user goes to the record with identification number "CQA111.7"
	    And user selects the "Loan In" tab 
	    Then the "Related Loan In Records" area should be empty
	    
	    And user selects the "Current Record" tab 
	    And the user clicks the delete button
	    Then a delete confirmation dialogue should appear
	    And the user clicks the delete button 
	    Then the deletion should be confirmed in a dialogue
	    Then close the browser 


