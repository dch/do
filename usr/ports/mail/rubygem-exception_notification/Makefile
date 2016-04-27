# Created by: Steve Wills <swills@FreeBSD.org>
# $FreeBSD: head/mail/rubygem-exception_notification/Makefile 389070 2015-06-10 16:47:21Z sunpoet $

PORTNAME=	exception_notification
PORTVERSION=	4.1.1
CATEGORIES=	mail rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Exception notification for Rails apps

LICENSE=	MIT

RUN_DEPENDS=	rubygem-actionmailer4>=4.0.0:${PORTSDIR}/mail/rubygem-actionmailer4 \
		rubygem-activesupport4>=4.0.0:${PORTSDIR}/devel/rubygem-activesupport4

NO_ARCH=	yes
USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
