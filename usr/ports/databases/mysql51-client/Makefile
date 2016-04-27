# Created by: Alex Dupre <ale@FreeBSD.org>
# $FreeBSD: head/databases/mysql51-client/Makefile 392453 2015-07-18 21:14:35Z feld $

PORTNAME=	mysql
PORTREVISION=	3
PKGNAMESUFFIX=	51-client

COMMENT=	Multithreaded SQL database (client)

MASTERDIR=	${.CURDIR}/../mysql51-server

PKGINSTALL=	mustnotexist
PKGMESSAGE=	${.CURDIR}/pkg-message
PLIST=		${PKGDIR}/pkg-plist.client

CLIENT_ONLY=	yes

.include "${MASTERDIR}/Makefile"
