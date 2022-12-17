# Security Baseline Named Location 01: Apporved login Countries. All other access will be blocked as per sbca07.  
resource "azuread_named_location" "sbcountry01" {
    display_name = "SB:Authorized_Countries"
    country {
        countries_and_regions = [
            "NZ",
            "AU",
            "US",
            "GB",
            "IE"
    ]
    include_unknown_countries_and_regions = false
  }
}