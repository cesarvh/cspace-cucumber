# Created by Cesar Villalobos on 12/28/2015

@recordssecondarytab
Feature: Loan Out Tab
  # Enter feature description here

	Scenario: Working Loan Out Secondary Tab #Test 1
		Given the user is in the "My CollectionSpace" page
	   
	    And user goes to the record with identification number "CQA112_E" #not empty
   	    And user selects the "Loan Out" tab
	    Then the "Related Loan Out Records" area should be empty

		And user goes to the record with identification number "CQA112_NE"
	    And user selects the "Loan Out" tab
	    Then "CQA112.1" should appear in the "Related Loan Out Records" area

	    Then close the browser

	Scenario: Dismissing the dialogue #Test 3
		Given the user is in the "My CollectionSpace" page
		And user goes to the record with identification number "CQA112_NE"
 
		#Variation A
		And user clicks the "Add record" button 
	    And user clicks the "close" button 
	    Then the "Related Loan Out Records" area should only contain "CQA112.1"

	    #Variation B
	    And user clicks the "Add record" button
	    And the user presses the "ESC" key 
	    Then the "Related Loan Out Records" area should only contain "CQA112.1"


	Scenario: Searching and adding multiple Loan Out records #Test 5
		And user clicks the "Add record" button 
	    And user clicks the "search" button 
	    Then the search results should contain "CQA112.3" 
	    Then the search results should contain "CQA112.2" 

	    And the user selects the box with result "CQA112.3" 
	    And the user selects the box with result "CQA112.2"  
	    And user clicks the "Add to current record" button   #7

	    #Expected, Group #1
	    Then the dialogue should be dismissed 
	    Then "CQA112.3" should appear in the "Related Loan Out Records" area
	    Then "CQA112.2" should appear in the "Related Loan Out Records" area 
	    Then "CQA112.3" should appear in the "Procedures" area 
	    Then "CQA112.2" should appear in the "Procedures" area 


	    And the user clicks on result with text "CQA112.3" 
	    Then an "Edit Loan Out Record" form should be displayed 
	    Then the "Loan Out Number" field should contain "CQA112.3"
	    And user clicks the "Delete this relation." button
	    Then a delete confirmation dialogue should appear
	    And the user clicks the delete button 
	    Then the deletion should be confirmed in a dialogue
	    Then "CQA112.3" should not appear in the "Related Loan Out Records" area 


	    And the user clicks on result with text "CQA112.2" 
	    Then an "Edit Loan Out Record" form should be displayed 
	    Then the "Loan Out Number" field should contain "CQA112.2"
	    And user clicks the "Delete this relation." button
	    Then a delete confirmation dialogue should appear
	    And the user clicks the delete button 
	    Then the deletion should be confirmed in a dialogue
	    Then "CQA112.2" should not appear in the "Related Loan Out Records" area 

	    Then close the browser

	Scenario: Warning when navigating away from new Loan Out record #Test 7 
		Given the user is in the "My CollectionSpace" page
		And user goes to the record with identification number "CQA112_NE"
	    Then "CQA112_NE" should be in the "Identification Number" field
	    And user selects the "Loan Out" tab 
	    
	    And user clicks the "Add record" button
		And use clicks the "Create New" button
		
		Then the dialogue should be dismissed
		Then the message "Creating new record..." should be displayed
	    
		Then the "Loan Out Number" field should be empty
	    And user enters "CQA112.4" in the "Loan Out Number" field


	    #Variation A
	    	And user selects the "Current Record" tab
		    Then a leave confirmation dialogue should appear 
		    And user clicks the "close" button  
		    Then the "Loan Out Number" field should contain "CQA112.4"


		#Variation B
			And user selects the "Current Record" tab
		    Then a leave confirmation dialogue should appear  
		    And user clicks the "cancel" button   
		    Then the "Loan Out Number" field should contain "CQA112.4"

	    ## Variation D
		    And user selects the "Current Record" tab
		    And user clicks the "Don't save" button 
		   	And user selects the "Loan Out" tab 
		    Then "CQA112.4" should not appear in the "Related Loan Out Records" area


		#Variation C
			And user clicks the "Add record" button
	    	And clicks on the Create button
	    	And user enters "CQA112.4" in the "Loan Out Number" field 
			And user selects the "Current Record" tab
			And user clicks the "save" button

		    And user selects the "Loan Out" tab 
		    Then "CQA112.4" should appear in the "Related Loan Out Records" area 

		    And user goes to the record with identification number "CQA112.4"
		    And the user clicks the delete button
		    Then a delete confirmation dialogue should appear
		    And the user clicks the delete button 
		    Then the deletion should be confirmed in a dialogue
		    Then close the browser

	Scenario: Cancel changes button #Test 9
		Given the user is in the "My CollectionSpace" page
		And user goes to the record with identification number "CQA112_NE"
		And user selects the "Loan Out" tab
	    And user clicks the "Add record" button  
	    And use clicks the "Create new" button

	    # Variation A
	    Then the message "Creating new record..." should be displayed
	   	Then the "cancel changes" button at the bottom of the page should not be clickable
	    Then the "cancel changes" button at the top of the page should not be clickable
	    
	    And user enters "CQA112.5" in the "Loan Out Number" field  
	    And user clicks the "cancel changes" button 
    	Then the "Loan Out Number" field should be empty

	    # Variation B
	    And user enters "CQA112.5" in the "Loan Out Number" field  
	    And user clicks the "save" button 
	    Then the "cancel changes" button at the top of the page should not be clickable 
    	Then the "cancel changes" button at the bottom of the page should not be clickable 
   
   
	    And user clicks the "Go to record" button
	    And user clicks the "Delete" button 
	    Then a delete confirmation dialogue should appear
	    And the user clicks the confirmation delete button
	    Then a deletion should be confirmed in a dialogue
	    Then close the browser



	Scenario: Check loan Out number and scuccessful save and  All felds saved on edited Loan Out record #Test 13


        # Scenario: Test 11--> Successful save
        Given user is on the "My CollectionSpace" page 
        And user goes to the record with identification number "CQA112_NE"
        And user selects the "Loan Out" tab 

        And user clicks the "+ Add Record" button
        And clicks on the Create button
        And the user saves the record # click the save button
        Then the message "Please specify a Loan Out Number" should appear 

        And user enters "CQA112.11" in the "Loan Out Number" field
        And user clicks the "Save" button

        Then the message "Relation successfully created." should appear
        Then "CQA112.11" should appear in the "Related Loan Out Records" area


        And user selects "Exhibition" from the "Loan Purpose" drop down box        
        And user enters "2016-01-27" in the "Loan Status Date" field
        And user enters "CQA112: Loan Status" in the "Loan Status Note" field
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
        And user enters "This \n Is \n A test \n for CQA112" in the "Loan Out Conditions" field
        And user enters "CQA112" in the "Loan Out Note" field

        And user enters "2015-03-05" in the "Loan Out Date" field
        And user enters "2016-05-03" in the "Loan Return Date" field
        And user enters "2017-06-01" in the "Loan Renewal Application Date" field
        And user clicks the "Save" button

        Then the message "Loan Out successfully saved" should appear


        Then the "Loan Out Number" field should contain "CQA112.11"
        Then the "Loan Out Purpose" field should contain "Exhibition"
        Then the "Loan Status Date" field should contain "2016-01-27"
        Then the "Loan Status Note" field should contain "CQA112: Loan Status"
        Then the "Loan Status" field should contain "Agreed"
        Then the "Lender" field should contain "Cesar Villalobos"
        Then the "Lender's Contact" field should contain "Cesar Villalobos"
        Then the "Lender's Authorizer" field should contain "Cesar Villalobos"
        Then the "Authorization Date" field should contain "2016-01-01"
        Then the "Borrower's Contact" field should contain "Cesar Villalobos"
        Then the "Borrower's Authorizer" field should contain "Cesar Villalobos"
        Then the "Borrower's Authorization Date" field should contain "2016-02-02"
        Then the "Loan Out Conditions" field should contain "This \n Is \n A test \n for CQA112"
        Then the "Loan Out Note" field should contain "CQA112"
        Then the "Loan Out Date" field should contain "2015-03-05"
        Then the "Loan Return Date" field should contain "2016-05-03"
        Then the "Loan Renewal Application Date" field should contain "2017-06-01"

        
        Scenario: Test 13-->
        And user selects "Research" from the "Loan Purpose" drop down box        
        And user enters "2016-02-22" in the "Loan Status Date" field
        And user enters "CQA112: Loan Status Test 13" in the "Loan Status Note" field
        And user selects "Authorized" from the "Loan Status" drop down box
        And user enters "Cesar Villalobos" in the "Lender" field
        And user selects "Cesar Villalobos" from autocomplete options
        And user enters "Cesar Villalobos" in the "Lender's Contact" field
        And user selects "Cesar Villalobos" from autocomplete options
        And user enters "Cesar Villalobos" in the "Lender's Authorizer" field
        And user selects "Cesar Villalobos" from autocomplete options
        And user enters "2002-02-02" in the "Authorization Date" field
        And user enters "Cesar Villalobos" in the "Borrower's Contact" field
        And user selects "Cesar Villalobos" from autocomplete options
        And user enters "Cesar Villalobos" in the "Borrower's Authorizer" field
        And user selects "Cesar Villalobos" from autocomplete options
        And user enters "2016-03-03" in the "Borrower's Authorization Date" field
        And user enters "This \n Is \n A test \n for CQA112 Test 13" in the "Loan Out Conditions" field
        And user enters "CQA112 Test 13" in the "Loan Out Note" field
        And user enters "2015-03-08" in the "Loan Out Date" field
        And user enters "2018-05-03" in the "Loan Return Date" field
        And user enters "2017-06-01" in the "Loan Renewal Application Date" field
        And user clicks the "Save" button

        Then the message "Loan Out successfully saved" should appear


        Then the "Loan Out Number" field should contain "CQA112.11"
        Then the "Loan Out Purpose" field should contain "Research"
        Then the "Loan Status Date" field should contain "2016-02-22"
        Then the "Loan Status Note" field should contain "CQA112: Loan Status Test 13"
        Then the "Loan Status" field should contain "Authorized"
        Then the "Lender" field should contain "Cesar Villalobos"
        Then the "Lender's Contact" field should contain "Cesar Villalobos"
        Then the "Lender's Authorizer" field should contain "Cesar Villalobos"
        Then the "Authorization Date" field should contain "2002-02-02"
        Then the "Borrower's Contact" field should contain "Cesar Villalobos"
        Then the "Borrower's Authorizer" field should contain "Cesar Villalobos"
        Then the "Borrower's Authorization Date" field should contain "2016-03-03"
        Then the "Loan Out Conditions" field should contain "This \n Is \n A test \n for CQA112 Test 13"
        Then the "Loan Out Note" field should contain "CQA112 Test 13"
        Then the "Loan Out Date" field should contain "2015-03-08"
        Then the "Loan Return Date" field should contain "2018-05-03"
        Then the "Loan Renewal Application Date" field should contain "2017-06-01"
        And user clicks the "Go To Record" button        
        And user clicks the "Delete" button
        Then a delete confirmation dialogue should appear #needs Step
        And the user clicks the delete button
        Then close the browser

	Scenario: Testing links and "Go To Record" works #Test 23
	    Given the user is in the "My CollectionSpace" page
	    And user goes to the record with identification number "CQA112_NE"
	    And user selects the "Loan Out" tab 
	    And the user clicks on result with text "CQA112.1"
	    Then the "Loan Out Number" field should contain "CQA112.1"
	    And user clicks the "Go to record" button
	    Then the titlebar should contain "CQA112.1"
	    Then the "Loan Out Number" field should contain "CQA112.1"
	    Then close the browser	

	Scenario: Deleting relation via list #Test 25
		Given the user is in the "My CollectionSpace" page
	    And user goes to the record with identification number "CQA112_NE"
	    And user selects the "Loan Out" tab 

	    And user clicks the "Add record" button  
	    And clicks on the Create button
	    And user enters "CQA112.7" in the "Loan Out Number" field   
	    And the user saves the record
	    
	    And user clicks the "Delete Relation" button on the row that reads "CQA112.7" #Green "X" button. Needs step def
	    Then delete confirmation dialogue should appear # Then the dialogue should appear asking you to delete this relation
	    And user clicks cancel button
	    Then the dialogue should be dismissed  
	    Then the "Related Loan Out Records" area should contain "CQA112.7"

	    And user clicks the "Delete Relation" button on the row that reads "CQA112.7" #Green "X" button. Needs step def. Again
	    Then delete confirmation dialogue should appear
	    And user clicks the "close" button # close button == close symbol?  ???
	    Then the dialogue should be dismissed
	    Then the "Related Loan Out Records" area should contain "CQA112.7"


	    And user clicks the "Delete Relation" button on the row that reads "CQA112.7" #Green "X" button. Needs step def. Last time.
	    Then delete confirmation dialogue should appear
	    And user clicks on the delete button
	    Then "CQA112.7" should not appear in the "Procedures" area   #notlogged
	    Then "CQA112.7" should not appear in the "Related Loan Out Records" area   #not logged

    	And user goes to the record with identification number "CQA112.7"
        And user selects the "Loan Out" tab 
	    Then "CQA112_NE" should not appear in the "Related Loan Out Records" area   
	    And user selects the "Current Record" tab

	    And the user clicks the delete button
	    Then a delete confirmation dialogue should appear
	    And the user clicks the delete button 
	    Then the deletion should be confirmed in a dialogue
	    Then close the browser

	Scenario: Deleting relation via record editor #Test 27
		Given the user is in the "My CollectionSpace" page
	    And user goes to the record with identification number "CQA112_NE"
	    Then "CQA112_NE" should be in the "Identification Number" field

	    And user selects the "Loan Out" tab 
	    And user clicks the "Add record" button  
	    And clicks on the Create button
	    And user enters "CQA112.8" in the "Loan Out Number" field   
	    And the user saves the record
	    And the user clicks on result with text "CQA112.8"
	    
	    And user clicks the "Delete this relation" button
	    Then a delete confirmation dialogue should appear  
	    And user clicks cancel button # click cancel
	    Then the dialogue should be dismissed  
	    Then the "Related Loan Out Records" area should contain "CQA112.8"

	    And user clicks the "Delete this relation" button
	    Then a delete confirmation dialogue should appear  
	    And user clicks close button # close button == close symbol?
	    Then the dialogue should be dismissed  
	    Then the "Related Loan Out Records" area should contain "CQA112.8"

	    And user clicks the "Delete this relation" button
	    Then a delete confirmation dialogue should appear #needs Step
	    And the user clicks the delete button 
	    Then the deletion should be confirmed in a dialogue
	    # Then the record editor should no longer be displayed (below list)
	    Then "CQA112.8" should not appear in the "Procedures" area   
	    Then "CQA112.8" should not appear in the "Related Loan Out Records" area

	    And user goes to the record with identification number "CQA112.8"
	    And user selects the "Loan Out" tab 
	    Then the "Related Loan Out Records" area should be empty
	    
	    And user selects the "Current Record" tab 
	    And the user clicks the delete button
	    Then a delete confirmation dialogue should appear
	    And the user clicks the delete button 
	    Then the deletion should be confirmed in a dialogue
	    Then close the browser 




