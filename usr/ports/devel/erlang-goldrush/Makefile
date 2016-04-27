# $FreeBSD: head/devel/erlang-goldrush/Makefile 391483 2015-07-06 22:27:17Z olgeni $

PORTNAME=	goldrush
PORTVERSION=	0.1.7
CATEGORIES=	devel
PKGNAMEPREFIX=	erlang-

MAINTAINER=	olgeni@FreeBSD.org
COMMENT=	Fast event stream processing library for Erlang

LICENSE=	ISCL

USES=		erlang:rebar
USE_GITHUB=	yes
GH_ACCOUNT=	DeadZen

post-build:
	@${RM} -r ${WRKSRC}/priv

.include <bsd.port.mk>
