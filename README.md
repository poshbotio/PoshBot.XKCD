
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
!install-plugin --name poshbot.xkcd
```

## Usage
```
!xkcd
https://imgs.xkcd.com/comics/vomiting_emoji.png
```

```
!xkcd --random
https://imgs.xkcd.com/comics/1337_part_4.png
```

```
!xkcd --number 1234
https://imgs.xkcd.com/comics/douglas_engelbart_1925_2013.png
```

```
!xkcd --newest 5
https://imgs.xkcd.com/comics/vomiting_emoji.png
https://imgs.xkcd.com/comics/onboarding.png
https://imgs.xkcd.com/comics/best_tasting_colors.png
https://imgs.xkcd.com/comics/chat_systems.png
https://imgs.xkcd.com/comics/xkcd_phone_5.png
```
