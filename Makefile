build-scripts:
	@fvm dart run build_runner build --delete-conflicting-outputs

watch-scripts:
	@fvm dart run build_runner watch --delete-conflicting-outputs

push:
	@echo "✨ preparing to push to GitHub"
	@echo "⬇️ getting packages..."
	@fvm flutter pub get
	@echo "📝 running build scripts..."
	@fvm flutter pub run build_runner build --delete-conflicting-outputs
	@echo "🔍 linting project..."
	@fvm flutter analyze
	@echo "🧪 running tests with coverage..."
	@fvm flutter test --coverage
	@echo "setting github profile and pushing commits..."
	@git config --global user.email "dkbilson@st.ug.edu.gh"
	@git push origin
	@echo "✅ all set 🚀🎉"

feature-%:
	@chmod +x ./create_feature.sh
	@./create_feature.sh $*