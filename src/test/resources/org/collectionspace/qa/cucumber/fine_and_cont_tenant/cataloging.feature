# Created by Cesar Villalobos on 03/08/2016

@fctenant
Feature: Fine and Contemporary Art Profile - Cataloging
  # Enter feature description here

  Scenario: New record behavior
  	Given user is in a blank "Cataloging" record
  	And user enters "CQA62.1" in the "Identification Number"
  	Then the "Cancel changes" buttons should be disabled 
  	Then the "Delete" buttons should be disabled

  	And the user clicks the "Add" button on the "Cataloging" area to the right
  	Then the message "Please save the record you are creating before trying to relate other records to it." should appear
  	And the user clicks the "Add" button on the "Procedures" area to the right
  	Then the message "Please save the record you are creating before trying to relate other records to it." should appear


  # Scenario: Number Chooser - Can't increase by 1
  Scenario: Record title
  	
  Scenario: Behavior after save
  Scenario: Structured Date
  Scenario: Fold/Unfolding boxes
  Scenario: Technical Specification extension
  Scenario: Vocabulary Pivoting 

    # Enter steps here

# """
# # Created by Cesar Villalobos on 03/03/2016

# @supplementarysecondary
# Feature: Supplementary Secondary Manual Acquisition Secondary Tab
#   # Enter feature description here

#   Scenario: Record Prep 1
#   	Given user is in a blank "Cataloging" record
#   	And user enters "CQA81.3" in the "Identification Number" field
#   	And the user saves the record
#   	Then close the browser

#   	Given user is in a blank "Cataloging" record
#   	And user enters "CQA81.4" in the "Identification Number" field
  # 	And the user saves the record
  # 	Then close the browser

  # Scenario: Basic Secondary tab Testing
  # 	Given user is in a blank "Cataloging" record
  # 	And user enters "CQA81" in the "Identification Number" field
  # 	And the user saves the record
  # 	Then the titlebar should contain "CQA81"
  # 	And user selects the "Acquisition" tab
  # 	Then the "Related Acquisition Records" area should be empty
  # 	And the user clicks the "Add Record" button
  # 	And the user clicks the "Create" button
#   	Then the message "Creating new record..." should appear
#   	Then the "Cancel changes" buttons should be disabled 
#   	Then the "Delete this relation." buttons should be disabled

#   	And user enters "CQA81.2" in the "Acquisition Reference Number" field 
#   	Then the "Cancel changes" button should be enabled

#   	And enters "Cesar Villalobos" in the "Acquisition Source" field
#   	And clicks on "Cesar Villalobos" from autocomplete options
#   	And the user saves the record
#   	Then the message "Creating new record..." should not be displayed
#   	Then the "Related Acquisition Records" area should contain "CQA81.2"

#   	And the user clicks on result with text "CQA81.2" 

#   	Then the "Cancel changes" buttons should be disabled
#   	Then the "Delete this relation." buttons should be enabled

#   	And user enters "CQA81.2" in the top nav search field
# 		And the user clicks the "Search" button
# 		Then the search results should contain "CQA81.2"
# 		Then "CQA81" should appear in the "Cataloging" area 
# 		Then close the browser

#   Scenario: Search to relate dialogue
#   	Given user is on the "Create New" page
#   	And user goes to the record with identification number "CQA81"
#   	And the user clicks the "Add New" button
#   	And the user presses the "Esc" key
#   	Then the "Related Acquisition Records" area should only contain "	CQA81"

#   	And the user clicks the "Add Record" button
#   	And enters "CQA81" in the "Search" field
#   	And the user clicks the "Search" button
#   	And the user selects the record with text "CQA81.3"
#   	And the user selects the record with text "CQA81.4"
#   	And the user clicks the "Add to current record" button

#   	Then the "Related Records" area should contain "CQA81.2"
#   	Then the "Related Records" area should contain "CQA81.3"
#   	Then the "Related Records" area should contain "CQA81.4"

#   	Then the "Procedures" area should contain "CQA81.2"
#   	Then the "Procedures" area should contain "CQA81.3"
#   	Then the "Procedures" area should contain "CQA81.4"

#     And the user clicks on result with text "CQA81.3" 
#     Then an "Edit Acquisition Record" form should be displayed 
#     Then the "Acquisition Reference Number" should contain "CQA81.3"

#     And the user clicks on result with text "CQA81.4" 
#     Then an "Edit Acquisition Record" form should be displayed 
#     Then the "Acquisition Reference Number" should contain "CQA81.4"
#     Then close the browser

#     Scenario: Deleting Used Records
#     	Given user is in the "Create New" page
#       And user goes to the record with identification number "CQA81"
#       And the user clicks the delete button
#       Then a delete confirmation dialogue should appear
#       And the user clicks the delete button 
#       Then the deletion should be confirmed in a dialogue

#       And user goes to the record with identification number "CQA81.2"
#       And the user clicks the delete button
#       Then a delete confirmation dialogue should appear
#       And the user clicks the delete button 
#       Then the deletion should be confirmed in a dialogue

#       And user goes to the record with identification number "CQA81.3"
#       And the user clicks the delete button
#       Then a delete confirmation dialogue should appear
#       And the user clicks the delete button 
#       Then the deletion should be confirmed in a dialogue
      
#       And user goes to the record with identification number "CQA81.4"
#       And the user clicks the delete button
#       Then a delete confirmation dialogue should appear
#       And the user clicks the delete button 
#       Then the deletion should be confirmed in a dialogue
#       Then close the browser

