project "imgui"
	kind "StaticLib"
 	language "C++"
 	cppdialect "C++17"
	staticruntime "on"
	
	location "%{wks.location}/Intermediate/ProjectFiles"
	targetdir ("%{wks.location}/Binaries/" ..outputdir.. "/%{prj.name}")
	objdir    ("%{wks.location}/Intermediate/Build/" ..outputdir.. "/%{prj.name}")

	files
	{
		"imconfig.h",
		"imgui.cpp",
		"imgui.h",
		"imgui_demo.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_tables.cpp",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h"
	}

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Shipping"
		runtime "Release"
		optimize "on"