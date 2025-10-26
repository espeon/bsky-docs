---
title: app.bsky.graph.list
description: Reference for the app.bsky.graph.list lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `record`

Record representing a list of accounts (actors). Scope includes both moderation-oriented lists and curration-oriented lists.

**Record Key:** `tid`

**Record Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `purpose` | [`app.bsky.graph.defs#listPurpose`](/lexicons/app/bsky/graph/app-bsky-graph-defs#listpurpose) | ✅  | Defines the purpose of the list (aka, moderation-oriented or curration-oriented) |  |
| `name` | `string` | ✅  | Display name for list; can not be empty. | Min Length: 1<br/>Max Length: 64 |
| `description` | `string` | ❌  |  | Max Length: 3000<br/>Max Graphemes: 300 |
| `descriptionFacets` | Array of [`app.bsky.richtext.facet`](/lexicons/app/bsky/richtext/app-bsky-richtext-facet) | ❌  |  |  |
| `avatar` | `blob` | ❌  |  | Accept: `image/png`, `image/jpeg`<br/>Max Size: 1000000 bytes |
| `labels` | Union of:<br/>&nbsp;&nbsp;[`com.atproto.label.defs#selfLabels`](/lexicons/com/atproto/label/com-atproto-label-defs#selflabels) | ❌  |  |  |
| `createdAt` | `string` | ✅  |  | Format: `datetime` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.graph.list",
  "defs": {
    "main": {
      "type": "record",
      "description": "Record representing a list of accounts (actors). Scope includes both moderation-oriented lists and curration-oriented lists.",
      "key": "tid",
      "record": {
        "type": "object",
        "required": [
          "name",
          "purpose",
          "createdAt"
        ],
        "properties": {
          "purpose": {
            "type": "ref",
            "description": "Defines the purpose of the list (aka, moderation-oriented or curration-oriented)",
            "ref": "app.bsky.graph.defs#listPurpose"
          },
          "name": {
            "type": "string",
            "maxLength": 64,
            "minLength": 1,
            "description": "Display name for list; can not be empty."
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
          "avatar": {
            "type": "blob",
            "accept": [
              "image/png",
              "image/jpeg"
            ],
            "maxSize": 1000000
          },
          "labels": {
            "type": "union",
            "refs": [
              "com.atproto.label.defs#selfLabels"
            ]
          },
          "createdAt": {
            "type": "string",
            "format": "datetime"
          }
        }
      }
    }
  }
}
```
