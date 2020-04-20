VERSION=1.0.5

BINUTILS_VERSION=2.34-1

default: lgt8fx.tar.gz

lgt8fx.tar.gz:
	git clone https://github.com/dbuezas/lgt8fx.git --branch v$(VERSION) --single-branch
	cp package.json lgt8fx/lgt8f
	sed -i "s/__VERSION__/$(VERSION)/g" lgt8fx/lgt8f/package.json
	cd lgt8fx/lgt8f;tar -czvf ../../lgt8fx.tar.gz *; cd -
	rm -rf lgt8fx
