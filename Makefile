build: video-ids.txt index.html
	rm build/*.html
	for i in $$(cat video-ids.txt) ; do \
		sed "s/VIDEOID/$$i/" index.html > build/$$i.html ; \
	done
