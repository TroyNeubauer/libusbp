
function LibUSBPDependencies()
	filter "system:*"

		defines
		{
			"LIBUSBP_STATIC",
		}

		sysincludedirs
		{
			"vendor/libusbp/include/",
		}

		links
		{
			"libusbp",
		}

	filter "system:linux"
		links
		{
			"udev",
		}

end

project "libusbp"
	kind "StaticLib"
	language "C"
	systemversion "latest"

	targetdir ("../../bin/" .. outputdir .. "/%{prj.name}")
	objdir ("../../bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"src/*.c",
		"src/*.h",
	}

	sysincludedirs
	{
		"include",
		"src",
	}

	defines
	{
		"LIBUSBP_STATIC",
	}

	filter "system:windows"

		files
		{
			"src/windows/*.c",
		}

		defines
		{
			"LIBUSBP_OS_WINDOWS",
		}


	filter "system:linux"

		files
		{
			"src/linux/*.c",
		}

		defines
		{
			"LIBUSBP_OS_LINUX",
		}

	filter "system:macosx"

		files
		{
			"src/mac/*.c",
		}

		defines
		{
			"LIBUSBP_OS_OSX",
		}
