# Created by: sumikawa
# $FreeBSD: head/dns/geta/Makefile 383357 2015-04-05 20:50:42Z bapt $

PORTNAME=	geta
PORTVERSION=	19990419
PORTREVISION=	1
CATEGORIES=	dns ipv6
MASTER_SITES=	ftp://ftp.kame.net/pub/kame/misc/
DISTNAME=	pping-${PORTVERSION}

MAINTAINER=	sumikawa@FreeBSD.org
COMMENT=	Geta(GET Address) - Simple IPv4/IPv6 address resolving tool

BROKEN=		Unfetchable
WRKSRC=		${WRKDIR}/pping
GNU_CONFIGURE=	yes
USES=		perl5
USE_PERL5=	build

PLIST_FILES=		bin/geta

.include <bsd.port.mk>
