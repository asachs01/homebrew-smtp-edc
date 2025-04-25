# Homebrew Tap for SMTP-EDC

This repository contains the Homebrew formula for [SMTP-EDC](https://github.com/asachs01/smtp-edc), a powerful, cross-platform SMTP testing tool written in Go.

## Installation

```bash
# Add the tap
brew tap asachs01/smtp-edc

# Install SMTP-EDC
brew install smtp-edc
```

## Usage

After installation, you can use SMTP-EDC from the command line:

```bash
# Basic usage
smtp-edc --server smtp.example.com --from sender@example.com --to recipient@example.com

# With authentication
smtp-edc --server smtp.example.com --port 587 --from sender@example.com --to recipient@example.com \
    --auth plain --username user --password pass

# With TLS/STARTTLS
smtp-edc --server smtp.example.com --port 587 --from sender@example.com --to recipient@example.com \
    --starttls

# With debug mode
smtp-edc --server smtp.example.com --from sender@example.com --to recipient@example.com --debug
```

For more detailed usage information, visit the [SMTP-EDC documentation](https://github.com/asachs01/smtp-edc#readme).

## Updating

To update SMTP-EDC to the latest version:

```bash
brew update
brew upgrade smtp-edc
```

## Troubleshooting

If you encounter any issues:

1. Try updating the tap:
   ```bash
   brew update
   brew upgrade smtp-edc
   ```

2. Check the [SMTP-EDC issues](https://github.com/asachs01/smtp-edc/issues) page
3. Create a new issue if needed

## Development

This tap is automatically updated when new releases are published to the main SMTP-EDC repository. The update process is handled by GitHub Actions.

### Manual Formula Updates

If you need to update the formula manually:

1. Get the SHA256 of the new release tarball:
   ```bash
   curl -L https://github.com/asachs01/smtp-edc/archive/refs/tags/vX.Y.Z.tar.gz | shasum -a 256
   ```

2. Update the formula in `Formula/smtp-edc.rb` with:
   - New version number
   - New SHA256
   - New URL

## License

This tap is distributed under the [MIT License](LICENSE).