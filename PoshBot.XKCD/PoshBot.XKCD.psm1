
function Get-XKCD {
    <#
    .SYNOPSIS
        Retrieve a XKCD comic
    .EXAMPLE
        !xkcd ( [1234 | --number 1234] | [--random] | [--alt] | [--newest 5] )
    #>
    [PoshBot.BotCommand(CommandName = 'xkcd')]
    [cmdletbinding(DefaultParameterSetName = 'item')]
    param(
        [parameter(ParameterSetName = 'item', Position = 0)]
        [int]$Number = (Invoke-RestMethod 'http://xkcd.com/info.0.json').num,

        [parameter(ParameterSetName = 'newest')]
        [int]$Newest,

        [parameter(ParameterSetName = 'random')]
        [switch]$Random,

        [parameter(Mandatory = $false)]
		[Alias("alt")]
        [switch]$AltText
    )

    begin {
        $first = 1
        $last = (Invoke-RestMethod 'http://xkcd.com/info.0.json').num
        $item = $Number
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
            $comic = Invoke-RestMethod "http://xkcd.com/$_/info.0.json" -ErrorAction SilentlyContinue
            if ($comic) {
                $comic.img
				if($AltText){
					'>' + $comic.alt
				}
            }
        }
    }
}

Export-ModuleMember -Function 'Get-XKCD'
