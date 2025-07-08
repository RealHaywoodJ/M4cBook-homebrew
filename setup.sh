#!/bin/bash

# M4cBook Setup Script
# Automates the setup of a new MacBook Pro for AI research and SaaS development

set -e  # Exit on any error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Function to check if command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Main setup function
main() {
    print_status "Starting M4cBook Pro setup for AI research and SaaS development..."
    echo ""
    
    # Check if we're on macOS
    if [[ "$OSTYPE" != "darwin"* ]]; then
        print_error "This script is designed for macOS only."
        exit 1
    fi
    
    # Check and install Homebrew
    print_status "Checking for Homebrew installation..."
    if command_exists brew; then
        print_success "Homebrew is already installed."
        print_status "Updating Homebrew..."
        brew update
    else
        print_status "Homebrew not found. Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        
        # Add Homebrew to PATH for the current session
        if [[ -f "/opt/homebrew/bin/brew" ]]; then
            eval "$(/opt/homebrew/bin/brew shellenv)"
        elif [[ -f "/usr/local/bin/brew" ]]; then
            eval "$(/usr/local/bin/brew shellenv)"
        fi
        
        if command_exists brew; then
            print_success "Homebrew installed successfully!"
        else
            print_error "Failed to install Homebrew. Please install manually."
            exit 1
        fi
    fi
    
    echo ""
    
    # Install Homebrew Bundle if not present
    print_status "Checking for Homebrew Bundle..."
    if ! brew list homebrew/bundle >/dev/null 2>&1; then
        print_status "Installing Homebrew Bundle..."
        brew tap homebrew/bundle
    fi
    
    # Check for Brewfile
    if [[ ! -f "Brewfile" ]]; then
        print_error "Brewfile not found in current directory."
        print_error "Please ensure you're running this script from the repository root."
        exit 1
    fi
    
    # Install applications and tools from Brewfile
    print_status "Installing applications and development tools from Brewfile..."
    print_status "This may take several minutes depending on your internet connection..."
    echo ""
    
    if brew bundle install --verbose; then
        print_success "All Homebrew packages and applications installed successfully!"
    else
        print_warning "Some packages may have failed to install. Check the output above for details."
    fi
    
    echo ""
    
    # Manual installation recommendations
    print_warning "MANUAL INSTALLATION REQUIRED:"
    echo ""
    print_status "LM Studio (AI model runner) - Please install manually:"
    print_status "Visit: https://lmstudio.ai/"
    print_status "Download and install LM Studio for running local AI models."
    echo ""
    
    # Final success message
    print_success "M4cBook Pro setup completed!"
    echo ""
    print_status "Next steps:"
    echo "  1. Install LM Studio manually from https://lmstudio.ai/"
    echo "  2. Configure your development tools as needed"
    echo "  3. Sign in to your applications (GitHub CLI, Postman, etc.)"
    echo "  4. Restart your terminal or run 'source ~/.zshrc' to ensure PATH is updated"
    echo ""
    print_status "Happy coding! 🚀"
}

# Error handling
trap 'print_error "Script failed on line $LINENO. Exit code: $?"' ERR

# Run main function
main "$@"