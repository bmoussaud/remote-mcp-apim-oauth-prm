# DevContainer Configuration

This devcontainer provides a complete development environment for the MCP Server with Azure API Management and OAuth sample project.

## Included Tools

### Azure Tools
- **Azure CLI** - Command-line interface for Azure
- **Bicep CLI** - Infrastructure as Code for Azure (installed as Azure CLI extension)
- **Azure Developer CLI (azd)** - Streamlined Azure development experience

### Development Tools
- **Python 3.11** - For scripting and tooling
- **Git** - Version control
- **GitHub CLI** - GitHub command-line tool

## VS Code Extensions

The devcontainer automatically installs these extensions:
- Bicep
- Azure Developer CLI
- Python & Pylance
- GitHub Copilot & Copilot Chat
- EditorConfig

## Getting Started

1. **Open in DevContainer**
   - Open this repository in VS Code
   - Click "Reopen in Container" when prompted
   - Or use Command Palette: `Dev Containers: Reopen in Container`

2. **Wait for Setup**
   - The container will build and install all tools
   - Post-create script will set up dependencies

3. **Start Developing**
   ```bash
   # Deploy to Azure
   azd up
   ```

## Azure Authentication

The devcontainer mounts your local `~/.azure` directory to preserve Azure CLI authentication state. You can authenticate using:

```bash
# Login to Azure
az login

# Login for Azure Developer CLI
azd auth login
```

## Features

- **Consistent Environment** - All team members use the same tools and versions
- **Quick Setup** - From zero to productive in minutes
- **Azure-Ready** - Pre-configured with all Azure development tools
- **Bicep Support** - Full infrastructure as code capabilities
- **Python Support** - For automation scripts and tooling

## Customization

To customize the devcontainer:
- Edit `.devcontainer/devcontainer.json` to add/remove features or extensions
- Edit `.devcontainer/post-create.sh` to modify setup steps

## Troubleshooting

### Container fails to build
- Check Docker is running
- Try rebuilding: Command Palette → `Dev Containers: Rebuild Container`

### Azure CLI authentication issues
- Ensure `~/.azure` directory exists on your host machine
- Try `az login` inside the container

### Missing tools
- Check `post-create.sh` output in the terminal
- Try manual installation: `bash .devcontainer/post-create.sh`
