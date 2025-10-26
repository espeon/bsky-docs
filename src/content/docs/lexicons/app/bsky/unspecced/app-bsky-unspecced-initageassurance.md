---
title: app.bsky.unspecced.initAgeAssurance
description: Reference for the app.bsky.unspecced.initAgeAssurance lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Initiate age assurance for an account. This is a one-time action that will start the process of verifying the user's age.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `email` | `string` | ✅  | The user's email address to receive assurance instructions. |  |
| `language` | `string` | ✅  | The user's preferred language for communication during the assurance process. |  |
| `countryCode` | `string` | ✅  | An ISO 3166-1 alpha-2 code of the user's location. |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** [`app.bsky.unspecced.defs#ageAssuranceState`](/lexicons/app/bsky/unspecced/defs#ageAssuranceState)


**Possible Errors:**

- `InvalidEmail`
- `DidTooLong`
- `InvalidInitiation`

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.unspecced.initAgeAssurance",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Initiate age assurance for an account. This is a one-time action that will start the process of verifying the user's age.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "email",
            "language",
            "countryCode"
          ],
          "properties": {
            "email": {
              "type": "string",
              "description": "The user's email address to receive assurance instructions."
            },
            "language": {
              "type": "string",
              "description": "The user's preferred language for communication during the assurance process."
            },
            "countryCode": {
              "type": "string",
              "description": "An ISO 3166-1 alpha-2 code of the user's location."
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "ref",
          "ref": "app.bsky.unspecced.defs#ageAssuranceState"
        }
      },
      "errors": [
        {
          "name": "InvalidEmail"
        },
        {
          "name": "DidTooLong"
        },
        {
          "name": "InvalidInitiation"
        }
      ]
    }
  }
}
```
