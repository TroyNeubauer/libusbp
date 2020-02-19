#pragma once

#define BUILD_SYSTEM_LIBUSBP_VERSION_MAJOR 1


#ifdef LIBUSBP_OS_WINDOWS


#elif defined(LIBUSBP_OS_OSX)

	#error Needs config

#elif defined(LIBUSBP_OS_LINUX)

#else
	#error Unknown platform
#endif
