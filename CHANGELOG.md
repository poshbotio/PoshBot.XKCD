
# Change Log

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## 1.1.1 - 2017-09-14
### Fixed
- Ensure TLS 1.2 is used with calling XKCD API (via @DunlapOverbelt).

## [1.1.0] - 2017-07-25
### Added
- Add -AltText switch parameter.
  When set, the function will emit Alt Text (formatted as quote via markdown) for each comic image output. (via @alexsalisbury)

## [1.0.2] - 2017-07-12
### Fixed
- Add PoshBot dependency to module manifest.

## [1.0.1] - 2017-03-24
### Changed
- Explicitly export function in module manifest
- Renamed function to conform to PowerShell conventions (verb-noun) and set bot command name to "xkcd" via [PoshBot.BotCommand()] attribute.

## [1.0.0] - 2017-03-21
### Added
- Initial commit
