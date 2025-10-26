---
title: app.bsky.video.uploadVideo
description: Reference for the app.bsky.video.uploadVideo lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Upload a video to be processed then stored on the PDS.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `video/mp4`
- **Schema:**

_Schema not defined._
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `jobStatus` | [`app.bsky.video.defs#jobStatus`](/lexicons/app/bsky/video/defs#jobStatus) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.video.uploadVideo",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Upload a video to be processed then stored on the PDS.",
      "input": {
        "encoding": "video/mp4"
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "jobStatus"
          ],
          "properties": {
            "jobStatus": {
              "type": "ref",
              "ref": "app.bsky.video.defs#jobStatus"
            }
          }
        }
      }
    }
  }
}
```
