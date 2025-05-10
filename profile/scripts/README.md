# Repository Template Generator

This utility initializes a clean code repository structure for both Linux/macOS and Windows environments.

## Files Included

- `init-clean-repo.sh`: Shell script for Unix-based systems
- `init-clean-repo.bat`: Batch script for Windows
- Basic folders: `src`, `docs`, `.github/ISSUE_TEMPLATE`
- Common template files: `README.md`, `.gitignore`, `LICENSE`, Code of Conduct, PR/Issue templates

## Usage

### Linux / macOS

```bash
chmod +x init-clean-repo.sh
./init-clean-repo.sh my-repo-name
```

### Windows (Command Prompt)

```cmd
init-clean-repo.bat my-repo-name
```

This will create a new folder with all the scaffolding for a professional open-source or team project.

## Customize

After generation, update the placeholders in:
- `LICENSE`
- `README.md`
- `.github/CODE_OF_CONDUCT.md`
- Issue and PR templates