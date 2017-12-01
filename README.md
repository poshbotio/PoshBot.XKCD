
[![Build status][appveyor-badge]][appveyor-build]
[![PowerShell Gallery][psgallery-badge]][psgallery]

# PoshBot.XKCD

A simple [PoshBot](https://github.com/devblackops/PoshBot) plugin to retrieve URLs to XKCD images.

## Install Module

To install the module from the [PowerShell Gallery](https://www.powershellgallery.com/):

```
PS C:\> Install-Module -Name PoshBot.XKCD -Repository PSGallery
```

## Install Plugin

To install the plugin from within PoshBot:

```
!install-plugin -name poshbot.xkcd
```

## Usage
```
!xkcd
https://imgs.xkcd.com/comics/vomiting_emoji.png
```

```
!xkcd -alttext
https://imgs.xkcd.com/comics/vomiting_emoji.png
My favorite might be U+1F609 U+1F93F WINKING FACE VOMITING.
```

```
!xkcd -random
https://imgs.xkcd.com/comics/1337_part_4.png
```

```
!xkcd -random -alt
https://imgs.xkcd.com/comics/extrapolating.png
By the third trimester, there will be hundreds of babies inside you.
```

```
!xkcd -number 1234
https://imgs.xkcd.com/comics/douglas_engelbart_1925_2013.png
```

```
!xkcd -number 1234 -alt
https://imgs.xkcd.com/comics/douglas_engelbart_1925_2013.png
Actual quote from The Demo: '... an advantage of being online is that it keeps track of who you are and what you�re doing all the time ...'
```

```
!xkcd -newest 5
https://imgs.xkcd.com/comics/vomiting_emoji.png
https://imgs.xkcd.com/comics/onboarding.png
https://imgs.xkcd.com/comics/best_tasting_colors.png
https://imgs.xkcd.com/comics/chat_systems.png
https://imgs.xkcd.com/comics/xkcd_phone_5.png
```

```
!xkcd -newest 3 -alt
https://imgs.xkcd.com/comics/vomiting_emoji.png
My favorite might be U+1F609 U+1F93F WINKING FACE VOMITING.
https://imgs.xkcd.com/comics/onboarding.png
'So we just have a steady flow of metal piling up in our server room? Isn't that a problem?' 'Yeah, you should bring that up at our next bismuth meeting.'
https://imgs.xkcd.com/comics/best_tasting_colors.png
I recognize that chocolate is its own thing on which reasonable people may differ. Everything else here is objective fact.
```

[appveyor-badge]: https://ci.appveyor.com/api/projects/status/eui6lam92efc5n8k?svg=true
[appveyor-build]: https://ci.appveyor.com/project/devblackops/poshbot-xkcd
[psgallery-badge]: https://img.shields.io/powershellgallery/dt/poshbot.xkcd.svg
[psgallery]: https://www.powershellgallery.com/packages/poshbot.xkcd