# Created by: Anton Berezin <tobez@FreeBSD.org>
# $FreeBSD: head/misc/biblical-curse/Makefile 343005 2014-02-06 10:29:49Z miwi $

PORTNAME=	biblical-curse
PORTVERSION=	0.02
CATEGORIES=	misc
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	tobez@FreeBSD.org
COMMENT=	Fake biblical curse generator

USES=		perl5
USE_PERL5=	run
NO_BUILD=	yes
WRKSRC=		${WRKDIR}/src

SRC=		${.CURDIR}/src

pre-patch:
	@${CP} -R ${SRC} ${WRKDIR}

post-patch:
	@${REINPLACE_CMD} -e 's|/usr/bin/perl|${PERL}|' ${WRKSRC}/biblical-curse

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/biblical-curse ${STAGEDIR}${PREFIX}/bin/biblical-curse

.include <bsd.port.mk>
