# mt-pilotjob
Simple airlines pilot job for QBCore

# Preview:
https://youtu.be/tksNif0w58I

# Features:
- You can buy items at one shop like parachute or whaterever you want (just add more items at config.lua)
- You can buy a plane to you or just sell planes to players
- You can take out a plane and do whatever you want with it

# Instalation:
Add to qb-core/shared/jobs.lua:
```
    ['pilot'] = {
		label = 'Airlines Pilot',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Novice',
                payment = 50
            },
			['1'] = {
                name = 'Employee',
                payment = 75
            },
			['2'] = {
                name = 'Experienced',
                payment = 100
            },
			['3'] = {
                name = 'Advanced',
                payment = 125
            },
			['4'] = {
                name = 'Boss',
				isboss = true,
                payment = 150
            },
        },
	},
```
