---
title: com.atproto.identity.refreshIdentity
description: Reference for the com.atproto.identity.refreshIdentity lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Request that the server re-resolve an identity (DID and handle). The server may ignore this request, or require authentication, depending on the role, implementation, and policy of the server.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `identifier` | `string` | ✅  |  | Format: `at-identifier` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** [`com.atproto.identity.defs#identityInfo`](/lexicons/com/atproto/identity/defs#identityInfo)


**Possible Errors:**

- `HandleNotFound`: The resolution process confirmed that the handle does not resolve to any DID.
- `DidNotFound`: The DID resolution process confirmed that there is no current DID.
- `DidDeactivated`: The DID previously existed, but has been deactivated.

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.identity.refreshIdentity",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Request that the server re-resolve an identity (DID and handle). The server may ignore this request, or require authentication, depending on the role, implementation, and policy of the server.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "identifier"
          ],
          "properties": {
            "identifier": {
              "type": "string",
              "format": "at-identifier"
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "ref",
          "ref": "com.atproto.identity.defs#identityInfo"
        }
      },
      "errors": [
        {
          "name": "HandleNotFound",
          "description": "The resolution process confirmed that the handle does not resolve to any DID."
        },
        {
          "name": "DidNotFound",
          "description": "The DID resolution process confirmed that there is no current DID."
        },
        {
          "name": "DidDeactivated",
          "description": "The DID previously existed, but has been deactivated."
        }
      ]
    }
  }
}
```
