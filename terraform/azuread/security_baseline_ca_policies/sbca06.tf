# Security Baseline Conditonal Access Policy 06: Block all high risk sign ins and users
# azuread_conditional_access_policy.sbca06:
resource "azuread_conditional_access_policy" "sbca06" {
    display_name = "SBCA06: All-Apps-High-Risky-Signins-and-Users-Block"
    state        = "disabled"

    conditions {
        client_app_types    = [
            "all",
        ]
        sign_in_risk_levels = [
            "high",
        ]
        user_risk_levels    = [
            "high",
            ]

        users {
            included_users  = [
                "All",
            ]
        }
        applications {
            included_applications = [
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

    timeouts {}
}