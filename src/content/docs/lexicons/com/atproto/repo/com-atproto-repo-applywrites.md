---
title: com.atproto.repo.applyWrites
description: Reference for the com.atproto.repo.applyWrites lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Apply a batch transaction of repository creates, updates, and deletes. Requires auth, implemented by PDS.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `repo` | `string` | ✅  | The handle or DID of the repo (aka, current account). | Format: `at-identifier` |
| `validate` | `boolean` | ❌  | Can be set to 'false' to skip Lexicon schema validation of record data across all operations, 'true' to require it, or leave unset to validate only for known Lexicons. |  |
| `writes` | Array of Union of:<br/>&nbsp;&nbsp;[`#create`](#create)<br/>&nbsp;&nbsp;[`#update`](#update)<br/>&nbsp;&nbsp;[`#delete`](#delete) | ✅  |  |  |
| `swapCommit` | `string` | ❌  | If provided, the entire operation will fail if the current repo commit CID does not match this value. Used to prevent conflicting repo mutations. | Format: `cid` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `commit` | [`com.atproto.repo.defs#commitMeta`](/lexicons/com/atproto/repo/defs#commitMeta) | ❌  |  |  |
| `results` | Array of Union of:<br/>&nbsp;&nbsp;[`#createResult`](#createresult)<br/>&nbsp;&nbsp;[`#updateResult`](#updateresult)<br/>&nbsp;&nbsp;[`#deleteResult`](#deleteresult) | ❌  |  |  |
**Possible Errors:**

- `InvalidSwap`: Indicates that the 'swapCommit' parameter did not match current commit.

---

<a name="create"></a>
### `create`

**Type:** `object`

Operation which creates a new record.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `collection` | `string` | ✅  |  | Format: `nsid` |
| `rkey` | `string` | ❌  | NOTE: maxLength is redundant with record-key format. Keeping it temporarily to ensure backwards compatibility. | Format: `record-key`<br/>Max Length: 512 |
| `value` | `unknown` | ✅  |  |  |

---

<a name="update"></a>
### `update`

**Type:** `object`

Operation which updates an existing record.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `collection` | `string` | ✅  |  | Format: `nsid` |
| `rkey` | `string` | ✅  |  | Format: `record-key` |
| `value` | `unknown` | ✅  |  |  |

---

<a name="delete"></a>
### `delete`

**Type:** `object`

Operation which deletes an existing record.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `collection` | `string` | ✅  |  | Format: `nsid` |
| `rkey` | `string` | ✅  |  | Format: `record-key` |

---

<a name="createresult"></a>
### `createResult`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `at-uri` |
| `cid` | `string` | ✅  |  | Format: `cid` |
| `validationStatus` | `string` | ❌  |  | Known Values: `valid`, `unknown` |

---

<a name="updateresult"></a>
### `updateResult`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `at-uri` |
| `cid` | `string` | ✅  |  | Format: `cid` |
| `validationStatus` | `string` | ❌  |  | Known Values: `valid`, `unknown` |

---

<a name="deleteresult"></a>
### `deleteResult`

**Type:** `object`

**Properties:**

_(No properties defined)_

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.repo.applyWrites",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Apply a batch transaction of repository creates, updates, and deletes. Requires auth, implemented by PDS.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "repo",
            "writes"
          ],
          "properties": {
            "repo": {
              "type": "string",
              "format": "at-identifier",
              "description": "The handle or DID of the repo (aka, current account)."
            },
            "validate": {
              "type": "boolean",
              "description": "Can be set to 'false' to skip Lexicon schema validation of record data across all operations, 'true' to require it, or leave unset to validate only for known Lexicons."
            },
            "writes": {
              "type": "array",
              "items": {
                "type": "union",
                "refs": [
                  "#create",
                  "#update",
                  "#delete"
                ],
                "closed": true
              }
            },
            "swapCommit": {
              "type": "string",
              "description": "If provided, the entire operation will fail if the current repo commit CID does not match this value. Used to prevent conflicting repo mutations.",
              "format": "cid"
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [],
          "properties": {
            "commit": {
              "type": "ref",
              "ref": "com.atproto.repo.defs#commitMeta"
            },
            "results": {
              "type": "array",
              "items": {
                "type": "union",
                "refs": [
                  "#createResult",
                  "#updateResult",
                  "#deleteResult"
                ],
                "closed": true
              }
            }
          }
        }
      },
      "errors": [
        {
          "name": "InvalidSwap",
          "description": "Indicates that the 'swapCommit' parameter did not match current commit."
        }
      ]
    },
    "create": {
      "type": "object",
      "description": "Operation which creates a new record.",
      "required": [
        "collection",
        "value"
      ],
      "properties": {
        "collection": {
          "type": "string",
          "format": "nsid"
        },
        "rkey": {
          "type": "string",
          "maxLength": 512,
          "format": "record-key",
          "description": "NOTE: maxLength is redundant with record-key format. Keeping it temporarily to ensure backwards compatibility."
        },
        "value": {
          "type": "unknown"
        }
      }
    },
    "update": {
      "type": "object",
      "description": "Operation which updates an existing record.",
      "required": [
        "collection",
        "rkey",
        "value"
      ],
      "properties": {
        "collection": {
          "type": "string",
          "format": "nsid"
        },
        "rkey": {
          "type": "string",
          "format": "record-key"
        },
        "value": {
          "type": "unknown"
        }
      }
    },
    "delete": {
      "type": "object",
      "description": "Operation which deletes an existing record.",
      "required": [
        "collection",
        "rkey"
      ],
      "properties": {
        "collection": {
          "type": "string",
          "format": "nsid"
        },
        "rkey": {
          "type": "string",
          "format": "record-key"
        }
      }
    },
    "createResult": {
      "type": "object",
      "required": [
        "uri",
        "cid"
      ],
      "properties": {
        "uri": {
          "type": "string",
          "format": "at-uri"
        },
        "cid": {
          "type": "string",
          "format": "cid"
        },
        "validationStatus": {
          "type": "string",
          "knownValues": [
            "valid",
            "unknown"
          ]
        }
      }
    },
    "updateResult": {
      "type": "object",
      "required": [
        "uri",
        "cid"
      ],
      "properties": {
        "uri": {
          "type": "string",
          "format": "at-uri"
        },
        "cid": {
          "type": "string",
          "format": "cid"
        },
        "validationStatus": {
          "type": "string",
          "knownValues": [
            "valid",
            "unknown"
          ]
        }
      }
    },
    "deleteResult": {
      "type": "object",
      "required": [],
      "properties": {}
    }
  }
}
```
