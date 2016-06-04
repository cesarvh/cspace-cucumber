package org.collectionspace.qa.records;

public class Exhibition extends Record {

    public Exhibition(){

        fieldSelectorByLabel.put("Exhibition Number",               "csc-exhibition-exhibitionNumber");
        fieldSelectorByLabel.put("Exhibition Title",                "csc-exhibition-title");
        fieldSelectorByLabel.put("Venue Opening Date",              "csc-exhibition-venueOpeningDate");
        fieldSelectorByLabel.put("Planning Notes",                  "csc-exhibition-planningNote");
        fieldSelectorByLabel.put("Earliest Venue Opening Date",     "csc-exhibition-venueOpeningDateStart");
        fieldSelectorByLabel.put("Latest Venue Opening Date",       "csc-exhibition-venueOpeningDateEnd");
        fieldSelectorByLabel.put("Record last modified by",         "csc-exhibition-updatedBy");
        fieldSelectorByLabel.put("Boilerplate Text",                "csc-exhibition-boilerplateText");
        // fieldSelectorByLabel.put("Sponsor", "csc-exhibition-exhibition-sponsor");
        // fieldSelectorByLabel.put("Sponsor", "csc-exhibition-sponsor");
        fieldSelectorByLabel.put("Curatorial Notes",                "csc-exhibition-curatorialNote");



        dropDownMap.put("Exhibition Type", "csc-exhibition-type");

        xpathMap.put("Venue",       "//*[@id=\"repeat::\"]/td[2]/input[2]");
        xpathMap.put("Sponsor",     "//*[@id=\"primaryTab\"]/div/div[3]/div[1]/div[2]/div[2]/div[1]/div/div[2]/div/ul/li/input[3]");
        xpathMap.put("Sponsor Search",            "//*[@id=\"all-content\"]/div/div[1]/div/div/div/div[2]/div[4]/div/div/div/div/div[4]/div[2]/div/ul/li/input[3]");

    }
}
