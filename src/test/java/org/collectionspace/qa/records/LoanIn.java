 package org.collectionspace.qa.records;

public class LoanIn extends Record {

    public LoanIn(){
        fieldSelectorByLabel.put("Loan In Number",                "csc-loanIn-loanInNumber");
        fieldSelectorByLabel.put("Loan Status Note",              "csc-loanin-loanStatusNote");
        fieldSelectorByLabel.put("Loan Status Date",              "csc-loanin-loanStatusDate");
        fieldSelectorByLabel.put("Authorization Date",            "csc-loanIn-lendersAuthorizerDate");
		fieldSelectorByLabel.put("Borrower's Authorization Date", "csc-loanin-borrowersAuthorizationDate");
		fieldSelectorByLabel.put("Loan In Conditions",            "csc-loanIn-loanInNote");
		fieldSelectorByLabel.put("Loan In Note",                  "csc-loanIn-loanInConditions");
		fieldSelectorByLabel.put("Loan In Date",                  "csc-loanIn-loanInDate");
		fieldSelectorByLabel.put("Loan Return Date",              "csc-loanIn-loanReturnDate");
		fieldSelectorByLabel.put("Loan Renewal Application Date", "csc-loanIn-loanRenewalApplicationDate");

        fieldSelectorByLabel.put("Lender",                "//*[@id=\"repeat::-1\"]/td[2]/input[2]");
        fieldSelectorByLabel.put("Lender's Contact",      "//*[@id=\"repeat::-1\"]/td[3]/input[2]");
        fieldSelectorByLabel.put("Lender's Authorizer",   "//*[@id=\"repeat::-1\"]/td[4]/input[2]");
        fieldSelectorByLabel.put("Borrower's Contact",    "//*[@id=\"primaryTab\"]/div/div[3]/div[2]/div[4]/div/div[2]/table/tbody/tr/td[1]/input[2]");
        fieldSelectorByLabel.put("Borrower's Authorizer", "//*[@id=\"primaryTab\"]/div/div[3]/div[2]/div[4]/div/div[2]/table/tbody/tr/td[2]/input[2]");
    }
}
