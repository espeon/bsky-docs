---
title: tools.ozone.hosting.getAccountHistory
description: Reference for the tools.ozone.hosting.getAccountHistory lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get account history, e.g. log of updated email addresses or other identity information.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |
| `events` | Array of `string` | ❌  |  |  |
| `cursor` | `string` | ❌  |  |  |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 100<br/>Default: `50` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `events` | Array of [`#event`](#event) | ✅  |  |  |

---

<a name="event"></a>
### `event`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `details` | Union of:<br/>&nbsp;&nbsp;[`#accountCreated`](#accountcreated)<br/>&nbsp;&nbsp;[`#emailUpdated`](#emailupdated)<br/>&nbsp;&nbsp;[`#emailConfirmed`](#emailconfirmed)<br/>&nbsp;&nbsp;[`#passwordUpdated`](#passwordupdated)<br/>&nbsp;&nbsp;[`#handleUpdated`](#handleupdated) | ✅  |  |  |
| `createdBy` | `string` | ✅  |  |  |
| `createdAt` | `string` | ✅  |  | Format: `datetime` |

---

<a name="accountcreated"></a>
### `accountCreated`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `email` | `string` | ❌  |  |  |
| `handle` | `string` | ❌  |  | Format: `handle` |

---

<a name="emailupdated"></a>
### `emailUpdated`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `email` | `string` | ✅  |  |  |

---

<a name="emailconfirmed"></a>
### `emailConfirmed`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `email` | `string` | ✅  |  |  |

---

<a name="passwordupdated"></a>
### `passwordUpdated`

**Type:** `object`

**Properties:**

_(No properties defined)_

---

<a name="handleupdated"></a>
### `handleUpdated`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `handle` | `string` | ✅  |  | Format: `handle` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.hosting.getAccountHistory",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get account history, e.g. log of updated email addresses or other identity information.",
      "parameters": {
        "type": "params",
        "required": [
          "did"
        ],
        "properties": {
          "did": {
            "type": "string",
            "format": "did"
          },
          "events": {
            "type": "array",
            "items": {
              "type": "string",
              "knownValues": [
                "accountCreated",
                "emailUpdated",
                "emailConfirmed",
                "passwordUpdated",
                "handleUpdated"
              ]
            }
          },
          "cursor": {
            "type": "string"
          },
          "limit": {
            "type": "integer",
            "minimum": 1,
            "maximum": 100,
            "default": 50
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "events"
          ],
          "properties": {
            "cursor": {
              "type": "string"
            },
            "events": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "#event"
              }
            }
          }
        }
      }
    },
    "event": {
      "type": "object",
      "required": [
        "details",
        "createdBy",
        "createdAt"
      ],
      "properties": {
        "details": {
          "type": "union",
          "refs": [
            "#accountCreated",
            "#emailUpdated",
            "#emailConfirmed",
            "#passwordUpdated",
            "#handleUpdated"
          ]
        },
        "createdBy": {
          "type": "string"
        },
        "createdAt": {
          "type": "string",
          "format": "datetime"
        }
      }
    },
    "accountCreated": {
      "type": "object",
      "required": [],
      "properties": {
        "email": {
          "type": "string"
        },
        "handle": {
          "type": "string",
          "format": "handle"
        }
      }
    },
    "emailUpdated": {
      "type": "object",
      "required": [
        "email"
      ],
      "properties": {
        "email": {
          "type": "string"
        }
      }
    },
    "emailConfirmed": {
      "type": "object",
      "required": [
        "email"
      ],
      "properties": {
        "email": {
          "type": "string"
        }
      }
    },
    "passwordUpdated": {
      "type": "object",
      "required": [],
      "properties": {}
    },
    "handleUpdated": {
      "type": "object",
      "required": [
        "handle"
      ],
      "properties": {
        "handle": {
          "type": "string",
          "format": "handle"
        }
      }
    }
  }
}
```
