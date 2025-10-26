#!/bin/bash

# Setup script for lexicon documentation generator
# This script sets up the atproto submodule and generates initial documentation

set -e  # Exit on error

echo "🚀 Setting up Lexicon Documentation Generator"
echo ""

# Check if git is available
if ! command -v git &> /dev/null; then
    echo "❌ Error: git is not installed"
    exit 1
fi

# Check if npm is available
if ! command -v npm &> /dev/null; then
    echo "❌ Error: npm is not installed"
    exit 1
fi

# Initialize submodule
if [ ! -e "atproto/.git" ]; then
    echo "📦 Initializing atproto submodule..."

    # Clean up any remnants that might cause issues
    if [ -d ".git/modules/atproto" ]; then
        echo "🧹 Cleaning up previous submodule metadata..."
        rm -rf .git/modules/atproto
    fi

    # Try to update/init if already configured
    if git submodule update --init --recursive 2>/dev/null; then
        echo "✅ Submodule initialized from existing config"
    else
        # Otherwise add it fresh
        echo "📥 Adding atproto submodule..."
        git submodule add https://github.com/bluesky-social/atproto.git atproto 2>&1 | grep -v "hint:" || true
        git submodule update --init --recursive
        echo "✅ Submodule added"
    fi
else
    echo "📦 Updating atproto submodule..."
    cd atproto
    git fetch origin
    git checkout main || git checkout master
    git pull
    cd ..
    echo "✅ Submodule updated"
fi

# Verify lexicons directory exists
if [ ! -d "atproto/lexicons" ]; then
    echo "❌ Error: atproto/lexicons directory not found after initialization"
    echo "   This might indicate a problem with the submodule setup."
    exit 1
fi

LEXICON_COUNT=$(find atproto/lexicons -name "*.json" 2>/dev/null | wc -l | tr -d ' ')
echo "📊 Found $LEXICON_COUNT lexicon files"

echo ""
echo "🔨 Building lexicon generator..."
npm run lex:build
echo "✅ Build complete"

echo ""
echo "📝 Generating documentation..."
npm run lex:generate
echo "✅ Documentation generated"

echo ""
echo "🎉 Setup complete!"
echo ""
echo "📚 Documentation has been generated in: src/content/docs/lexicons/"
echo "📊 Processed $LEXICON_COUNT lexicon definitions"
echo ""
echo "Next steps:"
echo "  • Run 'npm run dev' to preview the documentation"
echo "  • Visit http://localhost:4321/lexicons/ in your browser"
echo "  • Run 'npm run docs:generate' to regenerate docs from latest atproto"
echo ""
