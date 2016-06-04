#Created by Forest Yang on 1/8/2016

@place
Feature: Advanced Search - Intake

  #Test1
  Scenario: Advanced Search Fields
    # Given user is on the "Create New" page
    #   And selects the "Intake" radio button on the Create New page
    #   And clicks on the Create button
    Given user is on a blank "Intake" record
      And enters "Lagume" in the "Intake" "Intake Entry Number" field
      And enters "Samwise" in the "Intake" "Current Owner" autocomplete field
      And enters "Anathema" in the "Intake" "Depositor" autocomplete field
      And enters "2011-01-01" in the "Intake" "Entry Date" field
      And enters "2011-01-01" in the "Intake" "Return Date" field
      And selects "Found on doorstep" from the "Intake" "Entry Method" dropdown
      And selects "Enquiry" from the "Intake" "Entry Reason" dropdown
      And enters "Azkaban" in the "Intake" "Current Location" autocomplete field
      And enters "textbook" in the "Intake" "Field collection event name" field
      And clicks the "Save" button

    # Then the record is successfully saved
      And clicks the "Advanced Search" button
    #
      And selects "Intake" from the "AdvancedSearch" "record type" dropdown
      And enters "Samwise" in the "Intake" "Current Owner" autocomplete field
    #   And clicks on "Samwise" from autocomplete options #make sure this works
      And clicks the "Advanced Search search" button
    Then the search results should contain "Lagume"
    Then close the browser

  Scenario: Search by field values
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button

      And selects "Intake" from the "AdvancedSearch" "record type" dropdown
      And enters "Lagume" in the "Intake" "Intake Entry Number" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "Lagume"
  #Depositor
      And clicks the "Advanced Search" button
      And selects "Intake" from the "AdvancedSearch" "record type" dropdown
      And enters "Anathema" in the "Intake" "Depositor" autocomplete field
      And clicks the "Advanced Search search" button
    Then the search results should contain "Lagume"
  #Entry Date
      And clicks the "Advanced Search" button
      And selects "Intake" from the "AdvancedSearch" "record type" dropdown
      And enters "2011-01-01" in the "Intake" "Earliest Entry Date" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "Lagume"

  # Search by Return Date
      And clicks the "Advanced Search" button
      And selects "Intake" from the "AdvancedSearch" "record type" dropdown
      And enters "2011-01-01" in the "Intake" "Earliest Return Date" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "Lagume"

  # Search by Entry Method
      And clicks the "Advanced Search" button
      And selects "Intake" from the "AdvancedSearch" "record type" dropdown
      And selects "Found on doorstep" from the "Intake" "Entry Method" dropdown
      And clicks the "Advanced Search search" button
    Then the search results should contain "Lagume"
  #
  # Search by Entry Reason
      And clicks the "Advanced Search" button
      And selects "Intake" from the "AdvancedSearch" "record type" dropdown
      And selects "Enquiry" from the "Intake" "Entry Reason" dropdown
      And clicks the "Advanced Search search" button
    Then the search results should contain "Lagume"

  # Search by Current Location
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button

      And selects "Intake" from the "AdvancedSearch" "record type" dropdown
      And enters "Azkaban" in the "Intake" "Current Location" autocomplete field
      And clicks the "Advanced Search search" button
    Then the search results should contain "Lagume"

  # Search by Field collection event name
      And clicks the "Advanced Search" button
      And selects "Intake" from the "AdvancedSearch" "record type" dropdown
      And enters "textbook" in the "Intake" "Field collection event name" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "Lagume"

  # Search by Edit Date
      And clicks the "Advanced Search" button
      And selects "Intake" from the "AdvancedSearch" "record type" dropdown
      And enters today's date in the "Intake" "Earliest Modified Date" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "Lagume"

  # Search by username
      And clicks the "Advanced Search" button
      And selects "Intake" from the "AdvancedSearch" "record type" dropdown
      And enters "admin@core.collectionspace.org" in the "Intake" "Record last modified by" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "Lagume"
    Then close the browser

  # test2
  Scenario: Boolean field-based Search
    Given user is on the "Create New" page
      And selects the "Intake" radio button on the Create New page
      And clicks on the Create button
    Given user is on a blank "Intake" record
      And enters "maSkArA" in the "Intake" "Intake Entry Number" field
      And enters "Jane Doe" in the "Intake" "Current Owner" autocomplete field
      And selects "Consideration" from the "Intake" "Entry Reason" dropdown
      And enters "testtest" in the "Intake" "Entry Note" field
      And clicks the "Save" button
    Then the record is successfully saved


    # Given user is on the "Create New" page
    #   And selects the "Intake" radio button on the Create New page
    #   And clicks on the Create button
      And user is on a blank "Intake" record
      And enters "KaNoRrA" in the "Intake" "Intake Entry Number" field
      And enters "Jane Doe" in the "Intake" "Current Owner" autocomplete field
      And selects "Consideration" from the "Intake" "Entry Reason" dropdown
      And enters "testtest" in the "Intake" "Packing Note" field
      And clicks the "Save" button
    # Then the record is successfully saved

    # Given user is on the "Create New" page
    #   And selects the "Intake" radio button on the Create New page
    #   And clicks on the Create button
      And user is on a blank "Intake" record
      And enters "AnkORrA" in the "Intake" "Intake Entry Number" field
      And enters "Jane Doe" in the "Intake" "Current Owner" autocomplete field
      And selects "Loan" from the "Intake" "Entry Reason" dropdown
      And enters "testtest" in the "Intake" "Field collection note" field
      And clicks the "Save" button
    Then the record is successfully saved


      And clicks the "Advanced Search" button
      And selects "Intake" from the "AdvancedSearch" "record type" dropdown
      And selects "any (OR)" from the "AdvancedSearch" "Field-based search" dropdown
      And enters "Jane Doe" in the "Intake" "Current Owner Search" autocomplete field
      And selects "Consideration" from the "Intake" "Entry Reason" dropdown
      And clicks the "Advanced Search search" button
    Then the search results should contain "maSkArA"
    Then the search results should contain "KaNoRrA"
    Then the search results should contain "AnkORrA"
      And clicks the "Advanced Search" button

      And selects "Intake" from the "AdvancedSearch" "record type" dropdown
      And selects "all (AND)" from the "AdvancedSearch" "Field-based search" dropdown
      And enters "Jane Doe" in the "Intake" "Current Owner Search" autocomplete field
      And selects "Consideration" from the "Intake" "Entry Reason" dropdown
      And clicks the "Advanced Search search" button
    Then the search results should contain "maSkArA"
    Then the search results should contain "KaNoRrA"
    Then the search results should not contain "AnkORrA"
    Then close the browser


  #Test3
  Scenario: Boolean and Keyword Search
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button

      And selects "Intake" from the "AdvancedSearch" "record type" dropdown
      And selects "any (OR)" from the "AdvancedSearch" "Field-based search" dropdown
      And enters "testtest" in the "AdvancedSearch" "Keyword Search" field
      And enters "Jane Doe" in the "Intake" "Current Owner Search" autocomplete field
      And selects "Consideration" from the "Intake" "Entry Reason" dropdown
      And clicks the "Advanced Search search" button
    Then the search results should contain "maSkArA"
    Then the search results should contain "KaNoRrA"
    Then the search results should contain "AnkORrA"
      And clicks the "Advanced Search" button

      And selects "Intake" from the "AdvancedSearch" "record type" dropdown
      And selects "all (AND)" from the "AdvancedSearch" "Field-based search" dropdown
      And enters "testtest" in the "AdvancedSearch" "Keyword Search" field
      And enters "Jane Doe" in the "Intake" "Current Owner Search" autocomplete field
    And selects "Consideration" from the "Intake" "Entry Reason" dropdown
      And clicks the "Advanced Search search" button
    Then the search results should contain "maSkArA"
    Then the search results should contain "KaNoRrA"
    Then the search results should not contain "AnkORrA"
    Then close the browser


  Scenario: Record Deletion
      Given user is on the "My CollectionSpace" page
      And navigates to the record with identification number "Lagume"
      And clicks on the "Delete" button
      Then delete confirmation dialogue should appear
      And clicks the confirmation delete button
      Then "Intake" deletion should be confirmed in a dialog
      And clicks delete confirmation OK button

      And navigates to the record with identification number "maSkArA"
      And clicks on the "Delete" button
      Then delete confirmation dialogue should appear
      And clicks the confirmation delete button
      Then "Intake" deletion should be confirmed in a dialog
      And clicks delete confirmation OK button

      And navigates to the record with identification number "KaNoRrA"
      And clicks on the "Delete" button
      Then delete confirmation dialogue should appear
      And clicks the confirmation delete button
      Then "Intake" deletion should be confirmed in a dialog
      And clicks delete confirmation OK button

      And navigates to the record with identification number "AnkORrA"
      And clicks on the "Delete" button
      Then delete confirmation dialogue should appear
      And clicks the confirmation delete button
      Then "Intake" deletion should be confirmed in a dialog
      And clicks delete confirmation OK button
      Then close the browser























# #Created by forest yang on 1/5/2016
#
# @place
# Feature: Advanced_Search - Extras
#
#   # # Prerequisite
#   # Scenario: set up record
#   #   Given user is on a blank "Object Exit" record
#   #   # Given user is on the "Create New" page
#   #   #   And selects the "Object Exit" radio button on the Create New page
#   #   #   And clicks on the Create button
#   #     And enters "Remember me 1234" in the "Object Exit" "Exit Number" field
#   #     And enters "James Adams" in the "Object Exit" "Depositor" autocomplete field
#   #     And enters "Goodbye" in the "Object Exit" "Exit Note" field
#   #     And clicks the "Save" button
#   #   Then the record is successfully saved
#   #   Then close the browser
#
#   #Test1
#   Scenario: Recent Searches
#     Given user is on the "My CollectionSpace" page
#       And clicks the "Advanced Search" button
#     #
#     And selects "Object Exit" from the "AdvancedSearch" "record type" dropdown
#       And enters "Goodbye" in the "AdvancedSearch" "Keyword Search" field
#       And clicks the "Advanced Search search" button
#     Then the search results should contain "Remember me 1234"
#       And clicks the "Edit existing advanced search" button
#       #double check
#
#     #
#       And selects "all (AND)" from the "AdvancedSearch" "Field-based search" dropdown
#       And enters "remember me 1234" in the "Object Exit" "Exit Number" field
#       And enters "James Blish" in the "Object Exit" "Depositor Search" autocomplete field
#       And clicks the "Advanced Search search" button
#     Then the search results should not contain "Remember me 1234"
#
#
#     # === works until here =====
#
#
#       And clicks on the recent searches entry containing "{'initialState':false, 'keywords':'goodbye'}"
#
#     #   And clicks on the recent searches entry containing \"([^\"]*)\"
#     # Then the search results should contain "Remember me 1234"
#     #   And clicks the "Edit existing advanced search" button #double check
#   #
#     # Then "Goodbye" should be in the "Advanced Search" "search" field
#   #     And clicks on the "Recent searches" entry containing "{"initialState":false, "keywords":""}" #double check
#   #   Then the search results should not contain "Remember me 1234"
#   #     And clicks the "Edit existing advanced search" button
#   #
#   # #the wiki says goodbye should be in the "keyword search" field.. but according to the instructions. second search didn't put anything in keyword search field.
#   #   #Then "Goodbye" should be in the "keyword search" field
#   #   Then "remember me 1234" should be in the "Object Exit" "Exit Number" field
#   #   Then "James Blish" should be in the "Object Exit" "Depositor Search" autocomplete field
#   #   Then close the browser
#   #
#   # Scenario: Record deletion
#   #    Given navigates to the record with identification number "Remember me 1234"
#   #     And clicks on the "Delete" button
#   #   Then delete confirmation dialogue should appear
#   #     And clicks the confirmation delete button
#   #   Then "Object Exit" deletion should be confirmed in a dialog
#   #     And clicks delete confirmation OK button
#   #   Then close the browser
#
#     # What i changed: "Advanced Search" "X" field --> "Object Exit" "X" field
#     # keyword search --> advanced search search
#     # Added } to the end of the dictionaries
