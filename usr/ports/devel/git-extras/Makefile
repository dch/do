# $FreeBSD: head/devel/git-extras/Makefile 385957 2015-05-10 13:53:50Z robak $

PORTNAME=	git-extras
PORTVERSION=	3.0.0
CATEGORIES=	devel

MAINTAINER=	igor.ostapenko@gmail.com
COMMENT=	Sub-commands for repo summary, repl, changelog population, and more

LICENSE=	MIT

RUN_DEPENDS=	git:${PORTSDIR}/devel/git \
		bash:${PORTSDIR}/shells/bash

USE_GITHUB=	yes
GH_ACCOUNT=	tj

USES=		gmake shebangfix
SHEBANG_FILES=	bin/git-guilt \
		bin/git-merge-into

NO_BUILD=	yes

.include <bsd.port.mk>
