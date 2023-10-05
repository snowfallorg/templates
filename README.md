# Snowfall Templates

<a href="https://nixos.wiki/wiki/Flakes" target="_blank">
	<img alt="Nix Flakes Ready" src="https://img.shields.io/static/v1?logo=nixos&logoColor=d8dee9&label=Nix%20Flakes&labelColor=5e81ac&message=Ready&color=d8dee9&style=for-the-badge">
</a>
<a href="https://github.com/snowfallorg/lib" target="_blank">
	<img alt="Built With Snowfall" src="https://img.shields.io/static/v1?logoColor=d8dee9&label=Built%20With&labelColor=5e81ac&message=Snowfall&color=d8dee9&style=for-the-badge">
</a>

<p>
<!--
	This paragraph is not empty, it contains an em space (UTF-8 8195) on the next line in order
	to create a gap in the page.
-->
  
</p>

> Create new flakes for use with [@snowfallorg/lib](https://github.com/snowfallorg/lib).

## Usage

Run the following command, replacing `<template-name>` with one of the [available templates](#available-templates).

```bash
nix flake init -t github:snowfallorg/templates#<template-name>
```

## Available Templates

| Name      | Description                                       |
| --------- | ------------------------------------------------- |
| `empty`   | A NixOS system and modules ready to modify.       |
| `home`    | A Nix Flake that exports home manager.            |
| `system`  | A NixOS system and modules ready to modify.       |
| `package` | A Nix Flake that exports packages and an overlay. |
| `module`  | A Nix Flake that exports NixOS modules.           |
| `lib`     | A Nix Flake that exports a custom `lib`           |
