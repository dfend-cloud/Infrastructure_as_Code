# Security Baseline Conditonal Access Policy 04: Require multi-factor authentication for all users accessing the Azure Management portal every 8 hours
# azuread_conditional_access_policy.sbca04:
resource "azuread_conditional_access_policy" "sbca04" {
    display_name = "SBCA04: Azure-Management-All-Users-Require-MFA-with-8-Hour-Session-Control"
    state        = "disabled"

    conditions {
        client_app_types    = [
            "all",
        ]

        applications {
            included_applications = [
                "797f4846-ba00-4fd7-ba43-dac1f8f63013"
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
            "mfa",
        ]
        operator                      = "OR"
    }

    session_controls {
        application_enforced_restrictions_enabled = false
        sign_in_frequency                         = 8
        sign_in_frequency_period                  = "hours"
    }

    timeouts {}
}