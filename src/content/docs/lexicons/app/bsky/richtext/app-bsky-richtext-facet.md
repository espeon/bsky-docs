---
title: app.bsky.richtext.facet
description: Reference for the app.bsky.richtext.facet lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `object`

Annotation of a sub-string within rich text.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `index` | [`#byteSlice`](#byteslice) | ✅  |  |  |
| `features` | Array of Union of:<br/>&nbsp;&nbsp;[`#mention`](#mention)<br/>&nbsp;&nbsp;[`#link`](#link)<br/>&nbsp;&nbsp;[`#tag`](#tag) | ✅  |  |  |

---

<a name="mention"></a>
### `mention`

**Type:** `object`

Facet feature for mention of another account. The text is usually a handle, including a '@' prefix, but the facet reference is a DID.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |

---

<a name="link"></a>
### `link`

**Type:** `object`

Facet feature for a URL. The text URL may have been simplified or truncated, but the facet reference should be a complete URL.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `uri` |

---

<a name="tag"></a>
### `tag`

**Type:** `object`

Facet feature for a hashtag. The text usually includes a '#' prefix, but the facet reference should not (except in the case of 'double hash tags').

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `tag` | `string` | ✅  |  | Max Length: 640<br/>Max Graphemes: 64 |

---

<a name="byteslice"></a>
### `byteSlice`

**Type:** `object`

Specifies the sub-string range a facet feature applies to. Start index is inclusive, end index is exclusive. Indices are zero-indexed, counting bytes of the UTF-8 encoded text. NOTE: some languages, like Javascript, use UTF-16 or Unicode codepoints for string slice indexing; in these languages, convert to byte arrays before working with facets.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `byteStart` | `integer` | ✅  |  | Min: 0 |
| `byteEnd` | `integer` | ✅  |  | Min: 0 |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.richtext.facet",
  "defs": {
    "main": {
      "type": "object",
      "description": "Annotation of a sub-string within rich text.",
      "required": [
        "index",
        "features"
      ],
      "properties": {
        "index": {
          "type": "ref",
          "ref": "#byteSlice"
        },
        "features": {
          "type": "array",
          "items": {
            "type": "union",
            "refs": [
              "#mention",
              "#link",
              "#tag"
            ]
          }
        }
      }
    },
    "mention": {
      "type": "object",
      "description": "Facet feature for mention of another account. The text is usually a handle, including a '@' prefix, but the facet reference is a DID.",
      "required": [
        "did"
      ],
      "properties": {
        "did": {
          "type": "string",
          "format": "did"
        }
      }
    },
    "link": {
      "type": "object",
      "description": "Facet feature for a URL. The text URL may have been simplified or truncated, but the facet reference should be a complete URL.",
      "required": [
        "uri"
      ],
      "properties": {
        "uri": {
          "type": "string",
          "format": "uri"
        }
      }
    },
    "tag": {
      "type": "object",
      "description": "Facet feature for a hashtag. The text usually includes a '#' prefix, but the facet reference should not (except in the case of 'double hash tags').",
      "required": [
        "tag"
      ],
      "properties": {
        "tag": {
          "type": "string",
          "maxLength": 640,
          "maxGraphemes": 64
        }
      }
    },
    "byteSlice": {
      "type": "object",
      "description": "Specifies the sub-string range a facet feature applies to. Start index is inclusive, end index is exclusive. Indices are zero-indexed, counting bytes of the UTF-8 encoded text. NOTE: some languages, like Javascript, use UTF-16 or Unicode codepoints for string slice indexing; in these languages, convert to byte arrays before working with facets.",
      "required": [
        "byteStart",
        "byteEnd"
      ],
      "properties": {
        "byteStart": {
          "type": "integer",
          "minimum": 0
        },
        "byteEnd": {
          "type": "integer",
          "minimum": 0
        }
      }
    }
  }
}
```
