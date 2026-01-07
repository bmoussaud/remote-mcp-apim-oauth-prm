#!/bin/bash

set -e

echo "🚀 Setting up development environment..."

# Verify installations
echo ""
echo "✅ Verifying installations..."
echo "  - Azure CLI: $(az --version | head -n 1)"
echo "  - Bicep CLI: $(az bicep version)"
echo "  - Azure Developer CLI: $(azd version)"
echo "  - Docker: $(docker --version)"
echo "  - Python: $(python3 --version)"
echo "  - uv: $(uv --version)"
echo "  - Git: $(git --version)"

# Install Python packages if requirements.txt exists
if [ -f "requirements.txt" ]; then
    echo "📦 Installing Python packages from requirements.txt..."
    pip install -r requirements.txt
fi

echo ""
echo "✅ Development environment setup complete!"
echo ""
echo "🎯 Quick start commands:"
echo "  - Deploy to Azure: azd up"
echo ""
