######################################################################
# Automatically generated by qmake (2.01a) dom 12. oct 20:47:48 2008
######################################################################

TEMPLATE = app
TARGET = 
DEPENDPATH += .
INCLUDEPATH += .
INCLUDEPATH += ../common \
	           ./server \
			   ./db \
			   ../YACReader
CONFIG += release
CONFIG -= flat
QT += sql network

# Input
HEADERS += comic_flow.h \
           create_library_dialog.h \
           library_creator.h \
           library_window.h \
           ../common/pictureflow.h \
           add_library_dialog.h \
           ../common/custom_widgets.h \
		   rename_library_dialog.h \
		   properties_dialog.h \
		   options_dialog.h \
		   export_library_dialog.h \
		   import_library_dialog.h \
		   package_manager.h \
		   ../common/qnaturalsorting.h \
		   bundle_creator.h \
		   ./db/data_base_management.h \
		   ./db/treeitem.h \
		   ./db/treemodel.h \
		   ./db/tablemodel.h \
		   ./db/tableitem.h \
		   ./db/comic_db.h \
		   ./db/folder.h \
		   ./db/library_item.h \
		   export_comics_info_dialog.h \
		   import_comics_info_dialog.h \
		   ../common/check_new_version.h \
		   ../YACReader/comic.h \
		   ../YACReader/bookmarks.h \
		   server_config_dialog.h
		   
SOURCES += comic_flow.cpp \
           create_library_dialog.cpp \
           library_creator.cpp \
           library_window.cpp \
           main.cpp \
           ../common/pictureflow.cpp \
           add_library_dialog.cpp \
           ../common/custom_widgets.cpp \
		   rename_library_dialog.cpp \
		   properties_dialog.cpp \
		   options_dialog.cpp \
		   export_library_dialog.cpp \
		   import_library_dialog.cpp \
		   package_manager.cpp \
		   ../common/qnaturalsorting.cpp \
		   bundle_creator.cpp \
		   ./db/data_base_management.cpp \
		   ./db/treeitem.cpp \
		   ./db/treemodel.cpp \
		   ./db/tablemodel.cpp \
		   ./db/tableitem.cpp \
		   ./db/comic_db.cpp \
		   ./db/folder.cpp \
		   ./db/library_item.cpp \
		   export_comics_info_dialog.cpp \
		   import_comics_info_dialog.cpp \
		   ../common/check_new_version.cpp \
		   ../YACReader/comic.cpp \
		   ../YACReader/bookmarks.cpp \
		   server_config_dialog.cpp
		   
include(./server/server.pri)


RESOURCES += images.qrc files.qrc
RC_FILE = icon.rc

macx {
	ICON = YACReaderLibrary.icns
}

TRANSLATIONS    = yacreaderlibrary_es.ts

Release:DESTDIR = ../release
Debug:DESTDIR = ../debug
