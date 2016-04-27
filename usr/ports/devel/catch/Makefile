# Created by: gahr
# $FreeBSD: head/devel/catch/Makefile 385521 2015-05-06 15:16:53Z mat $

PORTNAME=	catch
PORTVERSION=	1.0.53
CATEGORIES=	devel

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Header-only test framework for C++

LICENSE=	BSL

USE_GITHUB=	yes
GH_ACCOUNT=	gahr
GH_PROJECT=	Catch

NO_BUILD=	yes

PLIST_FILES=	include/catch.hpp

do-install:
	${INSTALL_DATA} ${WRKSRC}/single_include/catch.hpp \
	    ${STAGEDIR}${PREFIX}/include

regression-test:
	cd ${WRKSRC}/projects/CMake && cmake . && make && ./SelfTest

.include <bsd.port.mk>
