.PHONY: ExampleLibPath ExampleRelativePath

all: ExampleRelativePath ExampleLibPath

ExampleLibPath:
	pio lib -g install ./TheLib
	cd ExampleLibPath && pio run -e nano -v && cd ..
	pio lib -g uninstall TheLib

ExampleRelativePath:
	cd ExampleRelativePath && pio run -e nano -v && cd ..
