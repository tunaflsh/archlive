build:
	sudo mkarchiso -v -r -w /tmp/archiso-work -o . .

build-keep:
	sudo rm -rf /tmp/archiso-work
	sudo mkarchiso -v -w /tmp/archiso-work -o . .

run:
	run_archiso -i $$(ls -t archlive-*-x86_64.iso | head -n1)
