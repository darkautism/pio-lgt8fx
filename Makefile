
default: lgt8fx.tar.gz

lgt8fx.tar.gz:
	tar -czvf ./lgt8fx.tar.gz --exclude=.git --exclude=make --exclude=Makefile *
