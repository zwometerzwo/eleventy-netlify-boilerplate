docker:
	docker build \
		. \
		-t zwometerzwo/eleventy-netlify-boilerplate \
		--no-cache
npm:
	docker container run \
		--name 11ty \
		--rm \
		-t \
		-p 8080:8080 \
		-p 3001:3001 \
		-v `pwd`:/app \
		zwometerzwo/eleventy-netlify-boilerplate \
		$(filter-out $@,$(MAKECMDGOALS))
%:
	@:
# ref: https://stackoverflow.com/questions/6273608/how-to-pass-argument-to-makefile-from-command-line
