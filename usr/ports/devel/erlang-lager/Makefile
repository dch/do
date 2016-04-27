# $FreeBSD: head/devel/erlang-lager/Makefile 394779 2015-08-19 13:34:55Z olgeni $

PORTNAME=	lager
PORTVERSION=	3.0.1
CATEGORIES=	devel
PKGNAMEPREFIX=	erlang-

MAINTAINER=	olgeni@FreeBSD.org
COMMENT=	Logging framework for Erlang

LICENSE=	APACHE20

USES=		erlang:rebar
USE_GITHUB=	yes
GH_ACCOUNT=	basho

ERL_RUN_DEPS=	devel/erlang-goldrush

post-build:
	@${RM} -r ${WRKSRC}/priv

.include <bsd.port.mk>
