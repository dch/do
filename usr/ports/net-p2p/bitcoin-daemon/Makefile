# $FreeBSD: head/net-p2p/bitcoin-daemon/Makefile 385291 2015-05-03 16:58:04Z jbeich $

MASTERDIR=	${.CURDIR}/../bitcoin
PKGNAMESUFFIX=	-daemon

COMMENT=	Virtual Peer-to-Peer Currency (Daemon)

SLAVE_PORT=	yes

OPTIONS_DEFINE=		DEBUG HARDENING TESTS UPNP WALLET
OPTIONS_DEFAULT=	HARDENING WALLET

CONFIGURE_ARGS=	--with-daemon \
		--without-gui \
		--without-libs \
		--without-qrencode \
		--without-utils \
		--disable-reduce-exports

PLIST_FILES=	bin/bitcoind

.include "${MASTERDIR}/Makefile"
