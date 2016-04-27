# $FreeBSD: head/net-p2p/bitcoin-utils/Makefile 379779 2015-02-24 11:10:23Z koobs $

MASTERDIR=	${.CURDIR}/../bitcoin
PKGNAMESUFFIX=	-utils

COMMENT=	Virtual Peer-to-Peer Currency (CLI and Utilities)
SLAVE_PORT=	yes

OPTIONS_DEFINE=		DEBUG HARDENING TESTS
OPTIONS_DEFAULT=	HARDENING TESTS

CONFIGURE_ARGS=	--without-daemon \
		--without-gui \
		--without-libs \
		--without-qrencode \
		--with-utils \
		--disable-wallet \
		--disable-reduce-exports

PLIST_FILES=	bin/bitcoin-cli bin/bitcoin-tx

.include "${MASTERDIR}/Makefile"
