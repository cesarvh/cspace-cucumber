package org.collectionspace.qa.records;

public class LocationMovementInventory extends Record {

    public LocationMovementInventory(){

      fieldSelectorByLabel.put("Reference Number",         "csc-movement-movementReferenceNumber");
      fieldSelectorByLabel.put("First Note",               "csc-movement-currentLocationNote");
      fieldSelectorByLabel.put("Location Date",            "csc-movement-locationDate");
      fieldSelectorByLabel.put("Planned removal date",     "csc-movement-plannedRemovalDate");
      fieldSelectorByLabel.put("Removal date",             "csc-movement-removalDate");
      fieldSelectorByLabel.put("Second Note",              "input-textarea csc-movement-movementNote");
      fieldSelectorByLabel.put("Inventory Date",           "csc-movement-inventoryDate");
      fieldSelectorByLabel.put("Next Inventory Date",      "csc-movement-nextInventoryDate");
      fieldSelectorByLabel.put("Third Note",               "csc-movement-inventoryNote");

      xpathMap.put("Normal Location",          "//*[@id=\"primaryTab\"]/div/div[3]/div[1]/div[2]/div[1]/div[2]/div/div[2]/input[2]");
      xpathMap.put("Current Location",         "//*[@id=\"primaryTab\"]/div/div[3]/div[1]/div[2]/div[2]/div/div[2]/table/tbody/tr/td[1]/input[2]");
      xpathMap.put("Contact",                  "//*[@id=\"primaryTab\"]/div/div[3]/div[2]/div[2]/div[1]/div[2]/div/div[2]/input[2]");

      xpathMap.put("Second Contact",           "//*[@id=\"fluid-id-5jxc7z9x-1204\"]/ul/li/input[3]"); // fix fluid id....


    }
}
