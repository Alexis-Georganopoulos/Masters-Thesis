configmin = 1
configmax = 12
wavmin = 1
wavmax = 8


n = NSUR()
PRINT
FORMAT 1 INT
PRINT "Finds the result of a single ray trace on the imaging surface(number ",n,") on field number 1"
PRINT
PRINT "Iterates over configurations ",configmin, " to ", configmax, ",and wavelength numbers ", wavmin, " to ", wavmax
PRINT
PRINT " configuration number	wavelength(micrometers)	       position x(mm)		   position y(mm)"
PRINT
FOR currentconfig, configmin, configmax, 1
	SETCONFIG(currentconfig)
	
	FOR currentwavenumber, wavmin, wavmax, 1
		SYSP 200, currentwavenumber
		
		RAYTRACE 0,1,0,0
		y = RAYY(n)
		x = RAYX(n)
		currentwave = WAVL(currentwavenumber)
		FORMAT .10 EXP
		PRINT "   ",currentconfig,"	      ",currentwave,"	   	     ",x,"	      ", y
	NEXT
NEXT

