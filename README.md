# M4cBook Pro Setup for AI Research and SaaS Development

A complete automation repository to set up a new MacBook Pro for AI research and SaaS development work. This repository provides everything you need to get your development environment up and running with a single command.

## 🚀 Quick Start

1. **Clone this repository:**
   ```bash
   git clone https://github.com/RealHaywoodJ/M4cBook-homebrew.git
   cd M4cBook-homebrew
   ```

2. **Run the setup script:**
   ```bash
   ./setup.sh
   ```

3. **Manual installations:**
   - Install [LM Studio](https://lmstudio.ai/) for local AI model management

That's it! Your MacBook Pro is now configured for AI research and SaaS development.

## 📦 What Gets Installed

### Development Tools
- **git** - Version control system
- **node** - JavaScript runtime for modern web development
- **python** - Essential for AI/ML development
- **docker** - Containerization platform
- **gh** - GitHub CLI for repository management
- **wget** - File downloading utility

### Applications
- **Postman** - API development and testing
- **Replit** - Online coding environment
- **Warp** - Modern terminal application
- **Visual Studio Code** - Premier code editor

### AI Applications
- **ChatGPT** - OpenAI's conversational AI
- **Claude** - Anthropic's AI assistant
- **Perplexity** - AI-powered search and research
- **MacAI** - Native macOS AI interface

### Optional Tools
- **render** - CLI tool for cloud deployment

### Manual Installation Required
- **LM Studio** - For running local AI models (not available via Homebrew)

## 📋 System Requirements

- **macOS** (tested on macOS 13.0+ including M1/M2/M3/M4 Macs)
- **Internet connection** for downloading packages
- **Administrator privileges** for installing applications
- **At least 8GB of free disk space** for all applications

## 🛠️ Detailed Setup Process

### Prerequisites
- Ensure you have administrator access on your Mac
- Close any running applications that might interfere with installations
- Connect to a stable internet connection

### File Structure
```
M4cBook-homebrew/
├── setup.sh          # Main setup script
├── Brewfile           # Homebrew bundle configuration
├── README.md          # This documentation
└── .gitignore         # Git ignore patterns
```

### Brewfile Configuration
The `Brewfile` contains all package definitions using Homebrew Bundle syntax:
- Place it in the repository root directory
- Modify it to add/remove packages as needed
- Run `brew bundle install` manually if you update it

## 🔧 Customization

### Adding New Packages
1. Edit the `Brewfile` to include new packages:
   ```ruby
   # For command-line tools
   brew "package-name"
   
   # For GUI applications
   cask "application-name"
   ```

2. Run the installation:
   ```bash
   brew bundle install
   ```

### Modifying the Setup Script
The `setup.sh` script is modular and well-commented. Key sections:
- **Homebrew Installation** - Checks and installs if needed
- **Bundle Installation** - Processes the Brewfile
- **Error Handling** - Graceful failure management
- **Progress Reporting** - Clear status messages

## 🐛 Troubleshooting

### Common Issues

**Script Permission Error:**
```bash
chmod +x setup.sh
```

**Homebrew Installation Fails:**
- Check your internet connection
- Ensure you have administrator privileges
- Try running Homebrew installation manually

**Package Installation Fails:**
- Update Homebrew: `brew update`
- Check if package names are correct in Brewfile
- Some packages may require macOS version compatibility

**LM Studio Installation:**
- Visit [lmstudio.ai](https://lmstudio.ai/) directly
- Download the appropriate version for your Mac architecture
- Follow their installation instructions

### Getting Help
- Check Homebrew documentation: https://docs.brew.sh/
- Review package-specific documentation
- Open an issue in this repository for script-related problems

## 🤝 Contributing

We welcome contributions to improve this setup! Here's how:

### Guidelines
1. **Fork this repository**
2. **Create a feature branch** (`git checkout -b feature/amazing-feature`)
3. **Test your changes** on a clean macOS installation if possible
4. **Commit your changes** (`git commit -m 'Add amazing feature'`)
5. **Push to the branch** (`git push origin feature/amazing-feature`)
6. **Open a Pull Request**

### What to Contribute
- Additional useful development tools
- AI/ML specific applications
- Documentation improvements
- Bug fixes and error handling enhancements
- macOS compatibility updates

### Testing Changes
- Test the setup script on a clean macOS installation
- Verify all applications install correctly
- Check that the script handles errors gracefully
- Ensure documentation is accurate and clear

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## ⭐ Acknowledgments

- [Homebrew](https://brew.sh/) for the excellent package management system
- [Homebrew Bundle](https://github.com/Homebrew/homebrew-bundle) for configuration management
- All the amazing developers who created the tools and applications included in this setup

## 🎯 Repository Goals

This repository aims to:
- **Streamline** the setup process for new MacBook Pro users
- **Standardize** development environments across team members
- **Save time** by automating repetitive installation tasks
- **Maintain** an up-to-date collection of essential AI and development tools
- **Provide** a foundation for AI research and SaaS development workflows

---

**Happy coding and AI research! 🧠💻**
