# Bluesky Documentation

[![Built with Starlight](https://astro.badg.es/v2/built-with-starlight/tiny.svg)](https://starlight.astro.build)

Documentation site for Bluesky and the AT Protocol, with automatically generated lexicon documentation.

## 🚀 Project Structure

Inside of your Astro + Starlight project, you'll see the following folders and files:

```
.
├── public/
├── src/
│   ├── assets/
│   ├── content/
│   │   └── docs/
│   └── content.config.ts
├── astro.config.mjs
├── package.json
└── tsconfig.json
```

Starlight looks for `.md` or `.mdx` files in the `src/content/docs/` directory. Each file is exposed as a route based on its file name.

Images can be added to `src/assets/` and embedded in Markdown with a relative link.

Static assets, like favicons, can be placed in the `public/` directory.

## 🚀 Quick Start

### First Time Setup

Run the setup script to initialize everything:

```bash
./setup-lexicons.sh
```

This will:
1. Initialize the atproto git submodule
2. Build the lexicon documentation generator
3. Generate Markdown documentation from the latest lexicons

### Generate Documentation

To regenerate documentation from the latest AT Protocol lexicons:

```bash
npm run docs:generate
```

## 🧞 Commands

All commands are run from the root of the project, from a terminal:

| Command                   | Action                                           |
| :------------------------ | :----------------------------------------------- |
| `npm install`             | Installs dependencies                            |
| `npm run dev`             | Starts local dev server at `localhost:4321`      |
| `npm run build`           | Build your production site to `./dist/`          |
| `npm run preview`         | Preview your build locally, before deploying     |
| `npm run astro ...`       | Run CLI commands like `astro add`, `astro check` |
| `npm run astro -- --help` | Get help using the Astro CLI                     |

### Lexicon Documentation Commands

| Command                   | Action                                           |
| :------------------------ | :----------------------------------------------- |
| `npm run docs:generate`   | Update submodule and regenerate all lexicon docs |
| `npm run lex:generate`    | Generate docs from current atproto lexicons      |
| `npm run submodule:init`  | Initialize the atproto git submodule             |
| `npm run submodule:update`| Update atproto submodule to latest version       |
| `npm run lex:build`       | Compile the TypeScript lexicon generator         |

For more details on lexicon documentation generation, see [`lex/README.md`](lex/README.md).

## 👀 Want to learn more?

Check out [Starlight’s docs](https://starlight.astro.build/), read [the Astro documentation](https://docs.astro.build), or jump into the [Astro Discord server](https://astro.build/chat).
