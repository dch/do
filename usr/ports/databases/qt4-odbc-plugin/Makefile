# Created by: Michael Nottebrock <lofi@FreeBSD.org>
# $FreeBSD: head/databases/qt4-odbc-plugin/Makefile 362834 2014-07-24 17:35:09Z rakuco $

PORTNAME=	qt4-${DB}-plugin
DISTVERSION=	${QT4_VERSION}
PORTREVISION=	1
CATEGORIES=	databases

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Qt Open Database Connectivity plugin

DB=		odbc

LIB_DEPENDS+=	libodbc.so:${PORTSDIR}/databases/unixODBC

USE_QT4=	moc_build sql
QT_DIST=	yes

DRIVER=		src/sql/drivers/${DB}
PLUGIN=		src/plugins/sqldrivers/${DB}
EXTRACT_AFTER_ARGS?=	${DISTNAME}/${DRIVER} \
			${DISTNAME}/src/corelib \
			${DISTNAME}/${PLUGIN}
MAKEFILE=	${FILESDIR}/Makefile.bsd
MAKE_ENV+=	DB="${DB}" DRIVER="${DRIVER}" MOC="${MOC}" \
		PLUGIN="${PLUGIN}" \
		QT_INCDIR="${QT_INCDIR}" \
		QT_LIBDIR="${QT_LIBDIR}"
PLIST_SUB=	DB=${DB}

EXTRA_PATCHES=	# empty

SQL_PLUGINDIR=	${PREFIX}/${QT_PLUGINDIR_REL}/sqldrivers

do-install:
	@${MKDIR} ${STAGEDIR}${SQL_PLUGINDIR}
	${INSTALL_LIB} ${WRKSRC}/libqsql${DB}.so ${STAGEDIR}${SQL_PLUGINDIR}

.include <bsd.port.mk>
