// arg: Name Units Place UpdateTime

start "Emulator: BoilerA DHT" python emulator.py BoilerADHT Celsius PrivateHome 40  
timeout 3 
start "Emulator: BoilerB DHT" python emulator.py BoilerBDHT Celsius BusinessA1 50  
timeout 3 
start "Emulator: BoilerC DHT" python emulator.py BoilerCDHT Celsius BusinessA2 25  
timeout 3 
start "Emulator: BoilerD DHT" python emulator.py BoilerDDHT Celsius BusinessB1 60  
timeout 3 
start "ThermoSmart Manager" python manager.py
timeout 10
start "ThermoSmart GUI" python gui.py

