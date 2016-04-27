# Created by: Thierry Thomas <thierry@pompo.net>
# $FreeBSD: head/security/pear-Auth_SASL/Makefile 391787 2015-07-12 16:07:05Z sunpoet $

PORTNAME=	Auth_SASL
PORTVERSION=	1.0.6
CATEGORIES=	security www pear

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	PEAR abstraction of various SASL mechanism responses

LICENSE=	BSD3CLAUSE

BUILD_DEPENDS=	${PEARDIR}/Auth/Auth.php:${PORTSDIR}/security/pear-Auth
RUN_DEPENDS:=	${BUILD_DEPENDS}

NO_ARCH=	yes
USES=		pear

.include <bsd.port.mk>
