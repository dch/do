# Created by: Zane C. Bowers
# $FreeBSD: head/dns/ldnsm/Makefile 363374 2014-07-29 19:11:51Z adamw $

PORTNAME=	ldnsm
PORTVERSION=	0.2.1
CATEGORIES=	dns
MASTER_SITES=	http://vvelox.net/src/ldap/

MAINTAINER=	vvelox@vvelox.net
COMMENT=	Manages LDAP enteries for the BIND9 SDB LDAP patch

USES=		perl5 tar:tgz
NO_BUILD=	yes

PLIST_FILES=	bin/ldnsm man/man1/ldnsm.1.gz man/man5/dotldnsm.5.gz

WRKSRC=		${WRKDIR}/${DISTNAME}

do-install:
	@${EXEC} cd ${WRKSRC} ; ${WRKSRC}/install ${STAGEDIR}${PREFIX}

.include <bsd.port.mk>
