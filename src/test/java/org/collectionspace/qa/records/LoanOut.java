package org.collectionspace.qa.records;

public class LoanOut extends Record {

    public LoanOut(){
		fieldSelectorByLabel.put("Loan Out Number", 					 "csc-loanOut-loanOutNumber");
		fieldSelectorByLabel.put("Lender's Authorization Date", 		 "csc-loanOut-lendersAuthorizationDate");
		fieldSelectorByLabel.put("Borrower's Authoriztion Date", 		 "csc-loanout-borrowersAuthorizationDate");
		fieldSelectorByLabel.put("Loan Out Conditions", 				 "csc-loanOut-loanOutConditions");
		fieldSelectorByLabel.put("Loan Out Note", 						 "csc-loanOut-loanOutNote");
		fieldSelectorByLabel.put("Loan Status Date", 					 "csc-loanOut-loanedObjectStatusDate");
		fieldSelectorByLabel.put("Loan Status Note", 					 "csc-loanOut-loanedObjectStatusNote");
		fieldSelectorByLabel.put("Loan Out Date",						 "csc-loanOut-loanOutDate");
		fieldSelectorByLabel.put("Loan Return Date", 					 "csc-loanOut-loanReturnDate");
		fieldSelectorByLabel.put("Loan Renewal Application Date", 		 "csc-loanOut-loanRenewalApplicationDate");

		xpathMap.put("Lender's Authorizer",			 "//*[@id=\"primaryTab\"]/div/div[3]/div[2]/div[2]/div/div[2]/table/tbody/tr/td[1]/input[2]"); //autofill
		xpathMap.put("Lender's Contact", 			 "//*[@id=\"primaryTab\"]/div/div[3]/div[2]/div[2]/div/div[2]/table/tbody/tr/td[2]/input[2]"); //autofill
		xpathMap.put("Borrower", 				     "//*[@id=\"primaryTab\"]/div/div[3]/div[2]/div[3]/div/div[2]/table/tbody/tr/td[1]/input[2]"); // autofill
		xpathMap.put("Borrower's Contact",			 "//*[@id=\"primaryTab\"]/div/div[3]/div[2]/div[3]/div/div[2]/table/tbody/tr/td[2]/input[2]"); // autofill
		xpathMap.put("Borrower's Authorizer", 		 "//*[@id=\"primaryTab\"]/div/div[3]/div[2]/div[3]/div/div[2]/table/tbody/tr/td[3]/input[2]"); //autofill


    }
}
