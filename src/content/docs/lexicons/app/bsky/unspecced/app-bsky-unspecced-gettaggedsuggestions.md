---
title: app.bsky.unspecced.getTaggedSuggestions
description: Reference for the app.bsky.unspecced.getTaggedSuggestions lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get a list of suggestions (feeds and users) tagged with categories

**Parameters:** _(None defined)_

**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `suggestions` | Array of [`#suggestion`](#suggestion) | ✅  |  |  |

---

<a name="suggestion"></a>
### `suggestion`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `tag` | `string` | ✅  |  |  |
| `subjectType` | `string` | ✅  |  | Known Values: `actor`, `feed` |
| `subject` | `string` | ✅  |  | Format: `uri` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.unspecced.getTaggedSuggestions",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get a list of suggestions (feeds and users) tagged with categories",
      "parameters": {
        "type": "params",
        "properties": {}
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "suggestions"
          ],
          "properties": {
            "suggestions": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "#suggestion"
              }
            }
          }
        }
      }
    },
    "suggestion": {
      "type": "object",
      "required": [
        "tag",
        "subjectType",
        "subject"
      ],
      "properties": {
        "tag": {
          "type": "string"
        },
        "subjectType": {
          "type": "string",
          "knownValues": [
            "actor",
            "feed"
          ]
        },
        "subject": {
          "type": "string",
          "format": "uri"
        }
      }
    }
  }
}
```
