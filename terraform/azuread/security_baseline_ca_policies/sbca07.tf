# Security Baseline Conditonal Access Policy 07: Block all countires outside of the approved countries named location 
# azuread_conditional_access_policy.sbca07:
resource "azuread_conditional_access_policy" "sbca07" {
    display_name = "SBCA07: All-Apps-Block-Outside-Authorized-Countries"
    state        = "disabled"

    conditions {
        client_app_types    = [
            "all",
        ]

        applications {
            included_applications = [
                "All",
            ]
        }

        locations {
            excluded_locations = [
                "AllTrusted",
            ]
            included_locations = [
                azuread_named_location.sbcountry01.id,
            ]
        }

        users {
            included_users  = [
                "All",
            ]
        }
    }

    grant_controls {
        built_in_controls             = [
            "block",
        ]
        operator                      = "OR"
    }
}
