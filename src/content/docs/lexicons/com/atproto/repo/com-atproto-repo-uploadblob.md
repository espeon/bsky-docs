---
title: com.atproto.repo.uploadBlob
description: Reference for the com.atproto.repo.uploadBlob lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Upload a new blob, to be referenced from a repository record. The blob will be deleted if it is not referenced within a time window (eg, minutes). Blob restrictions (mimetype, size, etc) are enforced when the reference is created. Requires auth, implemented by PDS.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `*/*`
- **Schema:**

_Schema not defined._
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `blob` | `blob` | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.repo.uploadBlob",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Upload a new blob, to be referenced from a repository record. The blob will be deleted if it is not referenced within a time window (eg, minutes). Blob restrictions (mimetype, size, etc) are enforced when the reference is created. Requires auth, implemented by PDS.",
      "input": {
        "encoding": "*/*"
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "blob"
          ],
          "properties": {
            "blob": {
              "type": "blob"
            }
          }
        }
      }
    }
  }
}
```
