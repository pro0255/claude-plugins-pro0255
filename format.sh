#!/bin/bash
# Formatting script for Python and TypeScript files

echo "🎨 Formatting Python and TypeScript files..."

# Format TypeScript files
echo "📝 Formatting TypeScript files..."
npx prettier --write "**/*.{ts,tsx}" --ignore-path .prettierignore

# Format Python files
echo "🐍 Formatting Python files..."
if command -v black &> /dev/null; then
    black . --line-length 88 --skip-string-normalization
    echo "   ✅ Python files formatted with Black"
else
    echo "⚠️  Black not found. Install with: pip install black"
    echo "   Using Prettier for basic Python formatting..."
    npx prettier --write "**/*.py" --ignore-path .prettierignore
fi

echo "✅ Formatting complete!"
echo ""
echo "📊 Summary:"
echo "   • TypeScript: ✅ (Prettier)"
echo "   • Python: $(if command -v black &> /dev/null; then echo '✅ (Black)'; else echo '⚠️  (Prettier - install Black for better formatting)'; fi)"
echo ""
echo "💡 To install Black for better Python formatting:"
echo "   pip install black"
