---
title: app.bsky.graph.starterpack
description: Reference for the app.bsky.graph.starterpack lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `record`

Record defining a starter pack of actors and feeds for new users.

**Record Key:** `tid`

**Record Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `name` | `string` | ✅  | Display name for starter pack; can not be empty. | Min Length: 1<br/>Max Length: 500<br/>Max Graphemes: 50 |
| `description` | `string` | ❌  |  | Max Length: 3000<br/>Max Graphemes: 300 |
| `descriptionFacets` | Array of [`app.bsky.richtext.facet`](/app/bsky/richtext/facet#undefined) | ❌  |  |  |
| `list` | `string` | ✅  | Reference (AT-URI) to the list record. | Format: `at-uri` |
| `feeds` | Array of [`#feedItem`](#feeditem) | ❌  |  | Max Items: 3 |
| `createdAt` | `string` | ✅  |  | Format: `datetime` |

---

<a name="feeditem"></a>
### `feedItem`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `at-uri` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.graph.starterpack",
  "defs": {
    "main": {
      "type": "record",
      "description": "Record defining a starter pack of actors and feeds for new users.",
      "key": "tid",
      "record": {
        "type": "object",
        "required": [
          "name",
          "list",
          "createdAt"
        ],
        "properties": {
          "name": {
            "type": "string",
            "maxGraphemes": 50,
            "maxLength": 500,
            "minLength": 1,
            "description": "Display name for starter pack; can not be empty."
          },
          "description": {
            "type": "string",
            "maxGraphemes": 300,
            "maxLength": 3000
          },
          "descriptionFacets": {
            "type": "array",
            "items": {
              "type": "ref",
              "ref": "app.bsky.richtext.facet"
            }
          },
          "list": {
            "type": "string",
            "format": "at-uri",
            "description": "Reference (AT-URI) to the list record."
          },
          "feeds": {
            "type": "array",
            "maxLength": 3,
            "items": {
              "type": "ref",
              "ref": "#feedItem"
            }
          },
          "createdAt": {
            "type": "string",
            "format": "datetime"
          }
        }
      }
    },
    "feedItem": {
      "type": "object",
      "required": [
        "uri"
      ],
      "properties": {
        "uri": {
          "type": "string",
          "format": "at-uri"
        }
      }
    }
  }
}
```
