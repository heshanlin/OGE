lib_LTLIBRARIES += liboge-1.0.la
bin_PROGRAMS += query_engine execute_engine create_workflow create_plugin_template remove_plugin remove_workflow remove_suite clear_workspace import_script

liboge_1_0_la_CPPFLAGS = -I$(top_srcdir)/include
liboge_1_0_la_SOURCES = src/oge_catalog.cpp src/oge_engine.cpp src/oge_logger.cpp src/oge_plugin.cpp src/oge_sysconfig.cpp src/oge_util.cpp src/oge_workflow.cpp

CPPFLAGS += -I$(top_srcdir)/include
LDFLAGS += -L$(top_srcdir)
LDADD += liboge-1.0.la
query_engine_SOURCES = src/query_engine.cpp
execute_engine_SOURCES = src/execute_engine.cpp
create_workflow_SOURCES = src/create_workflow.cpp
create_plugin_template_SOURCES = src/create_plugin_template.cpp
remove_plugin_SOURCES = src/remove_plugin.cpp
remove_workflow_SOURCES = src/remove_workflow.cpp
remove_suite_SOURCES = src/remove_suite.cpp
clear_workspace_SOURCES = src/clear_workspace.cpp
import_script_SOURCES = src/import_script.cpp
