function stop([switch]$name,[switch]$pid,[switch]$service)
{   
        if($name)
        {
            $na_me=Read-Host -Prompt "Enter the name:"
            if($na_me)
            {
                get-process -Name $na_me | stop-process
            }
            else
            {
            "No input"
            }
        }
        
        if($pid)
        {
            $pidn=Read-Host -Prompt "Enter the PID:"
            if($pidn)
            {
                get-process -Id $pidn | stop-process
            }
            else{
            "No input"
        }
        if($service and !$pid)
        {
            $servicename=Read-Host -Prompt "Enter the name of service:"
            if($servicename)
            {
                get-service -Name $servicename | stop-service
            }
            else
            {
                "No input has been given"
            }
        }
    
}
