# $FreeBSD: head/devel/erlang-lager_syslog/Makefile 393060 2015-07-28 08:29:07Z olgeni $

PORTNAME=	lager_syslog
PORTVERSION=	2.1.2
CATEGORIES=	devel
PKGNAMEPREFIX=	erlang-

MAINTAINER=	olgeni@FreeBSD.org
COMMENT=	Syslog backend for Lager

LICENSE=	APACHE20

USES=		erlang:rebar
USE_GITHUB=	yes
GH_ACCOUNT=	basho

ERL_BUILD_DEPS=	devel/erlang-lager \
		devel/erlang-syslog
RUN_DEPENDS:=	${BUILD_DEPENDS}

.include <bsd.port.mk>
