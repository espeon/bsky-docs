---
title: com.atproto.label.subscribeLabels
description: Reference for the com.atproto.label.subscribeLabels lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `subscription`

Subscribe to stream of labels (and negations). Public endpoint implemented by mod services. Uses same sequencing scheme as repo event stream.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `integer` | ❌  | The last known event seq number to backfill from. |  |
**Message:**

- **Schema:**

**Schema Type:** Union of:<br/>&nbsp;&nbsp;[`#labels`](#labels)<br/>&nbsp;&nbsp;[`#info`](#info)


**Possible Errors:**

- `FutureCursor`

---

<a name="labels"></a>
### `labels`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `seq` | `integer` | ✅  |  |  |
| `labels` | Array of [`com.atproto.label.defs#label`](/lexicons/com/atproto/label/defs#label) | ✅  |  |  |

---

<a name="info"></a>
### `info`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `name` | `string` | ✅  |  | Known Values: `OutdatedCursor` |
| `message` | `string` | ❌  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.label.subscribeLabels",
  "defs": {
    "main": {
      "type": "subscription",
      "description": "Subscribe to stream of labels (and negations). Public endpoint implemented by mod services. Uses same sequencing scheme as repo event stream.",
      "parameters": {
        "type": "params",
        "properties": {
          "cursor": {
            "type": "integer",
            "description": "The last known event seq number to backfill from."
          }
        }
      },
      "message": {
        "schema": {
          "type": "union",
          "refs": [
            "#labels",
            "#info"
          ]
        }
      },
      "errors": [
        {
          "name": "FutureCursor"
        }
      ]
    },
    "labels": {
      "type": "object",
      "required": [
        "seq",
        "labels"
      ],
      "properties": {
        "seq": {
          "type": "integer"
        },
        "labels": {
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "com.atproto.label.defs#label"
          }
        }
      }
    },
    "info": {
      "type": "object",
      "required": [
        "name"
      ],
      "properties": {
        "name": {
          "type": "string",
          "knownValues": [
            "OutdatedCursor"
          ]
        },
        "message": {
          "type": "string"
        }
      }
    }
  }
}
```
