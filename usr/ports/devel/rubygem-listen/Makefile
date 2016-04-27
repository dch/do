# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD: head/devel/rubygem-listen/Makefile 392782 2015-07-24 08:58:33Z sunpoet $

PORTNAME=	listen
PORTVERSION=	3.0.3
CATEGORIES=	devel rubygems
MASTER_SITES=	RG

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Listen to file modifications and notify about the changes

LICENSE=	MIT

RUN_DEPENDS=	rubygem-rb-fsevent>=0.9.3:${PORTSDIR}/devel/rubygem-rb-fsevent \
		rubygem-rb-inotify>=0.9:${PORTSDIR}/devel/rubygem-rb-inotify \
		rubygem-rb-kqueue>=0.2:${PORTSDIR}/devel/rubygem-rb-kqueue

NO_ARCH=	yes
USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

PLIST_FILES=	bin/listen

.include <bsd.port.mk>
