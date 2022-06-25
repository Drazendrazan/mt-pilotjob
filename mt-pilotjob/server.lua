local QBCore = exports['qb-core']:GetCoreObject()

local function GerarPlaca()
    local plate = QBCore.Shared.RandomInt(1) .. QBCore.Shared.RandomStr(2) .. QBCore.Shared.RandomInt(3) .. QBCore.Shared.RandomStr(2)
    local result = MySQL.scalar.await('SELECT plate FROM player_vehicles WHERE plate = ?', {plate})
    if result then
        return GerarPlaca()
    else
        return plate:upper()
    end
end

local function VenderVeiculo(aviao, Player)
    local plate = GerarPlaca()
    
    MySQL.insert('INSERT INTO player_vehicles (license, citizenid, vehicle, hash, mods, plate, state) VALUES (?, ?, ?, ?, ?, ?, ?)', {
        Player.PlayerData.license,
        Player.PlayerData.citizenid,
        aviao,
        GetHashKey(aviao),
        '{}',
        plate,
        0
    })
end

RegisterNetEvent('mt-pilotjob:server:ComprarItems', function(item, dinheiro, quantidade)
    local Player = QBCore.Functions.GetPlayer(source)

    Player.Functions.RemoveMoney('bank', dinheiro)
    Player.Functions.AddItem(item, quantidade)
end)

RegisterNetEvent('mt-pilotjob:server:venderVeiculoPlayer', function(playerId, preco, aviao)
    local Player = QBCore.Functions.GetPlayer(tonumber(playerId))
    
    if Player.Functions.GetMoney('bank') >= preco then
        Player.Functions.RemoveMoney('bank', preco)
        TriggerClientEvent('QBCore:Notify', source, Lang.SellNotify .. preco .. "$", 'success')
        VenderVeiculo(aviao, Player)
    else
        TriggerClientEvent('QBCore:Notify', source, Lang.NoMoney, 'error')
    end
end)

RegisterNetEvent('mt-pilotjob:server:ComprarVeiculo', function(preco, aviao)
    local Player = QBCore.Functions.GetPlayer(source)

    if Player.Functions.GetMoney('bank') >= preco then
        Player.Functions.RemoveMoney('bank', preco)
        TriggerClientEvent('QBCore:Notify', source, Lang.SellNotify .. preco .. "$", 'success')
        VenderVeiculo(aviao, Player)
    else
        TriggerClientEvent('QBCore:Notify', source, Lang.NoMoney, 'error')
    end
end)