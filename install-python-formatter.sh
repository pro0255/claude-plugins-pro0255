#!/bin/bash
# Installation script for Python formatter

echo "🐍 Installing Python formatter..."

# Check if pip is available
if command -v pip &> /dev/null; then
    echo "Installing Black (Python formatter)..."
    pip install black
    
    echo "Installing isort (Python import sorter)..."
    pip install isort
    
    echo "✅ Python formatters installed successfully!"
    echo ""
    echo "📋 Installed tools:"
    echo "   • Black: Python code formatter"
    echo "   • isort: Python import sorter"
    echo ""
    echo "🎯 Usage:"
    echo "   • Format Python files: black ."
    echo "   • Sort imports: isort ."
    echo "   • Or use: ./format.sh"
else
    echo "❌ pip not found. Please install Python and pip first."
    echo ""
    echo "💡 Installation options:"
    echo "   • macOS: brew install python"
    echo "   • Ubuntu: sudo apt install python3-pip"
    echo "   • Windows: Download from python.org"
    echo ""
    echo "Then run this script again."
fi
