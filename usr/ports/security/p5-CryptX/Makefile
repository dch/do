# Created by: vanilla@
# $FreeBSD: head/security/p5-CryptX/Makefile 391763 2015-07-11 16:31:32Z vanilla $

PORTNAME=	CryptX
PORTVERSION=	0.025
CATEGORIES=	security perl5
MASTER_SITES=	CPAN/Crypt
PKGNAMEPREFIX=	p5-

MAINTAINER=	vanilla@FreeBSD.org
COMMENT=	Crypto toolkit

LICENSE=	ART20
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	p5-JSON>=0:${PORTSDIR}/converters/p5-JSON
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	modbuild

post-install:
	${CHMOD} u+w ${STAGEDIR}${PREFIX}/${SITE_ARCH_REL}/auto/CryptX/CryptX.so
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/${SITE_ARCH_REL}/auto/CryptX/CryptX.so
	${CHMOD} u-w ${STAGEDIR}${PREFIX}/${SITE_ARCH_REL}/auto/CryptX/CryptX.so

.include <bsd.port.mk>
