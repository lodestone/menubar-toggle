build:
		swiftc -o menubar-toggle Sources/main.swift

install:
		cp ./menubar-toggle $(HOME)/bin/menubar-toggle

alfred-workflow: | build
		cd "Toggle-UI-Alfred-Workflow"; \
		cp ../menubar-toggle ./; \
		zip -r -X Toggle-UI.alfredworkflow .
