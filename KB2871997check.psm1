function checkKB2871997
{
    try
    {
        $Global:flag=0
        gethotfix -Id KB2871997
    }
    catch
    {
        $Global:flag=1
        "The hotfix KB2871997 is not available"
        
    }
}

function show-result
{	
    checkKB2871997

    if($flag -eq 0)
    {
        "The hotfix for pass the hash is present"
    }
    else
    {
        "The hotfix for for pass the hash is not present"
    }
}

Export-ModuleMember -Function *-*