# PowershellScripts

The default execution policy for powershell scripts in windows is set to 'restricted' to prevent accidental execution of scripts by user. To allow scripts to execute:
    
    >Get-ExecutionPolicy
    >Set-ExecutionPolicy bypass
    
This allows user to bypass the restricted execution policy allowing to run scripts.
