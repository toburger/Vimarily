<img align="left" width=160 style="padding: 10px" src="assets/logo.svg"></img>

## Vimarily

_Keyboard Shortcuts extension for Safari_

![GitHub release (latest by date)](https://img.shields.io/github/v/release/marcdonald/vimarily)
![GitHub release (latest by date including pre-releases)](https://img.shields.io/github/v/release/marcdonald/vimarily?include_prereleases&label=pre%20release)

Vimarily (pronounced like 'primarily') is a Safari extension that provides vim style keyboard based navigation.
This lets you control Safari from your keyboard instead of having to use your mouse to open links, scroll, etc.

Vimarily is a fork of [Vimari](https://github.com/televator-apps/vimari) which is heavily based
on [vimium](https://github.com/philc/vimium), a
Chrome extension that provides much more extensive features.

<img src="assets/screenshot.png"></img>

## Releases

As of now there are no stable releases of Vimarily.

[//]: # '## Installation'
[//]: #
[//]: # '### Safari 12 and above (macOS Mojave or above)'
[//]: #
[//]: # '#### Prebuilt binaries'
[//]: #
[//]: # '1. Download the [latest version](https://github.com/marcdonald/vimarily/releases/latest) of Vimarily'
[//]: # '2. Unzip it'
[//]: # '3. Move it to your `/Applications` folder'
[//]: # '4. Launch Vimarily.app'
[//]: # (5. Click "Open in Safari Extensions Preferences...", Safari's Extension Preferences should open)
[//]: # '6. Make sure that the checkbox for the Vimarily extension is ticked'
[//]: # '7. Go back to Vimarily.app and press the reload button to check the status of the app. If it says "Enabled" then it is'
[//]: # '	 ready.'
[//]: # '8. You may need to relaunch Safari for the extension to work'

## Usage

**Modifier** - Modifier key to hold down with your action key. If
you leave it blank you don't need to hold down anything (default
setting).

**Excluded URLs** - Comma separated list of website URLs you don't want
to use Vimarily with. To exclude GitHub for example, provide the value
`github.com` or `http://github.com`. It's smart and should handle all
possible domain cases.

**Link Hint Characters** - Allowed characters to be used when generating
link shortcuts.

**Extra detection by cursor style** - Detect clickable links by looking
for HTML elements having cursor style set to "pointer".

**Scroll Size** - How much each scroll will move on the page.

**Smooth Scroll** - Scroll smoothly through the page.

**Normal vs Insert mode** - Isolate website keybindings from the
Vimarily keybindings. In normal mode you can use the Vimarily keybindings
while in insert mode you can use the websites own keybindings.

**Transparent Bindings** - Full keybinding isolation might not
be your style, instead the transparent bindings setting (when enabled)
allows you to use all **non-Vimarily-bound** keys to interact with the web
page as if you were in insert mode.

**Multiple Bindings** - You can bind multiple keybindings to a Vimarily
action. This is done by specifying an array of bindings in the
configuration file, like so: `"goToPageTop": ["g g", "shift+k"]`.

### Tips & Tricks

Vimarily is built as a Safari Extension, this poses some limits on what is possible through the extension. However
default Safari shortcuts can help you keep your hands at the keyboard. Some helpful ones are listed here:

- **Focus URL Bar** <kbd>⌘</kbd><kbd>l</kbd> - This is a feature not available in Vimarily, it is also helpful where
  extensions are not loaded (for example on `topsites://`). By focusing the URL Bar you can go to a website where the
  extension is loaded.

- **Reader mode** <kbd>⇧</kbd><kbd>⌘</kbd><kbd>R</kbd> - Currently Vimarily does not support entering Reader mode (due
  to API limitations), also navigation inside reader mode (for example using <kbd>j</kbd> or <kbd>k</kbd>) is not
  supported.

- **Re-open last closed tab** <kbd>⇧</kbd><kbd>⌘</kbd><kbd>T</kbd> - Allows you to reopen a recently closed tab.

## License

### Vimarily

Copyright (C) 2022 Marc Donald. See [LICENSE](LICENSE) for details.

### Vimari

Copyright (c) 2010 Phil Crosby, Ilya Sukhar. See [VIMARI_LICENSE](VIMARI_LICENSE) for details.
