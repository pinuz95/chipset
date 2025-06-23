#!/bin/bash

echo "🚀 Setting up Chipset project..."

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
    echo "📦 Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install Tuist
if ! command -v tuist &> /dev/null; then
    echo "📦 Installing Tuist..."
    brew install tuist
fi

# Install SwiftLint for code quality
if ! command -v swiftlint &> /dev/null; then
    echo "📦 Installing SwiftLint..."
    brew install swiftlint
fi

# Generate Xcode project
echo "🔨 Generating Xcode project..."
tuist install
tuist generate

echo "✅ Setup complete! Open Chipset.xcworkspace to start developing."