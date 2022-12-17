# Security Baseline Conditonal Access Policy 03: Require multi-factor authentication low-Medium-risky signins and users. 
# azuread_conditional_access_policy.sbca03:
resource "azuread_conditional_access_policy" "sbca03" {
    display_name = "SBCA03: All-Apps-Low-Medium-Risky-Signins-and-Users-Require-MFA"
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

        sign_in_risk_levels = [
            "medium",
            "low",
        ]
        user_risk_levels    = [
            "medium",
            "low",
            ]
        users {
            included_users  = [
                "All",
            ]
        }
    }

    grant_controls {
        built_in_controls             = [
            "mfa",
        ]
        operator                      = "OR"
    }

    timeouts {}
}
