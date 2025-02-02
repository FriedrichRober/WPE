[![CI](https://github.com/gap-packages/WPE/workflows/CI/badge.svg)](https://github.com/gap-packages/WPE/actions?query=workflow%3ACI+branch%3Amaster)
[![Code Coverage](https://codecov.io/gh/gap-packages/WPE/coverage.svg?branch=master&token=)](https://codecov.io/gh/gap-packages/WPE)

# WPE - GAP package

WPE provides efficient methods for working with <ins>**W**</ins>reath <ins>**P**</ins>roduct <ins>**E**</ins>lements.

## Installation

**1.** To get the newest version of this GAP 4 package download the archive file `WPE-x.x.tar.gz` from
>   <https://gap-packages.github.io/WPE/>

**2.** Locate a `pkg/` directory where GAP searches for packages, see
>   [9.2 GAP Root Directories](https://www.gap-system.org/Manuals/doc/ref/chap9.html#X7A4973627A5DB27D)

in the GAP manual for more information.

**3.** Unpack the archive file in such a `pkg/` directory
which creates a subdirectory called `WPE/`.

**4.** Now you can use the package within GAP by entering `LoadPackage("WPE");` on the GAP prompt.

## Requirements

Versions `0.6` and above require `GAP version >= 4.13`

Versions `0.2 - 0.5` require `GAP version >= 4.12`

Version `0.1` requires `GAP version >= 4.11`

## Documentation

You can read the documentation online at
>   <https://gap-packages.github.io/WPE/doc/chap0.html>

If you want to access it from within GAP by entering `?WPE` on the GAP prompt,
you first have to build the manual by using `gap makedoc.g` from within the `WPE/` root directory.

## Bug reports

Please submit bug reports, feature requests and suggestions via our issue tracker at
>  <https://github.com/gap-packages/WPE/issues>

## License

WPE is free software you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version. For details, see the file LICENSE distributed as part of this package or see the FSF's own site.
