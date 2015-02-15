uniteler=1 2 3 4 5 6 7 8 9
default: makeweb
	echo "DONE"

clean:
	rm -fr /tmp/bootstraptrweb || echo "already clean"

makeweb: clean
	mkdir /tmp/bootstraptrweb
	cp bootstrap1/main.shtml /tmp/bootstraptrweb/
	cp -a bootstrap1/commonwebfiles/* /tmp/bootstraptrweb/
	cp -a bootstrap1/main-images /tmp/bootstraptrweb/images
	cp -a bootstrap1/main-files/* /tmp/bootstraptrweb/
	cp -a bootstrap1/isdefteri/IsDefteri.pdf /tmp/bootstraptrweb/
	for x in $(uniteler);do \
		mkdir /tmp/bootstraptrweb/unite$$x; \
		cp -a bootstrap1/commonwebfiles/* /tmp/bootstraptrweb/unite$$x/; \
		cp -a bootstrap1/uniteler/Unite$$x-*.html /tmp/bootstraptrweb/unite$$x/the-unit.html; \
		cp -a bootstrap1/uniteler/Unite$$x-Dosyalar/* /tmp/bootstraptrweb/unite$$x/; \
		echo $$x; \
		mkdir /tmp/bootstraptrweb/unite$$x/exercises; \
		for y in bootstrap1/uniteler/Unite$$x-Egzersizler/*;do \
			mkdir /tmp/bootstraptrweb/unite$$x/exercises/`basename $$y`; \
			cp -a bootstrap1/commonwebfiles/* /tmp/bootstraptrweb/unite$$x/exercises/`basename $$y`/; \
			cp bootstrap1/uniteler/Unite$$x-Egzersizler/`basename $$y`/* /tmp/bootstraptrweb/unite$$x/exercises/`basename $$y`/; \
		done; \
	done
