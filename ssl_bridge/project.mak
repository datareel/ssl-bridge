PROJECT_DEP = drlb_server.h m_socket.h m_config.h m_log.h \
m_proc.h m_help.h m_dbase.h m_app.h m_stats.h \
m_thread.h ssl_config.h ssl_utils.h

M_THREAD_DEP = $(PROJECT_DEP) 

SSL_CONFIG_DEP = $(PROJECT_DEP)

SSL_UTILS_DEP = $(PROJECT_DEP)

M_SOCKET_DEP = m_socket.h

M_LOG_DEP = $(PROJECT_DEP)

M_HELP_DEP = $(PROJECT_DEP)

M_PROC_DEP = $(PROJECT_DEP)

M_DBASE_DEP = $(PROJECT_DEP)

M_APP_DEP = $(PROJECT_DEP)

M_CONFIG_DEP = $(PROJECT_DEP)

M_STATS_DEP = $(PROJECT_DEP)

drlb_server$(OBJ_EXT):	drlb_server.cpp $(PROJECT_DEP)
	$(CXX) $(COMPILE_ONLY) $(COMPILE_FLAGS) drlb_server.cpp

m_thread$(OBJ_EXT):	m_thread.cpp $(M_THREAD_DEP)
	$(CXX) $(COMPILE_ONLY) $(COMPILE_FLAGS) m_thread.cpp

ssl_config$(OBJ_EXT):	ssl_config.cpp $(SSL_CONFIG_DEP)
	$(CXX) $(COMPILE_ONLY) $(COMPILE_FLAGS) ssl_config.cpp

ssl_utils$(OBJ_EXT):	ssl_utils.cpp $(SSL_UTILS_DEP)
	$(CXX) $(COMPILE_ONLY) $(COMPILE_FLAGS) ssl_utils.cpp

m_socket$(OBJ_EXT):	m_socket.cpp $(M_SOCKET_DEP)
	$(CXX) $(COMPILE_ONLY) $(COMPILE_FLAGS) m_socket.cpp

m_log$(OBJ_EXT):	m_log.cpp $(M_LOG_DEP)
	$(CXX) $(COMPILE_ONLY) $(COMPILE_FLAGS) m_log.cpp

m_help$(OBJ_EXT):	m_help.cpp $(M_HELP_DEP)
	$(CXX) $(COMPILE_ONLY) $(COMPILE_FLAGS) m_help.cpp

m_proc$(OBJ_EXT):	m_proc.cpp $(M_PROC_DEP)
	$(CXX) $(COMPILE_ONLY) $(COMPILE_FLAGS) m_proc.cpp

m_dbase$(OBJ_EXT):	m_dbase.cpp $(M_DBASE_DEP)
	$(CXX) $(COMPILE_ONLY) $(COMPILE_FLAGS) m_dbase.cpp

m_app$(OBJ_EXT):	m_app.cpp $(M_APP_DEP)
	$(CXX) $(COMPILE_ONLY) $(COMPILE_FLAGS) m_app.cpp

m_config$(OBJ_EXT):	m_config.cpp $(M_CONFIG_DEP)
	$(CXX) $(COMPILE_ONLY) $(COMPILE_FLAGS) m_config.cpp

m_stats$(OBJ_EXT):	m_stats.cpp $(M_STATS_DEP)
	$(CXX) $(COMPILE_ONLY) $(COMPILE_FLAGS) m_stats.cpp

OBJECTS = ssl_config$(OBJ_EXT) \
ssl_utils$(OBJ_EXT) \
m_thread$(OBJ_EXT) \
m_socket$(OBJ_EXT) \
m_help$(OBJ_EXT) \
m_log$(OBJ_EXT) \
m_proc$(OBJ_EXT) \
m_dbase$(OBJ_EXT) \
m_app$(OBJ_EXT) \
m_config$(OBJ_EXT) \
m_stats$(OBJ_EXT) \
drlb_server$(OBJ_EXT)
