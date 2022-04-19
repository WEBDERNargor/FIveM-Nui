local menu=true



RegisterNUICallback('close',function() 
    menu=false
end)


Citizen.CreateThread(function() 
local id = GetPlayerServerId(PlayerId())
local name=GetPlayerName(PlayerId())

while true do
    print(id)
   if menu==true then
    SendNUIMessage({
        userid=id,
        steamname=name,
        action='open'
    })
    SetNuiFocus(true,true)
else
    SendNUIMessage({
        action='off'
    })
    SetNuiFocus(false,false)
   end
    Citizen.Wait(1000)
end


end)