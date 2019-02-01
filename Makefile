up:
	docker-compose up

mycli:
	@mycli -h 127.0.0.1 -u root -p secret

test:
	go test -v `glide novendor`

test_stress:
	go test -tags=stress -v `glide novendor`

test_reconnect:
	go test -tags=reconnect -v -parallel 20 `glide novendor`
