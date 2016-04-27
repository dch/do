# $FreeBSD: head/devel/etcdctl/Makefile 385521 2015-05-06 15:16:53Z mat $

PORTNAME=	etcdctl
PORTVERSION=	0.4.6
DISTVERSIONPREFIX=	v
CATEGORIES=	devel
PKGNAMEPREFIX=	coreos-

MAINTAINER=	robak@FreeBSD.org
COMMENT=	Simple commandline client for etcd

LICENSE=	APACHE20

BUILD_DEPENDS=	${LOCALBASE}/bin/go:${PORTSDIR}/lang/go

USE_GITHUB=	yes
GH_ACCOUNT=	coreos

PLIST_FILES=	bin/${PORTNAME}

PORTDOCS=	README.md

OPTIONS_DEFINE=	DOCS
DOCS_DESC=	Install etcdctl README file

.include <bsd.port.options.mk>

post-patch:
	@${REINPLACE_CMD} -e 's|$$VER|${DISTVERSION}|' ${WRKSRC}/scripts/release-version
	@${REINPLACE_CMD} -e '/VER=/d' ${WRKSRC}/scripts/release-version

do-build:
	(cd ${WRKSRC}; ${SH} build)

do-install:
.if ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/${PORTDOCS} ${STAGEDIR}${DOCSDIR}
.endif
	${INSTALL_PROGRAM} ${WRKSRC}/bin/${PORTNAME} ${STAGEDIR}${PREFIX}/bin/

.include <bsd.port.mk>
