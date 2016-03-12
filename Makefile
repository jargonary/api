help:
		@echo "Welcome to Jargony"
		@echo "DB Migration commands depend on migrate being installed and the"
		@echo "DB creds being loaded as environment variables"
		@echo "go get https://github.com/mattes/migrate"
		@echo ""
		@echo ""
		@echo "The following targets are available:"
		@echo "		migrate			run all migrations"
		@echo "		rollback		roll back all migrations"

migrate:
		migrate -url postgres://$(USER)@$(HOST):$(PORT)/$(DB)?sslmode=disable -path ./resources/sql/migrations up

rollback:
		migrate -url postgres://$(USER)@$(HOST):$(PORT)/$(DB)?sslmode=disable -path ./resources/sql/migrations down
