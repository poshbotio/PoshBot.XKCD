
function Get-XKCD {
    <#
    .SYNOPSIS
        Retrieve a XKCD comic.
    .DESCRIPTION
        Retrieve a XKCD comic.
    .PARAMETER Id
        The Id of the comic to retrieve.
    .PARAMETER Newest
        The newest (n) comics to retrieve.
    .PARAMETER Random
        Get a random comic.
    .PARAMETER AltText
        Include the alternate text of the comic.
    .EXAMPLE
        !xkcd -alttext

        Get the newest comic and include the alternate text
    .EXAMPLE
        !xkcd -number 1234

        Get comic ID 1234
    .EXAMPLE
        !xkcd -newest 2

        Get the (2) newest comics
    .EXAMPLE
        !xkcd -number 1000 -alttext

        Get comic ID 1000 and the include alternate text
    .EXAMPLE
        !xkcd -random

        Get a random comic
    #>
    [PoshBot.BotCommand(CommandName = 'xkcd')]
    [cmdletbinding(DefaultParameterSetName = 'item')]
    param(
        [parameter(ParameterSetName = 'item', Position = 0)]
        [Alias('Number')]
        [int]$Id = (Invoke-RestMethod 'https://xkcd.com/info.0.json').num,

        [parameter(ParameterSetName = 'newest')]
        [int]$Newest,

        [parameter(ParameterSetName = 'random')]
        [switch]$Random,

        [parameter(Mandatory = $false)]
        [Alias('Alt')]
        [switch]$AltText
    )

    begin {
        $first = 1
        $last = (Invoke-RestMethod 'https://xkcd.com/info.0.json').num
        $item = $Id
        if ($Random) {
            $item = Get-Random -Minimum $first -Maximum $last
        }
        if ($Newest) {
            $item = (($last - $Newest) + 1)..$last
        }
        $item = $item | Sort-Object -Descending
    }

    process {
        $item | Foreach-Object {
            $comic = Invoke-RestMethod "https://xkcd.com/$_/info.0.json" -ErrorAction SilentlyContinue
            if ($comic) {
                $comic.img
                if($AltText){
                    '>' + $comic.alt
                }
            }
        }
    }
}

# Ensure we're using TLS 1.2 when talking to XKCD
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

Export-ModuleMember -Function 'Get-XKCD'
