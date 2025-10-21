#!/bin/bash
# Simple formatting script

echo "🎨 Formatting files with Prettier..."

# Format JavaScript/TypeScript files
npx prettier --write "**/*.{js,ts}" --ignore-path .prettierignore

# Format JSON files
npx prettier --write "**/*.json" --ignore-path .prettierignore

# Format Markdown files
npx prettier --write "**/*.md" --ignore-path .prettierignore

echo "✅ Formatting complete!"
