# Security Baseline Conditonal Access Policy 05: Block all legacy authentication. 
# azuread_conditional_access_policy.sbca05:
resource "azuread_conditional_access_policy" "sbca05" {
    display_name = "SBCA05: All-Apps-All-Users-Block-Legacy-Authentication"
    state        = "disabled"

    conditions {
        client_app_types    = [
            "exchangeActiveSync",
            "other",
        ]

        applications {
            included_applications = [
                "All",
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
        custom_authentication_factors = []
        operator                      = "OR"
        terms_of_use                  = []
    }

    timeouts {}
}