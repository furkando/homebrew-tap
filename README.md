# Homebrew Tap

This repository is a Homebrew tap for distributing various CLI tools.

## How to Use

### Adding the Tap

First, add this tap to Homebrew:

```sh
brew tap furkando/tap
```

### Installing a Tool

After adding the tap, you can install any of the tools provided by this tap. For example, to install `example_tool`:

```sh
brew install example_tool
```

### Updating Tools

To update any of the tools to their latest versions, run:

```sh
brew upgrade <tool_name>
```

## Available Tools

### dead_modules

`dead_modules` is a CLI tool to manage and delete old `node_modules` directories.

```sh
brew install dead_modules
```

After installation, you can use the `dead_modules` CLI tool by running:

```sh
dead_modules
```

#### Basic Commands

- **Search for node_modules directories**: The tool will automatically search for `node_modules` directories in the specified directory.
- **Interactive Selection**: Use the arrow keys to navigate the list of found directories and the space bar to select/deselect directories.
- **Delete Selected Directories**: Press Enter to delete the selected directories.

## Contributing

Contributions are welcome! If you have suggestions or bug reports, please open an issue or submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgments

- [Homebrew](https://brew.sh/) - The package manager that makes this tap possible.
- [Go](https://golang.org/) - The programming language used to build the tools.
- [tview](https://github.com/rivo/tview) - The terminal UI library used in some tools.