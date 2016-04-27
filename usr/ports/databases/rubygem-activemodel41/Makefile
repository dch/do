# Created by: Torsten Zühlsdorff <ports@toco-domains.de>
# $FreeBSD: head/databases/rubygem-activemodel41/Makefile 395288 2015-08-25 14:53:32Z sunpoet $

PORTNAME=	activemodel
PORTVERSION=	4.1.13
CATEGORIES=	databases rubygems
MASTER_SITES=	RG
PKGNAMESUFFIX=	41

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Toolkit for building modeling frameworks

LICENSE=	MIT

RUN_DEPENDS=	rubygem-activesupport41>=${PORTVERSION}:${PORTSDIR}/devel/rubygem-activesupport41 \
		rubygem-builder32>=3.2.2:${PORTSDIR}/devel/rubygem-builder32

NO_ARCH=	yes
USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

PORTSCOUT=	limit:^4\.1

.include <bsd.port.mk>
