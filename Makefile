.PHONY: ExampleLibPath ExampleRelativePath

all: ExampleRelativePath ExampleLibPathH  ExampleLibPath

clean:
	# cd for preventing removal of source
	-cd ExampleLibPath && pio lib -g uninstall TheLib && cd ..
	-cd ExampleLibPath && pio lib -g uninstall TheLibH && cd ..
	
ExampleLibPath:
	pio lib -g install ./TheLib
	-cd ExampleLibPath && pio run -e nano -v && cd ..
	cd ExampleLibPath && pio lib -g uninstall TheLib && cd ..

ExampleLibPathH:
	pio lib -g install ./TheLibH
	-cd ExampleLibPath && pio run -e nano -v && cd ..
	cd ExampleLibPath && pio lib -g uninstall TheLibH && cd ..

ExampleRelativePath:
	cd ExampleRelativePath && pio run -e nano -v && cd ..
