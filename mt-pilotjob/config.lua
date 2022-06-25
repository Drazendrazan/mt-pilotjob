Config = {
    ['Job'] = 'pilot',
    ['Locations'] = {
        ['Cabinet'] = {
            loc = vector3(-938.99, -2932.96, 13.95),
            lenght = 3,
            width = 1,
            heading = 0,
            icon = 'fas fa-container-storage',
        },
        ['Shop'] = {
            loc = vector3(-938.67, -2930.19, 13.95),
            lenght = 3,
            width = 1,
            heading = 330,
            icon = 'fas fa-shopping-cart',
        },
        ['Clothes'] = {
            loc = vector3(-929.05, -2937.74, 13.95),
            lenght = 5,
            width = 1,
            heading = 60,
            icon = 'fas fa-tshirt',
        },
        ['Duty'] = {
            loc = vector3(-931.31, -2957.28, 13.95),
            lenght = 2,
            width = 1,
            heading = 330,
            icon = 'fas fa-clipboard',
        },
        ['Ped'] = {
            pedModel = `s_m_m_pilot_01`,
            pedLoc = vector4(-940.39, -2964.49, 12.95, 146.08),
            targetLoc = vector3(-940.39, -2964.49, 13.95),
        },
        ['PlanesSpawn'] = vector4(-969.76, -3001.57, 13.95, 62.9),
    },
    ['ShopItems'] = {
        [1] = {
            itemName = 'parachute',
            itemPrice = 100,
        },
    },
    ['FreePlanesList'] = {
        [1] = {
            vehicleName = 'luxor',
            vehicleLabel = 'Luxor',
        },
        [2] = {
            vehicleName = 'luxor2',
            vehicleLabel = 'Gold Luxor',
        },
        [3] = {
            vehicleName = 'shamal',
            vehicleLabel = 'Shamal',
        },
        [4] = {
            vehicleName = 'maverick',
            vehicleLabel = 'Maverick',
        },
        [5] = {
            vehicleName = 'supervolito2',
            vehicleLabel = 'Super Volito Luxe',
        },
    },
    ['PaidPlanesList'] = {
        [1] = {
            vehicleName = 'luxor',
            vehicleLabel = 'Luxor',
            vehiclePrice = 100000,
        },
        [2] = {
            vehicleName = 'luxor2',
            vehicleLabel = 'Gold Luxor',
            vehiclePrice = 150000,
        },
        [3] = {
            vehicleName = 'shamal',
            vehicleLabel = 'Shamal',
            vehiclePrice = 50000,
        },
        [4] = {
            vehicleName = 'maverick',
            vehicleLabel = 'Maverick',
            vehiclePrice = 10000,
        },
        [5] = {
            vehicleName = 'supervolito2',
            vehicleLabel = 'Super Volito Luxe',
            vehiclePrice = 1000000,
        },
    }
}

Lang = {
    ['CabinetLabel'] = 'Open Cabinet',
    ['ShopLabel'] = 'Open Shop',
    ['ClothesLabel'] = 'Open Clothing Options',
    ['DutyLabel'] = 'Clock in/out',
    ['Price'] = 'Price: ',
    ['AmountInvalid'] = 'Invalid Amount...',
    ['ShopMenuHeader'] = 'Pilot Shop',
    ['AmountHeader'] = 'Amount',
    ['SubmitLabel'] = 'Submit',
    ['PlanesShopLabel'] = 'Acess planes list',
    ['PlanesListHeader'] = 'Available Planes List',
    ['FreePlanes'] = 'Free Planes',
    ['PaidPlanes'] = 'Paid Planes',
    ['PaidPlanesTxt'] = 'Acess paid planes list',
    ['FreePlanesTxt'] = 'Acess free planes list',
    ['FreePlanesListHeader'] = 'Choose a plane',
    ['CloseMenu'] = 'Close Menu',
    ['GetBack'] = 'Get Back',
    ['DeleteVehicleLabel'] = 'Delete Plane',
    ['DeleteVehicleText'] = 'Delete your curent plane',
    ['EButtom'] = '[E] - Delete Vehicle',
    ['Price'] = 'Price: ',
    ['PaidVehicleHeader'] = 'Select a plane',
    ['PaidPlanesOptions'] = 'Planes Options',
    ['SellToPlayer'] = 'Sell to player',
    ['SellToPlayerText'] = 'Sell plane to a certain player',
    ['BuyVehicle'] = 'Buy Plane',
    ['BuyVehicleText'] = 'Buy plane to you',
    ['CurrentPlane'] = 'Current Plane: ',
    ['GivePlaneHeader'] = 'Give plane to player',
    ['SellNotify'] = 'You buy a plane, price: ',
    ['NoMoney'] = 'No money...',
}