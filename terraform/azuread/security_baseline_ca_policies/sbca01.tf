# Security Baseline Conditonal Access Policy 01: Require all administrators to provide mutlifactor authentication for all applications every 8 hours. 
# azuread_conditional_access_policy.sbca01:
resource "azuread_conditional_access_policy" "sbca01" {
    display_name = "SBCA01: All-Apps-Administrators-Require-MFA-with-8-Hour-Session-Control"
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

        users {
            included_roles  = [
                "9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3",
                "cf1c38e5-3621-4004-a7cb-879624dced7c",
                "9c6df0f2-1e7c-4dc3-b195-66dfbd24aa8f",
                "c430b396-e693-46cc-96f3-db01bf8bb62a",
                "58a13ea3-c632-46ae-9ee0-9c0d43cd7f3d",
                "ffd52fa5-98dc-465c-991d-fc073eb59f8f",
                "8424c6f0-a189-499e-bbd0-26c1753c96d4",
                "1d336d2c-4ae8-42ef-9711-b3604ce3fc2c",
                "c4e39bd9-1100-46d3-8c65-fb160da0071f",
                "0526716b-113d-4c15-b2c8-68e3c22b9f80",
                "e3973bdf-4987-49ae-837a-ba8e231c7286",
                "9f06204d-73c1-4d4c-880a-6edb90606fd8",
                "7495fdc4-34c4-4d15-a289-98788ce399fd",
                "aaf43236-0c0d-4d5f-883a-6955382ac081",
                "3edaf663-341e-4475-9f94-5c398ef6c070",
                "b0f54661-2d74-4c50-afa3-1ec803f12efe",
                "892c5842-a9a6-463a-8041-72aa08ca3cf6",
                "158c047a-c907-4556-b7ef-446551a6b5f7",
                "7698a772-787b-4ac8-901f-60d6b08affd2",
                "17315797-102d-40b4-93e0-432062caca18",
                "e6d1a23a-da11-4be4-9570-befc86d067a7",
                "b1be1c3e-b65d-4f19-8427-f6fa0d97feb9",
                "5c4f9dcd-47dc-4cf7-8c9a-9e4207cbfc91",
                "38a96431-2bdf-4b4c-8b6e-5d3d8abac1a4",
                "88d8e3e3-8f55-4a1e-953a-9b9898b8876b",
                "d29b2b05-8046-44ba-8758-1e26182fcf32",
                "9360feb5-f418-4baa-8175-e2a00bac4301",
                "8329153b-31d0-4727-b945-745eb3bc5f31",
                "44367163-eba1-44c3-98af-f5787879f96a",
                "3f1acade-1e04-4fbc-9b69-f0302cd84aef",
                "29232cdf-9323-42fd-ade2-1d097af3e4de",
                "31392ffb-586c-42d1-9346-e59415a2cc4e",
                "6e591065-9bad-43ed-90f3-e9424366d2f0",
                "0f971eea-41eb-4569-a71e-57bb8a3eff1e",
                "be2f45a1-457d-42af-a067-6ec1fa63bc45",
                "62e90394-69f5-4237-9190-012177145e10",
                "f2ef992c-3afb-46b9-b7cf-a126ee74c451",
                "fdd7a751-b60b-444a-984c-02652fe8fa1c",
                "95e79109-95c0-4d8e-aee3-d01accf2d47b",
                "729827e3-9c14-49f7-bb1b-9608f156bbb8",
                "8ac3fc64-6eca-42ea-9e69-59f4c7b60eb2",
                "45d8d3c5-c802-45c6-b32a-1d70b5e1e86e",
                "eb1f4a8d-243a-41f0-9fbd-c7cdf6c5ef7c",
                "25df335f-86eb-4119-b717-0ff02de207e9",
                "31e939ad-9672-4796-9c2e-873181342d2d",
                "3a2c62db-5318-420d-8d74-23affee5d9d5",
                "74ef975b-6605-40af-a5d2-b9539d836353",
                "b5a8dcf3-09d5-43a9-a639-8e29ef291470",
                "744ec460-397e-42ad-a462-8b3f9747a02c",
                "4d6ac14f-3453-41d0-bef9-a3e0c569773a",
                "59d46f88-662b-457b-bceb-5c3809e5908f",
                "ac16e43d-7b2d-40e0-ac05-243ff356ab5b",
                "790c1fb9-7f7d-4f88-86a1-ef1f95c05c1b",
                "1501b917-7653-4ff9-a4b5-203eaf33784f",
                "d37c8bed-0711-4417-ba38-b4abe66ce4c2",
                "2b745bdf-0803-4d80-aa65-822c4493daac",
                "281fe777-fb20-4fbb-b7a3-ccebce5b0d96",
                "507f53e4-4e52-4077-abd3-d2e1558b6ea2",
                "966707d0-3269-4727-9be2-8c3a10f19b9d",
                "af78dc32-cf4d-46f9-ba4e-4428526346b5",
                "a9ea8996-122f-4c74-9520-8edcd192826c",
                "11648597-926c-4cf3-9c36-bcebb0ba8dcc",
                "644ef478-e28f-4e28-b9dc-3fdde9aa0b1f",
                "e8cef6f1-e4bd-4ea8-bc07-4b8d950f4477",
                "7be44c8a-adaf-4e2a-84d6-ab2649e08a13",
                "e8611ab8-c189-46e8-94e1-60213ab1f814",
                "4a5d8f65-41da-4de4-8968-e035b65339cf",
                "0964bb5e-9bdb-4d7b-ac29-58e794862a40",
                "8835291a-918c-4fd7-a9ce-faa49f0cf7d9",
                "194ae4cb-b126-40b2-bd5b-6091b380977d",
                "5f2222b1-57c3-48ba-8ad5-d4759f1fde6f",
                "f023fd81-a637-4b56-95fd-791ac0226033",
                "5d6b6bb7-de71-4623-b4af-96380a352509",
                "f28a1f50-f6e7-4571-818b-6a12f2af6b6c",
                "75941009-915a-4869-abe7-691bff18279e",
                "69091246-20e8-4a56-aa4d-066075b2a7a8",
                "baf37b3a-610e-45da-9e62-d9d1e5e8914b",
                "f70938a0-fc10-4177-9e90-2178f8765737",
                "fcf91098-03e3-41a9-b5ba-6f0ec8188a12",
                "3d762c5a-1b6c-493f-843e-55a3b42923d4",
                "112ca1a2-15ad-4102-995e-45b0bc479a6a",
                "75934031-6c7e-415a-99d7-48dbd49e875e",
                "fe930be7-5e62-47db-91af-98c3a49a38b1",
                "27460883-1df1-4691-b032-3b79643e5e63",
                "e300d9e7-4a2b-4295-9eff-f1c78b36cc98",
                "11451d60-acb2-45eb-a7d6-43d0f0125c13",
                "32696413-001a-46ae-978c-ce0f6b3620d2",
                "810a2642-a034-447f-a5e8-41beaa378541",
            ]
            included_users  = []
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