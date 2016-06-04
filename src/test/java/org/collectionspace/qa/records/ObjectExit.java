package org.collectionspace.qa.records;

public class ObjectExit extends Record {

    public ObjectExit(){
		fieldSelectorByLabel.put("Exit Number", "csc-objectexit-exitNumber");
		fieldSelectorByLabel.put("Exit Date", "csc-objectexit-exitDateGroup");
		fieldSelectorByLabel.put("Exit Note", "csc-objectexit-exitNote");
		fieldSelectorByLabel.put("Packing Note", "csc-objectexit-packingNote");

		xpathMap.put("Current Owner", "//*[@id=\"primaryTab\"]/div/div[3]/div[2]/div[2]/div[1]/div/div[2]/input[2]");
		xpathMap.put("Depositor"    , "//*[@id=\"primaryTab\"]/div/div[3]/div[2]/div[3]/div[1]/div/div[2]/input[2]");
        xpathMap.put("Depositor Search", "//*[@id=\"all-content\"]/div/div[1]/div/div/div/div[2]/div[4]/div/div/div/div/div[3]/div[2]/div/ul/li/input[3]");

    }
}
