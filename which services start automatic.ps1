# Welke services starten automatisch?
(get-process)|Get-ChildItem

get-service | Where-Object {$_.StartType -eq 'Automatic'}

get-service | 
    Where-Object {
        ($_.StartType -eq 'Automatic') -and
        (
            ($_.Name -like "*s*") -OR ($_.Name -like "*t*")
        )
    } |  
        Measure-Object
