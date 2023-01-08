## Create the try block and create any code inside.
try { 
    ## Create the FTP script file using a here string (https://devblogs.microsoft.com/scripting/powertip-use-here-strings-with-powershell/)
    ## If Out-File creates the FTP script, it then invokes ftp.exe to execute
    ## the script file.    
    $Script = @"
    open localhost
    username
    password
    BINARY
    CD remotefolder
    LCD C:\folder
    GET remote.file
    BYE
"@
    $Script | Out-File "C:\Folder\ftp.txt" -Encoding ASCII

    ftp -s:C:\folder\ftp.txt
} catch {
    ## If, at any time, for any code inside of the try block, returns a hard-terminating error
    ## PowerShell will divert the code to the catch block which writes to the console
    ## and exits the PowerShell console with a 1 exit code.
    Write-Host "Error: $($_.Exception.Message)"
    exit 1
} finally {
    ## Regardless if the catch block caught an exception, remove the FTP script file
    Remove-Item -Path "C:\folder\ftp.txt"
}

## When the code inside of the try/catch/finally blocks completes (error or not),
## exit the PowerShell session with an exit code of 0
exit 0

## Invoke the msiexec.exe process passing the /i argument to indicate installation
## the path to the MSI, /q to install silently and the location of the log file
## that will log error messages (/le).
Start-Process -Name 'msiexec.exe' -Wait -ArgumentList '/i "C:\Folder\package.msi" /q /le "C:\Folder\package.log"'

## Query the Win32_OperatingSystem CIM instance on both the serv1 and serv2 computers
Get-CimInstance -ClassName Win32_OperatingSystem -ComputerName Serv1,Serv2 |`
## Limit the output to only a few select propeties
Select-Object -Property BuildNumber,BuildType,OSType,ServicePackMajorVersion,ServicePackMinorVersion | `
## Send each CIM instance object to a CSV file called C:\Folders\Computers.csv
Export-CSV C:\Folder\Computers.csv -NoTypeInformation -Encoding UTF8 -Verbose

## Define the service name in a variable
$ServiceName = 'EventLog'

## Read the service from Windows to return a service object
$ServiceInfo = Get-Service -Name $ServiceName

## If the server is not running (ne)
if ($ServiceInfo.Status -ne 'Running') {
    ## Write to the console that the service is not running
    Write-Host 'Service is not started, starting service'
    ## Start the service
    Start-Service -Name $ServiceName
    ## Update the $ServiceInfo object to reflect the new state
    $ServiceInfo.Refresh()
    ## Write to the console the Status property which indicates the state of the service
    Write-Host $ServiceInfo.Status
} else { ## If the Status is anything but Running
    ## Write to the console the service is already running
    Write-Host 'The service is already running.'
}

## Defines three registry key paths in an array
$tls10 = 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Server', 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Client'

## Checks to see if all of the registry keys in the array exists
$tls10check = ($tls10 | Test-Path) -notcontains $false

## If all of the registry keys exist
if ($tls10check -eq $True){
    ## Updates four different DWORD registry values to either 0 or 1
    Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Server' -name 'Enabled' -value '0' -Type 'DWORD'
    Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Server' -name 'DisabledByDefault' -value '1' -Type 'DWORD'
    Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Client' -name 'Enabled' -value '0' -Type 'DWORD'
    Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Client' -name 'DisabledByDefault' -value '1' -Type 'DWORD'
} else { ## If at least one of the registry keys do not exist
    ## Creates the missing registry keys skipping the confirmation (Force)
    New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Server' -Force
    New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Client' -Force
    
    ## Creates four different DWORD registry values setting the value to either 0 or 1
    New-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Server' -name 'Enabled' -value '0' -Type 'DWORD'
    New-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Server' -name 'DisabledByDefault' -value '1' -Type 'DWORD'
    New-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Client' -name 'Enabled' -value '0' -Type 'DWORD'
    New-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Client' -name 'DisabledByDefault' -value '1' -Type 'DWORD'
}

function Add-Numbers {
    param (
        [int]$a,
        [int]$b
    )

    $sum = $a + $b
    return $sum
}

$result = Add-Numbers -a 1 -b 2

# Define a function that takes a single integer parameter
function Check-Number {
    param (
        [int]$number
    )

    # Check if the number is equal to 10
    if ($number -eq 10) {
        Write-Output "The number is equal to 10"
    }
    # Check if the number is greater than 10
    elseif ($number -gt 10) {
        Write-Output "The number is greater than 10"
    }
    # If the number is not equal to or greater than 10, it must be less than 10
    else {
        Write-Output "The number is less than 10"
    }
}

# Call the function with different numbers
Check-Number 5
Check-Number 10
Check-Number 15

# Define a function that takes a single string parameter
function Check-String {
    param (
        [string]$text
    )

    # Use a loop to iterate through each character in the string
    for ($i = 0; $i -lt $text.Length; $i++) {
        # Check if the character is a vowel
        if ($text[$i] -match '[aeiouAEIOU]') {
            Write-Output "$($text[$i]) is a vowel"
        }
        else {
            Write-Output "$($text[$i]) is not a vowel"
        }
    }
}

# Call the function with a string
Check-String "Hello World"

class Color
{
    [enum] Red = 1
    [enum] Green = 2
    [enum] Blue = 3
}

$c = [Color]::Red
echo $c  # prints "Red"
