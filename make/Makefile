VERSION=1.0.5

BINUTILS_VERSION=2.34-1

default: binutils.tar.gz lgt8fx.tar.gz

lgt8fx.tar.gz:
	git clone https://github.com/dbuezas/lgt8fx.git --branch v$(VERSION) --single-branch
	cp package.json lgt8fx/lgt8f
	sed -i "s/__VERSION__/$(VERSION)/g" lgt8fx/lgt8f/package.json
	cd lgt8fx/lgt8f;tar -czvf ../../lgt8fx.tar.gz *; cd -
	rm -rf lgt8fx

binutils.tar.gz:
	curl -L http://repo.msys2.org/mingw/x86_64/mingw-w64-x86_64-binutils-$(BINUTILS_VERSION)-any.pkg.tar.xz | tar Jxv
	rm -rf .BUILDINFO .MTREE .PKGINFO
	cp package.json mingw64/
	sed -i 's/"name":.*$$/"name": "binutils",/g' mingw64/package.json
	sed -i 's/"description":.*$$/"description": "A set of programs to assemble and manipulate binary and object files",/g' mingw64/package.json
	sed -i 's@"url":.*$$@"url": "https://packages.msys2.org/package/mingw-w64-x86_64-binutils?repo=mingw64",@g' mingw64/package.json
	sed -i 's/"version":.*$$/"version": "$(BINUTILS_VERSION)"/g' mingw64/package.json
	cd mingw64;tar -czvf ../binutils.tar.gz *; cd -
	rm -rf mingw64