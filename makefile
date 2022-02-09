args = `arg="$(filter-out $@,$(MAKECMDGOALS))" && echo $${arg:-${1}}`

f3d="1.2.1" 

stl:
	@bash ./gen-stl.sh $(call args,defaultstring)

# Open in fast viewer: (do: make install)
# https://github.com/f3d-app/f3d
open:
	@f3d $(call args,defaultstring)

# Install f3d: 
install:
	wget https://github.com/f3d-app/f3d/releases/download/v${f3d}/f3d-${f3d}-Linux.deb -O f3d-${f3d}-Linux.deb && 
	sudo dpkg -i f3d-${f3d}-Linux.deb && 
	rm -f f3d-${f3d}-Linux.deb

stlandopen:
	echo ${args}
	make stl ${args}
	make open ${args}.stl