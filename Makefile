tests:
		@xcodebuild -project RefactoringBookSample.xcodeproj -scheme "RefactoringBookSample" -sdk iphonesimulator -destination "platform=iOS Simulator,OS=10.0,name=iPhone 6s" clean build test
