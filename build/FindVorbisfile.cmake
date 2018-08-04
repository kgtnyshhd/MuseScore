find_path(VORBISFILE_INCLUDE_DIR vorbisfile.h PATHS ${PROJECT_SOURCE_DIR}/dependencies/include/vorbis;)

find_library(VORBISFILE_LIBRARY NAMES vorbisfile PATHS ${PROJECT_SOURCE_DIR}/dependencies/libx86 NO_DEFAULT_PATH)

if (MINGW)
  set(VORBISFILE_INCLUDE_DIR "")
  set(VORBISFILE_LIBRARY "")
endif(MINGW)

message(STATUS ${VORBISFILE_LIBRARY})

if (VORBISFILE_INCLUDE_DIR AND VORBISFILE_LIBRARY)
      set(VORBISFILE_FOUND TRUE)
endif (VORBISFILE_INCLUDE_DIR AND VORBISFILE_LIBRARY)

if (VORBISFILE_FOUND)
      message (STATUS "Found vorbis: ${VORBISFILE_LIBRARY}")
else (VORBISFILE_FOUND)
      message (FATAL_ERROR "Could not find: vorbis")
endif (VORBISFILE_FOUND)
