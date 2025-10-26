---
title: app.bsky.embed.defs
description: Reference for the app.bsky.embed.defs lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="aspectratio"></a>
### `aspectRatio`

**Type:** `object`

width:height represents an aspect ratio. It may be approximate, and may not correspond to absolute dimensions in any given unit.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `width` | `integer` | ✅  |  | Min: 1 |
| `height` | `integer` | ✅  |  | Min: 1 |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.embed.defs",
  "defs": {
    "aspectRatio": {
      "type": "object",
      "description": "width:height represents an aspect ratio. It may be approximate, and may not correspond to absolute dimensions in any given unit.",
      "required": [
        "width",
        "height"
      ],
      "properties": {
        "width": {
          "type": "integer",
          "minimum": 1
        },
        "height": {
          "type": "integer",
          "minimum": 1
        }
      }
    }
  }
}
```
