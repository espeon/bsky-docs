---
title: app.bsky.feed.generator
description: Reference for the app.bsky.feed.generator lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `record`

Record declaring of the existence of a feed generator, and containing metadata about it. The record can exist in any repository.

**Record Key:** `any`

**Record Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |
| `displayName` | `string` | ✅  |  | Max Length: 240<br/>Max Graphemes: 24 |
| `description` | `string` | ❌  |  | Max Length: 3000<br/>Max Graphemes: 300 |
| `descriptionFacets` | Array of [`app.bsky.richtext.facet`](lexicons/app/bsky/richtext/facet#undefined) | ❌  |  |  |
| `avatar` | `blob` | ❌  |  | Accept: `image/png`, `image/jpeg`<br/>Max Size: 1000000 bytes |
| `acceptsInteractions` | `boolean` | ❌  | Declaration that a feed accepts feedback interactions from a client through app.bsky.feed.sendInteractions |  |
| `labels` | Union of:<br/>&nbsp;&nbsp;[`com.atproto.label.defs#selfLabels`](lexicons/com/atproto/label/defs#selfLabels) | ❌  | Self-label values |  |
| `contentMode` | `string` | ❌  |  | Known Values: `app.bsky.feed.defs#contentModeUnspecified`, `app.bsky.feed.defs#contentModeVideo` |
| `createdAt` | `string` | ✅  |  | Format: `datetime` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.feed.generator",
  "defs": {
    "main": {
      "type": "record",
      "description": "Record declaring of the existence of a feed generator, and containing metadata about it. The record can exist in any repository.",
      "key": "any",
      "record": {
        "type": "object",
        "required": [
          "did",
          "displayName",
          "createdAt"
        ],
        "properties": {
          "did": {
            "type": "string",
            "format": "did"
          },
          "displayName": {
            "type": "string",
            "maxGraphemes": 24,
            "maxLength": 240
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
          "acceptsInteractions": {
            "type": "boolean",
            "description": "Declaration that a feed accepts feedback interactions from a client through app.bsky.feed.sendInteractions"
          },
          "labels": {
            "type": "union",
            "description": "Self-label values",
            "refs": [
              "com.atproto.label.defs#selfLabels"
            ]
          },
          "contentMode": {
            "type": "string",
            "knownValues": [
              "app.bsky.feed.defs#contentModeUnspecified",
              "app.bsky.feed.defs#contentModeVideo"
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
