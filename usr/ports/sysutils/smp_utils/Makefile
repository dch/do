# Created by: Xin LI <delphij@FreeBSD.org>
# $FreeBSD: head/sysutils/smp_utils/Makefile 363374 2014-07-29 19:11:51Z adamw $

PORTNAME=	smp_utils
PORTVERSION=	0.98
PORTREVISION=	1
CATEGORIES=	sysutils
MASTER_SITES=	http://sg.danny.cz/sg/p/

MAINTAINER=	delphij@FreeBSD.org
COMMENT=	Utilities to send SAS Serial Management Protocol requests

USES=		gmake libtool tar:tgz
USE_LDCONFIG=	yes
GNU_CONFIGURE=	yes
.include <bsd.port.pre.mk>

.if ${OSVERSION} < 900000
IGNORE=		requires FreeBSD 9.x
.endif

.include <bsd.port.post.mk>
