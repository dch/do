# Created by: bruno schwander <bruno@tinkerbox.org>
# $FreeBSD: head/cad/geda-netlist/Makefile 383349 2015-04-05 18:34:45Z bapt $

PORTNAME=	netlist
PORTVERSION=	1.4.3
PORTREVISION=	5
PORTEPOCH=	1
CATEGORIES=	cad
MASTER_SITES=	ftp://ftp.geda.seul.org/pub/geda/release/v1.4/${PORTVERSION}/ \
		http://geda.seul.org/release/v1.4/${PORTVERSION}/
PKGNAMEPREFIX=	geda-
DISTNAME=	${PKGNAMEPREFIX}g${PORTNAME}-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	The gEDA's netlister

BROKEN=		Unfetchable
LIB_DEPENDS=	libgeda.so:${PORTSDIR}/cad/libgeda
RUN_DEPENDS=	geda-symbols>0:${PORTSDIR}/cad/geda-symbols

DATADIR=	${PREFIX}/share/geda
DOCSDIR=	${PREFIX}/share/doc/geda

GNU_CONFIGURE=	yes
USE_GNOME=	gtk20
USES=		pkgconfig shebangfix
SHEBANG_FILES=	scripts/sch2eaglepos.sh
CONFIGURE_ARGS=	--with-docdir=${DOCSDIR}
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

post-patch:
	@${REINPLACE_CMD} -E \
		-e "s,^(DATADIR[[:space:]]*=[[:space:]]*)gEDA,\1geda," \
		${WRKSRC}/configure

.include <bsd.port.mk>
