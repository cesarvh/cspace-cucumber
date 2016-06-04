package org.collectionspace.qa.records;

public class ValuationControl extends Record {

    public ValuationControl(){
    	fieldSelectorByLabel.put("Valuation Control Reference Number", "csc-valuationcontrol-valuationcontrolRefNumber");
    	fieldSelectorByLabel.put("Date",                               "csc-valuationcontrol-valueDate");
    	fieldSelectorByLabel.put("Renewal Date",                       "csc-valuationcontrol-valueRenewalDate");
    	fieldSelectorByLabel.put("Note",                               "csc-valuationcontrol-valueNote");

    	xpathMap.put("Source", "//*[@id=\"primaryTab\"]/div/div[3]/div[2]/div[2]/div[2]/div[1]/div[2]/input[2]");

    }
}
