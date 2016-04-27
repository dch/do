# Created by: Roderick van Domburg <r.s.a.vandomburg@student.utwente.nl>
# $FreeBSD: head/sysutils/rubygem-capistrano/Makefile 380530 2015-03-05 17:28:27Z sunpoet $

PORTNAME=	capistrano
PORTVERSION=	3.4.0
CATEGORIES=	sysutils rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Utility for executing commands in parallel on multiple machines

LICENSE=	MIT

RUN_DEPENDS=	rubygem-i18n>=0:${PORTSDIR}/devel/rubygem-i18n \
		rubygem-rake>=10:${PORTSDIR}/devel/rubygem-rake \
		rubygem-sshkit>=1.3:${PORTSDIR}/security/rubygem-sshkit

USE_RUBY=	yes
USE_RAKE=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

PLIST_FILES=	bin/cap bin/capify

.include <bsd.port.mk>
