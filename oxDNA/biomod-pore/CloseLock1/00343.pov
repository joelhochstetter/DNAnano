// switches for output
#declare DRAW_BASES = 1; // possible values are 0, 1; only relevant for DNA ribbons
#declare DRAW_BASES_TYPE = 3; // possible values are 1, 2, 3; only relevant for DNA ribbons
#declare DRAW_FOG = 0; // set to 1 to enable fog

#include "colors.inc"

#include "transforms.inc"
background { rgb <1, 1, 1>}

#default {
   normal{
       ripples 0.25
       frequency 0.20
       turbulence 0.2
       lambda 5
   }
	finish {
		phong 0.1
		phong_size 40.
	}
}

// original window dimensions: 1024x640


// camera settings

camera {
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.102444, 35.275467, 34.823330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.340405, 34.959312, 34.764843>,  <24.483181, 34.769619, 34.729752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.340405, 34.959312, 34.764843>,  <24.102444, 35.275467, 34.823330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.340405, 34.959312, 34.764843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803631, 0.588546, 0.088264,
		0.016291, -0.170011, 0.985307,
		0.594904, -0.790386, -0.146214,
		24.518875, 34.722198, 34.720978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.580271, 35.197151, 35.374535>,  <24.102444, 35.275467, 34.823330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.580271, 35.197151, 35.374535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.735752, 35.033382, 35.044376>,  <24.829041, 34.935120, 34.846279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.735752, 35.033382, 35.044376>,  <24.580271, 35.197151, 35.374535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.735752, 35.033382, 35.044376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845877, 0.513704, 0.143532,
		0.365244, -0.753976, 0.546001,
		0.388702, -0.409425, -0.825398,
		24.852364, 34.910557, 34.796757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.340912, 35.220905, 35.242836>,  <24.580271, 35.197151, 35.374535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.340912, 35.220905, 35.242836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.234013, 35.603374, 35.290707>,  <25.169874, 35.832855, 35.319427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.234013, 35.603374, 35.290707>,  <25.340912, 35.220905, 35.242836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.234013, 35.603374, 35.290707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963478, -0.267330, -0.015653,
		0.017025, -0.119485, 0.992690,
		-0.267247, 0.956168, 0.119672,
		25.153839, 35.890224, 35.326607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.826834, 34.707157, 35.307446>,  <25.340912, 35.220905, 35.242836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.826834, 34.707157, 35.307446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.186207, 34.712204, 35.483017>,  <26.401831, 34.715233, 35.588360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.186207, 34.712204, 35.483017>,  <25.826834, 34.707157, 35.307446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.186207, 34.712204, 35.483017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092985, 0.982384, 0.162099,
		-0.429154, -0.186449, 0.883778,
		0.898433, 0.012613, 0.438930,
		26.455736, 34.715988, 35.614697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.712473, 35.068188, 35.988667>,  <25.826834, 34.707157, 35.307446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.712473, 35.068188, 35.988667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.086649, 35.092381, 35.849358>,  <26.311155, 35.106895, 35.765774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.086649, 35.092381, 35.849358>,  <25.712473, 35.068188, 35.988667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.086649, 35.092381, 35.849358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016364, 0.976787, 0.213587,
		0.353107, -0.205497, 0.912736,
		0.935440, 0.060483, -0.348273,
		26.367281, 35.110527, 35.744877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.082748, 35.567364, 36.426392>,  <25.712473, 35.068188, 35.988667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.082748, 35.567364, 36.426392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298439, 35.540611, 36.090591>,  <26.427853, 35.524559, 35.889111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298439, 35.540611, 36.090591>,  <26.082748, 35.567364, 36.426392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.298439, 35.540611, 36.090591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040383, 0.997748, -0.053551,
		0.841192, -0.005025, 0.540713,
		0.539227, -0.066882, -0.839501,
		26.460207, 35.520546, 35.838741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708366, 35.903755, 36.628441>,  <26.082748, 35.567364, 36.426392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.708366, 35.903755, 36.628441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.715935, 35.896378, 36.228580>,  <26.720476, 35.891953, 35.988663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.715935, 35.896378, 36.228580>,  <26.708366, 35.903755, 36.628441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.715935, 35.896378, 36.228580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255218, 0.966796, -0.013005,
		0.966698, -0.254883, 0.022999,
		0.018921, -0.018442, -0.999651,
		26.721611, 35.890846, 35.928684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.339588, 36.139343, 36.415730>,  <26.708366, 35.903755, 36.628441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.339588, 36.139343, 36.415730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.120277, 36.215351, 36.089958>,  <26.988691, 36.260956, 35.894497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.120277, 36.215351, 36.089958>,  <27.339588, 36.139343, 36.415730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.120277, 36.215351, 36.089958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365110, 0.930522, -0.028687,
		0.752389, -0.313083, -0.579560,
		-0.548275, 0.190019, -0.814425,
		26.955795, 36.272358, 35.845631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.782415, 36.536278, 36.034237>,  <27.339588, 36.139343, 36.415730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.782415, 36.536278, 36.034237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.415869, 36.602123, 35.888264>,  <27.195942, 36.641632, 35.800678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.415869, 36.602123, 35.888264>,  <27.782415, 36.536278, 36.034237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.415869, 36.602123, 35.888264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194081, 0.979938, -0.045316,
		0.350152, -0.112353, -0.929931,
		-0.916366, 0.164615, -0.364933,
		27.140959, 36.651508, 35.778786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861389, 36.878658, 35.417126>,  <27.782415, 36.536278, 36.034237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.861389, 36.878658, 35.417126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.482084, 36.966324, 35.509007>,  <27.254501, 37.018921, 35.564137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.482084, 36.966324, 35.509007>,  <27.861389, 36.878658, 35.417126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.482084, 36.966324, 35.509007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231382, 0.972479, 0.027351,
		-0.217389, 0.079085, -0.972876,
		-0.948264, 0.219160, 0.229705,
		27.197605, 37.032070, 35.577919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.732128, 37.483971, 35.104153>,  <27.861389, 36.878658, 35.417126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.732128, 37.483971, 35.104153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447807, 37.488239, 35.385479>,  <27.277214, 37.490799, 35.554276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447807, 37.488239, 35.385479>,  <27.732128, 37.483971, 35.104153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.447807, 37.488239, 35.385479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221704, 0.952316, 0.209621,
		-0.667539, 0.304926, -0.679273,
		-0.710801, 0.010667, 0.703312,
		27.234568, 37.491440, 35.596474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.247532, 38.056866, 34.954403>,  <27.732128, 37.483971, 35.104153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.247532, 38.056866, 34.954403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.193838, 37.957909, 35.338230>,  <27.161623, 37.898537, 35.568527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.193838, 37.957909, 35.338230>,  <27.247532, 38.056866, 34.954403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.193838, 37.957909, 35.338230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074094, 0.963120, 0.258670,
		-0.988176, 0.105821, -0.110952,
		-0.134233, -0.247391, 0.959573,
		27.153568, 37.883690, 35.626102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.861637, 38.601521, 35.236717>,  <27.247532, 38.056866, 34.954403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.861637, 38.601521, 35.236717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.000185, 38.427052, 35.568932>,  <27.083313, 38.322372, 35.768261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.000185, 38.427052, 35.568932>,  <26.861637, 38.601521, 35.236717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.000185, 38.427052, 35.568932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083616, 0.896167, 0.435767,
		-0.934365, -0.081490, 0.346874,
		0.346368, -0.436170, 0.830533,
		27.104095, 38.296200, 35.818092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.408016, 38.806927, 35.760624>,  <26.861637, 38.601521, 35.236717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.408016, 38.806927, 35.760624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.745905, 38.707230, 35.950073>,  <26.948639, 38.647411, 36.063744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.745905, 38.707230, 35.950073>,  <26.408016, 38.806927, 35.760624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.745905, 38.707230, 35.950073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046900, 0.847068, 0.529412,
		-0.533147, -0.469418, 0.703847,
		0.844721, -0.249244, 0.473627,
		26.999321, 38.632458, 36.092163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.288357, 38.886990, 36.499542>,  <26.408016, 38.806927, 35.760624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.288357, 38.886990, 36.499542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.682592, 38.893585, 36.432205>,  <26.919134, 38.897541, 36.391804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.682592, 38.893585, 36.432205>,  <26.288357, 38.886990, 36.499542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.682592, 38.893585, 36.432205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106134, 0.714641, 0.691393,
		0.131703, -0.699297, 0.702594,
		0.985591, 0.016490, -0.168339,
		26.978270, 38.898533, 36.381702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.583965, 39.099720, 37.200970>,  <26.288357, 38.886990, 36.499542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.583965, 39.099720, 37.200970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900087, 39.115685, 36.956406>,  <27.089762, 39.125263, 36.809666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900087, 39.115685, 36.956406>,  <26.583965, 39.099720, 37.200970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.900087, 39.115685, 36.956406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382866, 0.746902, 0.543646,
		0.478361, -0.663735, 0.575001,
		0.790306, 0.039911, -0.611411,
		27.137178, 39.127659, 36.772984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.115597, 39.172493, 37.702980>,  <26.583965, 39.099720, 37.200970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.115597, 39.172493, 37.702980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.263121, 39.283600, 37.348167>,  <27.351635, 39.350266, 37.135281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.263121, 39.283600, 37.348167>,  <27.115597, 39.172493, 37.702980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.263121, 39.283600, 37.348167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563537, 0.692095, 0.451034,
		0.739194, -0.666219, 0.098715,
		0.368807, 0.277772, -0.887031,
		27.373764, 39.366932, 37.082058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831717, 39.103714, 37.735081>,  <27.115597, 39.172493, 37.702980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831717, 39.103714, 37.735081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726391, 39.376728, 37.462372>,  <27.663197, 39.540539, 37.298748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726391, 39.376728, 37.462372>,  <27.831717, 39.103714, 37.735081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.726391, 39.376728, 37.462372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498923, 0.701204, 0.509302,
		0.825677, -0.206045, -0.525170,
		-0.263312, 0.682539, -0.681768,
		27.647398, 39.581490, 37.257843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.409513, 39.561665, 37.594299>,  <27.831717, 39.103714, 37.735081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.409513, 39.561665, 37.594299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.113907, 39.785133, 37.443710>,  <27.936543, 39.919216, 37.353355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.113907, 39.785133, 37.443710>,  <28.409513, 39.561665, 37.594299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.113907, 39.785133, 37.443710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495743, 0.829377, 0.257630,
		0.456171, 0.003758, -0.889884,
		-0.739018, 0.558677, -0.376475,
		27.892202, 39.952736, 37.330769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783470, 40.114349, 37.338211>,  <28.409513, 39.561665, 37.594299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.783470, 40.114349, 37.338211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.405113, 40.225208, 37.405712>,  <28.178099, 40.291725, 37.446213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.405113, 40.225208, 37.405712>,  <28.783470, 40.114349, 37.338211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.405113, 40.225208, 37.405712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324149, 0.830676, 0.452664,
		-0.014725, 0.482873, -0.875567,
		-0.945892, 0.277148, 0.168755,
		28.121346, 40.308353, 37.456337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.770987, 40.728714, 37.296696>,  <28.783470, 40.114349, 37.338211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.770987, 40.728714, 37.296696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.408304, 40.706230, 37.463898>,  <28.190695, 40.692738, 37.564220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.408304, 40.706230, 37.463898>,  <28.770987, 40.728714, 37.296696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.408304, 40.706230, 37.463898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172881, 0.854463, 0.489904,
		-0.384707, 0.516463, -0.765027,
		-0.906704, -0.056211, 0.418005,
		28.136293, 40.689365, 37.589298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.600281, 41.402195, 37.334694>,  <28.770987, 40.728714, 37.296696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.600281, 41.402195, 37.334694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.353502, 41.237446, 37.602943>,  <28.205435, 41.138596, 37.763893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.353502, 41.237446, 37.602943>,  <28.600281, 41.402195, 37.334694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.353502, 41.237446, 37.602943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007063, 0.849188, 0.528042,
		-0.786975, 0.330509, -0.520993,
		-0.616944, -0.411876, 0.670625,
		28.168419, 41.113884, 37.804131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017380, 41.802975, 37.384171>,  <28.600281, 41.402195, 37.334694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017380, 41.802975, 37.384171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.075581, 41.615223, 37.732540>,  <28.110500, 41.502571, 37.941563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.075581, 41.615223, 37.732540>,  <28.017380, 41.802975, 37.384171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.075581, 41.615223, 37.732540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108318, 0.882558, 0.457558,
		-0.983411, 0.027761, 0.179256,
		0.145502, -0.469384, 0.870924,
		28.119230, 41.474407, 37.993816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729856, 42.378258, 37.812592>,  <28.017380, 41.802975, 37.384171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.729856, 42.378258, 37.812592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.924282, 42.132774, 38.061462>,  <28.040937, 41.985485, 38.210785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.924282, 42.132774, 38.061462>,  <27.729856, 42.378258, 37.812592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.924282, 42.132774, 38.061462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245471, 0.779153, 0.576771,
		-0.838740, -0.127622, 0.529366,
		0.486065, -0.613705, 0.622179,
		28.070101, 41.948662, 38.248116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.596775, 42.633343, 38.464336>,  <27.729856, 42.378258, 37.812592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.596775, 42.633343, 38.464336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.935720, 42.421013, 38.458672>,  <28.139088, 42.293617, 38.455273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.935720, 42.421013, 38.458672>,  <27.596775, 42.633343, 38.464336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.935720, 42.421013, 38.458672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492530, 0.775717, 0.394560,
		-0.198458, -0.341310, 0.918761,
		0.847366, -0.530821, -0.014159,
		28.189930, 42.261768, 38.454426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.959707, 42.668842, 39.197876>,  <27.596775, 42.633343, 38.464336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.959707, 42.668842, 39.197876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.217180, 42.595196, 38.900749>,  <28.371664, 42.551006, 38.722473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.217180, 42.595196, 38.900749>,  <27.959707, 42.668842, 39.197876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.217180, 42.595196, 38.900749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662501, 0.619950, 0.420423,
		0.383100, -0.762734, 0.521030,
		0.643683, -0.184119, -0.742814,
		28.410286, 42.539959, 38.677906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645716, 42.661308, 39.601627>,  <27.959707, 42.668842, 39.197876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645716, 42.661308, 39.601627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.645552, 42.797409, 39.225494>,  <28.645454, 42.879070, 38.999813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.645552, 42.797409, 39.225494>,  <28.645716, 42.661308, 39.601627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.645552, 42.797409, 39.225494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727965, 0.644807, 0.233002,
		0.685614, -0.684435, -0.247956,
		-0.000409, 0.340253, -0.940334,
		28.645430, 42.899487, 38.943394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333082, 42.601273, 39.478462>,  <28.645716, 42.661308, 39.601627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333082, 42.601273, 39.478462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120451, 42.872646, 39.275620>,  <28.992872, 43.035469, 39.153915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120451, 42.872646, 39.275620>,  <29.333082, 42.601273, 39.478462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.120451, 42.872646, 39.275620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777474, 0.628390, 0.025696,
		0.336094, -0.380603, -0.861500,
		-0.531579, 0.678430, -0.507107,
		28.960978, 43.076176, 39.123489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869526, 42.810246, 38.995983>,  <29.333082, 42.601273, 39.478462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869526, 42.810246, 38.995983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221357, 42.792591, 39.185463>,  <30.432457, 42.781998, 39.299152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221357, 42.792591, 39.185463>,  <29.869526, 42.810246, 38.995983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.221357, 42.792591, 39.185463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221055, -0.919594, 0.324779,
		0.421276, -0.390382, -0.818614,
		0.879580, -0.044137, 0.473699,
		30.485231, 42.779350, 39.327572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218172, 42.199825, 38.871548>,  <29.869526, 42.810246, 38.995983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218172, 42.199825, 38.871548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372183, 42.315243, 39.222202>,  <30.464588, 42.384495, 39.432594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372183, 42.315243, 39.222202>,  <30.218172, 42.199825, 38.871548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.372183, 42.315243, 39.222202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204919, -0.899431, 0.386048,
		0.899869, -0.328278, -0.287175,
		0.385024, 0.288545, 0.876640,
		30.487690, 42.401806, 39.485195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389439, 41.543598, 39.207409>,  <30.218172, 42.199825, 38.871548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389439, 41.543598, 39.207409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474535, 41.823868, 39.479820>,  <30.525593, 41.992027, 39.643269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474535, 41.823868, 39.479820>,  <30.389439, 41.543598, 39.207409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474535, 41.823868, 39.479820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106425, -0.676221, 0.728971,
		0.971296, -0.227561, -0.069291,
		0.212741, 0.700672, 0.681029,
		30.538357, 42.034069, 39.684128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076324, 41.469009, 39.443199>,  <30.389439, 41.543598, 39.207409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076324, 41.469009, 39.443199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.761179, 41.572163, 39.666901>,  <30.572090, 41.634056, 39.801121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.761179, 41.572163, 39.666901>,  <31.076324, 41.469009, 39.443199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761179, 41.572163, 39.666901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020755, -0.918705, 0.394400,
		0.615497, 0.299127, 0.729169,
		-0.787866, 0.257885, 0.559251,
		30.524818, 41.649529, 39.834675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021706, 41.144310, 40.100544>,  <31.076324, 41.469009, 39.443199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021706, 41.144310, 40.100544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654886, 41.216518, 39.958317>,  <30.434793, 41.259842, 39.872978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654886, 41.216518, 39.958317>,  <31.021706, 41.144310, 40.100544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654886, 41.216518, 39.958317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199798, -0.979673, 0.017922,
		-0.345107, 0.087477, 0.934478,
		-0.917051, 0.180522, -0.355570,
		30.379770, 41.270676, 39.851646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455338, 40.796165, 40.518307>,  <31.021706, 41.144310, 40.100544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455338, 40.796165, 40.518307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313850, 40.854454, 40.148735>,  <30.228958, 40.889427, 39.926991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313850, 40.854454, 40.148735>,  <30.455338, 40.796165, 40.518307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313850, 40.854454, 40.148735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317933, -0.947707, -0.027759,
		-0.879661, 0.283929, 0.381551,
		-0.353717, 0.145726, -0.923931,
		30.207735, 40.898170, 39.871555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886515, 40.338253, 40.902443>,  <30.455338, 40.796165, 40.518307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886515, 40.338253, 40.902443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610178, 40.059441, 40.979263>,  <30.444376, 39.892151, 41.025356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610178, 40.059441, 40.979263>,  <30.886515, 40.338253, 40.902443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610178, 40.059441, 40.979263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372555, -0.570837, -0.731675,
		0.619630, -0.433923, 0.654041,
		-0.690841, -0.697034, 0.192047,
		30.402925, 39.850330, 41.036877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650164, 39.923695, 41.536922>,  <30.886515, 40.338253, 40.902443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650164, 39.923695, 41.536922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.319668, 40.062401, 41.714497>,  <30.121370, 40.145626, 41.821041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.319668, 40.062401, 41.714497>,  <30.650164, 39.923695, 41.536922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319668, 40.062401, 41.714497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510991, -0.793071, -0.331551,
		0.237104, -0.500789, 0.832461,
		-0.826238, 0.346768, 0.443939,
		30.071796, 40.166431, 41.847679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.419325, 39.424294, 42.000832>,  <30.650164, 39.923695, 41.536922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.419325, 39.424294, 42.000832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109156, 39.664822, 41.923744>,  <29.923054, 39.809139, 41.877491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109156, 39.664822, 41.923744>,  <30.419325, 39.424294, 42.000832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109156, 39.664822, 41.923744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465929, -0.750857, -0.468107,
		-0.426182, -0.273189, 0.862402,
		-0.775422, 0.601316, -0.192715,
		29.876530, 39.845215, 41.865929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789671, 38.992031, 42.170284>,  <30.419325, 39.424294, 42.000832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.789671, 38.992031, 42.170284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666653, 39.295780, 41.940933>,  <29.592842, 39.478031, 41.803322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666653, 39.295780, 41.940933>,  <29.789671, 38.992031, 42.170284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666653, 39.295780, 41.940933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614236, -0.618656, -0.489876,
		-0.726726, 0.201532, 0.656700,
		-0.307545, 0.759374, -0.573382,
		29.574389, 39.523594, 41.768917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.076916, 38.801193, 42.102867>,  <29.789671, 38.992031, 42.170284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.076916, 38.801193, 42.102867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.192976, 39.051826, 41.813538>,  <29.262611, 39.202206, 41.639938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.192976, 39.051826, 41.813538>,  <29.076916, 38.801193, 42.102867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.192976, 39.051826, 41.813538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475595, -0.561481, -0.677162,
		-0.830435, 0.540490, 0.135086,
		0.290151, 0.626585, -0.723328,
		29.280022, 39.239803, 41.596539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532570, 38.730934, 41.582207>,  <29.076916, 38.801193, 42.102867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532570, 38.730934, 41.582207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.838247, 38.904366, 41.391205>,  <29.021654, 39.008427, 41.276604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.838247, 38.904366, 41.391205>,  <28.532570, 38.730934, 41.582207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.838247, 38.904366, 41.391205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336279, -0.363914, -0.868610,
		-0.550386, 0.824362, -0.132296,
		0.764193, 0.433582, -0.477509,
		29.067505, 39.034439, 41.247952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.229599, 39.042007, 41.062019>,  <28.532570, 38.730934, 41.582207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.229599, 39.042007, 41.062019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.609802, 38.976070, 40.956673>,  <28.837925, 38.936508, 40.893463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.609802, 38.976070, 40.956673>,  <28.229599, 39.042007, 41.062019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609802, 38.976070, 40.956673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308513, -0.400395, -0.862846,
		0.036779, 0.901395, -0.431433,
		0.950509, -0.164838, -0.263366,
		28.894955, 38.926620, 40.877663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200390, 39.121109, 40.365875>,  <28.229599, 39.042007, 41.062019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.200390, 39.121109, 40.365875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568083, 38.968353, 40.404179>,  <28.788698, 38.876698, 40.427158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568083, 38.968353, 40.404179>,  <28.200390, 39.121109, 40.365875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568083, 38.968353, 40.404179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124243, -0.512153, -0.849861,
		0.373598, 0.769322, -0.518235,
		0.919232, -0.381894, 0.095756,
		28.843853, 38.853786, 40.432907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705406, 39.205921, 39.646515>,  <28.200390, 39.121109, 40.365875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.705406, 39.205921, 39.646515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.870491, 38.914280, 39.864902>,  <28.969542, 38.739296, 39.995934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.870491, 38.914280, 39.864902>,  <28.705406, 39.205921, 39.646515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870491, 38.914280, 39.864902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049907, -0.580394, -0.812805,
		0.909494, 0.362702, -0.203148,
		0.412711, -0.729102, 0.545966,
		28.994305, 38.695549, 40.028694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259573, 39.134411, 39.265114>,  <28.705406, 39.205921, 39.646515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259573, 39.134411, 39.265114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.174292, 38.807499, 39.479256>,  <29.123123, 38.611351, 39.607738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.174292, 38.807499, 39.479256>,  <29.259573, 39.134411, 39.265114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.174292, 38.807499, 39.479256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138726, -0.567720, -0.811448,
		0.967109, -0.098736, 0.234417,
		-0.213203, -0.817279, 0.535350,
		29.110331, 38.562317, 39.639862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.678471, 38.563271, 39.044361>,  <29.259573, 39.134411, 39.265114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.678471, 38.563271, 39.044361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365463, 38.396702, 39.229511>,  <29.177660, 38.296761, 39.340603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365463, 38.396702, 39.229511>,  <29.678471, 38.563271, 39.044361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365463, 38.396702, 39.229511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108348, -0.641011, -0.759846,
		0.613130, -0.644744, 0.456483,
		-0.782517, -0.416425, 0.462879,
		29.130709, 38.271774, 39.368374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.768940, 37.840675, 38.898544>,  <29.678471, 38.563271, 39.044361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.768940, 37.840675, 38.898544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.388577, 37.884094, 39.014465>,  <29.160358, 37.910145, 39.084019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.388577, 37.884094, 39.014465>,  <29.768940, 37.840675, 38.898544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.388577, 37.884094, 39.014465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291537, -0.628341, -0.721244,
		0.103805, -0.770327, 0.629143,
		-0.950910, 0.108550, 0.289804,
		29.103304, 37.916660, 39.101406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526188, 37.173889, 38.994453>,  <29.768940, 37.840675, 38.898544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.526188, 37.173889, 38.994453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200510, 37.398861, 38.936817>,  <29.005102, 37.533844, 38.902237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200510, 37.398861, 38.936817>,  <29.526188, 37.173889, 38.994453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200510, 37.398861, 38.936817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317952, -0.639586, -0.699883,
		-0.485789, -0.524029, 0.699573,
		-0.814196, 0.562426, -0.144088,
		28.956251, 37.567589, 38.893589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.971916, 36.722008, 39.042332>,  <29.526188, 37.173889, 38.994453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.971916, 36.722008, 39.042332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844696, 37.048172, 38.848858>,  <28.768364, 37.243870, 38.732773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844696, 37.048172, 38.848858>,  <28.971916, 36.722008, 39.042332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844696, 37.048172, 38.848858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418756, -0.578536, -0.699957,
		-0.850580, -0.020076, 0.525462,
		-0.318051, 0.815410, -0.483684,
		28.749281, 37.292793, 38.703754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.385401, 36.457439, 38.674129>,  <28.971916, 36.722008, 39.042332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.385401, 36.457439, 38.674129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.462147, 36.812069, 38.505756>,  <28.508194, 37.024845, 38.404732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.462147, 36.812069, 38.505756>,  <28.385401, 36.457439, 38.674129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.462147, 36.812069, 38.505756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349878, -0.338927, -0.873335,
		-0.916936, 0.314839, 0.245162,
		0.191867, 0.886569, -0.420930,
		28.519707, 37.078041, 38.379478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.773163, 36.548233, 38.233490>,  <28.385401, 36.457439, 38.674129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.773163, 36.548233, 38.233490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.081381, 36.770432, 38.108471>,  <28.266312, 36.903751, 38.033459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.081381, 36.770432, 38.108471>,  <27.773163, 36.548233, 38.233490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.081381, 36.770432, 38.108471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089671, -0.391008, -0.916009,
		-0.631047, 0.733852, -0.251477,
		0.770545, 0.555494, -0.312549,
		28.312544, 36.937080, 38.014706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.596050, 36.717716, 37.560974>,  <27.773163, 36.548233, 38.233490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.596050, 36.717716, 37.560974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.992279, 36.769848, 37.544090>,  <28.230017, 36.801128, 37.533962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.992279, 36.769848, 37.544090>,  <27.596050, 36.717716, 37.560974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.992279, 36.769848, 37.544090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012813, -0.394896, -0.918637,
		-0.136392, 0.909435, -0.392843,
		0.990572, 0.130328, -0.042208,
		28.289452, 36.808945, 37.531429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.748367, 36.974823, 36.936607>,  <27.596050, 36.717716, 37.560974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.748367, 36.974823, 36.936607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.107780, 36.826660, 37.030785>,  <28.323429, 36.737762, 37.087292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.107780, 36.826660, 37.030785>,  <27.748367, 36.974823, 36.936607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.107780, 36.826660, 37.030785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095124, -0.359341, -0.928346,
		0.428473, 0.856546, -0.287645,
		0.898533, -0.370409, 0.235446,
		28.377340, 36.715538, 37.101418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258694, 37.156757, 36.401768>,  <27.748367, 36.974823, 36.936607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.258694, 37.156757, 36.401768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.405241, 36.829071, 36.578247>,  <28.493170, 36.632458, 36.684135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.405241, 36.829071, 36.578247>,  <28.258694, 37.156757, 36.401768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.405241, 36.829071, 36.578247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186717, -0.399795, -0.897386,
		0.911543, 0.411155, 0.006489,
		0.366370, -0.819217, 0.441199,
		28.515152, 36.583305, 36.710606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.791410, 37.001503, 36.049152>,  <28.258694, 37.156757, 36.401768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.791410, 37.001503, 36.049152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732759, 36.644310, 36.219368>,  <28.697569, 36.429993, 36.321499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732759, 36.644310, 36.219368>,  <28.791410, 37.001503, 36.049152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.732759, 36.644310, 36.219368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267458, -0.449955, -0.852060,
		0.952348, -0.011120, 0.304810,
		-0.146626, -0.892982, 0.425540,
		28.688772, 36.376415, 36.347031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392265, 36.569298, 35.806084>,  <28.791410, 37.001503, 36.049152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392265, 36.569298, 35.806084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.076384, 36.345425, 35.906578>,  <28.886854, 36.211102, 35.966873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.076384, 36.345425, 35.906578>,  <29.392265, 36.569298, 35.806084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.076384, 36.345425, 35.906578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034095, -0.448929, -0.892917,
		0.612539, -0.696575, 0.373604,
		-0.789705, -0.559684, 0.251237,
		28.839472, 36.177521, 35.981949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584341, 35.916031, 35.572979>,  <29.392265, 36.569298, 35.806084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584341, 35.916031, 35.572979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.191086, 35.860863, 35.621014>,  <28.955133, 35.827763, 35.649834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.191086, 35.860863, 35.621014>,  <29.584341, 35.916031, 35.572979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.191086, 35.860863, 35.621014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060354, -0.375154, -0.924996,
		0.172625, -0.916645, 0.360504,
		-0.983137, -0.137919, 0.120084,
		28.896145, 35.819489, 35.657040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515392, 35.273640, 35.294460>,  <29.584341, 35.916031, 35.572979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.515392, 35.273640, 35.294460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.176201, 35.485241, 35.281258>,  <28.972685, 35.612202, 35.273335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.176201, 35.485241, 35.281258>,  <29.515392, 35.273640, 35.294460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.176201, 35.485241, 35.281258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290809, -0.516424, -0.805442,
		-0.443125, -0.673399, 0.591755,
		-0.847980, 0.528999, -0.033010,
		28.921806, 35.643940, 35.271355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.857378, 34.652725, 35.099468>,  <29.515392, 35.273640, 35.294460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.857378, 34.652725, 35.099468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.165562, 34.398357, 35.081585>,  <30.350471, 34.245735, 35.070854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.165562, 34.398357, 35.081585>,  <29.857378, 34.652725, 35.099468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.165562, 34.398357, 35.081585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435056, -0.473250, -0.766003,
		0.465962, 0.609622, -0.641280,
		0.770458, -0.635921, -0.044703,
		30.396700, 34.207581, 35.068172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890104, 34.413494, 34.318832>,  <29.857378, 34.652725, 35.099468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890104, 34.413494, 34.318832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088776, 34.156986, 34.552784>,  <30.207979, 34.003082, 34.693157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088776, 34.156986, 34.552784>,  <29.890104, 34.413494, 34.318832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088776, 34.156986, 34.552784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342544, -0.764007, -0.546770,
		0.797479, 0.071222, -0.599128,
		0.496680, -0.641265, 0.584883,
		30.237780, 33.964607, 34.728249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118834, 33.921543, 33.889164>,  <29.890104, 34.413494, 34.318832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118834, 33.921543, 33.889164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108158, 33.757042, 34.253616>,  <30.101753, 33.658340, 34.472286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108158, 33.757042, 34.253616>,  <30.118834, 33.921543, 33.889164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108158, 33.757042, 34.253616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073761, -0.908162, -0.412069,
		0.996919, -0.078204, -0.006095,
		-0.026690, -0.411249, 0.911132,
		30.100151, 33.633667, 34.526955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256405, 33.239635, 34.168011>,  <30.118834, 33.921543, 33.889164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256405, 33.239635, 34.168011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640976, 33.345383, 34.137646>,  <30.871719, 33.408833, 34.119427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640976, 33.345383, 34.137646>,  <30.256405, 33.239635, 34.168011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640976, 33.345383, 34.137646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099846, -0.078270, 0.991920,
		0.256291, -0.961240, -0.101647,
		0.961429, 0.264369, -0.075916,
		30.929405, 33.424694, 34.114872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.726078, 32.722935, 34.611099>,  <30.256405, 33.239635, 34.168011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.726078, 32.722935, 34.611099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891096, 33.081398, 34.545738>,  <30.990107, 33.296478, 34.506523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891096, 33.081398, 34.545738>,  <30.726078, 32.722935, 34.611099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891096, 33.081398, 34.545738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297714, 0.036887, 0.953942,
		0.860915, -0.442190, -0.251583,
		0.412544, 0.896163, -0.163403,
		31.014858, 33.350246, 34.496716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370401, 32.264000, 34.762192>,  <30.726078, 32.722935, 34.611099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370401, 32.264000, 34.762192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095783, 32.155052, 34.492535>,  <30.931013, 32.089684, 34.330742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095783, 32.155052, 34.492535>,  <31.370401, 32.264000, 34.762192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095783, 32.155052, 34.492535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043832, 0.909993, -0.412300,
		0.725765, -0.312612, -0.612812,
		-0.686545, -0.272372, -0.674144,
		30.889820, 32.073341, 34.290291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652967, 32.507973, 34.031700>,  <31.370401, 32.264000, 34.762192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652967, 32.507973, 34.031700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258833, 32.457764, 33.985477>,  <31.022352, 32.427639, 33.957745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258833, 32.457764, 33.985477>,  <31.652967, 32.507973, 34.031700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258833, 32.457764, 33.985477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043438, 0.839530, -0.541575,
		0.164993, -0.528615, -0.832673,
		-0.985338, -0.125526, -0.115554,
		30.963232, 32.420105, 33.950809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213760, 33.057804, 34.025547>,  <31.652967, 32.507973, 34.031700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213760, 33.057804, 34.025547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460693, 32.815414, 34.226223>,  <32.608852, 32.669979, 34.346630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460693, 32.815414, 34.226223>,  <32.213760, 33.057804, 34.025547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460693, 32.815414, 34.226223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168662, 0.520939, 0.836765,
		-0.768409, -0.601180, 0.219388,
		0.617334, -0.605976, 0.501690,
		32.645893, 32.633621, 34.376732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788004, 32.940411, 34.702667>,  <32.213760, 33.057804, 34.025547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788004, 32.940411, 34.702667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174335, 32.849998, 34.753387>,  <32.406136, 32.795750, 34.783821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174335, 32.849998, 34.753387>,  <31.788004, 32.940411, 34.702667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174335, 32.849998, 34.753387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044674, 0.336746, 0.940535,
		-0.255294, -0.914063, 0.315141,
		0.965831, -0.226035, 0.126804,
		32.464085, 32.782188, 34.791428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784725, 32.542904, 35.281380>,  <31.788004, 32.940411, 34.702667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784725, 32.542904, 35.281380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155132, 32.689167, 35.243896>,  <32.377377, 32.776924, 35.221405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155132, 32.689167, 35.243896>,  <31.784725, 32.542904, 35.281380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155132, 32.689167, 35.243896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009795, 0.224899, 0.974333,
		0.377352, -0.903168, 0.204678,
		0.926018, 0.365662, -0.093713,
		32.432938, 32.798866, 35.215782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217896, 32.351540, 35.908489>,  <31.784725, 32.542904, 35.281380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217896, 32.351540, 35.908489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429619, 32.664108, 35.776302>,  <32.556652, 32.851650, 35.696991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429619, 32.664108, 35.776302>,  <32.217896, 32.351540, 35.908489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429619, 32.664108, 35.776302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213444, 0.254331, 0.943270,
		0.821140, -0.569820, -0.032169,
		0.529312, 0.781422, -0.330466,
		32.588413, 32.898537, 35.677162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536377, 32.462814, 36.537735>,  <32.217896, 32.351540, 35.908489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536377, 32.462814, 36.537735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610085, 32.775730, 36.299721>,  <32.654308, 32.963478, 36.156914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610085, 32.775730, 36.299721>,  <32.536377, 32.462814, 36.537735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610085, 32.775730, 36.299721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079315, 0.591593, 0.802325,
		0.979671, -0.195037, 0.046963,
		0.184267, 0.782290, -0.595036,
		32.665363, 33.010418, 36.121208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149174, 32.694092, 36.820290>,  <32.536377, 32.462814, 36.537735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149174, 32.694092, 36.820290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959854, 33.001175, 36.647499>,  <32.846260, 33.185425, 36.543823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959854, 33.001175, 36.647499>,  <33.149174, 32.694092, 36.820290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959854, 33.001175, 36.647499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110581, 0.538286, 0.835476,
		0.873932, 0.347664, -0.339666,
		-0.473302, 0.767710, -0.431980,
		32.817863, 33.231487, 36.517906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627880, 33.326717, 36.965862>,  <33.149174, 32.694092, 36.820290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627880, 33.326717, 36.965862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268143, 33.468433, 36.863361>,  <33.052299, 33.553463, 36.801861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268143, 33.468433, 36.863361>,  <33.627880, 33.326717, 36.965862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268143, 33.468433, 36.863361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044006, 0.509733, 0.859206,
		0.435028, 0.783996, -0.442833,
		-0.899341, 0.354291, -0.256249,
		32.998341, 33.574722, 36.786488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657955, 34.015598, 37.245941>,  <33.627880, 33.326717, 36.965862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657955, 34.015598, 37.245941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273785, 33.920494, 37.187908>,  <33.043282, 33.863434, 37.153088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273785, 33.920494, 37.187908>,  <33.657955, 34.015598, 37.245941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273785, 33.920494, 37.187908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259554, 0.575034, 0.775865,
		-0.101042, 0.782819, -0.613991,
		-0.960428, -0.237759, -0.145082,
		32.985657, 33.849167, 37.144382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228466, 34.598866, 37.324932>,  <33.657955, 34.015598, 37.245941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228466, 34.598866, 37.324932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951851, 34.315784, 37.382809>,  <32.785881, 34.145935, 37.417534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951851, 34.315784, 37.382809>,  <33.228466, 34.598866, 37.324932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951851, 34.315784, 37.382809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425220, 0.560754, 0.710453,
		-0.583925, 0.429778, -0.688710,
		-0.691534, -0.707705, 0.144688,
		32.744392, 34.103474, 37.426216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595787, 34.932308, 37.423088>,  <33.228466, 34.598866, 37.324932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595787, 34.932308, 37.423088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545486, 34.572140, 37.589664>,  <32.515305, 34.356037, 37.689610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545486, 34.572140, 37.589664>,  <32.595787, 34.932308, 37.423088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545486, 34.572140, 37.589664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426171, 0.428096, 0.796940,
		-0.895860, -0.077255, -0.437570,
		-0.125754, -0.900426, 0.416438,
		32.507759, 34.302013, 37.714596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905602, 35.019192, 37.789257>,  <32.595787, 34.932308, 37.423088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905602, 35.019192, 37.789257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040836, 34.674297, 37.940121>,  <32.121979, 34.467361, 38.030640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040836, 34.674297, 37.940121>,  <31.905602, 35.019192, 37.789257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040836, 34.674297, 37.940121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453698, 0.201785, 0.868010,
		-0.824533, -0.464580, -0.322973,
		0.338089, -0.862235, 0.377157,
		32.142262, 34.415627, 38.053268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326988, 34.729401, 38.111401>,  <31.905602, 35.019192, 37.789257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326988, 34.729401, 38.111401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654905, 34.561420, 38.267132>,  <31.851656, 34.460632, 38.360573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654905, 34.561420, 38.267132>,  <31.326988, 34.729401, 38.111401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654905, 34.561420, 38.267132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325309, 0.218005, 0.920135,
		-0.471286, -0.880975, 0.042106,
		0.819795, -0.419949, 0.389332,
		31.900845, 34.435436, 38.383930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995808, 34.241684, 38.511879>,  <31.326988, 34.729401, 38.111401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995808, 34.241684, 38.511879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361923, 34.343079, 38.637089>,  <31.581593, 34.403915, 38.712215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361923, 34.343079, 38.637089>,  <30.995808, 34.241684, 38.511879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361923, 34.343079, 38.637089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358553, 0.158644, 0.919930,
		0.183547, -0.954237, 0.236100,
		0.915287, 0.253505, 0.313026,
		31.636511, 34.419125, 38.730999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167347, 33.808899, 39.031860>,  <30.995808, 34.241684, 38.511879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167347, 33.808899, 39.031860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379295, 34.143112, 39.089989>,  <31.506464, 34.343639, 39.124866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379295, 34.143112, 39.089989>,  <31.167347, 33.808899, 39.031860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379295, 34.143112, 39.089989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214177, -0.033966, 0.976204,
		0.820589, -0.548386, 0.160955,
		0.529869, 0.835536, 0.145324,
		31.538256, 34.393772, 39.133587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429548, 33.622780, 39.673000>,  <31.167347, 33.808899, 39.031860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429548, 33.622780, 39.673000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463711, 34.017467, 39.617741>,  <31.484207, 34.254280, 39.584583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463711, 34.017467, 39.617741>,  <31.429548, 33.622780, 39.673000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463711, 34.017467, 39.617741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075143, 0.144639, 0.986627,
		0.993509, -0.073881, 0.086498,
		0.085404, 0.986722, -0.138148,
		31.489332, 34.313484, 39.576298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944176, 33.804382, 40.216404>,  <31.429548, 33.622780, 39.673000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944176, 33.804382, 40.216404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729830, 34.116928, 40.088459>,  <31.601223, 34.304455, 40.011692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729830, 34.116928, 40.088459>,  <31.944176, 33.804382, 40.216404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729830, 34.116928, 40.088459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220798, 0.235978, 0.946342,
		0.814922, 0.577737, 0.046072,
		-0.535864, 0.781367, -0.319867,
		31.569071, 34.351337, 39.992500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147205, 34.329647, 40.654377>,  <31.944176, 33.804382, 40.216404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147205, 34.329647, 40.654377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782221, 34.420788, 40.518436>,  <31.563231, 34.475471, 40.436871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782221, 34.420788, 40.518436>,  <32.147205, 34.329647, 40.654377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782221, 34.420788, 40.518436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313828, 0.143220, 0.938616,
		0.262538, 0.963105, -0.059177,
		-0.912461, 0.227851, -0.339850,
		31.508482, 34.489143, 40.416481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978432, 34.812202, 41.088612>,  <32.147205, 34.329647, 40.654377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978432, 34.812202, 41.088612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631094, 34.700901, 40.924393>,  <31.422691, 34.634121, 40.825859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631094, 34.700901, 40.924393>,  <31.978432, 34.812202, 41.088612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631094, 34.700901, 40.924393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439235, 0.047033, 0.897140,
		-0.230326, 0.959355, -0.163060,
		-0.868345, -0.278256, -0.410549,
		31.370590, 34.617424, 40.801228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488743, 35.224255, 41.424126>,  <31.978432, 34.812202, 41.088612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488743, 35.224255, 41.424126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.286720, 34.913654, 41.273411>,  <31.165506, 34.727295, 41.182983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.286720, 34.913654, 41.273411>,  <31.488743, 35.224255, 41.424126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.286720, 34.913654, 41.273411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569660, -0.028049, 0.821401,
		-0.648387, 0.629492, -0.428175,
		-0.505055, -0.776501, -0.376783,
		31.135204, 34.680702, 41.160378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867537, 35.384136, 41.570415>,  <31.488743, 35.224255, 41.424126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867537, 35.384136, 41.570415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881554, 34.989662, 41.505657>,  <30.889963, 34.752979, 41.466801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881554, 34.989662, 41.505657>,  <30.867537, 35.384136, 41.570415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881554, 34.989662, 41.505657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638914, -0.146675, 0.755166,
		-0.768480, 0.076974, -0.635227,
		0.035043, -0.986186, -0.161896,
		30.892067, 34.693806, 41.457088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215975, 35.180202, 41.659458>,  <30.867537, 35.384136, 41.570415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215975, 35.180202, 41.659458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397627, 34.826084, 41.699486>,  <30.506618, 34.613613, 41.723503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397627, 34.826084, 41.699486>,  <30.215975, 35.180202, 41.659458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397627, 34.826084, 41.699486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614767, -0.230079, 0.754404,
		-0.644848, -0.404117, -0.648738,
		0.454129, -0.885299, 0.100072,
		30.533865, 34.560493, 41.729507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.597061, 34.760250, 41.838051>,  <30.215975, 35.180202, 41.659458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.597061, 34.760250, 41.838051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.920282, 34.545902, 41.935947>,  <30.114216, 34.417294, 41.994686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.920282, 34.545902, 41.935947>,  <29.597061, 34.760250, 41.838051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.920282, 34.545902, 41.935947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456472, -0.306912, 0.835128,
		-0.372403, -0.786544, -0.492609,
		0.808052, -0.535866, 0.244740,
		30.162699, 34.385143, 42.009369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.314386, 34.045650, 41.925175>,  <29.597061, 34.760250, 41.838051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.314386, 34.045650, 41.925175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.657835, 34.083061, 42.126778>,  <29.863903, 34.105507, 42.247738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.657835, 34.083061, 42.126778>,  <29.314386, 34.045650, 41.925175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.657835, 34.083061, 42.126778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474049, -0.229272, 0.850125,
		0.195062, -0.968859, -0.152523,
		0.858620, 0.093524, 0.504009,
		29.915421, 34.111118, 42.277981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.332952, 33.500767, 42.376881>,  <29.314386, 34.045650, 41.925175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.332952, 33.500767, 42.376881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595488, 33.762867, 42.526474>,  <29.753008, 33.920128, 42.616230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595488, 33.762867, 42.526474>,  <29.332952, 33.500767, 42.376881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.595488, 33.762867, 42.526474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335514, -0.190487, 0.922575,
		0.675760, -0.730998, 0.094823,
		0.656338, 0.655254, 0.373984,
		29.792389, 33.959442, 42.638668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480337, 33.306316, 43.088947>,  <29.332952, 33.500767, 42.376881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480337, 33.306316, 43.088947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.607790, 33.685181, 43.103668>,  <29.684261, 33.912498, 43.112503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.607790, 33.685181, 43.103668>,  <29.480337, 33.306316, 43.088947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.607790, 33.685181, 43.103668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462544, 0.121477, 0.878235,
		0.827361, -0.296858, 0.476812,
		0.318633, 0.947163, 0.036804,
		29.703381, 33.969330, 43.114708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609804, 33.353340, 43.794937>,  <29.480337, 33.306316, 43.088947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609804, 33.353340, 43.794937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592396, 33.731186, 43.664829>,  <29.581951, 33.957893, 43.586765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592396, 33.731186, 43.664829>,  <29.609804, 33.353340, 43.794937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592396, 33.731186, 43.664829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243588, 0.305720, 0.920435,
		0.968902, 0.119290, 0.216793,
		-0.043521, 0.944619, -0.325270,
		29.579340, 34.014572, 43.567249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.098282, 33.635891, 44.201328>,  <29.609804, 33.353340, 43.794937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.098282, 33.635891, 44.201328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.828663, 33.910755, 44.092907>,  <29.666891, 34.075676, 44.027855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.828663, 33.910755, 44.092907>,  <30.098282, 33.635891, 44.201328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.828663, 33.910755, 44.092907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089329, 0.288417, 0.953329,
		0.733268, 0.666800, -0.133022,
		-0.674046, 0.687163, -0.271051,
		29.626450, 34.116905, 44.011593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207872, 34.250168, 44.656185>,  <30.098282, 33.635891, 44.201328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207872, 34.250168, 44.656185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847324, 34.289726, 44.487545>,  <29.630995, 34.313461, 44.386360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847324, 34.289726, 44.487545>,  <30.207872, 34.250168, 44.656185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847324, 34.289726, 44.487545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402977, 0.164904, 0.900231,
		0.158557, 0.981339, -0.108785,
		-0.901371, 0.098900, -0.421604,
		29.576914, 34.319397, 44.361065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959450, 34.796879, 45.007599>,  <30.207872, 34.250168, 44.656185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959450, 34.796879, 45.007599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628508, 34.630154, 44.856998>,  <29.429943, 34.530121, 44.766640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628508, 34.630154, 44.856998>,  <29.959450, 34.796879, 45.007599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628508, 34.630154, 44.856998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506509, 0.263948, 0.820841,
		-0.242758, 0.869828, -0.429496,
		-0.827356, -0.416810, -0.376500,
		29.380301, 34.505112, 44.744049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.428228, 35.303074, 44.991821>,  <29.959450, 34.796879, 45.007599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.428228, 35.303074, 44.991821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.211151, 34.967106, 44.990501>,  <29.080904, 34.765526, 44.989712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.211151, 34.967106, 44.990501>,  <29.428228, 35.303074, 44.991821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.211151, 34.967106, 44.990501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486439, 0.311094, 0.816454,
		-0.684733, 0.444690, -0.577400,
		-0.542695, -0.839924, -0.003298,
		29.048344, 34.715130, 44.989513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.703823, 35.373798, 45.159576>,  <29.428228, 35.303074, 44.991821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.703823, 35.373798, 45.159576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750978, 34.982178, 45.225979>,  <28.779272, 34.747204, 45.265820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750978, 34.982178, 45.225979>,  <28.703823, 35.373798, 45.159576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750978, 34.982178, 45.225979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560342, 0.072428, 0.825089,
		-0.819829, -0.190285, -0.540066,
		0.117886, -0.979054, 0.166003,
		28.786345, 34.688461, 45.275780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.997372, 35.242886, 45.357838>,  <28.703823, 35.373798, 45.159576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.997372, 35.242886, 45.357838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.242384, 34.951672, 45.480972>,  <28.389391, 34.776943, 45.554852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.242384, 34.951672, 45.480972>,  <27.997372, 35.242886, 45.357838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242384, 34.951672, 45.480972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376131, 0.074068, 0.923601,
		-0.695219, -0.681522, -0.228469,
		0.612532, -0.728040, 0.307836,
		28.426144, 34.733261, 45.573322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.607330, 34.700455, 45.807487>,  <27.997372, 35.242886, 45.357838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.607330, 34.700455, 45.807487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.988134, 34.633816, 45.910191>,  <28.216616, 34.593834, 45.971813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.988134, 34.633816, 45.910191>,  <27.607330, 34.700455, 45.807487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.988134, 34.633816, 45.910191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281952, -0.150938, 0.947482,
		-0.119081, -0.974406, -0.190663,
		0.952010, -0.166585, 0.256761,
		28.273737, 34.583839, 45.987217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569082, 34.109558, 46.313148>,  <27.607330, 34.700455, 45.807487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.569082, 34.109558, 46.313148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.917730, 34.293770, 46.380310>,  <28.126919, 34.404297, 46.420609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.917730, 34.293770, 46.380310>,  <27.569082, 34.109558, 46.313148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.917730, 34.293770, 46.380310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192239, 0.006049, 0.981329,
		0.450916, -0.887624, 0.093804,
		0.871619, 0.460530, 0.167909,
		28.179216, 34.431931, 46.430683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.798916, 33.728668, 46.772625>,  <27.569082, 34.109558, 46.313148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.798916, 33.728668, 46.772625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973520, 34.085705, 46.817780>,  <28.078283, 34.299927, 46.844872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973520, 34.085705, 46.817780>,  <27.798916, 33.728668, 46.772625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.973520, 34.085705, 46.817780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145814, -0.053622, 0.987858,
		0.887805, -0.447669, 0.106746,
		0.436509, 0.892590, 0.112882,
		28.104473, 34.353481, 46.851643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.327404, 33.556541, 47.288494>,  <27.798916, 33.728668, 46.772625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.327404, 33.556541, 47.288494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.289860, 33.954048, 47.312557>,  <28.267332, 34.192551, 47.326996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.289860, 33.954048, 47.312557>,  <28.327404, 33.556541, 47.288494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.289860, 33.954048, 47.312557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072552, -0.067091, 0.995105,
		0.992938, 0.089039, 0.078397,
		-0.093863, 0.993766, 0.060157,
		28.261702, 34.252178, 47.330605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.778576, 33.782112, 47.830830>,  <28.327404, 33.556541, 47.288494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.778576, 33.782112, 47.830830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.539093, 34.099789, 47.789253>,  <28.395403, 34.290394, 47.764309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.539093, 34.099789, 47.789253>,  <28.778576, 33.782112, 47.830830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.539093, 34.099789, 47.789253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099396, 0.055092, 0.993522,
		0.794776, 0.605160, 0.045956,
		-0.598708, 0.794195, -0.103936,
		28.359480, 34.338047, 47.758072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.010460, 34.347115, 48.334457>,  <28.778576, 33.782112, 47.830830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.010460, 34.347115, 48.334457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631891, 34.400566, 48.216862>,  <28.404749, 34.432636, 48.146305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631891, 34.400566, 48.216862>,  <29.010460, 34.347115, 48.334457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.631891, 34.400566, 48.216862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265087, 0.198431, 0.943586,
		0.184424, 0.970963, -0.152377,
		-0.946423, 0.133627, -0.293985,
		28.347963, 34.440655, 48.128666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838278, 34.818970, 48.828995>,  <29.010460, 34.347115, 48.334457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838278, 34.818970, 48.828995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.487347, 34.718540, 48.665409>,  <28.276787, 34.658283, 48.567257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.487347, 34.718540, 48.665409>,  <28.838278, 34.818970, 48.828995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.487347, 34.718540, 48.665409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457476, 0.180184, 0.870775,
		-0.144938, 0.951050, -0.272941,
		-0.877330, -0.251073, -0.408967,
		28.224148, 34.643219, 48.542721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.335764, 35.252964, 49.091541>,  <28.838278, 34.818970, 48.828995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.335764, 35.252964, 49.091541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116995, 34.937824, 48.978283>,  <27.985733, 34.748741, 48.910328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116995, 34.937824, 48.978283>,  <28.335764, 35.252964, 49.091541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.116995, 34.937824, 48.978283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545052, 0.078378, 0.834731,
		-0.635448, 0.610863, -0.472285,
		-0.546923, -0.787848, -0.283147,
		27.952919, 34.701469, 48.893337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.743382, 35.426025, 49.379314>,  <28.335764, 35.252964, 49.091541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.743382, 35.426025, 49.379314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708944, 35.032936, 49.313774>,  <27.688282, 34.797085, 49.274448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708944, 35.032936, 49.313774>,  <27.743382, 35.426025, 49.379314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.708944, 35.032936, 49.313774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462735, -0.106205, 0.880112,
		-0.882307, 0.151589, -0.445596,
		-0.086091, -0.982721, -0.163851,
		27.683117, 34.738121, 49.264618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.043730, 35.036213, 49.558449>,  <27.743382, 35.426025, 49.379314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.043730, 35.036213, 49.558449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.346544, 34.777237, 49.593594>,  <27.528233, 34.621853, 49.614681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.346544, 34.777237, 49.593594>,  <27.043730, 35.036213, 49.558449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.346544, 34.777237, 49.593594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306199, -0.232772, 0.923070,
		-0.577181, -0.725700, -0.374462,
		0.757037, -0.647439, 0.087858,
		27.573656, 34.583004, 49.619949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.671659, 34.366299, 49.617966>,  <27.043730, 35.036213, 49.558449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.671659, 34.366299, 49.617966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033489, 34.386497, 49.787292>,  <27.250587, 34.398617, 49.888889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033489, 34.386497, 49.787292>,  <26.671659, 34.366299, 49.617966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.033489, 34.386497, 49.787292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401254, -0.234622, 0.885408,
		0.144029, -0.970774, -0.191970,
		0.904572, 0.050496, 0.423320,
		27.304861, 34.401646, 49.914288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.821398, 33.837730, 50.119282>,  <26.671659, 34.366299, 49.617966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.821398, 33.837730, 50.119282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.062378, 34.135017, 50.235683>,  <27.206966, 34.313389, 50.305523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.062378, 34.135017, 50.235683>,  <26.821398, 33.837730, 50.119282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.062378, 34.135017, 50.235683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308422, -0.119503, 0.943713,
		0.736159, -0.658292, 0.157230,
		0.602449, 0.743217, 0.291005,
		27.243113, 34.357983, 50.322987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.255594, 33.652496, 50.760502>,  <26.821398, 33.837730, 50.119282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.255594, 33.652496, 50.760502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.151443, 34.033623, 50.698097>,  <27.088953, 34.262299, 50.660656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.151443, 34.033623, 50.698097>,  <27.255594, 33.652496, 50.760502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.151443, 34.033623, 50.698097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359590, 0.054256, 0.931531,
		0.896045, 0.298650, 0.328497,
		-0.260379, 0.952819, -0.156008,
		27.073330, 34.319469, 50.651295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.476479, 34.111271, 51.372719>,  <27.255594, 33.652496, 50.760502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.476479, 34.111271, 51.372719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.154747, 34.258560, 51.186188>,  <26.961708, 34.346935, 51.074268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.154747, 34.258560, 51.186188>,  <27.476479, 34.111271, 51.372719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.154747, 34.258560, 51.186188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541078, -0.129603, 0.830926,
		0.245533, 0.920658, 0.303483,
		-0.804331, 0.368228, -0.466326,
		26.913448, 34.369030, 51.046291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994850, 34.179420, 50.823040>,  <27.476479, 34.111271, 51.372719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.994850, 34.179420, 50.823040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.154358, 33.818726, 50.889790>,  <28.250063, 33.602306, 50.929840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.154358, 33.818726, 50.889790>,  <27.994850, 34.179420, 50.823040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.154358, 33.818726, 50.889790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261318, -0.286155, -0.921862,
		0.879031, 0.324005, -0.349751,
		0.398771, -0.901741, 0.166870,
		28.273989, 33.548203, 50.939850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.487532, 34.034599, 50.232304>,  <27.994850, 34.179420, 50.823040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.487532, 34.034599, 50.232304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.362520, 33.686386, 50.384354>,  <28.287514, 33.477459, 50.475586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.362520, 33.686386, 50.384354>,  <28.487532, 34.034599, 50.232304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.362520, 33.686386, 50.384354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004390, -0.398846, -0.917008,
		0.949898, -0.288259, 0.120828,
		-0.312528, -0.870534, 0.380128,
		28.268763, 33.425224, 50.498394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854593, 33.423115, 49.861366>,  <28.487532, 34.034599, 50.232304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854593, 33.423115, 49.861366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.532850, 33.276546, 50.048447>,  <28.339804, 33.188606, 50.160694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.532850, 33.276546, 50.048447>,  <28.854593, 33.423115, 49.861366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532850, 33.276546, 50.048447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235318, -0.526340, -0.817063,
		0.545557, -0.767270, 0.337141,
		-0.804359, -0.366419, 0.467701,
		28.291542, 33.166622, 50.188755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.988132, 32.760189, 49.851006>,  <28.854593, 33.423115, 49.861366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.988132, 32.760189, 49.851006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.605389, 32.876198, 49.843998>,  <28.375742, 32.945805, 49.839794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.605389, 32.876198, 49.843998>,  <28.988132, 32.760189, 49.851006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605389, 32.876198, 49.843998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156162, -0.564189, -0.810743,
		-0.245021, -0.773031, 0.585140,
		-0.956859, 0.290026, -0.017520,
		28.318331, 32.963207, 49.838741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.592707, 32.149467, 49.709934>,  <28.988132, 32.760189, 49.851006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.592707, 32.149467, 49.709934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.322680, 32.431725, 49.623817>,  <28.160664, 32.601078, 49.572147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.322680, 32.431725, 49.623817>,  <28.592707, 32.149467, 49.709934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.322680, 32.431725, 49.623817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266195, -0.505136, -0.820961,
		-0.688058, -0.496895, 0.528840,
		-0.675067, 0.705644, -0.215292,
		28.120159, 32.643417, 49.559231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821814, 31.927849, 49.667484>,  <28.592707, 32.149467, 49.709934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.821814, 31.927849, 49.667484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.971674, 32.206341, 49.422565>,  <28.061590, 32.373436, 49.275616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.971674, 32.206341, 49.422565>,  <27.821814, 31.927849, 49.667484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.971674, 32.206341, 49.422565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019313, -0.654389, -0.755911,
		-0.926965, 0.295028, -0.231721,
		0.374651, 0.696228, -0.612294,
		28.084068, 32.415211, 49.238876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.470444, 31.744867, 48.989468>,  <27.821814, 31.927849, 49.667484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.470444, 31.744867, 48.989468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751026, 32.021980, 48.922520>,  <27.919376, 32.188248, 48.882351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751026, 32.021980, 48.922520>,  <27.470444, 31.744867, 48.989468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.751026, 32.021980, 48.922520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007276, -0.227865, -0.973666,
		-0.712675, 0.684202, -0.154797,
		0.701456, 0.692781, -0.167372,
		27.961464, 32.229816, 48.872307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.433039, 31.875673, 48.355515>,  <27.470444, 31.744867, 48.989468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.433039, 31.875673, 48.355515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.775042, 32.080582, 48.387856>,  <27.980244, 32.203526, 48.407261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.775042, 32.080582, 48.387856>,  <27.433039, 31.875673, 48.355515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.775042, 32.080582, 48.387856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200405, -0.182561, -0.962553,
		-0.478329, 0.839195, -0.258754,
		0.855008, 0.512273, 0.080855,
		28.031544, 32.234264, 48.412113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.469017, 32.239132, 47.790302>,  <27.433039, 31.875673, 48.355515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.469017, 32.239132, 47.790302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.841246, 32.247540, 47.936504>,  <28.064583, 32.252586, 48.024223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.841246, 32.247540, 47.936504>,  <27.469017, 32.239132, 47.790302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.841246, 32.247540, 47.936504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359596, -0.239911, -0.901739,
		0.068732, 0.970567, -0.230814,
		0.930573, 0.021022, 0.365502,
		28.120419, 32.253845, 48.046154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829132, 32.528522, 47.234940>,  <27.469017, 32.239132, 47.790302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.829132, 32.528522, 47.234940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111462, 32.363598, 47.465351>,  <28.280859, 32.264641, 47.603596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111462, 32.363598, 47.465351>,  <27.829132, 32.528522, 47.234940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.111462, 32.363598, 47.465351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482891, -0.314895, -0.817103,
		0.518292, 0.854890, -0.023158,
		0.705826, -0.412315, 0.576026,
		28.323210, 32.239902, 47.638161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.443800, 32.812469, 47.018108>,  <27.829132, 32.528522, 47.234940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.443800, 32.812469, 47.018108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.551252, 32.471016, 47.196613>,  <28.615725, 32.266144, 47.303715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.551252, 32.471016, 47.196613>,  <28.443800, 32.812469, 47.018108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.551252, 32.471016, 47.196613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591230, -0.219633, -0.776021,
		0.760449, 0.472309, 0.445692,
		0.268633, -0.853631, 0.446263,
		28.631842, 32.214928, 47.330494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084398, 32.637211, 46.751358>,  <28.443800, 32.812469, 47.018108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.084398, 32.637211, 46.751358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963207, 32.283649, 46.893864>,  <28.890493, 32.071514, 46.979366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963207, 32.283649, 46.893864>,  <29.084398, 32.637211, 46.751358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.963207, 32.283649, 46.893864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712664, -0.458334, -0.531074,
		0.632705, 0.092995, 0.768789,
		-0.302975, -0.883901, 0.356264,
		28.872314, 32.018478, 47.000744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682621, 32.160240, 46.814526>,  <29.084398, 32.637211, 46.751358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682621, 32.160240, 46.814526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.375284, 31.905382, 46.838852>,  <29.190882, 31.752468, 46.853447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.375284, 31.905382, 46.838852>,  <29.682621, 32.160240, 46.814526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.375284, 31.905382, 46.838852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572249, -0.726411, -0.380603,
		0.286679, -0.257629, 0.922737,
		-0.768340, -0.637146, 0.060819,
		29.144783, 31.714239, 46.857098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094957, 31.540178, 46.853592>,  <29.682621, 32.160240, 46.814526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094957, 31.540178, 46.853592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722700, 31.458897, 46.731861>,  <29.499346, 31.410128, 46.658825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722700, 31.458897, 46.731861>,  <30.094957, 31.540178, 46.853592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722700, 31.458897, 46.731861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360832, -0.647925, -0.670815,
		-0.060867, -0.734099, 0.676309,
		-0.930642, -0.203204, -0.304324,
		29.443508, 31.397936, 46.640564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060158, 30.749258, 46.849037>,  <30.094957, 31.540178, 46.853592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060158, 30.749258, 46.849037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.774298, 30.897234, 46.611576>,  <29.602781, 30.986019, 46.469101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.774298, 30.897234, 46.611576>,  <30.060158, 30.749258, 46.849037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774298, 30.897234, 46.611576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327901, -0.572493, -0.751487,
		-0.617865, -0.731708, 0.287829,
		-0.714650, 0.369938, -0.593651,
		29.559902, 31.008215, 46.433479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903778, 30.271175, 46.350361>,  <30.060158, 30.749258, 46.849037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.903778, 30.271175, 46.350361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712320, 30.580227, 46.183537>,  <29.597445, 30.765657, 46.083443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712320, 30.580227, 46.183537>,  <29.903778, 30.271175, 46.350361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712320, 30.580227, 46.183537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367135, -0.255367, -0.894427,
		-0.797565, -0.581232, -0.161429,
		-0.478646, 0.772630, -0.417062,
		29.568726, 30.812016, 46.058418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465256, 29.990755, 45.766026>,  <29.903778, 30.271175, 46.350361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465256, 29.990755, 45.766026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556158, 30.376167, 45.709515>,  <29.610701, 30.607414, 45.675606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556158, 30.376167, 45.709515>,  <29.465256, 29.990755, 45.766026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556158, 30.376167, 45.709515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332427, -0.213119, -0.918734,
		-0.915340, 0.161823, -0.368736,
		0.227257, 0.963532, -0.141282,
		29.624334, 30.665226, 45.667130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.238678, 30.128639, 45.038929>,  <29.465256, 29.990755, 45.766026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.238678, 30.128639, 45.038929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.486738, 30.433861, 45.111771>,  <29.635574, 30.616993, 45.155476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.486738, 30.433861, 45.111771>,  <29.238678, 30.128639, 45.038929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486738, 30.433861, 45.111771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097493, 0.155363, -0.983035,
		-0.778400, 0.627385, 0.021956,
		0.620152, 0.763054, 0.182100,
		29.672785, 30.662777, 45.166401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090750, 30.584185, 44.524151>,  <29.238678, 30.128639, 45.038929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090750, 30.584185, 44.524151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452366, 30.706553, 44.643566>,  <29.669336, 30.779974, 44.715214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452366, 30.706553, 44.643566>,  <29.090750, 30.584185, 44.524151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452366, 30.706553, 44.643566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252598, 0.181069, -0.950478,
		-0.344826, 0.934680, 0.086419,
		0.904040, 0.305920, 0.298536,
		29.723577, 30.798328, 44.733128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.290516, 31.118025, 44.088501>,  <29.090750, 30.584185, 44.524151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.290516, 31.118025, 44.088501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.611286, 30.935658, 44.242931>,  <29.803749, 30.826237, 44.335590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.611286, 30.935658, 44.242931>,  <29.290516, 31.118025, 44.088501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.611286, 30.935658, 44.242931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410239, -0.049551, -0.910631,
		0.434305, 0.888641, 0.147299,
		0.801925, -0.455919, 0.386075,
		29.851864, 30.798882, 44.358753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.865276, 31.550362, 43.904934>,  <29.290516, 31.118025, 44.088501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.865276, 31.550362, 43.904934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.960928, 31.167646, 43.971107>,  <30.018318, 30.938017, 44.010811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.960928, 31.167646, 43.971107>,  <29.865276, 31.550362, 43.904934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.960928, 31.167646, 43.971107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480179, -0.031562, -0.876603,
		0.843946, 0.289061, 0.451883,
		0.239129, -0.956790, 0.165438,
		30.032667, 30.880610, 44.020741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568859, 31.568937, 43.664886>,  <29.865276, 31.550362, 43.904934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568859, 31.568937, 43.664886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490805, 31.178001, 43.697704>,  <30.443972, 30.943439, 43.717396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490805, 31.178001, 43.697704>,  <30.568859, 31.568937, 43.664886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490805, 31.178001, 43.697704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465053, -0.165850, -0.869609,
		0.863509, -0.131539, 0.486878,
		-0.195136, -0.977339, 0.082040,
		30.432264, 30.884800, 43.722317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110518, 31.295732, 43.382801>,  <30.568859, 31.568937, 43.664886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110518, 31.295732, 43.382801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.846464, 30.995865, 43.363968>,  <30.688032, 30.815945, 43.352669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.846464, 30.995865, 43.363968>,  <31.110518, 31.295732, 43.382801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846464, 30.995865, 43.363968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347479, -0.249207, -0.903966,
		0.665944, -0.613098, 0.425005,
		-0.660134, -0.749672, -0.047081,
		30.648424, 30.770964, 43.349842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506058, 30.697998, 43.155128>,  <31.110518, 31.295732, 43.382801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506058, 30.697998, 43.155128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119402, 30.616787, 43.092659>,  <30.887409, 30.568060, 43.055180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119402, 30.616787, 43.092659>,  <31.506058, 30.697998, 43.155128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119402, 30.616787, 43.092659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242738, -0.531456, -0.811562,
		0.081771, -0.822396, 0.563008,
		-0.966639, -0.203026, -0.156169,
		30.829411, 30.555880, 43.045807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478937, 29.946974, 43.066071>,  <31.506058, 30.697998, 43.155128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478937, 29.946974, 43.066071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182081, 30.150686, 42.891781>,  <31.003967, 30.272915, 42.787205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182081, 30.150686, 42.891781>,  <31.478937, 29.946974, 43.066071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182081, 30.150686, 42.891781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275024, -0.361460, -0.890903,
		-0.611221, -0.781010, 0.128189,
		-0.742140, 0.509284, -0.435728,
		30.959438, 30.303471, 42.761063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223547, 29.463062, 42.529972>,  <31.478937, 29.946974, 43.066071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223547, 29.463062, 42.529972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066843, 29.812275, 42.413811>,  <30.972820, 30.021803, 42.344112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066843, 29.812275, 42.413811>,  <31.223547, 29.463062, 42.529972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066843, 29.812275, 42.413811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267075, -0.194139, -0.943918,
		-0.880451, -0.447351, -0.157110,
		-0.391761, 0.873034, -0.290406,
		30.949314, 30.074184, 42.326691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.031210, 29.340075, 41.869614>,  <31.223547, 29.463062, 42.529972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.031210, 29.340075, 41.869614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026262, 29.738466, 41.905109>,  <31.023293, 29.977501, 41.926407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026262, 29.738466, 41.905109>,  <31.031210, 29.340075, 41.869614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026262, 29.738466, 41.905109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332211, 0.087797, -0.939110,
		-0.943124, 0.017863, -0.331961,
		-0.012370, 0.995978, 0.088738,
		31.022551, 30.037260, 41.931732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751049, 29.572170, 41.175129>,  <31.031210, 29.340075, 41.869614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751049, 29.572170, 41.175129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900978, 29.907850, 41.332737>,  <30.990936, 30.109259, 41.427303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900978, 29.907850, 41.332737>,  <30.751049, 29.572170, 41.175129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900978, 29.907850, 41.332737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348664, 0.266209, -0.898647,
		-0.859035, 0.474215, -0.192817,
		0.374822, 0.839198, 0.394024,
		31.013424, 30.159609, 41.450943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591938, 30.152254, 40.697838>,  <30.751049, 29.572170, 41.175129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591938, 30.152254, 40.697838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896509, 30.273937, 40.926815>,  <31.079252, 30.346947, 41.064201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896509, 30.273937, 40.926815>,  <30.591938, 30.152254, 40.697838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896509, 30.273937, 40.926815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424784, 0.432903, -0.795081,
		-0.489681, 0.848559, 0.200401,
		0.761427, 0.304209, 0.572438,
		31.124937, 30.365200, 41.098545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.654541, 30.851662, 40.544903>,  <30.591938, 30.152254, 40.697838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.654541, 30.851662, 40.544903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004347, 30.729633, 40.695717>,  <31.214231, 30.656416, 40.786205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004347, 30.729633, 40.695717>,  <30.654541, 30.851662, 40.544903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004347, 30.729633, 40.695717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467261, 0.321659, -0.823531,
		0.129957, 0.896364, 0.423843,
		0.874516, -0.305069, 0.377034,
		31.266701, 30.638113, 40.808826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092278, 31.425165, 40.447636>,  <30.654541, 30.851662, 40.544903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092278, 31.425165, 40.447636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.371977, 31.144285, 40.501255>,  <31.539797, 30.975758, 40.533428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.371977, 31.144285, 40.501255>,  <31.092278, 31.425165, 40.447636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.371977, 31.144285, 40.501255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159243, -0.029803, -0.986790,
		0.696919, 0.711356, 0.090981,
		0.699247, -0.702200, 0.134048,
		31.581751, 30.933624, 40.541470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739561, 31.661543, 40.181675>,  <31.092278, 31.425165, 40.447636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739561, 31.661543, 40.181675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744785, 31.261951, 40.164391>,  <31.747919, 31.022196, 40.154018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744785, 31.261951, 40.164391>,  <31.739561, 31.661543, 40.181675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744785, 31.261951, 40.164391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317905, 0.045121, -0.947048,
		0.948033, -0.001368, 0.318170,
		0.013061, -0.998981, -0.043211,
		31.748703, 30.962257, 40.151428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399811, 31.459227, 40.011585>,  <31.739561, 31.661543, 40.181675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399811, 31.459227, 40.011585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208942, 31.116226, 39.934643>,  <32.094421, 30.910427, 39.888477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208942, 31.116226, 39.934643>,  <32.399811, 31.459227, 40.011585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208942, 31.116226, 39.934643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559394, -0.127556, -0.819029,
		0.677780, -0.498422, 0.540546,
		-0.477171, -0.857499, -0.192359,
		32.065792, 30.858976, 39.876934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959991, 31.091368, 39.667942>,  <32.399811, 31.459227, 40.011585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959991, 31.091368, 39.667942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613022, 30.907770, 39.591110>,  <32.404839, 30.797611, 39.545013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613022, 30.907770, 39.591110>,  <32.959991, 31.091368, 39.667942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613022, 30.907770, 39.591110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335755, -0.255069, -0.906757,
		0.367203, -0.851037, 0.375364,
		-0.867427, -0.458994, -0.192078,
		32.352795, 30.770071, 39.533485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077221, 30.299444, 39.396145>,  <32.959991, 31.091368, 39.667942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077221, 30.299444, 39.396145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732208, 30.455280, 39.266983>,  <32.525200, 30.548782, 39.189487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732208, 30.455280, 39.266983>,  <33.077221, 30.299444, 39.396145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732208, 30.455280, 39.266983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133158, -0.440892, -0.887628,
		-0.488178, -0.808600, 0.328404,
		-0.862526, 0.389591, -0.322905,
		32.473450, 30.572157, 39.170113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936749, 29.953384, 38.901630>,  <33.077221, 30.299444, 39.396145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936749, 29.953384, 38.901630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659801, 30.227972, 38.812744>,  <32.493633, 30.392725, 38.759411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659801, 30.227972, 38.812744>,  <32.936749, 29.953384, 38.901630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659801, 30.227972, 38.812744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069588, -0.370070, -0.926394,
		-0.718178, -0.625945, 0.303996,
		-0.692371, 0.686469, -0.222218,
		32.452091, 30.433912, 38.746078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608177, 29.539097, 38.438496>,  <32.936749, 29.953384, 38.901630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608177, 29.539097, 38.438496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483627, 29.913225, 38.371296>,  <32.408897, 30.137703, 38.330978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483627, 29.913225, 38.371296>,  <32.608177, 29.539097, 38.438496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483627, 29.913225, 38.371296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016677, -0.171380, -0.985064,
		-0.950142, -0.309521, 0.037764,
		-0.311370, 0.935321, -0.167997,
		32.390217, 30.193821, 38.320896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031105, 29.460798, 37.922134>,  <32.608177, 29.539097, 38.438496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031105, 29.460798, 37.922134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188622, 29.828262, 37.909538>,  <32.283131, 30.048740, 37.901981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188622, 29.828262, 37.909538>,  <32.031105, 29.460798, 37.922134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188622, 29.828262, 37.909538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155039, -0.100152, -0.982819,
		-0.906032, 0.382140, -0.181867,
		0.393789, 0.918661, -0.031494,
		32.306759, 30.103861, 37.900089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898598, 29.669516, 37.154633>,  <32.031105, 29.460798, 37.922134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898598, 29.669516, 37.154633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152473, 29.962805, 37.252247>,  <32.304798, 30.138779, 37.310814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152473, 29.962805, 37.252247>,  <31.898598, 29.669516, 37.154633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152473, 29.962805, 37.252247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308003, 0.049599, -0.950092,
		-0.708733, 0.678176, -0.194355,
		0.634690, 0.733223, 0.244033,
		32.342880, 30.182772, 37.325459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853598, 30.258881, 36.568008>,  <31.898598, 29.669516, 37.154633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853598, 30.258881, 36.568008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.189217, 30.304893, 36.780708>,  <32.390587, 30.332502, 36.908329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.189217, 30.304893, 36.780708>,  <31.853598, 30.258881, 36.568008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189217, 30.304893, 36.780708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477581, 0.312433, -0.821159,
		-0.260599, 0.942949, 0.207208,
		0.839050, 0.115034, 0.531754,
		32.440933, 30.339403, 36.940235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182991, 30.931456, 36.321011>,  <31.853598, 30.258881, 36.568008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182991, 30.931456, 36.321011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454525, 30.682858, 36.477432>,  <32.617447, 30.533699, 36.571285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454525, 30.682858, 36.477432>,  <32.182991, 30.931456, 36.321011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454525, 30.682858, 36.477432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526290, 0.040420, -0.849344,
		0.512058, 0.782373, 0.354527,
		0.678833, -0.621498, 0.391058,
		32.658176, 30.496408, 36.594749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819916, 31.270742, 36.107334>,  <32.182991, 30.931456, 36.321011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819916, 31.270742, 36.107334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879074, 30.882917, 36.185383>,  <32.914570, 30.650223, 36.232212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879074, 30.882917, 36.185383>,  <32.819916, 31.270742, 36.107334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879074, 30.882917, 36.185383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527293, -0.089613, -0.844945,
		0.836713, 0.227853, 0.497990,
		0.147897, -0.969563, 0.195125,
		32.923443, 30.592049, 36.243919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563892, 31.157837, 35.980141>,  <32.819916, 31.270742, 36.107334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563892, 31.157837, 35.980141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380272, 30.802763, 35.965775>,  <33.270100, 30.589718, 35.957153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380272, 30.802763, 35.965775>,  <33.563892, 31.157837, 35.980141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380272, 30.802763, 35.965775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536746, -0.244897, -0.807421,
		0.707940, -0.389923, 0.588881,
		-0.459047, -0.887686, -0.035917,
		33.242558, 30.536457, 35.954998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065495, 30.732046, 35.679897>,  <33.563892, 31.157837, 35.980141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065495, 30.732046, 35.679897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751949, 30.488886, 35.629280>,  <33.563820, 30.342991, 35.598911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751949, 30.488886, 35.629280>,  <34.065495, 30.732046, 35.679897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751949, 30.488886, 35.629280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436213, -0.394092, -0.808956,
		0.441896, -0.689311, 0.574089,
		-0.783867, -0.607899, -0.126539,
		33.516788, 30.306517, 35.591320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328419, 30.115725, 35.391808>,  <34.065495, 30.732046, 35.679897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328419, 30.115725, 35.391808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940136, 30.084618, 35.300869>,  <33.707169, 30.065954, 35.246307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940136, 30.084618, 35.300869>,  <34.328419, 30.115725, 35.391808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940136, 30.084618, 35.300869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240000, -0.359226, -0.901863,
		-0.011532, -0.930005, 0.367367,
		-0.970704, -0.077767, -0.227344,
		33.648926, 30.061287, 35.232666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986351, 30.134697, 35.577236>,  <34.328419, 30.115725, 35.391808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986351, 30.134697, 35.577236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314564, 30.122280, 35.805538>,  <35.511494, 30.114830, 35.942520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314564, 30.122280, 35.805538>,  <34.986351, 30.134697, 35.577236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314564, 30.122280, 35.805538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544634, -0.345512, 0.764196,
		0.173480, -0.937901, -0.300411,
		0.820535, -0.031041, 0.570752,
		35.560726, 30.112968, 35.976765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935909, 29.590004, 36.056793>,  <34.986351, 30.134697, 35.577236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935909, 29.590004, 36.056793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167004, 29.872831, 36.219898>,  <35.305660, 30.042528, 36.317760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167004, 29.872831, 36.219898>,  <34.935909, 29.590004, 36.056793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167004, 29.872831, 36.219898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277131, -0.299969, 0.912807,
		0.767734, -0.640368, 0.022647,
		0.577739, 0.707069, 0.407762,
		35.340324, 30.084951, 36.342228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448311, 29.295368, 36.442184>,  <34.935909, 29.590004, 36.056793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448311, 29.295368, 36.442184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433533, 29.667709, 36.587589>,  <35.424667, 29.891115, 36.674831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433533, 29.667709, 36.587589>,  <35.448311, 29.295368, 36.442184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433533, 29.667709, 36.587589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101235, -0.365379, 0.925337,
		0.994176, -0.002616, 0.107734,
		-0.036943, 0.930855, 0.363516,
		35.422451, 29.946966, 36.696644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818596, 29.111650, 37.054386>,  <35.448311, 29.295368, 36.442184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818596, 29.111650, 37.054386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654728, 29.465456, 37.143654>,  <35.556408, 29.677738, 37.197216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654728, 29.465456, 37.143654>,  <35.818596, 29.111650, 37.054386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654728, 29.465456, 37.143654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018954, -0.236336, 0.971486,
		0.912035, 0.402222, 0.080056,
		-0.409673, 0.884513, 0.223171,
		35.531826, 29.730810, 37.210606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215458, 29.399200, 37.571922>,  <35.818596, 29.111650, 37.054386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215458, 29.399200, 37.571922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859829, 29.580919, 37.594410>,  <35.646450, 29.689951, 37.607903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859829, 29.580919, 37.594410>,  <36.215458, 29.399200, 37.571922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859829, 29.580919, 37.594410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010565, -0.143135, 0.989647,
		0.457638, 0.879277, 0.132058,
		-0.889076, 0.454295, 0.056215,
		35.593105, 29.717207, 37.611275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165794, 29.775381, 38.204712>,  <36.215458, 29.399200, 37.571922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165794, 29.775381, 38.204712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771786, 29.753777, 38.139202>,  <35.535381, 29.740814, 38.099895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771786, 29.753777, 38.139202>,  <36.165794, 29.775381, 38.204712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771786, 29.753777, 38.139202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160282, -0.063624, 0.985019,
		-0.063624, 0.996511, 0.054014,
		-0.985019, -0.054014, -0.163771,
		35.476280, 29.737572, 38.090073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797520, 30.334311, 38.615047>,  <36.165794, 29.775381, 38.204712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797520, 30.334311, 38.615047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527023, 30.055492, 38.519688>,  <35.364727, 29.888203, 38.462471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527023, 30.055492, 38.519688>,  <35.797520, 30.334311, 38.615047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527023, 30.055492, 38.519688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214111, -0.123675, 0.968949,
		-0.704884, 0.706282, -0.065611,
		-0.676237, -0.697044, -0.238399,
		35.324154, 29.846378, 38.448170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204700, 30.516447, 38.995777>,  <35.797520, 30.334311, 38.615047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204700, 30.516447, 38.995777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153023, 30.126436, 38.923523>,  <35.122017, 29.892429, 38.880169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153023, 30.126436, 38.923523>,  <35.204700, 30.516447, 38.995777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153023, 30.126436, 38.923523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100909, -0.168294, 0.980558,
		-0.986471, 0.144913, -0.076645,
		-0.129197, -0.975027, -0.180640,
		35.114265, 29.833929, 38.869331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550781, 30.338974, 39.290165>,  <35.204700, 30.516447, 38.995777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550781, 30.338974, 39.290165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754364, 29.995333, 39.268608>,  <34.876514, 29.789148, 39.255676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754364, 29.995333, 39.268608>,  <34.550781, 30.338974, 39.290165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754364, 29.995333, 39.268608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257437, -0.211655, 0.942830,
		-0.821394, -0.465987, -0.328888,
		0.508957, -0.859103, -0.053890,
		34.907051, 29.737602, 39.252441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185287, 30.018175, 39.677128>,  <34.550781, 30.338974, 39.290165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185287, 30.018175, 39.677128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513710, 29.790258, 39.663239>,  <34.710762, 29.653509, 39.654903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513710, 29.790258, 39.663239>,  <34.185287, 30.018175, 39.677128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513710, 29.790258, 39.663239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151946, -0.276771, 0.948847,
		-0.550256, -0.773779, -0.313822,
		0.821055, -0.569792, -0.034722,
		34.760025, 29.619322, 39.652821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984482, 29.427031, 40.024708>,  <34.185287, 30.018175, 39.677128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984482, 29.427031, 40.024708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383526, 29.454643, 40.023266>,  <34.622952, 29.471210, 40.022400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383526, 29.454643, 40.023266>,  <33.984482, 29.427031, 40.024708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383526, 29.454643, 40.023266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020090, -0.239630, 0.970657,
		0.066145, -0.968407, -0.240444,
		0.997608, 0.069035, -0.003605,
		34.682808, 29.475353, 40.022186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201862, 28.754910, 40.300617>,  <33.984482, 29.427031, 40.024708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201862, 28.754910, 40.300617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501415, 29.011181, 40.368385>,  <34.681149, 29.164944, 40.409046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501415, 29.011181, 40.368385>,  <34.201862, 28.754910, 40.300617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501415, 29.011181, 40.368385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019888, -0.277266, 0.960587,
		0.662400, -0.716001, -0.220383,
		0.748886, 0.640676, 0.169421,
		34.726082, 29.203384, 40.419212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710247, 28.454317, 40.734257>,  <34.201862, 28.754910, 40.300617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710247, 28.454317, 40.734257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789978, 28.840166, 40.803276>,  <34.837818, 29.071674, 40.844688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789978, 28.840166, 40.803276>,  <34.710247, 28.454317, 40.734257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789978, 28.840166, 40.803276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004270, -0.175228, 0.984519,
		0.979923, -0.196982, -0.030810,
		0.199331, 0.964621, 0.172551,
		34.849777, 29.129553, 40.855042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047604, 28.395548, 41.382912>,  <34.710247, 28.454317, 40.734257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047604, 28.395548, 41.382912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934616, 28.776066, 41.333527>,  <34.866821, 29.004377, 41.303894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934616, 28.776066, 41.333527>,  <35.047604, 28.395548, 41.382912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934616, 28.776066, 41.333527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152743, 0.082463, 0.984819,
		0.947037, 0.297043, 0.122011,
		-0.282473, 0.951297, -0.123467,
		34.849873, 29.061455, 41.296486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414349, 28.724598, 41.948387>,  <35.047604, 28.395548, 41.382912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414349, 28.724598, 41.948387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126652, 28.973667, 41.825119>,  <34.954033, 29.123108, 41.751160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126652, 28.973667, 41.825119>,  <35.414349, 28.724598, 41.948387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126652, 28.973667, 41.825119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298176, 0.123980, 0.946425,
		0.627519, 0.772599, 0.096494,
		-0.719243, 0.622672, -0.308171,
		34.910877, 29.160469, 41.732666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425800, 29.140938, 42.453270>,  <35.414349, 28.724598, 41.948387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425800, 29.140938, 42.453270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064072, 29.234940, 42.310738>,  <34.847034, 29.291340, 42.225216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064072, 29.234940, 42.310738>,  <35.425800, 29.140938, 42.453270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064072, 29.234940, 42.310738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325137, 0.161640, 0.931750,
		0.276561, 0.958461, -0.069767,
		-0.904323, 0.235002, -0.356335,
		34.792774, 29.305441, 42.203838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202393, 29.622522, 42.857624>,  <35.425800, 29.140938, 42.453270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202393, 29.622522, 42.857624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862217, 29.505440, 42.682774>,  <34.658112, 29.435190, 42.577866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862217, 29.505440, 42.682774>,  <35.202393, 29.622522, 42.857624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862217, 29.505440, 42.682774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480960, 0.095942, 0.871477,
		-0.213149, 0.951377, -0.222373,
		-0.850438, -0.292707, -0.437124,
		34.607086, 29.417627, 42.551636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702015, 30.104033, 43.083347>,  <35.202393, 29.622522, 42.857624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702015, 30.104033, 43.083347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476414, 29.802572, 42.948345>,  <34.341053, 29.621696, 42.867344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476414, 29.802572, 42.948345>,  <34.702015, 30.104033, 43.083347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476414, 29.802572, 42.948345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715791, 0.242383, 0.654899,
		-0.411759, 0.610951, -0.676161,
		-0.564001, -0.753651, -0.337510,
		34.307213, 29.576477, 42.847092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043736, 30.333868, 42.860474>,  <34.702015, 30.104033, 43.083347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043736, 30.333868, 42.860474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943604, 29.954765, 42.939556>,  <33.883522, 29.727303, 42.987007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943604, 29.954765, 42.939556>,  <34.043736, 30.333868, 42.860474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943604, 29.954765, 42.939556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924972, 0.294438, 0.240275,
		-0.285935, -0.122724, -0.950358,
		-0.250334, -0.947758, 0.197707,
		33.868504, 29.670439, 42.998867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281490, 30.287493, 42.629868>,  <34.043736, 30.333868, 42.860474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281490, 30.287493, 42.629868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378170, 29.995499, 42.885590>,  <33.436176, 29.820303, 43.039021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378170, 29.995499, 42.885590>,  <33.281490, 30.287493, 42.629868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378170, 29.995499, 42.885590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847901, 0.161494, 0.504960,
		-0.471856, -0.664110, -0.579922,
		0.241695, -0.729984, 0.639302,
		33.450680, 29.776503, 43.077381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741573, 30.046103, 42.825489>,  <33.281490, 30.287493, 42.629868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741573, 30.046103, 42.825489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965378, 29.906796, 43.126331>,  <33.099659, 29.823212, 43.306835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965378, 29.906796, 43.126331>,  <32.741573, 30.046103, 42.825489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965378, 29.906796, 43.126331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683281, 0.319796, 0.656398,
		-0.469121, -0.881158, -0.059035,
		0.559511, -0.348268, 0.752101,
		33.133232, 29.802315, 43.351963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292385, 29.716160, 43.278713>,  <32.741573, 30.046103, 42.825489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292385, 29.716160, 43.278713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621956, 29.766233, 43.499794>,  <32.819698, 29.796278, 43.632442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621956, 29.766233, 43.499794>,  <32.292385, 29.716160, 43.278713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621956, 29.766233, 43.499794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564251, 0.090655, 0.820611,
		0.052614, -0.987984, 0.145322,
		0.823925, 0.125173, 0.552702,
		32.869133, 29.803787, 43.665604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291145, 29.262117, 43.850571>,  <32.292385, 29.716160, 43.278713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291145, 29.262117, 43.850571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486107, 29.598021, 43.946274>,  <32.603085, 29.799562, 44.003696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486107, 29.598021, 43.946274>,  <32.291145, 29.262117, 43.850571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486107, 29.598021, 43.946274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554115, 0.085705, 0.828017,
		0.674826, -0.536157, 0.507095,
		0.487408, 0.839756, 0.239256,
		32.632328, 29.849947, 44.018051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354851, 29.155748, 44.551537>,  <32.291145, 29.262117, 43.850571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354851, 29.155748, 44.551537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442730, 29.544218, 44.514530>,  <32.495457, 29.777300, 44.492329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442730, 29.544218, 44.514530>,  <32.354851, 29.155748, 44.551537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442730, 29.544218, 44.514530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538427, 0.199784, 0.818647,
		0.813530, -0.130042, 0.566797,
		0.219695, 0.971172, -0.092512,
		32.508640, 29.835569, 44.486778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489090, 29.314188, 45.276791>,  <32.354851, 29.155748, 44.551537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489090, 29.314188, 45.276791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452084, 29.666828, 45.091652>,  <32.429882, 29.878412, 44.980568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452084, 29.666828, 45.091652>,  <32.489090, 29.314188, 45.276791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452084, 29.666828, 45.091652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299270, 0.418727, 0.857382,
		0.949673, 0.217834, 0.225099,
		-0.092513, 0.881598, -0.462845,
		32.424332, 29.931307, 44.952797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910339, 29.782934, 45.703941>,  <32.489090, 29.314188, 45.276791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910339, 29.782934, 45.703941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666302, 30.014629, 45.487698>,  <32.519878, 30.153646, 45.357952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666302, 30.014629, 45.487698>,  <32.910339, 29.782934, 45.703941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666302, 30.014629, 45.487698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193587, 0.552658, 0.810613,
		0.768313, 0.599209, -0.225042,
		-0.610098, 0.579239, -0.540613,
		32.483273, 30.188400, 45.325512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169323, 30.512434, 45.661396>,  <32.910339, 29.782934, 45.703941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169323, 30.512434, 45.661396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771156, 30.517944, 45.623554>,  <32.532257, 30.521250, 45.600849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771156, 30.517944, 45.623554>,  <33.169323, 30.512434, 45.661396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771156, 30.517944, 45.623554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075808, 0.489237, 0.868850,
		0.058255, 0.872042, -0.485951,
		-0.995419, 0.013776, -0.094608,
		32.472530, 30.522078, 45.595173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004669, 31.141218, 45.890793>,  <33.169323, 30.512434, 45.661396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004669, 31.141218, 45.890793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633755, 30.991785, 45.900467>,  <32.411205, 30.902124, 45.906269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633755, 30.991785, 45.900467>,  <33.004669, 31.141218, 45.890793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633755, 30.991785, 45.900467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204994, 0.560751, 0.802207,
		-0.313251, 0.738914, -0.596557,
		-0.927282, -0.373582, 0.024183,
		32.355572, 30.879711, 45.907722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505295, 31.653238, 45.924179>,  <33.004669, 31.141218, 45.890793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505295, 31.653238, 45.924179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329025, 31.332329, 46.085258>,  <32.223263, 31.139784, 46.181908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329025, 31.332329, 46.085258>,  <32.505295, 31.653238, 45.924179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329025, 31.332329, 46.085258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161676, 0.512204, 0.843509,
		-0.882988, 0.306604, -0.355423,
		-0.440673, -0.802272, 0.402700,
		32.196823, 31.091648, 46.206070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934574, 32.015938, 46.275398>,  <32.505295, 31.653238, 45.924179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934574, 32.015938, 46.275398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950706, 31.652260, 46.441166>,  <31.960386, 31.434053, 46.540627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950706, 31.652260, 46.441166>,  <31.934574, 32.015938, 46.275398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950706, 31.652260, 46.441166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086585, 0.410020, 0.907957,
		-0.995428, -0.072500, -0.062187,
		0.040329, -0.909190, 0.414423,
		31.962805, 31.379503, 46.565495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265839, 31.972334, 46.739422>,  <31.934574, 32.015938, 46.275398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265839, 31.972334, 46.739422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498724, 31.669785, 46.858704>,  <31.638454, 31.488255, 46.930275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498724, 31.669785, 46.858704>,  <31.265839, 31.972334, 46.739422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498724, 31.669785, 46.858704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259553, 0.174677, 0.949800,
		-0.770495, -0.630384, -0.094621,
		0.582211, -0.756375, 0.298206,
		31.673388, 31.442871, 46.948166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967501, 31.503153, 47.200848>,  <31.265839, 31.972334, 46.739422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967501, 31.503153, 47.200848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347118, 31.438011, 47.308765>,  <31.574890, 31.398926, 47.373516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347118, 31.438011, 47.308765>,  <30.967501, 31.503153, 47.200848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347118, 31.438011, 47.308765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246434, 0.150104, 0.957465,
		-0.196425, -0.975165, 0.102323,
		0.949045, -0.162854, 0.269798,
		31.631832, 31.389154, 47.389706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926613, 31.048704, 47.762711>,  <30.967501, 31.503153, 47.200848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926613, 31.048704, 47.762711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294502, 31.205311, 47.774151>,  <31.515236, 31.299274, 47.781017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294502, 31.205311, 47.774151>,  <30.926613, 31.048704, 47.762711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294502, 31.205311, 47.774151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095363, 0.152151, 0.983746,
		0.380803, -0.907504, 0.177273,
		0.919725, 0.391518, 0.028603,
		31.570419, 31.322765, 47.782730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425705, 30.739300, 48.318062>,  <30.926613, 31.048704, 47.762711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425705, 30.739300, 48.318062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543694, 31.117355, 48.261909>,  <31.614487, 31.344189, 48.228218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543694, 31.117355, 48.261909>,  <31.425705, 30.739300, 48.318062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543694, 31.117355, 48.261909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025138, 0.154542, 0.987666,
		0.955176, -0.287802, 0.069344,
		0.294969, 0.945138, -0.140381,
		31.632185, 31.400896, 48.219795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822617, 30.846966, 48.893711>,  <31.425705, 30.739300, 48.318062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822617, 30.846966, 48.893711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768806, 31.215269, 48.747227>,  <31.736521, 31.436251, 48.659336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768806, 31.215269, 48.747227>,  <31.822617, 30.846966, 48.893711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768806, 31.215269, 48.747227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028662, 0.373032, 0.927376,
		0.990496, 0.114258, -0.076573,
		-0.134524, 0.920756, -0.366212,
		31.728449, 31.491495, 48.637363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280991, 31.261988, 49.258801>,  <31.822617, 30.846966, 48.893711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280991, 31.261988, 49.258801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002399, 31.513218, 49.119984>,  <31.835245, 31.663956, 49.036694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002399, 31.513218, 49.119984>,  <32.280991, 31.261988, 49.258801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002399, 31.513218, 49.119984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038259, 0.450443, 0.891985,
		0.716557, 0.634526, -0.289694,
		-0.696478, 0.628075, -0.347044,
		31.793455, 31.701641, 49.015869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446739, 32.031822, 49.475674>,  <32.280991, 31.261988, 49.258801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446739, 32.031822, 49.475674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061214, 32.046520, 49.370056>,  <31.829899, 32.055340, 49.306686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061214, 32.046520, 49.370056>,  <32.446739, 32.031822, 49.475674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061214, 32.046520, 49.370056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200713, 0.551816, 0.809452,
		0.175447, 0.833156, -0.524471,
		-0.963812, 0.036748, -0.264039,
		31.772072, 32.057545, 49.290844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278973, 32.676582, 49.525970>,  <32.446739, 32.031822, 49.475674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278973, 32.676582, 49.525970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935471, 32.472786, 49.547718>,  <31.729370, 32.350506, 49.560768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935471, 32.472786, 49.547718>,  <32.278973, 32.676582, 49.525970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935471, 32.472786, 49.547718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219272, 0.461324, 0.859709,
		-0.463097, 0.726359, -0.507882,
		-0.858755, -0.509493, 0.054368,
		31.677843, 32.319939, 49.564030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378345, 33.348885, 49.713871>,  <32.278973, 32.676582, 49.525970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378345, 33.348885, 49.713871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500370, 33.722748, 49.640823>,  <32.573586, 33.947067, 49.596996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500370, 33.722748, 49.640823>,  <32.378345, 33.348885, 49.713871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500370, 33.722748, 49.640823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636893, -0.342795, -0.690550,
		-0.708030, 0.094350, -0.699851,
		0.305059, 0.934660, -0.182619,
		32.591888, 34.003147, 49.586037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411541, 33.362549, 48.978191>,  <32.378345, 33.348885, 49.713871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411541, 33.362549, 48.978191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602989, 33.687668, 49.111034>,  <32.717857, 33.882740, 49.190739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602989, 33.687668, 49.111034>,  <32.411541, 33.362549, 48.978191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602989, 33.687668, 49.111034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576047, -0.005222, -0.817400,
		-0.662643, 0.582528, -0.470706,
		0.478617, 0.812794, 0.332103,
		32.746574, 33.931507, 49.210667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390747, 33.708912, 48.330959>,  <32.411541, 33.362549, 48.978191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390747, 33.708912, 48.330959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683990, 33.840435, 48.569099>,  <32.859936, 33.919350, 48.711983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683990, 33.840435, 48.569099>,  <32.390747, 33.708912, 48.330959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683990, 33.840435, 48.569099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639735, -0.036252, -0.767740,
		-0.230856, 0.943701, -0.236926,
		0.733106, 0.328808, 0.595349,
		32.903923, 33.939075, 48.747704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778053, 34.267284, 47.929096>,  <32.390747, 33.708912, 48.330959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778053, 34.267284, 47.929096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015862, 34.118870, 48.214439>,  <33.158546, 34.029819, 48.385647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015862, 34.118870, 48.214439>,  <32.778053, 34.267284, 47.929096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015862, 34.118870, 48.214439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788519, 0.095324, -0.607578,
		0.157434, 0.923712, 0.349242,
		0.594519, -0.371037, 0.713357,
		33.194218, 34.007557, 48.428448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333527, 34.789570, 48.005913>,  <32.778053, 34.267284, 47.929096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333527, 34.789570, 48.005913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457699, 34.440548, 48.156792>,  <33.532200, 34.231136, 48.247318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457699, 34.440548, 48.156792>,  <33.333527, 34.789570, 48.005913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457699, 34.440548, 48.156792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853453, 0.081076, -0.514825,
		0.418632, 0.481740, 0.769853,
		0.310428, -0.872555, 0.377202,
		33.550827, 34.178780, 48.269951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045692, 34.903576, 48.169868>,  <33.333527, 34.789570, 48.005913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045692, 34.903576, 48.169868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004013, 34.507305, 48.134750>,  <33.979004, 34.269543, 48.113678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004013, 34.507305, 48.134750>,  <34.045692, 34.903576, 48.169868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004013, 34.507305, 48.134750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818230, -0.035209, -0.573812,
		0.565369, -0.131630, 0.814268,
		-0.104200, -0.990673, -0.087798,
		33.972752, 34.210102, 48.108410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623501, 34.571434, 48.378235>,  <34.045692, 34.903576, 48.169868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623501, 34.571434, 48.378235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446709, 34.308975, 48.133572>,  <34.340633, 34.151501, 47.986774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446709, 34.308975, 48.133572>,  <34.623501, 34.571434, 48.378235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446709, 34.308975, 48.133572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794677, 0.029885, -0.606296,
		0.416099, -0.754040, 0.508217,
		-0.441983, -0.656148, -0.611654,
		34.314114, 34.112129, 47.950077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188553, 34.125816, 48.081219>,  <34.623501, 34.571434, 48.378235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188553, 34.125816, 48.081219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868126, 34.046055, 47.855469>,  <34.675869, 33.998196, 47.720016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868126, 34.046055, 47.855469>,  <35.188553, 34.125816, 48.081219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868126, 34.046055, 47.855469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597707, -0.215911, -0.772094,
		0.032107, -0.955834, 0.292148,
		-0.801072, -0.199408, -0.564376,
		34.627804, 33.986233, 47.686157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415401, 33.603485, 47.668358>,  <35.188553, 34.125816, 48.081219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415401, 33.603485, 47.668358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090969, 33.725140, 47.468498>,  <34.896309, 33.798134, 47.348583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090969, 33.725140, 47.468498>,  <35.415401, 33.603485, 47.668358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090969, 33.725140, 47.468498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404537, -0.325312, -0.854706,
		-0.422490, -0.895361, 0.140819,
		-0.811080, 0.304139, -0.499648,
		34.847645, 33.816380, 47.318604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216343, 33.090225, 47.258907>,  <35.415401, 33.603485, 47.668358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216343, 33.090225, 47.258907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062611, 33.420071, 47.092869>,  <34.970371, 33.617977, 46.993244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062611, 33.420071, 47.092869>,  <35.216343, 33.090225, 47.258907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062611, 33.420071, 47.092869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401443, -0.255617, -0.879490,
		-0.831342, -0.504656, -0.232792,
		-0.384335, 0.824610, -0.415096,
		34.947311, 33.667454, 46.968342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054138, 32.839401, 46.614090>,  <35.216343, 33.090225, 47.258907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054138, 32.839401, 46.614090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075882, 33.238594, 46.601013>,  <35.088928, 33.478111, 46.593166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075882, 33.238594, 46.601013>,  <35.054138, 32.839401, 46.614090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075882, 33.238594, 46.601013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459317, -0.054068, -0.886625,
		-0.886607, 0.033182, -0.461331,
		0.054363, 0.997986, -0.032696,
		35.092190, 33.537991, 46.591206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792107, 32.987411, 46.047905>,  <35.054138, 32.839401, 46.614090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792107, 32.987411, 46.047905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003071, 33.319645, 46.119419>,  <35.129650, 33.518986, 46.162327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003071, 33.319645, 46.119419>,  <34.792107, 32.987411, 46.047905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003071, 33.319645, 46.119419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367539, -0.033325, -0.929411,
		-0.766000, 0.555889, -0.322850,
		0.527408, 0.830588, 0.178784,
		35.161293, 33.568821, 46.173054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613491, 33.519070, 45.511028>,  <34.792107, 32.987411, 46.047905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613491, 33.519070, 45.511028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990944, 33.539986, 45.641766>,  <35.217415, 33.552536, 45.720207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990944, 33.539986, 45.641766>,  <34.613491, 33.519070, 45.511028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990944, 33.539986, 45.641766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330986, -0.156474, -0.930572,
		0.002483, 0.986297, -0.164961,
		0.943633, 0.052289, 0.326839,
		35.274033, 33.555672, 45.739819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938492, 33.840401, 44.972160>,  <34.613491, 33.519070, 45.511028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938492, 33.840401, 44.972160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205917, 33.643799, 45.195389>,  <35.366371, 33.525837, 45.329327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205917, 33.643799, 45.195389>,  <34.938492, 33.840401, 44.972160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205917, 33.643799, 45.195389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424366, -0.364101, -0.829062,
		0.610684, 0.791107, -0.034846,
		0.668565, -0.491508, 0.558069,
		35.406487, 33.496346, 45.362808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536541, 33.991783, 44.767601>,  <34.938492, 33.840401, 44.972160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536541, 33.991783, 44.767601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591122, 33.629852, 44.928928>,  <35.623871, 33.412693, 45.025726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591122, 33.629852, 44.928928>,  <35.536541, 33.991783, 44.767601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591122, 33.629852, 44.928928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461591, -0.302160, -0.834046,
		0.876536, 0.299976, 0.376430,
		0.136451, -0.904828, 0.403320,
		35.632057, 33.358402, 45.049923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247334, 33.830158, 44.642242>,  <35.536541, 33.991783, 44.767601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247334, 33.830158, 44.642242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073513, 33.474823, 44.701588>,  <35.969219, 33.261620, 44.737194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073513, 33.474823, 44.701588>,  <36.247334, 33.830158, 44.642242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073513, 33.474823, 44.701588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267568, -0.284624, -0.920541,
		0.859983, -0.360328, 0.361376,
		-0.434554, -0.888342, 0.148359,
		35.943146, 33.208321, 44.746094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581688, 33.451580, 44.303967>,  <36.247334, 33.830158, 44.642242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581688, 33.451580, 44.303967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275723, 33.202995, 44.371731>,  <36.092144, 33.053844, 44.412388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275723, 33.202995, 44.371731>,  <36.581688, 33.451580, 44.303967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275723, 33.202995, 44.371731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206186, -0.485391, -0.849637,
		0.610247, -0.614964, 0.499417,
		-0.764909, -0.621461, 0.169412,
		36.046249, 33.016556, 44.422554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869179, 32.814842, 44.130768>,  <36.581688, 33.451580, 44.303967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869179, 32.814842, 44.130768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476871, 32.741032, 44.105301>,  <36.241489, 32.696747, 44.090019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476871, 32.741032, 44.105301>,  <36.869179, 32.814842, 44.130768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476871, 32.741032, 44.105301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132913, -0.392417, -0.910134,
		0.142957, -0.901088, 0.409394,
		-0.980764, -0.184524, -0.063667,
		36.182644, 32.685673, 44.086201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725517, 32.056515, 43.957291>,  <36.869179, 32.814842, 44.130768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725517, 32.056515, 43.957291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403038, 32.255356, 43.828964>,  <36.209549, 32.374660, 43.751968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403038, 32.255356, 43.828964>,  <36.725517, 32.056515, 43.957291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403038, 32.255356, 43.828964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080571, -0.444952, -0.891923,
		-0.586130, -0.744918, 0.318669,
		-0.806201, 0.497107, -0.320818,
		36.161179, 32.404488, 43.732719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343834, 31.569695, 43.544811>,  <36.725517, 32.056515, 43.957291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343834, 31.569695, 43.544811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177422, 31.920938, 43.450287>,  <36.077576, 32.131683, 43.393574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177422, 31.920938, 43.450287>,  <36.343834, 31.569695, 43.544811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177422, 31.920938, 43.450287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185511, -0.336357, -0.923282,
		-0.890229, -0.340273, 0.302832,
		-0.416027, 0.878111, -0.236310,
		36.052612, 32.184372, 43.379395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659603, 31.454727, 43.384659>,  <36.343834, 31.569695, 43.544811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659603, 31.454727, 43.384659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788963, 31.777924, 43.187656>,  <35.866577, 31.971842, 43.069454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788963, 31.777924, 43.187656>,  <35.659603, 31.454727, 43.384659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788963, 31.777924, 43.187656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252443, -0.427941, -0.867836,
		-0.911968, 0.404986, 0.065576,
		0.323399, 0.807993, -0.492505,
		35.885983, 32.020321, 43.039906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240608, 31.417727, 42.717861>,  <35.659603, 31.454727, 43.384659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240608, 31.417727, 42.717861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530869, 31.686441, 42.658352>,  <35.705025, 31.847670, 42.622646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530869, 31.686441, 42.658352>,  <35.240608, 31.417727, 42.717861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530869, 31.686441, 42.658352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032642, -0.249589, -0.967802,
		-0.687288, 0.697430, -0.203043,
		0.725652, 0.671786, -0.148774,
		35.748566, 31.887978, 42.613720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084766, 31.698088, 42.042095>,  <35.240608, 31.417727, 42.717861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084766, 31.698088, 42.042095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475811, 31.744875, 42.112068>,  <35.710438, 31.772947, 42.154053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475811, 31.744875, 42.112068>,  <35.084766, 31.698088, 42.042095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475811, 31.744875, 42.112068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199567, -0.251666, -0.947015,
		-0.066748, 0.960720, -0.269374,
		0.977608, 0.116970, 0.174930,
		35.769093, 31.779966, 42.164547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255795, 32.167706, 41.489704>,  <35.084766, 31.698088, 42.042095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255795, 32.167706, 41.489704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587444, 31.990702, 41.626366>,  <35.786434, 31.884499, 41.708363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587444, 31.990702, 41.626366>,  <35.255795, 32.167706, 41.489704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587444, 31.990702, 41.626366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278815, -0.202396, -0.938775,
		0.484570, 0.873623, -0.044433,
		0.829129, -0.442513, 0.341654,
		35.836182, 31.857948, 41.728863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831398, 32.499599, 41.160759>,  <35.255795, 32.167706, 41.489704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831398, 32.499599, 41.160759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952023, 32.132385, 41.263729>,  <36.024399, 31.912056, 41.325512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952023, 32.132385, 41.263729>,  <35.831398, 32.499599, 41.160759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952023, 32.132385, 41.263729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412388, -0.117839, -0.903355,
		0.859648, 0.378578, 0.343051,
		0.301566, -0.918037, 0.257421,
		36.042492, 31.856974, 41.340954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519333, 32.465843, 40.922718>,  <35.831398, 32.499599, 41.160759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519333, 32.465843, 40.922718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407837, 32.086899, 40.985718>,  <36.340939, 31.859531, 41.023518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407837, 32.086899, 40.985718>,  <36.519333, 32.465843, 40.922718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407837, 32.086899, 40.985718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331848, -0.248908, -0.909902,
		0.901212, -0.201357, 0.383761,
		-0.278736, -0.947365, 0.157499,
		36.324215, 31.802689, 41.032967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145103, 32.090050, 40.861252>,  <36.519333, 32.465843, 40.922718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145103, 32.090050, 40.861252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833004, 31.849010, 40.794209>,  <36.645744, 31.704388, 40.753983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833004, 31.849010, 40.794209>,  <37.145103, 32.090050, 40.861252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833004, 31.849010, 40.794209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453375, -0.360274, -0.815263,
		0.430892, -0.712094, 0.554306,
		-0.780246, -0.602598, -0.167607,
		36.598930, 31.668232, 40.743927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370365, 31.455975, 40.751648>,  <37.145103, 32.090050, 40.861252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370365, 31.455975, 40.751648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007881, 31.415562, 40.587418>,  <36.790390, 31.391314, 40.488880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007881, 31.415562, 40.587418>,  <37.370365, 31.455975, 40.751648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007881, 31.415562, 40.587418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411998, -0.429287, -0.803723,
		-0.095051, -0.897499, 0.430650,
		-0.906213, -0.101032, -0.410572,
		36.736015, 31.385252, 40.464245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348610, 30.836040, 40.441391>,  <37.370365, 31.455975, 40.751648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348610, 30.836040, 40.441391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048481, 31.034796, 40.266979>,  <36.868404, 31.154049, 40.162331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048481, 31.034796, 40.266979>,  <37.348610, 30.836040, 40.441391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048481, 31.034796, 40.266979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301168, -0.330224, -0.894567,
		-0.588489, -0.802528, 0.098126,
		-0.750319, 0.496891, -0.436029,
		36.823387, 31.183863, 40.136169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108467, 30.389931, 39.862225>,  <37.348610, 30.836040, 40.441391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108467, 30.389931, 39.862225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955067, 30.742374, 39.751541>,  <36.863026, 30.953842, 39.685131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955067, 30.742374, 39.751541>,  <37.108467, 30.389931, 39.862225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955067, 30.742374, 39.751541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198159, -0.214132, -0.956494,
		-0.902030, -0.421651, -0.092480,
		-0.383504, 0.881112, -0.276707,
		36.840015, 31.006708, 39.668530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702095, 30.198147, 39.302387>,  <37.108467, 30.389931, 39.862225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702095, 30.198147, 39.302387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781029, 30.589621, 39.279636>,  <36.828388, 30.824505, 39.265987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781029, 30.589621, 39.279636>,  <36.702095, 30.198147, 39.302387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781029, 30.589621, 39.279636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369948, -0.128073, -0.920182,
		-0.907852, 0.160546, -0.387336,
		0.197339, 0.978684, -0.056878,
		36.840229, 30.883226, 39.262573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517529, 30.443523, 38.640797>,  <36.702095, 30.198147, 39.302387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517529, 30.443523, 38.640797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781010, 30.706871, 38.786484>,  <36.939098, 30.864880, 38.873898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781010, 30.706871, 38.786484>,  <36.517529, 30.443523, 38.640797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781010, 30.706871, 38.786484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447631, 0.046178, -0.893025,
		-0.604759, 0.751277, -0.264289,
		0.658705, 0.658369, 0.364221,
		36.978622, 30.904383, 38.895752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645969, 30.899042, 38.036552>,  <36.517529, 30.443523, 38.640797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645969, 30.899042, 38.036552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948578, 30.970461, 38.288200>,  <37.130142, 31.013311, 38.439190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948578, 30.970461, 38.288200>,  <36.645969, 30.899042, 38.036552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948578, 30.970461, 38.288200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634244, 0.034145, -0.772379,
		-0.159386, 0.983339, -0.087410,
		0.756526, 0.178545, 0.629119,
		37.175537, 31.024025, 38.476936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987904, 31.455530, 37.671673>,  <36.645969, 30.899042, 38.036552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987904, 31.455530, 37.671673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252186, 31.300226, 37.928646>,  <37.410755, 31.207045, 38.082829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252186, 31.300226, 37.928646>,  <36.987904, 31.455530, 37.671673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252186, 31.300226, 37.928646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746538, 0.250497, -0.616386,
		0.078391, 0.886851, 0.455357,
		0.660709, -0.388261, 0.642431,
		37.450397, 31.183748, 38.121376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589367, 31.914019, 37.803696>,  <36.987904, 31.455530, 37.671673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589367, 31.914019, 37.803696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745056, 31.553679, 37.880611>,  <37.838470, 31.337475, 37.926762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745056, 31.553679, 37.880611>,  <37.589367, 31.914019, 37.803696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745056, 31.553679, 37.880611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744725, 0.184891, -0.641248,
		0.542116, 0.392791, 0.742849,
		0.389223, -0.900850, 0.192290,
		37.861824, 31.283424, 37.938297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219692, 32.091217, 37.901817>,  <37.589367, 31.914019, 37.803696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219692, 32.091217, 37.901817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230881, 31.695478, 37.844677>,  <38.237595, 31.458035, 37.810394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230881, 31.695478, 37.844677>,  <38.219692, 32.091217, 37.901817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230881, 31.695478, 37.844677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805168, 0.106985, -0.583317,
		0.592387, -0.098704, 0.799584,
		0.027968, -0.989349, -0.142850,
		38.239269, 31.398674, 37.801823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961639, 31.857048, 38.088463>,  <38.219692, 32.091217, 37.901817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961639, 31.857048, 38.088463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816582, 31.565344, 37.856369>,  <38.729549, 31.390322, 37.717113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816582, 31.565344, 37.856369>,  <38.961639, 31.857048, 38.088463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816582, 31.565344, 37.856369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878034, -0.058706, -0.474983,
		0.312324, -0.681712, 0.661606,
		-0.362641, -0.729261, -0.580231,
		38.707790, 31.346565, 37.682301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519539, 31.324795, 38.102177>,  <38.961639, 31.857048, 38.088463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519539, 31.324795, 38.102177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292919, 31.291708, 37.774231>,  <39.156948, 31.271856, 37.577461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292919, 31.291708, 37.774231>,  <39.519539, 31.324795, 38.102177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292919, 31.291708, 37.774231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804307, 0.160873, -0.572022,
		0.179210, -0.983503, -0.024613,
		-0.566545, -0.082716, -0.819869,
		39.122955, 31.266893, 37.528271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996647, 31.078745, 37.647011>,  <39.519539, 31.324795, 38.102177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996647, 31.078745, 37.647011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679203, 31.180859, 37.426102>,  <39.488735, 31.242126, 37.293556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679203, 31.180859, 37.426102>,  <39.996647, 31.078745, 37.647011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679203, 31.180859, 37.426102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595923, 0.143110, -0.790187,
		-0.122689, -0.956216, -0.265706,
		-0.793614, 0.255287, -0.552273,
		39.441120, 31.257444, 37.260418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063271, 30.693790, 37.033245>,  <39.996647, 31.078745, 37.647011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063271, 30.693790, 37.033245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848827, 31.024542, 36.965302>,  <39.720161, 31.222994, 36.924534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848827, 31.024542, 36.965302>,  <40.063271, 30.693790, 37.033245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848827, 31.024542, 36.965302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764533, 0.390310, -0.512979,
		-0.357873, -0.404881, -0.841427,
		-0.536113, 0.826880, -0.169863,
		39.687992, 31.272606, 36.914341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216251, 30.915005, 36.367474>,  <40.063271, 30.693790, 37.033245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216251, 30.915005, 36.367474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090107, 31.258802, 36.528378>,  <40.014420, 31.465082, 36.624920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090107, 31.258802, 36.528378>,  <40.216251, 30.915005, 36.367474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090107, 31.258802, 36.528378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683267, 0.499820, -0.532284,
		-0.658554, 0.106991, -0.744889,
		-0.315361, 0.859496, 0.402261,
		39.995499, 31.516651, 36.649055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126995, 31.387743, 35.718513>,  <40.216251, 30.915005, 36.367474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126995, 31.387743, 35.718513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269619, 31.523569, 36.066666>,  <40.355194, 31.605064, 36.275555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269619, 31.523569, 36.066666>,  <40.126995, 31.387743, 35.718513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269619, 31.523569, 36.066666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792461, 0.383509, -0.474265,
		-0.494842, 0.858845, -0.132349,
		0.356563, 0.339567, 0.870377,
		40.376587, 31.625439, 36.327778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377350, 32.090778, 35.560421>,  <40.126995, 31.387743, 35.718513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377350, 32.090778, 35.560421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549538, 31.960112, 35.896988>,  <40.652851, 31.881712, 36.098927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549538, 31.960112, 35.896988>,  <40.377350, 32.090778, 35.560421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549538, 31.960112, 35.896988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847416, 0.467236, -0.252145,
		-0.310774, 0.821572, 0.477952,
		0.430472, -0.326664, 0.841418,
		40.678680, 31.862112, 36.149414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518196, 32.634109, 35.975368>,  <40.377350, 32.090778, 35.560421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518196, 32.634109, 35.975368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761990, 32.322960, 36.036602>,  <40.908264, 32.136269, 36.073341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761990, 32.322960, 36.036602>,  <40.518196, 32.634109, 35.975368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761990, 32.322960, 36.036602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778050, 0.549819, -0.303871,
		0.152203, 0.304315, 0.940333,
		0.609485, -0.777876, 0.153088,
		40.944836, 32.089596, 36.082527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017944, 32.767265, 36.554855>,  <40.518196, 32.634109, 35.975368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017944, 32.767265, 36.554855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.146446, 32.526649, 36.262295>,  <41.223549, 32.382282, 36.086758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.146446, 32.526649, 36.262295>,  <41.017944, 32.767265, 36.554855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146446, 32.526649, 36.262295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790984, 0.595124, -0.142028,
		0.520710, -0.532898, 0.666994,
		0.321258, -0.601537, -0.731401,
		41.242825, 32.346188, 36.042873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757923, 32.592152, 36.650543>,  <41.017944, 32.767265, 36.554855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757923, 32.592152, 36.650543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.648472, 32.586376, 36.265854>,  <41.582802, 32.582912, 36.035038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.648472, 32.586376, 36.265854>,  <41.757923, 32.592152, 36.650543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.648472, 32.586376, 36.265854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905221, 0.334116, -0.262567,
		0.325118, -0.942421, -0.078357,
		-0.273629, -0.014435, -0.961727,
		41.566383, 32.582047, 35.977337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.449619, 32.811249, 36.799374>,  <41.757923, 32.592152, 36.650543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.449619, 32.811249, 36.799374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311798, 32.933399, 36.444290>,  <42.229107, 33.006687, 36.231239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311798, 32.933399, 36.444290>,  <42.449619, 32.811249, 36.799374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.311798, 32.933399, 36.444290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894055, 0.395099, -0.211099,
		0.286269, -0.866397, -0.409154,
		-0.344552, 0.305375, -0.887711,
		42.208431, 33.025013, 36.177979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.152050, 32.784573, 37.054123>,  <42.449619, 32.811249, 36.799374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.152050, 32.784573, 37.054123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.517231, 32.877880, 36.920197>,  <43.736340, 32.933865, 36.839840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.517231, 32.877880, 36.920197>,  <43.152050, 32.784573, 37.054123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.517231, 32.877880, 36.920197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251730, 0.967721, -0.012187,
		0.321165, 0.095410, 0.942205,
		0.912954, 0.233267, -0.334815,
		43.791119, 32.947861, 36.819752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.508930, 33.280922, 37.527031>,  <43.152050, 32.784573, 37.054123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.508930, 33.280922, 37.527031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.682529, 33.349697, 37.173290>,  <43.786690, 33.390961, 36.961044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.682529, 33.349697, 37.173290>,  <43.508930, 33.280922, 37.527031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.682529, 33.349697, 37.173290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112166, 0.984294, 0.136322,
		0.893903, 0.040031, 0.446471,
		0.434001, 0.171937, -0.884353,
		43.812729, 33.401279, 36.907986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.903923, 33.955662, 37.604584>,  <43.508930, 33.280922, 37.527031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.903923, 33.955662, 37.604584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.876583, 33.861675, 37.216743>,  <43.860180, 33.805283, 36.984039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.876583, 33.861675, 37.216743>,  <43.903923, 33.955662, 37.604584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.876583, 33.861675, 37.216743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082785, 0.969855, -0.229191,
		0.994221, 0.064603, -0.085742,
		-0.068351, -0.234965, -0.969598,
		43.856079, 33.791187, 36.925865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.455601, 34.338089, 37.282028>,  <43.903923, 33.955662, 37.604584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.455601, 34.338089, 37.282028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.144814, 34.266476, 37.040611>,  <43.958340, 34.223507, 36.895760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.144814, 34.266476, 37.040611>,  <44.455601, 34.338089, 37.282028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.144814, 34.266476, 37.040611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083299, 0.979516, -0.183331,
		0.624002, -0.092168, -0.775968,
		-0.776970, -0.179036, -0.603542,
		43.911724, 34.212765, 36.859547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.538460, 34.752125, 36.675274>,  <44.455601, 34.338089, 37.282028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.538460, 34.752125, 36.675274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.148972, 34.665482, 36.703403>,  <43.915279, 34.613495, 36.720280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.148972, 34.665482, 36.703403>,  <44.538460, 34.752125, 36.675274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.148972, 34.665482, 36.703403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227712, 0.930805, -0.285917,
		-0.003525, -0.294418, -0.955670,
		-0.973722, -0.216610, 0.070324,
		43.856853, 34.600498, 36.724503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.208759, 35.057705, 36.077900>,  <44.538460, 34.752125, 36.675274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.208759, 35.057705, 36.077900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.901119, 34.995476, 36.325863>,  <43.716537, 34.958138, 36.474640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.901119, 34.995476, 36.325863>,  <44.208759, 35.057705, 36.077900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.901119, 34.995476, 36.325863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352917, 0.912019, -0.208973,
		-0.532858, -0.379497, -0.756336,
		-0.769098, -0.155571, 0.619908,
		43.670391, 34.948803, 36.511837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.650135, 35.270668, 35.665497>,  <44.208759, 35.057705, 36.077900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.650135, 35.270668, 35.665497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.548218, 35.257889, 36.052086>,  <43.487068, 35.250221, 36.284039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.548218, 35.257889, 36.052086>,  <43.650135, 35.270668, 35.665497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.548218, 35.257889, 36.052086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426356, 0.900774, -0.082627,
		-0.867929, -0.433113, -0.243130,
		-0.254792, -0.031946, 0.966468,
		43.471779, 35.248306, 36.342026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949673, 35.416302, 35.677567>,  <43.650135, 35.270668, 35.665497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.949673, 35.416302, 35.677567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.065258, 35.493038, 36.052734>,  <43.134609, 35.539082, 36.277836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.065258, 35.493038, 36.052734>,  <42.949673, 35.416302, 35.677567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.065258, 35.493038, 36.052734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610822, 0.791330, 0.026327,
		-0.737155, -0.580511, 0.345845,
		0.288961, 0.191842, 0.937922,
		43.151947, 35.550591, 36.334110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359310, 35.727253, 35.994419>,  <42.949673, 35.416302, 35.677567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.359310, 35.727253, 35.994419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.629978, 35.863750, 36.255390>,  <42.792381, 35.945648, 36.411972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.629978, 35.863750, 36.255390>,  <42.359310, 35.727253, 35.994419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.629978, 35.863750, 36.255390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473363, 0.880339, 0.030506,
		-0.563949, -0.329479, 0.757235,
		0.676675, 0.341243, 0.652430,
		42.832981, 35.966122, 36.451118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.968784, 36.064465, 36.479427>,  <42.359310, 35.727253, 35.994419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.968784, 36.064465, 36.479427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333828, 36.219261, 36.532173>,  <42.552853, 36.312138, 36.563820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333828, 36.219261, 36.532173>,  <41.968784, 36.064465, 36.479427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333828, 36.219261, 36.532173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394794, 0.917972, 0.038265,
		-0.106241, -0.086981, 0.990529,
		0.912606, 0.386990, 0.131866,
		42.607609, 36.335358, 36.571732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.893600, 36.539356, 37.035172>,  <41.968784, 36.064465, 36.479427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.893600, 36.539356, 37.035172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222969, 36.641388, 36.832424>,  <42.420589, 36.702606, 36.710777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222969, 36.641388, 36.832424>,  <41.893600, 36.539356, 37.035172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.222969, 36.641388, 36.832424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245609, 0.965469, 0.086866,
		0.511523, 0.052964, 0.857636,
		0.823420, 0.255077, -0.506868,
		42.469994, 36.717911, 36.680363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086224, 37.158146, 37.350353>,  <41.893600, 36.539356, 37.035172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086224, 37.158146, 37.350353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.286205, 37.189495, 37.005356>,  <42.406197, 37.208305, 36.798355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.286205, 37.189495, 37.005356>,  <42.086224, 37.158146, 37.350353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286205, 37.189495, 37.005356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232177, 0.971571, -0.046297,
		0.834347, 0.223398, 0.503943,
		0.499959, 0.078376, -0.862495,
		42.436192, 37.213009, 36.746609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.530552, 37.699451, 37.428764>,  <42.086224, 37.158146, 37.350353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.530552, 37.699451, 37.428764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481049, 37.653652, 37.034492>,  <42.451347, 37.626171, 36.797928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481049, 37.653652, 37.034492>,  <42.530552, 37.699451, 37.428764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.481049, 37.653652, 37.034492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440318, 0.896512, -0.048859,
		0.889272, 0.427967, -0.161368,
		-0.123758, -0.114503, -0.985684,
		42.443920, 37.619301, 36.738789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.612415, 38.341194, 37.227558>,  <42.530552, 37.699451, 37.428764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.612415, 38.341194, 37.227558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.413586, 38.152252, 36.936409>,  <42.294289, 38.038887, 36.761719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.413586, 38.152252, 36.936409>,  <42.612415, 38.341194, 37.227558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.413586, 38.152252, 36.936409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622570, 0.778461, -0.080022,
		0.604421, 0.413376, -0.681026,
		-0.497073, -0.472353, -0.727874,
		42.264465, 38.010548, 36.718048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.572502, 38.847988, 36.617519>,  <42.612415, 38.341194, 37.227558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.572502, 38.847988, 36.617519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.293003, 38.562046, 36.606735>,  <42.125301, 38.390480, 36.600266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.293003, 38.562046, 36.606735>,  <42.572502, 38.847988, 36.617519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.293003, 38.562046, 36.606735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713622, 0.699181, -0.043472,
		0.049928, -0.011135, -0.998691,
		-0.698749, -0.714858, -0.026963,
		42.083378, 38.347588, 36.598648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133354, 39.141289, 36.188126>,  <42.572502, 38.847988, 36.617519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.133354, 39.141289, 36.188126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936413, 38.857166, 36.389343>,  <41.818249, 38.686695, 36.510075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936413, 38.857166, 36.389343>,  <42.133354, 39.141289, 36.188126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936413, 38.857166, 36.389343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743591, 0.643655, 0.181055,
		-0.452393, -0.284919, -0.845080,
		-0.492354, -0.710302, 0.503049,
		41.788708, 38.644077, 36.540257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431355, 39.246170, 36.006306>,  <42.133354, 39.141289, 36.188126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431355, 39.246170, 36.006306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418385, 39.019684, 36.335754>,  <41.410603, 38.883793, 36.533424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418385, 39.019684, 36.335754>,  <41.431355, 39.246170, 36.006306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418385, 39.019684, 36.335754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783948, 0.525572, 0.330454,
		-0.619980, -0.634960, -0.460924,
		-0.032424, -0.566215, 0.823620,
		41.408657, 38.849819, 36.582840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741512, 38.875172, 35.961838>,  <41.431355, 39.246170, 36.006306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741512, 38.875172, 35.961838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877598, 38.921436, 36.335121>,  <40.959248, 38.949196, 36.559090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877598, 38.921436, 36.335121>,  <40.741512, 38.875172, 35.961838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877598, 38.921436, 36.335121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832983, 0.497567, 0.242006,
		-0.436343, -0.859680, 0.265622,
		0.340213, 0.115661, 0.933208,
		40.979660, 38.956135, 36.615082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049118, 38.905605, 36.265469>,  <40.741512, 38.875172, 35.961838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049118, 38.905605, 36.265469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319313, 39.000935, 36.544586>,  <40.481430, 39.058132, 36.712055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319313, 39.000935, 36.544586>,  <40.049118, 38.905605, 36.265469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319313, 39.000935, 36.544586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676787, 0.576031, 0.458419,
		-0.292695, -0.781913, 0.550401,
		0.675492, 0.238327, 0.697790,
		40.521961, 39.072433, 36.753922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748249, 38.761147, 36.940693>,  <40.049118, 38.905605, 36.265469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748249, 38.761147, 36.940693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022133, 39.050240, 36.978283>,  <40.186462, 39.223694, 37.000839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022133, 39.050240, 36.978283>,  <39.748249, 38.761147, 36.940693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022133, 39.050240, 36.978283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689699, 0.600870, 0.404067,
		0.235565, -0.341484, 0.909889,
		0.684707, 0.722734, 0.093978,
		40.227547, 39.267059, 37.006477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629025, 39.056450, 37.614220>,  <39.748249, 38.761147, 36.940693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629025, 39.056450, 37.614220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835766, 39.332153, 37.411125>,  <39.959808, 39.497574, 37.289268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835766, 39.332153, 37.411125>,  <39.629025, 39.056450, 37.614220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835766, 39.332153, 37.411125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739978, 0.657927, 0.139878,
		0.430462, 0.303414, 0.850084,
		0.516852, 0.689255, -0.507732,
		39.990822, 39.538929, 37.258804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490688, 39.671547, 37.945446>,  <39.629025, 39.056450, 37.614220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490688, 39.671547, 37.945446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625896, 39.805943, 37.593800>,  <39.707020, 39.886581, 37.382812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625896, 39.805943, 37.593800>,  <39.490688, 39.671547, 37.945446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625896, 39.805943, 37.593800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676707, 0.735951, 0.021080,
		0.654072, 0.587781, 0.476134,
		0.338021, 0.335991, -0.879120,
		39.727303, 39.906738, 37.330063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708641, 40.394661, 38.009766>,  <39.490688, 39.671547, 37.945446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708641, 40.394661, 38.009766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662128, 40.370785, 37.613197>,  <39.634220, 40.356457, 37.375256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662128, 40.370785, 37.613197>,  <39.708641, 40.394661, 38.009766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662128, 40.370785, 37.613197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420991, 0.907050, -0.005234,
		0.899580, 0.416771, -0.130606,
		-0.116284, -0.059693, -0.991421,
		39.627243, 40.352879, 37.315773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084675, 40.953621, 37.587479>,  <39.708641, 40.394661, 38.009766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084675, 40.953621, 37.587479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732864, 40.809971, 37.462605>,  <39.521778, 40.723782, 37.387680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732864, 40.809971, 37.462605>,  <40.084675, 40.953621, 37.587479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732864, 40.809971, 37.462605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402883, 0.911113, 0.086936,
		0.253212, 0.202235, -0.946036,
		-0.879528, -0.359129, -0.312182,
		39.469006, 40.702232, 37.368950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295261, 41.451168, 38.080967>,  <40.084675, 40.953621, 37.587479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295261, 41.451168, 38.080967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.482624, 41.723759, 38.305889>,  <40.595043, 41.887314, 38.440842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.482624, 41.723759, 38.305889>,  <40.295261, 41.451168, 38.080967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482624, 41.723759, 38.305889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073544, 0.664309, -0.743831,
		-0.880445, 0.307063, 0.361286,
		0.468409, 0.681473, 0.562305,
		40.623146, 41.928200, 38.474579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579479, 40.969982, 38.688137>,  <40.295261, 41.451168, 38.080967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579479, 40.969982, 38.688137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.566608, 40.586987, 38.573471>,  <40.558887, 40.357189, 38.504669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.566608, 40.586987, 38.573471>,  <40.579479, 40.969982, 38.688137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566608, 40.586987, 38.573471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979161, -0.087742, 0.183154,
		-0.200521, -0.274800, 0.940360,
		-0.032179, -0.957489, -0.286668,
		40.556953, 40.299740, 38.487473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042007, 41.519115, 38.710804>,  <40.579479, 40.969982, 38.688137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.042007, 41.519115, 38.710804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036037, 41.351402, 39.073898>,  <41.032455, 41.250774, 39.291756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036037, 41.351402, 39.073898>,  <41.042007, 41.519115, 38.710804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036037, 41.351402, 39.073898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391587, -0.837770, -0.380529,
		0.920020, 0.349776, 0.176691,
		-0.014927, -0.419284, 0.907732,
		41.031559, 41.225616, 39.346218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629757, 41.095051, 38.724457>,  <41.042007, 41.519115, 38.710804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629757, 41.095051, 38.724457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.403217, 40.980576, 39.033607>,  <41.267292, 40.911888, 39.219097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.403217, 40.980576, 39.033607>,  <41.629757, 41.095051, 38.724457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403217, 40.980576, 39.033607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204240, -0.957258, -0.204800,
		0.798455, 0.041863, 0.600597,
		-0.566353, -0.286190, 0.772877,
		41.233311, 40.894718, 39.265472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952206, 40.578793, 39.081768>,  <41.629757, 41.095051, 38.724457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.952206, 40.578793, 39.081768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563786, 40.497318, 39.131699>,  <41.330734, 40.448433, 39.161655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563786, 40.497318, 39.131699>,  <41.952206, 40.578793, 39.081768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563786, 40.497318, 39.131699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197506, -0.978456, -0.060132,
		0.134386, -0.033737, 0.990355,
		-0.971047, -0.203682, 0.124828,
		41.272472, 40.436214, 39.169147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514172, 40.556347, 39.781525>,  <41.952206, 40.578793, 39.081768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514172, 40.556347, 39.781525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317009, 40.529312, 40.128506>,  <41.198711, 40.513092, 40.336697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317009, 40.529312, 40.128506>,  <41.514172, 40.556347, 39.781525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317009, 40.529312, 40.128506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353840, -0.926383, 0.128885,
		0.794885, 0.370468, 0.480532,
		-0.492905, -0.067583, 0.867454,
		41.169136, 40.509037, 40.388741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911858, 40.523643, 40.375015>,  <41.514172, 40.556347, 39.781525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911858, 40.523643, 40.375015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566624, 40.339771, 40.458710>,  <41.359486, 40.229446, 40.508926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566624, 40.339771, 40.458710>,  <41.911858, 40.523643, 40.375015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566624, 40.339771, 40.458710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481061, -0.874398, 0.063318,
		0.153853, 0.155306, 0.975812,
		-0.863081, -0.459684, 0.209240,
		41.307701, 40.201866, 40.521481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.975792, 40.141407, 41.132263>,  <41.911858, 40.523643, 40.375015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.975792, 40.141407, 41.132263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.741600, 39.961441, 40.862511>,  <41.601086, 39.853462, 40.700661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.741600, 39.961441, 40.862511>,  <41.975792, 40.141407, 41.132263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.741600, 39.961441, 40.862511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570533, -0.819658, 0.051507,
		-0.575936, -0.354600, 0.736585,
		-0.585483, -0.449911, -0.674381,
		41.565956, 39.826469, 40.660198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.023121, 39.465660, 41.342434>,  <41.975792, 40.141407, 41.132263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.023121, 39.465660, 41.342434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.877190, 39.430984, 40.971622>,  <41.789631, 39.410179, 40.749134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.877190, 39.430984, 40.971622>,  <42.023121, 39.465660, 41.342434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.877190, 39.430984, 40.971622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476306, -0.872888, -0.105822,
		-0.800020, -0.480157, 0.359745,
		-0.364829, -0.086689, -0.927030,
		41.767742, 39.404980, 40.693512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.791340, 38.835011, 41.297256>,  <42.023121, 39.465660, 41.342434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.791340, 38.835011, 41.297256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842869, 38.942978, 40.915565>,  <41.873787, 39.007759, 40.686550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842869, 38.942978, 40.915565>,  <41.791340, 38.835011, 41.297256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.842869, 38.942978, 40.915565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364362, -0.907822, -0.207605,
		-0.922304, -0.320939, -0.215298,
		0.128824, 0.269922, -0.954226,
		41.881516, 39.023956, 40.629299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744102, 38.249256, 41.010048>,  <41.791340, 38.835011, 41.297256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744102, 38.249256, 41.010048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.880764, 38.449451, 40.691856>,  <41.962761, 38.569569, 40.500942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.880764, 38.449451, 40.691856>,  <41.744102, 38.249256, 41.010048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.880764, 38.449451, 40.691856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408297, -0.841405, -0.354022,
		-0.846503, -0.203840, -0.491815,
		0.341651, 0.500487, -0.795479,
		41.983261, 38.599598, 40.453213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.578957, 37.841713, 40.405365>,  <41.744102, 38.249256, 41.010048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.578957, 37.841713, 40.405365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890606, 38.078697, 40.323433>,  <42.077595, 38.220890, 40.274273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890606, 38.078697, 40.323433>,  <41.578957, 37.841713, 40.405365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890606, 38.078697, 40.323433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500888, -0.784841, -0.364878,
		-0.376934, 0.181689, -0.908246,
		0.779123, 0.592464, -0.204827,
		42.124344, 38.256435, 40.261986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760700, 37.684460, 39.724972>,  <41.578957, 37.841713, 40.405365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.760700, 37.684460, 39.724972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073074, 37.845432, 39.916050>,  <42.260498, 37.942017, 40.030697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073074, 37.845432, 39.916050>,  <41.760700, 37.684460, 39.724972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.073074, 37.845432, 39.916050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603394, -0.683706, -0.410442,
		0.161428, 0.608766, -0.776753,
		0.780933, 0.402431, 0.477694,
		42.307354, 37.966164, 40.059357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.344044, 37.755646, 39.248947>,  <41.760700, 37.684460, 39.724972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.344044, 37.755646, 39.248947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.533699, 37.807003, 39.597363>,  <42.647491, 37.837818, 39.806412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.533699, 37.807003, 39.597363>,  <42.344044, 37.755646, 39.248947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.533699, 37.807003, 39.597363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721593, -0.623517, -0.300883,
		0.504477, 0.771196, -0.388279,
		0.474138, 0.128391, 0.871039,
		42.675941, 37.845520, 39.858673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.030048, 37.946602, 39.132984>,  <42.344044, 37.755646, 39.248947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.030048, 37.946602, 39.132984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.028152, 37.779869, 39.496574>,  <43.027016, 37.679829, 39.714729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.028152, 37.779869, 39.496574>,  <43.030048, 37.946602, 39.132984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.028152, 37.779869, 39.496574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780867, -0.569373, -0.257025,
		0.624680, 0.708568, 0.328186,
		-0.004740, -0.416828, 0.908973,
		43.026730, 37.654819, 39.769268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.677242, 37.896618, 39.302231>,  <43.030048, 37.946602, 39.132984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.677242, 37.896618, 39.302231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.499256, 37.617260, 39.526463>,  <43.392464, 37.449646, 39.661003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.499256, 37.617260, 39.526463>,  <43.677242, 37.896618, 39.302231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.499256, 37.617260, 39.526463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747729, -0.634222, -0.196631,
		0.492859, 0.331668, 0.804417,
		-0.444962, -0.698398, 0.560579,
		43.365768, 37.407742, 39.694637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.145947, 37.496082, 39.431046>,  <43.677242, 37.896618, 39.302231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.145947, 37.496082, 39.431046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.841255, 37.265270, 39.548901>,  <43.658440, 37.126781, 39.619614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.841255, 37.265270, 39.548901>,  <44.145947, 37.496082, 39.431046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.841255, 37.265270, 39.548901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530506, -0.816543, -0.227643,
		0.371938, -0.017096, 0.928100,
		-0.761725, -0.577032, 0.294634,
		43.612740, 37.092159, 39.637291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.465652, 37.004715, 39.884792>,  <44.145947, 37.496082, 39.431046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.465652, 37.004715, 39.884792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.126324, 36.855721, 39.734276>,  <43.922726, 36.766323, 39.643967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.126324, 36.855721, 39.734276>,  <44.465652, 37.004715, 39.884792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.126324, 36.855721, 39.734276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456802, -0.874239, -0.164431,
		-0.267723, -0.311383, 0.911792,
		-0.848325, -0.372487, -0.376295,
		43.871826, 36.743973, 39.621387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.424316, 36.280281, 40.098423>,  <44.465652, 37.004715, 39.884792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.424316, 36.280281, 40.098423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.172531, 36.312637, 39.789299>,  <44.021461, 36.332050, 39.603825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.172531, 36.312637, 39.789299>,  <44.424316, 36.280281, 40.098423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.172531, 36.312637, 39.789299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258591, -0.916070, -0.306508,
		-0.732742, -0.392777, 0.555712,
		-0.629460, 0.080889, -0.772811,
		43.983692, 36.336903, 39.557457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.219357, 35.636723, 39.932140>,  <44.424316, 36.280281, 40.098423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.219357, 35.636723, 39.932140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.146118, 35.826061, 39.587486>,  <44.102177, 35.939667, 39.380695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.146118, 35.826061, 39.587486>,  <44.219357, 35.636723, 39.932140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.146118, 35.826061, 39.587486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215874, -0.835701, -0.504976,
		-0.959101, -0.278464, 0.050830,
		-0.183096, 0.473350, -0.861635,
		44.091190, 35.968067, 39.328995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.111031, 35.172737, 39.525532>,  <44.219357, 35.636723, 39.932140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.111031, 35.172737, 39.525532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.159386, 35.443378, 39.234989>,  <44.188400, 35.605762, 39.060665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.159386, 35.443378, 39.234989>,  <44.111031, 35.172737, 39.525532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.159386, 35.443378, 39.234989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345122, -0.714720, -0.608331,
		-0.930740, -0.177138, -0.319915,
		0.120891, 0.676607, -0.726353,
		44.195652, 35.646362, 39.017082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.754982, 34.894176, 38.951157>,  <44.111031, 35.172737, 39.525532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.754982, 34.894176, 38.951157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.009232, 35.163834, 38.800686>,  <44.161781, 35.325630, 38.710403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.009232, 35.163834, 38.800686>,  <43.754982, 34.894176, 38.951157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.009232, 35.163834, 38.800686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314867, -0.671289, -0.670992,
		-0.704866, 0.308057, -0.638956,
		0.635628, 0.674145, -0.376172,
		44.199921, 35.366077, 38.687836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.697498, 34.826302, 38.143860>,  <43.754982, 34.894176, 38.951157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.697498, 34.826302, 38.143860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.035095, 35.005405, 38.261974>,  <44.237652, 35.112869, 38.332844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.035095, 35.005405, 38.261974>,  <43.697498, 34.826302, 38.143860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.035095, 35.005405, 38.261974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512714, -0.511864, -0.689289,
		-0.157491, 0.733149, -0.661581,
		0.843991, 0.447758, 0.295282,
		44.288292, 35.139732, 38.350559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.953888, 35.002651, 37.522568>,  <43.697498, 34.826302, 38.143860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.953888, 35.002651, 37.522568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.262985, 35.062374, 37.769333>,  <44.448444, 35.098209, 37.917393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.262985, 35.062374, 37.769333>,  <43.953888, 35.002651, 37.522568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.262985, 35.062374, 37.769333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629193, -0.308183, -0.713540,
		0.083582, 0.939537, -0.332090,
		0.772742, 0.149310, 0.616909,
		44.494808, 35.107166, 37.954407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.407745, 35.570396, 37.220284>,  <43.953888, 35.002651, 37.522568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.407745, 35.570396, 37.220284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625366, 35.344143, 37.468174>,  <44.755939, 35.208389, 37.616909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625366, 35.344143, 37.468174>,  <44.407745, 35.570396, 37.220284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625366, 35.344143, 37.468174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564821, -0.299296, -0.769024,
		0.620469, 0.768427, 0.156649,
		0.544055, -0.565634, 0.619728,
		44.788582, 35.174454, 37.654091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.041790, 35.605640, 36.925770>,  <44.407745, 35.570396, 37.220284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.041790, 35.605640, 36.925770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.118076, 35.305611, 37.179073>,  <45.163849, 35.125595, 37.331055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.118076, 35.305611, 37.179073>,  <45.041790, 35.605640, 36.925770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.118076, 35.305611, 37.179073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662580, -0.377622, -0.646830,
		0.724302, 0.542949, 0.424963,
		0.190720, -0.750072, 0.633259,
		45.175293, 35.080589, 37.369053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.736759, 35.575340, 36.873341>,  <45.041790, 35.605640, 36.925770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.736759, 35.575340, 36.873341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.595852, 35.218109, 36.985287>,  <45.511307, 35.003769, 37.052452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.595852, 35.218109, 36.985287>,  <45.736759, 35.575340, 36.873341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.595852, 35.218109, 36.985287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691990, -0.449874, -0.564591,
		0.630125, -0.005225, 0.776476,
		-0.352266, -0.893077, 0.279862,
		45.490173, 34.950188, 37.069244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.977539, 35.774708, 36.124191>,  <45.736759, 35.575340, 36.873341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.977539, 35.774708, 36.124191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.324539, 35.788677, 36.322678>,  <46.532738, 35.797058, 36.441769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.324539, 35.788677, 36.322678>,  <45.977539, 35.774708, 36.124191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.324539, 35.788677, 36.322678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463834, -0.417232, -0.781521,
		0.179746, 0.908129, -0.378145,
		0.867496, 0.034921, 0.496217,
		46.584789, 35.799152, 36.471542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.502319, 36.090088, 35.788948>,  <45.977539, 35.774708, 36.124191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.502319, 36.090088, 35.788948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.635529, 35.788231, 36.015087>,  <46.715454, 35.607117, 36.150768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.635529, 35.788231, 36.015087>,  <46.502319, 36.090088, 35.788948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.635529, 35.788231, 36.015087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427123, -0.413796, -0.803952,
		0.840630, 0.509210, 0.184518,
		0.333027, -0.754638, 0.565345,
		46.735435, 35.561840, 36.184692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.291542, 36.019169, 35.792007>,  <46.502319, 36.090088, 35.788948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.291542, 36.019169, 35.792007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.037540, 35.710960, 35.769836>,  <46.885139, 35.526035, 35.756535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.037540, 35.710960, 35.769836>,  <47.291542, 36.019169, 35.792007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.037540, 35.710960, 35.769836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469952, -0.328363, -0.819343,
		0.613118, -0.546334, 0.570619,
		-0.635005, -0.770517, -0.055426,
		46.847038, 35.479805, 35.753208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.723824, 35.423985, 35.677395>,  <47.291542, 36.019169, 35.792007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.723824, 35.423985, 35.677395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.356590, 35.364876, 35.530266>,  <47.136250, 35.329411, 35.441990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.356590, 35.364876, 35.530266>,  <47.723824, 35.423985, 35.677395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.356590, 35.364876, 35.530266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393861, -0.235327, -0.888535,
		0.044744, -0.960617, 0.274251,
		-0.918080, -0.147773, -0.367820,
		47.081165, 35.320545, 35.419918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.865887, 34.840832, 35.226265>,  <47.723824, 35.423985, 35.677395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.865887, 34.840832, 35.226265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.593189, 35.127941, 35.169651>,  <47.429569, 35.300205, 35.135681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.593189, 35.127941, 35.169651>,  <47.865887, 34.840832, 35.226265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.593189, 35.127941, 35.169651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256004, 0.052821, -0.965231,
		-0.685339, -0.694273, -0.219763,
		-0.681742, 0.717771, -0.141536,
		47.388668, 35.343273, 35.127190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.984459, 36.684921, 43.090141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.612961, 36.658730, 42.944187>,  <32.390060, 36.643013, 42.856613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.612961, 36.658730, 42.944187>,  <32.984459, 36.684921, 43.090141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.612961, 36.658730, 42.944187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370267, -0.212132, -0.904380,
		-0.018185, -0.975045, 0.221262,
		-0.928747, -0.065480, -0.364884,
		32.334335, 36.639084, 42.834721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013638, 36.041794, 42.764381>,  <32.984459, 36.684921, 43.090141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013638, 36.041794, 42.764381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.699760, 36.234905, 42.608856>,  <32.511433, 36.350773, 42.515541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.699760, 36.234905, 42.608856>,  <33.013638, 36.041794, 42.764381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699760, 36.234905, 42.608856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243530, -0.336712, -0.909570,
		-0.570042, -0.808423, 0.146645,
		-0.784694, 0.482781, -0.388815,
		32.464352, 36.379738, 42.492210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749500, 35.699581, 42.241146>,  <33.013638, 36.041794, 42.764381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749500, 35.699581, 42.241146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.606468, 36.060570, 42.145081>,  <32.520649, 36.277164, 42.087440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.606468, 36.060570, 42.145081>,  <32.749500, 35.699581, 42.241146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606468, 36.060570, 42.145081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229638, -0.164300, -0.959308,
		-0.905208, -0.398183, -0.148491,
		-0.357583, 0.902472, -0.240164,
		32.499195, 36.331310, 42.073032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365292, 35.592640, 41.735622>,  <32.749500, 35.699581, 42.241146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365292, 35.592640, 41.735622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.472523, 35.975674, 41.693356>,  <32.536861, 36.205494, 41.667995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.472523, 35.975674, 41.693356>,  <32.365292, 35.592640, 41.735622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472523, 35.975674, 41.693356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043352, -0.121564, -0.991636,
		-0.962421, 0.261257, -0.074103,
		0.268080, 0.957584, -0.105670,
		32.552948, 36.262947, 41.661655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976467, 35.800930, 41.167892>,  <32.365292, 35.592640, 41.735622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976467, 35.800930, 41.167892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.286415, 36.049400, 41.214725>,  <32.472385, 36.198483, 41.242825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.286415, 36.049400, 41.214725>,  <31.976467, 35.800930, 41.167892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286415, 36.049400, 41.214725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265732, -0.152038, -0.951983,
		-0.573550, 0.768779, -0.282877,
		0.774872, 0.621179, 0.117087,
		32.518875, 36.235756, 41.249851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981583, 36.219044, 40.498436>,  <31.976467, 35.800930, 41.167892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981583, 36.219044, 40.498436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.339668, 36.302845, 40.655762>,  <32.554520, 36.353127, 40.750156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.339668, 36.302845, 40.655762>,  <31.981583, 36.219044, 40.498436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339668, 36.302845, 40.655762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437288, -0.242991, -0.865872,
		-0.085833, 0.947134, -0.309144,
		0.895216, 0.209505, 0.393313,
		32.608234, 36.365696, 40.773754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328690, 36.620419, 39.908905>,  <31.981583, 36.219044, 40.498436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328690, 36.620419, 39.908905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.637413, 36.545727, 40.152031>,  <32.822647, 36.500912, 40.297909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.637413, 36.545727, 40.152031>,  <32.328690, 36.620419, 39.908905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637413, 36.545727, 40.152031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597321, -0.114786, -0.793745,
		0.217984, 0.975683, 0.022944,
		0.771810, -0.186728, 0.607818,
		32.868958, 36.489708, 40.334377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895073, 36.965221, 39.694695>,  <32.328690, 36.620419, 39.908905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895073, 36.965221, 39.694695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.037048, 36.660625, 39.911640>,  <33.122234, 36.477867, 40.041805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.037048, 36.660625, 39.911640>,  <32.895073, 36.965221, 39.694695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037048, 36.660625, 39.911640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608578, -0.252187, -0.752353,
		0.709683, 0.597108, 0.373913,
		0.354940, -0.761488, 0.542360,
		33.143532, 36.432178, 40.074348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636833, 37.032719, 39.621571>,  <32.895073, 36.965221, 39.694695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636833, 37.032719, 39.621571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.576176, 36.671356, 39.782005>,  <33.539783, 36.454540, 39.878265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.576176, 36.671356, 39.782005>,  <33.636833, 37.032719, 39.621571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576176, 36.671356, 39.782005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578666, -0.410111, -0.704950,
		0.801343, 0.125194, 0.584958,
		-0.151642, -0.903402, 0.401085,
		33.530682, 36.400337, 39.902332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301022, 36.686954, 39.514240>,  <33.636833, 37.032719, 39.621571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301022, 36.686954, 39.514240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.062519, 36.374512, 39.588387>,  <33.919418, 36.187046, 39.632874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.062519, 36.374512, 39.588387>,  <34.301022, 36.686954, 39.514240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062519, 36.374512, 39.588387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523135, -0.553185, -0.648318,
		0.608943, -0.289593, 0.738461,
		-0.596254, -0.781104, 0.185361,
		33.883644, 36.140182, 39.643993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663345, 36.061737, 39.830666>,  <34.301022, 36.686954, 39.514240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663345, 36.061737, 39.830666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.330597, 35.920578, 39.659340>,  <34.130947, 35.835884, 39.556545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.330597, 35.920578, 39.659340>,  <34.663345, 36.061737, 39.830666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330597, 35.920578, 39.659340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553750, -0.578877, -0.598551,
		-0.036717, -0.735097, 0.676967,
		-0.831873, -0.352893, -0.428314,
		34.081036, 35.814709, 39.530846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729813, 35.313560, 39.908394>,  <34.663345, 36.061737, 39.830666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729813, 35.313560, 39.908394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.496593, 35.429440, 39.604782>,  <34.356663, 35.498966, 39.422615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.496593, 35.429440, 39.604782>,  <34.729813, 35.313560, 39.908394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496593, 35.429440, 39.604782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551970, -0.544281, -0.631733,
		-0.596141, -0.787293, 0.157435,
		-0.583048, 0.289703, -0.759031,
		34.321678, 35.516350, 39.377071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520084, 34.666397, 39.468700>,  <34.729813, 35.313560, 39.908394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520084, 34.666397, 39.468700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.451450, 34.967396, 39.214359>,  <34.410271, 35.147995, 39.061752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.451450, 34.967396, 39.214359>,  <34.520084, 34.666397, 39.468700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451450, 34.967396, 39.214359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319018, -0.568211, -0.758527,
		-0.932087, -0.333000, -0.142564,
		-0.171583, 0.752494, -0.635855,
		34.399975, 35.193146, 39.023602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326328, 34.312103, 38.855145>,  <34.520084, 34.666397, 39.468700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326328, 34.312103, 38.855145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.366791, 34.682098, 38.708626>,  <34.391068, 34.904095, 38.620716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.366791, 34.682098, 38.708626>,  <34.326328, 34.312103, 38.855145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366791, 34.682098, 38.708626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420943, -0.373393, -0.826670,
		-0.901429, -0.070570, -0.427136,
		0.101152, 0.924985, -0.366294,
		34.397137, 34.959595, 38.598736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976391, 34.369450, 38.239258>,  <34.326328, 34.312103, 38.855145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976391, 34.369450, 38.239258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.264225, 34.647209, 38.238041>,  <34.436924, 34.813866, 38.237312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.264225, 34.647209, 38.238041>,  <33.976391, 34.369450, 38.239258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264225, 34.647209, 38.238041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490828, -0.511719, -0.705146,
		-0.491208, 0.505920, -0.709055,
		0.719585, 0.694398, -0.003040,
		34.480099, 34.855530, 38.237129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993706, 34.611965, 37.556995>,  <33.976391, 34.369450, 38.239258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993706, 34.611965, 37.556995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.346653, 34.700729, 37.722980>,  <34.558422, 34.753986, 37.822571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.346653, 34.700729, 37.722980>,  <33.993706, 34.611965, 37.556995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346653, 34.700729, 37.722980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466517, -0.297062, -0.833136,
		-0.061611, 0.928715, -0.365641,
		0.882364, 0.221908, 0.414959,
		34.611362, 34.767303, 37.847469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453640, 34.919594, 37.022362>,  <33.993706, 34.611965, 37.556995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453640, 34.919594, 37.022362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.694839, 34.753189, 37.294636>,  <34.839558, 34.653347, 37.458000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.694839, 34.753189, 37.294636>,  <34.453640, 34.919594, 37.022362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694839, 34.753189, 37.294636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614272, -0.302269, -0.728905,
		0.508981, 0.857653, 0.073276,
		0.602999, -0.416010, 0.680682,
		34.875740, 34.628387, 37.498840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987785, 35.300915, 36.850231>,  <34.453640, 34.919594, 37.022362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987785, 35.300915, 36.850231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.088810, 34.966339, 37.044792>,  <35.149426, 34.765594, 37.161530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.088810, 34.966339, 37.044792>,  <34.987785, 35.300915, 36.850231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088810, 34.966339, 37.044792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675453, -0.207528, -0.707598,
		0.692804, 0.507248, 0.512563,
		0.252557, -0.836440, 0.486398,
		35.164577, 34.715408, 37.190712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738930, 35.425076, 36.769054>,  <34.987785, 35.300915, 36.850231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738930, 35.425076, 36.769054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.675552, 35.046928, 36.883015>,  <35.637524, 34.820038, 36.951389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.675552, 35.046928, 36.883015>,  <35.738930, 35.425076, 36.769054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675552, 35.046928, 36.883015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796166, -0.292983, -0.529415,
		0.583964, 0.142940, 0.799096,
		-0.158447, -0.945372, 0.284896,
		35.628017, 34.763317, 36.968483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343414, 35.091278, 37.004494>,  <35.738930, 35.425076, 36.769054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343414, 35.091278, 37.004494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.145638, 34.759777, 36.899651>,  <36.026970, 34.560879, 36.836746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.145638, 34.759777, 36.899651>,  <36.343414, 35.091278, 37.004494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145638, 34.759777, 36.899651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771169, -0.279129, -0.572177,
		0.401028, -0.485040, 0.777118,
		-0.494445, -0.828748, -0.262109,
		35.997303, 34.511154, 36.821018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907166, 34.603638, 36.943394>,  <36.343414, 35.091278, 37.004494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907166, 34.603638, 36.943394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.597073, 34.453693, 36.740028>,  <36.411015, 34.363728, 36.618008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.597073, 34.453693, 36.740028>,  <36.907166, 34.603638, 36.943394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597073, 34.453693, 36.740028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631157, -0.427236, -0.647388,
		0.025470, -0.822767, 0.567808,
		-0.775237, -0.374865, -0.508413,
		36.364502, 34.341232, 36.587505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163658, 33.894985, 36.770378>,  <36.907166, 34.603638, 36.943394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163658, 33.894985, 36.770378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.861553, 33.957054, 36.515663>,  <36.680290, 33.994297, 36.362835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.861553, 33.957054, 36.515663>,  <37.163658, 33.894985, 36.770378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861553, 33.957054, 36.515663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507773, -0.475784, -0.718189,
		-0.414414, -0.865766, 0.280552,
		-0.755266, 0.155171, -0.636785,
		36.634972, 34.003605, 36.324627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863258, 33.933834, 36.539650>,  <37.163658, 33.894985, 36.770378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863258, 33.933834, 36.539650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.205742, 33.823719, 36.714520>,  <38.411232, 33.757648, 36.819439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.205742, 33.823719, 36.714520>,  <37.863258, 33.933834, 36.539650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205742, 33.823719, 36.714520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498781, -0.220000, 0.838342,
		-0.134601, -0.935853, -0.325672,
		0.856212, -0.275280, 0.437173,
		38.462605, 33.741135, 36.845673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762794, 33.279476, 36.861378>,  <37.863258, 33.933834, 36.539650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762794, 33.279476, 36.861378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.066944, 33.453335, 37.054420>,  <38.249435, 33.557652, 37.170246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.066944, 33.453335, 37.054420>,  <37.762794, 33.279476, 36.861378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066944, 33.453335, 37.054420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395120, -0.280168, 0.874863,
		0.515466, -0.855914, -0.041296,
		0.760378, 0.434646, 0.482606,
		38.295059, 33.583729, 37.199203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780418, 32.888836, 37.522781>,  <37.762794, 33.279476, 36.861378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780418, 32.888836, 37.522781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.000832, 33.212723, 37.603493>,  <38.133080, 33.407055, 37.651920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.000832, 33.212723, 37.603493>,  <37.780418, 32.888836, 37.522781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000832, 33.212723, 37.603493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374559, 0.023915, 0.926895,
		0.745700, -0.586328, 0.316466,
		0.551033, 0.809721, 0.201781,
		38.166142, 33.455639, 37.664028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103928, 32.772385, 38.122597>,  <37.780418, 32.888836, 37.522781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103928, 32.772385, 38.122597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.059341, 33.168335, 38.087460>,  <38.032589, 33.405907, 38.066380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.059341, 33.168335, 38.087460>,  <38.103928, 32.772385, 38.122597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059341, 33.168335, 38.087460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460863, 0.026822, 0.887066,
		0.880444, 0.139355, 0.453209,
		-0.111461, 0.989879, -0.087839,
		38.025902, 33.465298, 38.061108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096611, 32.983562, 38.830048>,  <38.103928, 32.772385, 38.122597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096611, 32.983562, 38.830048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.973370, 33.311459, 38.636929>,  <37.899426, 33.508198, 38.521057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.973370, 33.311459, 38.636929>,  <38.096611, 32.983562, 38.830048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973370, 33.311459, 38.636929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395590, 0.351137, 0.848653,
		0.865204, 0.452465, 0.216094,
		-0.308108, 0.819743, -0.482796,
		37.880936, 33.557381, 38.492088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448296, 33.548149, 39.164101>,  <38.096611, 32.983562, 38.830048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448296, 33.548149, 39.164101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.102821, 33.670464, 39.003834>,  <37.895535, 33.743851, 38.907673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.102821, 33.670464, 39.003834>,  <38.448296, 33.548149, 39.164101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102821, 33.670464, 39.003834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196745, 0.527338, 0.826563,
		0.464037, 0.792724, -0.395295,
		-0.863690, 0.305784, -0.400668,
		37.843716, 33.762199, 38.883633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370647, 34.200027, 39.268589>,  <38.448296, 33.548149, 39.164101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370647, 34.200027, 39.268589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.997658, 34.067753, 39.210445>,  <37.773865, 33.988388, 39.175560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.997658, 34.067753, 39.210445>,  <38.370647, 34.200027, 39.268589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997658, 34.067753, 39.210445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318910, 0.564656, 0.761223,
		-0.169648, 0.756181, -0.631989,
		-0.932478, -0.330687, -0.145361,
		37.717915, 33.968548, 39.166836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982384, 34.820030, 39.399757>,  <38.370647, 34.200027, 39.268589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982384, 34.820030, 39.399757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.704124, 34.532722, 39.394676>,  <37.537170, 34.360336, 39.391628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.704124, 34.532722, 39.394676>,  <37.982384, 34.820030, 39.399757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704124, 34.532722, 39.394676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570619, 0.541733, 0.617187,
		-0.436425, 0.436594, -0.786714,
		-0.695648, -0.718270, -0.012703,
		37.495430, 34.317242, 39.390865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393478, 35.185982, 39.454586>,  <37.982384, 34.820030, 39.399757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393478, 35.185982, 39.454586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.305687, 34.809841, 39.558567>,  <37.253014, 34.584156, 39.620956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.305687, 34.809841, 39.558567>,  <37.393478, 35.185982, 39.454586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305687, 34.809841, 39.558567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606065, 0.340210, 0.718987,
		-0.764536, 0.000255, -0.644581,
		-0.219476, -0.940350, 0.259948,
		37.239845, 34.527737, 39.636551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654400, 35.171726, 39.521648>,  <37.393478, 35.185982, 39.454586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654400, 35.171726, 39.521648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.808159, 34.878258, 39.745777>,  <36.900414, 34.702175, 39.880253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.808159, 34.878258, 39.745777>,  <36.654400, 35.171726, 39.521648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808159, 34.878258, 39.745777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512057, 0.335575, 0.790688,
		-0.768137, -0.590855, -0.246689,
		0.384399, -0.733676, 0.560319,
		36.923477, 34.658154, 39.913872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111893, 35.080807, 39.952396>,  <36.654400, 35.171726, 39.521648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111893, 35.080807, 39.952396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.399418, 34.853409, 40.112461>,  <36.571934, 34.716972, 40.208500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.399418, 34.853409, 40.112461>,  <36.111893, 35.080807, 39.952396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399418, 34.853409, 40.112461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401794, 0.130021, 0.906452,
		-0.567340, -0.812350, -0.134957,
		0.718809, -0.568492, 0.400164,
		36.615059, 34.682861, 40.232510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750854, 34.525993, 40.400520>,  <36.111893, 35.080807, 39.952396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750854, 34.525993, 40.400520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.122761, 34.563839, 40.542835>,  <36.345905, 34.586548, 40.628223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.122761, 34.563839, 40.542835>,  <35.750854, 34.525993, 40.400520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122761, 34.563839, 40.542835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346910, -0.098392, 0.932723,
		0.123258, -0.990640, -0.058657,
		0.929764, 0.094617, 0.355790,
		36.401691, 34.592224, 40.649570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676266, 34.108231, 40.885242>,  <35.750854, 34.525993, 40.400520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676266, 34.108231, 40.885242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.988312, 34.321232, 41.016609>,  <36.175541, 34.449032, 41.095428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.988312, 34.321232, 41.016609>,  <35.676266, 34.108231, 40.885242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988312, 34.321232, 41.016609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379056, -0.015327, 0.925247,
		0.497734, -0.846287, 0.189893,
		0.780114, 0.532506, 0.328419,
		36.222347, 34.480984, 41.115135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986610, 33.702881, 41.440811>,  <35.676266, 34.108231, 40.885242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986610, 33.702881, 41.440811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.063122, 34.095055, 41.459423>,  <36.109028, 34.330357, 41.470589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.063122, 34.095055, 41.459423>,  <35.986610, 33.702881, 41.440811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063122, 34.095055, 41.459423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517334, 0.060419, 0.853648,
		0.834132, -0.187359, 0.518767,
		0.191282, 0.980431, 0.046530,
		36.120506, 34.389183, 41.473381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124748, 33.843197, 42.145943>,  <35.986610, 33.702881, 41.440811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124748, 33.843197, 42.145943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.069595, 34.201576, 41.977055>,  <36.036503, 34.416603, 41.875721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.069595, 34.201576, 41.977055>,  <36.124748, 33.843197, 42.145943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069595, 34.201576, 41.977055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480636, 0.312211, 0.819459,
		0.866013, 0.315923, 0.387575,
		-0.137881, 0.895945, -0.422223,
		36.028233, 34.470360, 41.850388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290031, 34.374012, 42.634907>,  <36.124748, 33.843197, 42.145943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290031, 34.374012, 42.634907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.030823, 34.549507, 42.385887>,  <35.875298, 34.654804, 42.236473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.030823, 34.549507, 42.385887>,  <36.290031, 34.374012, 42.634907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030823, 34.549507, 42.385887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444964, 0.445297, 0.776993,
		0.618119, 0.780523, -0.093340,
		-0.648025, 0.438741, -0.622551,
		35.836414, 34.681129, 42.199123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256290, 35.092651, 42.848179>,  <36.290031, 34.374012, 42.634907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256290, 35.092651, 42.848179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.928246, 35.010757, 42.634453>,  <35.731419, 34.961620, 42.506218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.928246, 35.010757, 42.634453>,  <36.256290, 35.092651, 42.848179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928246, 35.010757, 42.634453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569785, 0.377875, 0.729764,
		0.052497, 0.902936, -0.426556,
		-0.820115, -0.204735, -0.534317,
		35.682213, 34.949337, 42.474159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775463, 35.694950, 42.957298>,  <36.256290, 35.092651, 42.848179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775463, 35.694950, 42.957298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.512596, 35.425323, 42.822384>,  <35.354874, 35.263546, 42.741436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.512596, 35.425323, 42.822384>,  <35.775463, 35.694950, 42.957298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512596, 35.425323, 42.822384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640186, 0.262968, 0.721810,
		-0.397855, 0.690276, -0.604343,
		-0.657171, -0.674068, -0.337281,
		35.315445, 35.223103, 42.721199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.903160, 36.067616, 42.804428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.872066, 35.669250, 42.822788>,  <34.853413, 35.430229, 42.833805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.872066, 35.669250, 42.822788>,  <34.903160, 36.067616, 42.804428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872066, 35.669250, 42.822788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703575, 0.087417, 0.705223,
		-0.706356, 0.022523, -0.707498,
		-0.077731, -0.995917, 0.045901,
		34.848747, 35.370476, 42.836559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184013, 35.927799, 42.651375>,  <34.903160, 36.067616, 42.804428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184013, 35.927799, 42.651375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.340134, 35.635254, 42.875084>,  <34.433804, 35.459728, 43.009308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.340134, 35.635254, 42.875084>,  <34.184013, 35.927799, 42.651375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340134, 35.635254, 42.875084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830901, -0.018151, 0.556125,
		-0.396576, -0.681751, -0.614771,
		0.390297, -0.731360, 0.559269,
		34.457222, 35.415848, 43.042866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585861, 35.523426, 42.777794>,  <34.184013, 35.927799, 42.651375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585861, 35.523426, 42.777794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.840187, 35.440567, 43.075203>,  <33.992783, 35.390850, 43.253647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.840187, 35.440567, 43.075203>,  <33.585861, 35.523426, 42.777794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840187, 35.440567, 43.075203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709556, 0.222230, 0.668688,
		-0.303750, -0.952735, -0.005685,
		0.635819, -0.207147, 0.743521,
		34.030933, 35.378422, 43.298260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140690, 35.274662, 43.481495>,  <33.585861, 35.523426, 42.777794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140690, 35.274662, 43.481495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.508942, 35.353111, 43.616535>,  <33.729893, 35.400181, 43.697559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.508942, 35.353111, 43.616535>,  <33.140690, 35.274662, 43.481495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508942, 35.353111, 43.616535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383536, 0.292524, 0.875974,
		0.073042, -0.935931, 0.344526,
		0.920633, 0.196121, 0.337597,
		33.785133, 35.411949, 43.717815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209156, 34.934845, 44.207493>,  <33.140690, 35.274662, 43.481495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209156, 34.934845, 44.207493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.512260, 35.194698, 44.232056>,  <33.694122, 35.350609, 44.246796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.512260, 35.194698, 44.232056>,  <33.209156, 34.934845, 44.207493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512260, 35.194698, 44.232056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321027, 0.289210, 0.901831,
		0.568098, -0.703090, 0.427702,
		0.757764, 0.649633, 0.061411,
		33.739590, 35.389587, 44.250481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593590, 34.747517, 44.700577>,  <33.209156, 34.934845, 44.207493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593590, 34.747517, 44.700577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.696171, 35.131359, 44.654297>,  <33.757721, 35.361664, 44.626530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.696171, 35.131359, 44.654297>,  <33.593590, 34.747517, 44.700577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696171, 35.131359, 44.654297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036875, 0.129328, 0.990916,
		0.965852, -0.249860, 0.068553,
		0.256456, 0.959606, -0.115698,
		33.773109, 35.419243, 44.619587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891655, 34.882530, 45.342754>,  <33.593590, 34.747517, 44.700577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891655, 34.882530, 45.342754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.807957, 35.251881, 45.214012>,  <33.757736, 35.473492, 45.136768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.807957, 35.251881, 45.214012>,  <33.891655, 34.882530, 45.342754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807957, 35.251881, 45.214012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118726, 0.302715, 0.945657,
		0.970629, 0.236086, 0.046287,
		-0.209245, 0.923378, -0.321853,
		33.745182, 35.528893, 45.117455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313618, 35.408119, 45.695953>,  <33.891655, 34.882530, 45.342754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313618, 35.408119, 45.695953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.971741, 35.582935, 45.583885>,  <33.766613, 35.687824, 45.516644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.971741, 35.582935, 45.583885>,  <34.313618, 35.408119, 45.695953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971741, 35.582935, 45.583885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051645, 0.608586, 0.791805,
		0.516561, 0.662280, -0.542725,
		-0.854692, 0.437045, -0.280168,
		33.715332, 35.714050, 45.499836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491436, 35.995281, 45.934284>,  <34.313618, 35.408119, 45.695953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491436, 35.995281, 45.934284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.101837, 36.039112, 45.854965>,  <33.868076, 36.065411, 45.807373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.101837, 36.039112, 45.854965>,  <34.491436, 35.995281, 45.934284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101837, 36.039112, 45.854965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097772, 0.586270, 0.804194,
		0.204375, 0.802672, -0.560312,
		-0.973998, 0.109574, -0.198298,
		33.809639, 36.071983, 45.795475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315113, 36.481388, 46.274612>,  <34.491436, 35.995281, 45.934284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315113, 36.481388, 46.274612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.936581, 36.398773, 46.175171>,  <33.709461, 36.349205, 46.115505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.936581, 36.398773, 46.175171>,  <34.315113, 36.481388, 46.274612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936581, 36.398773, 46.175171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320260, 0.495733, 0.807268,
		-0.043489, 0.843560, -0.535272,
		-0.946331, -0.206533, -0.248599,
		33.652679, 36.336815, 46.100590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844250, 37.141792, 46.276474>,  <34.315113, 36.481388, 46.274612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844250, 37.141792, 46.276474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.612103, 36.820503, 46.330135>,  <33.472813, 36.627728, 46.362331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.612103, 36.820503, 46.330135>,  <33.844250, 37.141792, 46.276474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612103, 36.820503, 46.330135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288622, 0.356932, 0.888424,
		-0.761490, 0.476895, -0.438981,
		-0.580371, -0.803225, 0.134158,
		33.437992, 36.579536, 46.370384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258675, 37.517948, 46.413303>,  <33.844250, 37.141792, 46.276474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258675, 37.517948, 46.413303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.240654, 37.138481, 46.538517>,  <33.229843, 36.910801, 46.613647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.240654, 37.138481, 46.538517>,  <33.258675, 37.517948, 46.413303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240654, 37.138481, 46.538517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471343, 0.296468, 0.830628,
		-0.880799, -0.110128, -0.460506,
		-0.045050, -0.948672, 0.313037,
		33.227139, 36.853878, 46.632427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608929, 37.438999, 46.690372>,  <33.258675, 37.517948, 46.413303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608929, 37.438999, 46.690372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.808575, 37.130596, 46.848576>,  <32.928364, 36.945553, 46.943497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.808575, 37.130596, 46.848576>,  <32.608929, 37.438999, 46.690372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808575, 37.130596, 46.848576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401853, 0.198430, 0.893946,
		-0.767723, -0.605118, -0.210794,
		0.499115, -0.771011, 0.395508,
		32.958309, 36.899292, 46.967228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115383, 36.937241, 46.912109>,  <32.608929, 37.438999, 46.690372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115383, 36.937241, 46.912109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.436455, 36.822124, 47.121059>,  <32.629097, 36.753056, 47.246429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.436455, 36.822124, 47.121059>,  <32.115383, 36.937241, 46.912109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436455, 36.822124, 47.121059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484001, 0.197456, 0.852499,
		-0.348491, -0.937115, 0.019201,
		0.802681, -0.287795, 0.522376,
		32.677258, 36.735786, 47.277771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874386, 36.538166, 47.458763>,  <32.115383, 36.937241, 46.912109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874386, 36.538166, 47.458763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.236431, 36.641972, 47.593475>,  <32.453659, 36.704254, 47.674305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.236431, 36.641972, 47.593475>,  <31.874386, 36.538166, 47.458763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236431, 36.641972, 47.593475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383887, 0.158323, 0.909706,
		0.182772, -0.952670, 0.242928,
		0.905111, 0.259526, 0.336781,
		32.507965, 36.719826, 47.694511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897038, 36.187405, 48.093357>,  <31.874386, 36.538166, 47.458763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897038, 36.187405, 48.093357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.152390, 36.494850, 48.076832>,  <32.305599, 36.679317, 48.066917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.152390, 36.494850, 48.076832>,  <31.897038, 36.187405, 48.093357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152390, 36.494850, 48.076832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246921, 0.255332, 0.934792,
		0.729042, -0.586550, 0.352785,
		0.638379, 0.768612, -0.041316,
		32.343903, 36.725433, 48.064438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313416, 36.144127, 48.669441>,  <31.897038, 36.187405, 48.093357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313416, 36.144127, 48.669441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.367065, 36.532051, 48.587982>,  <32.399258, 36.764805, 48.539108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.367065, 36.532051, 48.587982>,  <32.313416, 36.144127, 48.669441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367065, 36.532051, 48.587982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166659, 0.224652, 0.960082,
		0.976850, -0.094834, 0.191760,
		0.134127, 0.969814, -0.203646,
		32.407303, 36.822994, 48.526890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879242, 36.398090, 49.126511>,  <32.313416, 36.144127, 48.669441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879242, 36.398090, 49.126511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.648735, 36.707901, 49.022186>,  <32.510433, 36.893787, 48.959591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.648735, 36.707901, 49.022186>,  <32.879242, 36.398090, 49.126511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648735, 36.707901, 49.022186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212423, 0.166209, 0.962939,
		0.789174, 0.610310, 0.068748,
		-0.576265, 0.774530, -0.260812,
		32.475857, 36.940258, 48.943943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024673, 36.822380, 49.641651>,  <32.879242, 36.398090, 49.126511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024673, 36.822380, 49.641651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.686737, 36.965584, 49.482613>,  <32.483974, 37.051506, 49.387192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.686737, 36.965584, 49.482613>,  <33.024673, 36.822380, 49.641651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686737, 36.965584, 49.482613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388426, 0.100634, 0.915969,
		0.367934, 0.928280, 0.054040,
		-0.844837, 0.358006, -0.397594,
		32.433285, 37.072987, 49.363335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902607, 37.469269, 50.109161>,  <33.024673, 36.822380, 49.641651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902607, 37.469269, 50.109161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.573765, 37.309254, 49.947121>,  <32.376461, 37.213245, 49.849895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.573765, 37.309254, 49.947121>,  <32.902607, 37.469269, 50.109161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573765, 37.309254, 49.947121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442194, 0.000458, 0.896919,
		-0.358617, 0.916498, -0.177272,
		-0.822106, -0.400039, -0.405106,
		32.327133, 37.189243, 49.825588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262798, 37.755795, 50.522205>,  <32.902607, 37.469269, 50.109161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262798, 37.755795, 50.522205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.112270, 37.432972, 50.340195>,  <32.021954, 37.239281, 50.230988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.112270, 37.432972, 50.340195>,  <32.262798, 37.755795, 50.522205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112270, 37.432972, 50.340195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532866, -0.213234, 0.818892,
		-0.757917, 0.550632, -0.349808,
		-0.376317, -0.807054, -0.455027,
		31.999374, 37.190857, 50.203686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462193, 37.743824, 50.428291>,  <32.262798, 37.755795, 50.522205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462193, 37.743824, 50.428291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.616161, 37.374912, 50.442390>,  <31.708542, 37.153564, 50.450848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.616161, 37.374912, 50.442390>,  <31.462193, 37.743824, 50.428291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616161, 37.374912, 50.442390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533809, -0.191313, 0.823679,
		-0.752917, -0.335865, -0.565960,
		0.384920, -0.922277, 0.035245,
		31.731638, 37.098228, 50.452965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723635, 37.858368, 50.210537>,  <31.462193, 37.743824, 50.428291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723635, 37.858368, 50.210537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.041327, 37.976860, 49.998329>,  <31.231941, 38.047955, 49.871006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.041327, 37.976860, 49.998329>,  <30.723635, 37.858368, 50.210537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041327, 37.976860, 49.998329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219019, -0.953985, -0.204799,
		-0.566773, 0.046464, -0.822563,
		0.794229, 0.296231, -0.530516,
		31.279594, 38.065731, 49.839172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239607, 38.106838, 49.672535>,  <30.723635, 37.858368, 50.210537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239607, 38.106838, 49.672535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.947836, 38.138435, 49.944328>,  <29.772774, 38.157394, 50.107403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.947836, 38.138435, 49.944328>,  <30.239607, 38.106838, 49.672535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.947836, 38.138435, 49.944328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636944, -0.440689, -0.632530,
		0.249477, -0.894177, 0.371763,
		-0.729426, 0.078991, 0.679483,
		29.729008, 38.162132, 50.148174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153280, 37.328232, 49.840714>,  <30.239607, 38.106838, 49.672535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153280, 37.328232, 49.840714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.757811, 37.275276, 49.812443>,  <29.520529, 37.243504, 49.795479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.757811, 37.275276, 49.812443>,  <30.153280, 37.328232, 49.840714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757811, 37.275276, 49.812443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112150, -0.338788, -0.934155,
		0.099730, -0.931501, 0.349799,
		-0.988674, -0.132393, -0.070680,
		29.461208, 37.235558, 49.791237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059402, 36.632469, 49.641773>,  <30.153280, 37.328232, 49.840714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.059402, 36.632469, 49.641773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.735806, 36.849869, 49.552204>,  <29.541647, 36.980309, 49.498463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.735806, 36.849869, 49.552204>,  <30.059402, 36.632469, 49.641773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735806, 36.849869, 49.552204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031382, -0.340459, -0.939735,
		-0.586979, -0.767267, 0.258373,
		-0.808994, 0.543497, -0.223921,
		29.493107, 37.012917, 49.485027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595865, 36.166046, 49.269260>,  <30.059402, 36.632469, 49.641773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595865, 36.166046, 49.269260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.479733, 36.539642, 49.185963>,  <29.410053, 36.763802, 49.135983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.479733, 36.539642, 49.185963>,  <29.595865, 36.166046, 49.269260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.479733, 36.539642, 49.185963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294941, -0.294369, -0.909042,
		-0.910338, -0.202505, 0.360937,
		-0.290334, 0.933991, -0.208249,
		29.392632, 36.819839, 49.123489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053579, 36.133022, 48.832714>,  <29.595865, 36.166046, 49.269260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053579, 36.133022, 48.832714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.175623, 36.510429, 48.781063>,  <29.248850, 36.736874, 48.750072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.175623, 36.510429, 48.781063>,  <29.053579, 36.133022, 48.832714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.175623, 36.510429, 48.781063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053639, -0.118353, -0.991522,
		-0.950805, 0.309450, 0.014498,
		0.305111, 0.943522, -0.129129,
		29.267157, 36.793488, 48.742325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678982, 36.536621, 48.408138>,  <29.053579, 36.133022, 48.832714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678982, 36.536621, 48.408138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.990433, 36.787537, 48.401840>,  <29.177303, 36.938087, 48.398064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.990433, 36.787537, 48.401840>,  <28.678982, 36.536621, 48.408138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.990433, 36.787537, 48.401840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016390, -0.004748, -0.999855,
		-0.627273, 0.778772, 0.006585,
		0.778627, 0.627289, -0.015742,
		29.224020, 36.975723, 48.397118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.493252, 36.874557, 47.882114>,  <28.678982, 36.536621, 48.408138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.493252, 36.874557, 47.882114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.885180, 36.919651, 47.948139>,  <29.120337, 36.946709, 47.987755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.885180, 36.919651, 47.948139>,  <28.493252, 36.874557, 47.882114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885180, 36.919651, 47.948139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181960, -0.161227, -0.969998,
		-0.082741, 0.980457, -0.178487,
		0.979819, 0.112736, 0.165064,
		29.179125, 36.953472, 47.997658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695114, 37.465279, 47.453712>,  <28.493252, 36.874557, 47.882114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695114, 37.465279, 47.453712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.995693, 37.216030, 47.540466>,  <29.176041, 37.066479, 47.592518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.995693, 37.216030, 47.540466>,  <28.695114, 37.465279, 47.453712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995693, 37.216030, 47.540466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136197, -0.175146, -0.975077,
		0.645582, 0.762259, -0.046746,
		0.751448, -0.623125, 0.216888,
		29.221128, 37.029091, 47.605534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239531, 37.631374, 46.954807>,  <28.695114, 37.465279, 47.453712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.239531, 37.631374, 46.954807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.387207, 37.282001, 47.081810>,  <29.475813, 37.072376, 47.158012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.387207, 37.282001, 47.081810>,  <29.239531, 37.631374, 46.954807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387207, 37.282001, 47.081810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212376, -0.253314, -0.943784,
		0.904763, 0.415866, 0.091975,
		0.369190, -0.873434, 0.317509,
		29.497963, 37.019970, 47.177063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925926, 37.618725, 46.808273>,  <29.239531, 37.631374, 46.954807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925926, 37.618725, 46.808273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.804296, 37.238384, 46.831680>,  <29.731319, 37.010181, 46.845726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.804296, 37.238384, 46.831680>,  <29.925926, 37.618725, 46.808273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804296, 37.238384, 46.831680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515695, -0.215943, -0.829112,
		0.800997, -0.221934, 0.556011,
		-0.304075, -0.950849, 0.058520,
		29.713074, 36.953129, 46.849236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439980, 37.271202, 46.697609>,  <29.925926, 37.618725, 46.808273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439980, 37.271202, 46.697609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.179321, 36.976360, 46.626007>,  <30.022926, 36.799458, 46.583046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.179321, 36.976360, 46.626007>,  <30.439980, 37.271202, 46.697609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179321, 36.976360, 46.626007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542184, -0.287596, -0.789510,
		0.530469, -0.611531, 0.587054,
		-0.651644, -0.737101, -0.179002,
		29.983828, 36.755230, 46.572308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871883, 36.633522, 46.668510>,  <30.439980, 37.271202, 46.697609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871883, 36.633522, 46.668510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.530857, 36.573421, 46.468288>,  <30.326241, 36.537361, 46.348156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.530857, 36.573421, 46.468288>,  <30.871883, 36.633522, 46.668510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530857, 36.573421, 46.468288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519217, -0.134431, -0.844004,
		0.059520, -0.979466, 0.192623,
		-0.852568, -0.150248, -0.500554,
		30.275087, 36.528347, 46.318123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012859, 35.929909, 46.297752>,  <30.871883, 36.633522, 46.668510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012859, 35.929909, 46.297752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.713972, 36.118774, 46.110680>,  <30.534639, 36.232094, 45.998436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.713972, 36.118774, 46.110680>,  <31.012859, 35.929909, 46.297752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713972, 36.118774, 46.110680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448774, -0.160553, -0.879104,
		-0.490169, -0.866766, -0.091927,
		-0.747219, 0.472164, -0.467680,
		30.489807, 36.260422, 45.970375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.934221, 35.495434, 45.653561>,  <31.012859, 35.929909, 46.297752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.934221, 35.495434, 45.653561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.729074, 35.832653, 45.588776>,  <30.605986, 36.034985, 45.549904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.729074, 35.832653, 45.588776>,  <30.934221, 35.495434, 45.653561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.729074, 35.832653, 45.588776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395111, 0.064311, -0.916380,
		-0.762138, -0.533975, -0.366081,
		-0.512867, 0.843051, -0.161965,
		30.575214, 36.085567, 45.540188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526728, 35.415535, 45.057404>,  <30.934221, 35.495434, 45.653561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526728, 35.415535, 45.057404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.596605, 35.808834, 45.078247>,  <30.638531, 36.044811, 45.090752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.596605, 35.808834, 45.078247>,  <30.526728, 35.415535, 45.057404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596605, 35.808834, 45.078247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331958, -0.008994, -0.943251,
		-0.926977, 0.182076, -0.327967,
		0.174693, 0.983243, 0.052104,
		30.649014, 36.103806, 45.093880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.294556, 35.666706, 44.456528>,  <30.526728, 35.415535, 45.057404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.294556, 35.666706, 44.456528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.563845, 35.935120, 44.580780>,  <30.725418, 36.096169, 44.655331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.563845, 35.935120, 44.580780>,  <30.294556, 35.666706, 44.456528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563845, 35.935120, 44.580780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351225, 0.079485, -0.932911,
		-0.650704, 0.737155, -0.182172,
		0.673220, 0.671032, 0.310629,
		30.765810, 36.136429, 44.673969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398907, 36.224182, 43.970482>,  <30.294556, 35.666706, 44.456528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398907, 36.224182, 43.970482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.733355, 36.277260, 44.183384>,  <30.934023, 36.309105, 44.311127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.733355, 36.277260, 44.183384>,  <30.398907, 36.224182, 43.970482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733355, 36.277260, 44.183384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453687, 0.378114, -0.806968,
		-0.308334, 0.916199, 0.255947,
		0.836121, 0.132696, 0.532254,
		30.984190, 36.317070, 44.343060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681561, 36.871521, 43.773613>,  <30.398907, 36.224182, 43.970482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681561, 36.871521, 43.773613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.990911, 36.687252, 43.947819>,  <31.176521, 36.576691, 44.052341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.990911, 36.687252, 43.947819>,  <30.681561, 36.871521, 43.773613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990911, 36.687252, 43.947819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586050, 0.257572, -0.768246,
		0.241735, 0.849374, 0.469178,
		0.773376, -0.460674, 0.435511,
		31.222923, 36.549049, 44.078472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117523, 37.381611, 43.722580>,  <30.681561, 36.871521, 43.773613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117523, 37.381611, 43.722580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.319513, 37.039398, 43.768303>,  <31.440708, 36.834072, 43.795738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.319513, 37.039398, 43.768303>,  <31.117523, 37.381611, 43.722580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319513, 37.039398, 43.768303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568518, 0.230035, -0.789855,
		0.649450, 0.463844, 0.602547,
		0.504977, -0.855530, 0.114308,
		31.471006, 36.782738, 43.802597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853453, 37.584820, 43.655708>,  <31.117523, 37.381611, 43.722580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853453, 37.584820, 43.655708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.810986, 37.191105, 43.599270>,  <31.785505, 36.954876, 43.565407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.810986, 37.191105, 43.599270>,  <31.853453, 37.584820, 43.655708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810986, 37.191105, 43.599270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555356, 0.059011, -0.829516,
		0.824808, -0.166426, 0.540365,
		-0.106166, -0.984287, -0.141098,
		31.779137, 36.895821, 43.556942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494267, 37.389397, 43.416382>,  <31.853453, 37.584820, 43.655708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494267, 37.389397, 43.416382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.251129, 37.085285, 43.324734>,  <32.105247, 36.902817, 43.269745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.251129, 37.085285, 43.324734>,  <32.494267, 37.389397, 43.416382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251129, 37.085285, 43.324734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417935, -0.060972, -0.906429,
		0.675168, -0.646730, 0.354808,
		-0.607848, -0.760278, -0.229124,
		32.068775, 36.857201, 43.255997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.817337, 40.403408, 36.790001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.548416, 40.141689, 36.928505>,  <40.387062, 39.984657, 37.011608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.548416, 40.141689, 36.928505>,  <40.817337, 40.403408, 36.790001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548416, 40.141689, 36.928505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689917, -0.723372, -0.027342,
		0.268363, 0.220508, 0.937741,
		-0.672306, -0.654301, 0.346258,
		40.346725, 39.945400, 37.032383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268620, 40.040264, 37.305271>,  <40.817337, 40.403408, 36.790001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268620, 40.040264, 37.305271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.945164, 39.818027, 37.227901>,  <40.751091, 39.684685, 37.181480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.945164, 39.818027, 37.227901>,  <41.268620, 40.040264, 37.305271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.945164, 39.818027, 37.227901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582012, -0.803467, -0.125310,
		-0.085786, -0.213905, 0.973081,
		-0.808642, -0.555595, -0.193422,
		40.702572, 39.651348, 37.169876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.421764, 39.476345, 37.593662>,  <41.268620, 40.040264, 37.305271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.421764, 39.476345, 37.593662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.135994, 39.349243, 37.344299>,  <40.964531, 39.272984, 37.194683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.135994, 39.349243, 37.344299>,  <41.421764, 39.476345, 37.593662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135994, 39.349243, 37.344299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473548, -0.875471, -0.096453,
		-0.515124, -0.364120, 0.775928,
		-0.714422, -0.317754, -0.623404,
		40.921669, 39.253918, 37.157276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274467, 38.854473, 37.845860>,  <41.421764, 39.476345, 37.593662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274467, 38.854473, 37.845860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.162731, 38.866497, 37.461971>,  <41.095688, 38.873711, 37.231640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.162731, 38.866497, 37.461971>,  <41.274467, 38.854473, 37.845860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162731, 38.866497, 37.461971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604640, -0.770946, -0.200133,
		-0.745909, -0.636191, 0.197182,
		-0.279340, 0.030057, -0.959722,
		41.078930, 38.875515, 37.174053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252335, 38.162476, 37.696548>,  <41.274467, 38.854473, 37.845860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252335, 38.162476, 37.696548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.272972, 38.343479, 37.340443>,  <41.285355, 38.452084, 37.126778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.272972, 38.343479, 37.340443>,  <41.252335, 38.162476, 37.696548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272972, 38.343479, 37.340443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633920, -0.703668, -0.320932,
		-0.771676, -0.547799, -0.323161,
		0.051591, 0.452513, -0.890264,
		41.288448, 38.479233, 37.073364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173786, 37.699181, 37.153103>,  <41.252335, 38.162476, 37.696548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173786, 37.699181, 37.153103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.355942, 37.996082, 36.956463>,  <41.465237, 38.174225, 36.838478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.355942, 37.996082, 36.956463>,  <41.173786, 37.699181, 37.153103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355942, 37.996082, 36.956463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578670, -0.666409, -0.470150,
		-0.676582, -0.070375, -0.732997,
		0.455389, 0.742258, -0.491604,
		41.492558, 38.218761, 36.808983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140511, 37.502186, 36.406219>,  <41.173786, 37.699181, 37.153103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140511, 37.502186, 36.406219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.442715, 37.759869, 36.453896>,  <41.624035, 37.914478, 36.482502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.442715, 37.759869, 36.453896>,  <41.140511, 37.502186, 36.406219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442715, 37.759869, 36.453896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635907, -0.677329, -0.369929,
		-0.157582, 0.355277, -0.921383,
		0.755507, 0.644208, 0.119189,
		41.669365, 37.953133, 36.489651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547516, 37.527802, 35.716759>,  <41.140511, 37.502186, 36.406219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.547516, 37.527802, 35.716759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.773510, 37.642063, 36.026390>,  <41.909107, 37.710621, 36.212170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.773510, 37.642063, 36.026390>,  <41.547516, 37.527802, 35.716759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.773510, 37.642063, 36.026390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678950, -0.694046, -0.239430,
		0.468848, 0.660832, -0.586074,
		0.564985, 0.285659, 0.774074,
		41.943005, 37.727760, 36.258614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.243156, 37.445194, 35.469246>,  <41.547516, 37.527802, 35.716759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.243156, 37.445194, 35.469246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.307789, 37.484547, 35.862022>,  <42.346569, 37.508160, 36.097691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.307789, 37.484547, 35.862022>,  <42.243156, 37.445194, 35.469246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.307789, 37.484547, 35.862022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712374, -0.700220, -0.047069,
		0.682946, 0.707116, -0.183225,
		0.161581, 0.098379, 0.981944,
		42.356262, 37.514061, 36.156605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.046421, 37.364895, 35.630692>,  <42.243156, 37.445194, 35.469246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.046421, 37.364895, 35.630692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.852783, 37.284214, 35.971272>,  <42.736599, 37.235806, 36.175621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.852783, 37.284214, 35.971272>,  <43.046421, 37.364895, 35.630692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.852783, 37.284214, 35.971272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673319, -0.707320, 0.215266,
		0.558828, 0.677507, 0.478221,
		-0.484099, -0.201699, 0.851449,
		42.707554, 37.223705, 36.226707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561974, 37.186817, 36.141018>,  <43.046421, 37.364895, 35.630692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561974, 37.186817, 36.141018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.227402, 37.022968, 36.286674>,  <43.026657, 36.924660, 36.374069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.227402, 37.022968, 36.286674>,  <43.561974, 37.186817, 36.141018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.227402, 37.022968, 36.286674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504651, -0.834784, 0.220143,
		0.213804, 0.367898, 0.904952,
		-0.836430, -0.409618, 0.364140,
		42.976471, 36.900082, 36.395916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.847389, 36.752209, 36.732243>,  <43.561974, 37.186817, 36.141018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.847389, 36.752209, 36.732243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.465885, 36.634701, 36.706791>,  <43.236984, 36.564198, 36.691521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.465885, 36.634701, 36.706791>,  <43.847389, 36.752209, 36.732243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.465885, 36.634701, 36.706791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280037, -0.945352, 0.166999,
		-0.109210, 0.141458, 0.983902,
		-0.953757, -0.293767, -0.063628,
		43.179756, 36.546570, 36.687702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.767952, 36.291264, 37.286335>,  <43.847389, 36.752209, 36.732243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.767952, 36.291264, 37.286335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.476028, 36.208519, 37.025692>,  <43.300877, 36.158875, 36.869305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.476028, 36.208519, 37.025692>,  <43.767952, 36.291264, 37.286335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.476028, 36.208519, 37.025692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070982, -0.970901, 0.228722,
		-0.679959, 0.120671, 0.723252,
		-0.729806, -0.206859, -0.651608,
		43.257088, 36.146461, 36.830208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.483185, 35.764210, 37.527355>,  <43.767952, 36.291264, 37.286335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.483185, 35.764210, 37.527355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.392746, 35.713463, 37.141033>,  <43.338482, 35.683014, 36.909241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.392746, 35.713463, 37.141033>,  <43.483185, 35.764210, 37.527355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.392746, 35.713463, 37.141033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096307, -0.989536, 0.107440,
		-0.969332, -0.068723, 0.235951,
		-0.226098, -0.126868, -0.965807,
		43.324917, 35.675404, 36.851292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.043987, 35.172443, 37.570316>,  <43.483185, 35.764210, 37.527355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.043987, 35.172443, 37.570316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.169193, 35.203602, 37.191696>,  <43.244316, 35.222298, 36.964523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.169193, 35.203602, 37.191696>,  <43.043987, 35.172443, 37.570316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.169193, 35.203602, 37.191696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033799, -0.995085, -0.093072,
		-0.949146, 0.061125, -0.308845,
		0.313016, 0.077901, -0.946548,
		43.263100, 35.226971, 36.907730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.676350, 34.645042, 37.239849>,  <43.043987, 35.172443, 37.570316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.676350, 34.645042, 37.239849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.998859, 34.750084, 37.027824>,  <43.192364, 34.813107, 36.900608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.998859, 34.750084, 37.027824>,  <42.676350, 34.645042, 37.239849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.998859, 34.750084, 37.027824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224801, -0.964858, -0.136062,
		-0.547163, -0.009455, -0.836972,
		0.806273, 0.262600, -0.530061,
		43.240742, 34.828865, 36.868805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.595615, 34.295307, 36.623871>,  <42.676350, 34.645042, 37.239849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.595615, 34.295307, 36.623871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.982006, 34.384693, 36.675953>,  <43.213840, 34.438324, 36.707203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.982006, 34.384693, 36.675953>,  <42.595615, 34.295307, 36.623871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.982006, 34.384693, 36.675953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233419, -0.970075, -0.066850,
		0.111370, 0.094968, -0.989231,
		0.965977, 0.223461, 0.130204,
		43.271801, 34.451733, 36.715015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.977165, 33.895298, 36.031395>,  <42.595615, 34.295307, 36.623871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.977165, 33.895298, 36.031395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.275681, 34.008522, 36.272373>,  <43.454788, 34.076458, 36.416958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.275681, 34.008522, 36.272373>,  <42.977165, 33.895298, 36.031395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.275681, 34.008522, 36.272373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493711, -0.842434, -0.215765,
		0.446442, 0.458454, -0.768446,
		0.746284, 0.283064, 0.602441,
		43.499565, 34.093441, 36.453106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.726593, 33.948753, 35.671410>,  <42.977165, 33.895298, 36.031395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.726593, 33.948753, 35.671410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.747719, 33.872166, 36.063442>,  <43.760395, 33.826214, 36.298660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.747719, 33.872166, 36.063442>,  <43.726593, 33.948753, 35.671410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.747719, 33.872166, 36.063442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569594, -0.800360, -0.187049,
		0.820228, 0.568124, 0.066791,
		0.052810, -0.191467, 0.980077,
		43.763561, 33.814724, 36.357464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.423603, 33.670544, 35.808186>,  <43.726593, 33.948753, 35.671410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.423603, 33.670544, 35.808186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.229366, 33.562237, 36.140663>,  <44.112823, 33.497253, 36.340149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.229366, 33.562237, 36.140663>,  <44.423603, 33.670544, 35.808186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.229366, 33.562237, 36.140663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536908, -0.842732, 0.039145,
		0.689876, 0.465284, 0.554601,
		-0.485594, -0.270764, 0.831195,
		44.083687, 33.481007, 36.390022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.903618, 33.331894, 36.208851>,  <44.423603, 33.670544, 35.808186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.903618, 33.331894, 36.208851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.570122, 33.199760, 36.385830>,  <44.370026, 33.120480, 36.492016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.570122, 33.199760, 36.385830>,  <44.903618, 33.331894, 36.208851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.570122, 33.199760, 36.385830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457632, -0.861762, 0.218950,
		0.308955, 0.385024, 0.869657,
		-0.833738, -0.330337, 0.442445,
		44.320000, 33.100658, 36.518562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.148808, 33.818356, 36.724693>,  <44.903618, 33.331894, 36.208851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.148808, 33.818356, 36.724693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.418640, 34.049133, 36.908897>,  <45.580540, 34.187599, 37.019421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.418640, 34.049133, 36.908897>,  <45.148808, 33.818356, 36.724693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.418640, 34.049133, 36.908897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707359, 0.326757, 0.626797,
		0.211152, -0.748573, 0.628532,
		0.674580, 0.576947, 0.460514,
		45.621014, 34.222218, 37.047050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.009838, 33.812202, 37.512619>,  <45.148808, 33.818356, 36.724693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.009838, 33.812202, 37.512619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.192417, 34.157246, 37.425388>,  <45.301964, 34.364273, 37.373051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.192417, 34.157246, 37.425388>,  <45.009838, 33.812202, 37.512619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.192417, 34.157246, 37.425388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532748, 0.461271, 0.709514,
		0.712627, -0.207677, 0.670100,
		0.456447, 0.862612, -0.218075,
		45.329350, 34.416031, 37.359966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.349682, 34.078705, 38.114578>,  <45.009838, 33.812202, 37.512619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.349682, 34.078705, 38.114578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.270866, 34.397675, 37.886440>,  <45.223576, 34.589058, 37.749557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.270866, 34.397675, 37.886440>,  <45.349682, 34.078705, 38.114578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.270866, 34.397675, 37.886440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404002, 0.464016, 0.788335,
		0.893285, 0.385751, 0.230733,
		-0.197037, 0.797424, -0.570343,
		45.211754, 34.636902, 37.715336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.519562, 34.588226, 38.573292>,  <45.349682, 34.078705, 38.114578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.519562, 34.588226, 38.573292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.290432, 34.744961, 38.285309>,  <45.152954, 34.839001, 38.112518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.290432, 34.744961, 38.285309>,  <45.519562, 34.588226, 38.573292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.290432, 34.744961, 38.285309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417442, 0.616443, 0.667637,
		0.705418, 0.682978, -0.189542,
		-0.572824, 0.391841, -0.719954,
		45.118584, 34.862514, 38.069321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.505028, 35.271072, 38.754108>,  <45.519562, 34.588226, 38.573292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.505028, 35.271072, 38.754108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.198219, 35.214119, 38.503860>,  <45.014133, 35.179947, 38.353710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.198219, 35.214119, 38.503860>,  <45.505028, 35.271072, 38.754108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.198219, 35.214119, 38.503860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545660, 0.657703, 0.519309,
		0.337534, 0.739699, -0.582165,
		-0.767024, -0.142380, -0.625621,
		44.968113, 35.171406, 38.316174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.332241, 35.913776, 38.555191>,  <45.505028, 35.271072, 38.754108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.332241, 35.913776, 38.555191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.010448, 35.689827, 38.475842>,  <44.817371, 35.555458, 38.428234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.010448, 35.689827, 38.475842>,  <45.332241, 35.913776, 38.555191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.010448, 35.689827, 38.475842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570485, 0.635320, 0.520495,
		-0.165382, 0.531897, -0.830503,
		-0.804484, -0.559870, -0.198369,
		44.769104, 35.521866, 38.416332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.948704, 36.352634, 38.307732>,  <45.332241, 35.913776, 38.555191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.948704, 36.352634, 38.307732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.704220, 36.049328, 38.398472>,  <44.557529, 35.867344, 38.452915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.704220, 36.049328, 38.398472>,  <44.948704, 36.352634, 38.307732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.704220, 36.049328, 38.398472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635488, 0.641013, 0.430415,
		-0.471783, 0.118911, -0.873659,
		-0.611208, -0.758263, 0.226853,
		44.520859, 35.821850, 38.466526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.287075, 36.613865, 38.202980>,  <44.948704, 36.352634, 38.307732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.287075, 36.613865, 38.202980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.253124, 36.300678, 38.449478>,  <44.232754, 36.112766, 38.597378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.253124, 36.300678, 38.449478>,  <44.287075, 36.613865, 38.202980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.253124, 36.300678, 38.449478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643913, 0.515082, 0.565744,
		-0.760376, -0.348787, -0.547884,
		-0.084881, -0.782967, 0.616245,
		44.227661, 36.065788, 38.634350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.604450, 36.565292, 38.285099>,  <44.287075, 36.613865, 38.202980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.604450, 36.565292, 38.285099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.735546, 36.374084, 38.611065>,  <43.814201, 36.259361, 38.806644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.735546, 36.374084, 38.611065>,  <43.604450, 36.565292, 38.285099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.735546, 36.374084, 38.611065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636974, 0.525232, 0.564265,
		-0.697749, -0.704010, -0.132347,
		0.327735, -0.478017, 0.814917,
		43.833866, 36.230679, 38.855541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.027832, 36.165756, 38.742203>,  <43.604450, 36.565292, 38.285099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.027832, 36.165756, 38.742203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.335911, 36.245628, 38.984497>,  <43.520760, 36.293552, 39.129875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.335911, 36.245628, 38.984497>,  <43.027832, 36.165756, 38.742203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.335911, 36.245628, 38.984497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577412, 0.621693, 0.529239,
		-0.270904, -0.757380, 0.594127,
		0.770199, 0.199683, 0.605739,
		43.566971, 36.305534, 39.166218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.673885, 36.343552, 39.319965>,  <43.027832, 36.165756, 38.742203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.673885, 36.343552, 39.319965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.043865, 36.468628, 39.406395>,  <43.265854, 36.543674, 39.458252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.043865, 36.468628, 39.406395>,  <42.673885, 36.343552, 39.319965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.043865, 36.468628, 39.406395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373208, 0.639513, 0.672115,
		0.071984, -0.702314, 0.708218,
		0.924951, 0.312694, 0.216075,
		43.321350, 36.562435, 39.471218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.696033, 36.308346, 39.960297>,  <42.673885, 36.343552, 39.319965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.696033, 36.308346, 39.960297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.984436, 36.569660, 39.867889>,  <43.157478, 36.726448, 39.812447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.984436, 36.569660, 39.867889>,  <42.696033, 36.308346, 39.960297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.984436, 36.569660, 39.867889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413359, 0.673078, 0.613270,
		0.556128, -0.346682, 0.755336,
		0.721010, 0.653282, -0.231013,
		43.200741, 36.765644, 39.798584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.666100, 36.640797, 40.540836>,  <42.696033, 36.308346, 39.960297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.666100, 36.640797, 40.540836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.891010, 36.870476, 40.302795>,  <43.025955, 37.008282, 40.159973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.891010, 36.870476, 40.302795>,  <42.666100, 36.640797, 40.540836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891010, 36.870476, 40.302795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349307, 0.817194, 0.458453,
		0.749554, -0.049904, 0.660059,
		0.562275, 0.574199, -0.595099,
		43.059692, 37.042736, 40.124264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.944794, 37.179131, 41.012093>,  <42.666100, 36.640797, 40.540836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.944794, 37.179131, 41.012093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.973164, 37.309719, 40.635075>,  <42.990185, 37.388073, 40.408863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.973164, 37.309719, 40.635075>,  <42.944794, 37.179131, 41.012093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.973164, 37.309719, 40.635075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372974, 0.885061, 0.278490,
		0.925127, 0.331792, 0.184538,
		0.070927, 0.326467, -0.942544,
		42.994442, 37.407658, 40.352310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.194550, 37.835529, 41.055737>,  <42.944794, 37.179131, 41.012093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.194550, 37.835529, 41.055737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.025719, 37.812862, 40.693821>,  <42.924419, 37.799263, 40.476673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.025719, 37.812862, 40.693821>,  <43.194550, 37.835529, 41.055737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.025719, 37.812862, 40.693821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436212, 0.887607, 0.147896,
		0.794715, 0.457103, -0.399355,
		-0.422074, -0.056668, -0.904789,
		42.899097, 37.795860, 40.422386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.364677, 38.461948, 40.640301>,  <43.194550, 37.835529, 41.055737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.364677, 38.461948, 40.640301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.039516, 38.294735, 40.478100>,  <42.844418, 38.194408, 40.380779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.039516, 38.294735, 40.478100>,  <43.364677, 38.461948, 40.640301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.039516, 38.294735, 40.478100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369948, 0.908394, -0.194833,
		0.449803, -0.008366, -0.893089,
		-0.812906, -0.418033, -0.405503,
		42.795643, 38.169327, 40.356449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.169140, 38.947247, 40.168747>,  <43.364677, 38.461948, 40.640301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.169140, 38.947247, 40.168747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.835419, 38.726902, 40.177612>,  <42.635185, 38.594696, 40.182934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.835419, 38.726902, 40.177612>,  <43.169140, 38.947247, 40.168747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.835419, 38.726902, 40.177612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547358, 0.822860, -0.152646,
		0.065845, -0.139487, -0.988032,
		-0.834304, -0.550858, 0.022168,
		42.585129, 38.561646, 40.184261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.838058, 39.085220, 39.662296>,  <43.169140, 38.947247, 40.168747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.838058, 39.085220, 39.662296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.557739, 38.923721, 39.897537>,  <42.389549, 38.826820, 40.038681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.557739, 38.923721, 39.897537>,  <42.838058, 39.085220, 39.662296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.557739, 38.923721, 39.897537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587364, 0.794436, -0.154512,
		-0.404827, -0.453713, -0.793888,
		-0.700798, -0.403751, 0.588105,
		42.347500, 38.802597, 40.073967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130817, 39.278267, 39.351257>,  <42.838058, 39.085220, 39.662296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130817, 39.278267, 39.351257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.045048, 39.196739, 39.733353>,  <41.993584, 39.147823, 39.962608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.045048, 39.196739, 39.733353>,  <42.130817, 39.278267, 39.351257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.045048, 39.196739, 39.733353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641928, 0.766519, 0.019453,
		-0.736172, -0.609022, -0.295199,
		-0.214428, -0.203817, 0.955238,
		41.980721, 39.135593, 40.019924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463966, 39.403576, 39.402725>,  <42.130817, 39.278267, 39.351257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463966, 39.403576, 39.402725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.558968, 39.394501, 39.791172>,  <41.615971, 39.389057, 40.024242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.558968, 39.394501, 39.791172>,  <41.463966, 39.403576, 39.402725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.558968, 39.394501, 39.791172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685731, 0.704172, 0.184158,
		-0.688014, -0.709667, 0.151689,
		0.237506, -0.022685, 0.971121,
		41.630219, 39.387695, 40.082508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805267, 39.184013, 39.804054>,  <41.463966, 39.403576, 39.402725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805267, 39.184013, 39.804054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.029400, 39.391731, 40.062157>,  <41.163879, 39.516361, 40.217018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.029400, 39.391731, 40.062157>,  <40.805267, 39.184013, 39.804054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029400, 39.391731, 40.062157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787644, 0.575062, 0.221178,
		-0.256208, -0.632169, 0.731246,
		0.560334, 0.519294, 0.645260,
		41.197498, 39.547520, 40.255733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.600979, 34.640400, 41.182152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241043, 34.635494, 41.007736>,  <37.025082, 34.632549, 40.903088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241043, 34.635494, 41.007736>,  <37.600979, 34.640400, 41.182152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241043, 34.635494, 41.007736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429053, -0.205288, -0.879642,
		-0.078722, -0.978625, 0.189991,
		-0.899842, -0.012269, -0.436043,
		36.971092, 34.631813, 40.876923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603527, 34.041553, 40.843288>,  <37.600979, 34.640400, 41.182152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603527, 34.041553, 40.843288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285816, 34.216251, 40.674351>,  <37.095188, 34.321072, 40.572987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285816, 34.216251, 40.674351>,  <37.603527, 34.041553, 40.843288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285816, 34.216251, 40.674351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273199, -0.364166, -0.890362,
		-0.542668, -0.822579, 0.169930,
		-0.794276, 0.436746, -0.422349,
		37.047535, 34.347275, 40.547646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182610, 33.500671, 40.436779>,  <37.603527, 34.041553, 40.843288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182610, 33.500671, 40.436779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147312, 33.876831, 40.305412>,  <37.126133, 34.102528, 40.226593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147312, 33.876831, 40.305412>,  <37.182610, 33.500671, 40.436779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147312, 33.876831, 40.305412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050509, -0.325054, -0.944345,
		-0.994817, -0.099924, -0.018814,
		-0.088247, 0.940401, -0.328417,
		37.120838, 34.158951, 40.206886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857536, 33.373318, 39.931396>,  <37.182610, 33.500671, 40.436779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857536, 33.373318, 39.931396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973934, 33.745213, 39.841148>,  <37.043774, 33.968349, 39.786999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973934, 33.745213, 39.841148>,  <36.857536, 33.373318, 39.931396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973934, 33.745213, 39.841148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180092, -0.284840, -0.941506,
		-0.939621, 0.233342, -0.250326,
		0.290996, 0.929741, -0.225618,
		37.061234, 34.024136, 39.773464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545826, 33.395424, 39.278107>,  <36.857536, 33.373318, 39.931396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545826, 33.395424, 39.278107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829136, 33.671108, 39.339211>,  <36.999123, 33.836517, 39.375874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829136, 33.671108, 39.339211>,  <36.545826, 33.395424, 39.278107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829136, 33.671108, 39.339211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345460, -0.149682, -0.926419,
		-0.615632, 0.708932, -0.344111,
		0.708275, 0.689210, 0.152759,
		37.041618, 33.877872, 39.385036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498108, 33.844021, 38.724976>,  <36.545826, 33.395424, 39.278107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498108, 33.844021, 38.724976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873173, 33.870590, 38.861435>,  <37.098209, 33.886532, 38.943310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873173, 33.870590, 38.861435>,  <36.498108, 33.844021, 38.724976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873173, 33.870590, 38.861435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347315, -0.142274, -0.926893,
		-0.013034, 0.987596, -0.156476,
		0.937658, 0.066428, 0.341153,
		37.154469, 33.890518, 38.963779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809826, 34.309193, 38.218170>,  <36.498108, 33.844021, 38.724976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809826, 34.309193, 38.218170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107887, 34.136745, 38.421696>,  <37.286724, 34.033279, 38.543812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107887, 34.136745, 38.421696>,  <36.809826, 34.309193, 38.218170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107887, 34.136745, 38.421696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536025, -0.066755, -0.841558,
		0.396774, 0.899825, 0.181345,
		0.745149, -0.431114, 0.508816,
		37.331432, 34.007412, 38.574341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394695, 34.600971, 37.921906>,  <36.809826, 34.309193, 38.218170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394695, 34.600971, 37.921906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544888, 34.270889, 38.090687>,  <37.635002, 34.072838, 38.191956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544888, 34.270889, 38.090687>,  <37.394695, 34.600971, 37.921906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544888, 34.270889, 38.090687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744698, -0.002407, -0.667397,
		0.551758, 0.564822, 0.613628,
		0.375484, -0.825209, 0.421950,
		37.657532, 34.023327, 38.217274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034180, 34.789616, 38.102940>,  <37.394695, 34.600971, 37.921906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034180, 34.789616, 38.102940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027847, 34.392570, 38.054825>,  <38.024048, 34.154343, 38.025955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027847, 34.392570, 38.054825>,  <38.034180, 34.789616, 38.102940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027847, 34.392570, 38.054825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676695, 0.077924, -0.732128,
		0.736093, -0.092987, 0.670463,
		-0.015833, -0.992613, -0.120283,
		38.023098, 34.094788, 38.018742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745785, 34.536583, 37.946053>,  <38.034180, 34.789616, 38.102940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745785, 34.536583, 37.946053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553757, 34.202835, 37.837715>,  <38.438541, 34.002586, 37.772713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553757, 34.202835, 37.837715>,  <38.745785, 34.536583, 37.946053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553757, 34.202835, 37.837715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598081, -0.085451, -0.796867,
		0.641741, -0.544536, 0.540045,
		-0.480070, -0.834373, -0.270839,
		38.409737, 33.952522, 37.756462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310627, 34.061840, 37.886040>,  <38.745785, 34.536583, 37.946053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310627, 34.061840, 37.886040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005733, 33.917450, 37.671116>,  <38.822800, 33.830818, 37.542160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005733, 33.917450, 37.671116>,  <39.310627, 34.061840, 37.886040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005733, 33.917450, 37.671116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600993, -0.086311, -0.794580,
		0.240444, -0.928574, 0.282730,
		-0.762229, -0.360971, -0.537314,
		38.777065, 33.809158, 37.509922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631680, 33.487438, 37.458488>,  <39.310627, 34.061840, 37.886040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631680, 33.487438, 37.458488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282520, 33.569283, 37.281319>,  <39.073025, 33.618389, 37.175018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282520, 33.569283, 37.281319>,  <39.631680, 33.487438, 37.458488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282520, 33.569283, 37.281319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424187, -0.130272, -0.896156,
		-0.241060, -0.970137, 0.026923,
		-0.872901, 0.204607, -0.442922,
		39.020649, 33.630665, 37.148441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658710, 33.074829, 36.895809>,  <39.631680, 33.487438, 37.458488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658710, 33.074829, 36.895809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377346, 33.349689, 36.823101>,  <39.208527, 33.514606, 36.779476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377346, 33.349689, 36.823101>,  <39.658710, 33.074829, 36.895809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377346, 33.349689, 36.823101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246612, -0.003902, -0.969106,
		-0.666629, -0.726507, -0.166714,
		-0.703412, 0.687148, -0.181767,
		39.166321, 33.555836, 36.768570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503204, 32.396919, 36.901577>,  <39.658710, 33.074829, 36.895809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503204, 32.396919, 36.901577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566437, 32.070625, 36.679016>,  <39.604378, 31.874849, 36.545479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566437, 32.070625, 36.679016>,  <39.503204, 32.396919, 36.901577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566437, 32.070625, 36.679016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694372, -0.492468, 0.524713,
		-0.702038, 0.303405, -0.644273,
		0.158083, -0.815734, -0.556407,
		39.613861, 31.825905, 36.512093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842800, 32.213833, 36.609180>,  <39.503204, 32.396919, 36.901577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842800, 32.213833, 36.609180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096394, 31.919764, 36.705162>,  <39.248550, 31.743320, 36.762749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096394, 31.919764, 36.705162>,  <38.842800, 32.213833, 36.609180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096394, 31.919764, 36.705162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710353, -0.430950, 0.556489,
		-0.305710, -0.523257, -0.795452,
		0.633987, -0.735176, 0.239952,
		39.286591, 31.699211, 36.777149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524971, 31.572468, 36.338215>,  <38.842800, 32.213833, 36.609180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524971, 31.572468, 36.338215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798790, 31.487434, 36.617126>,  <38.963081, 31.436415, 36.784473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798790, 31.487434, 36.617126>,  <38.524971, 31.572468, 36.338215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798790, 31.487434, 36.617126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623920, -0.665533, 0.409620,
		0.376987, -0.715454, -0.588224,
		0.684547, -0.212583, 0.697284,
		39.004154, 31.423660, 36.826313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327141, 30.882750, 36.543346>,  <38.524971, 31.572468, 36.338215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327141, 30.882750, 36.543346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577156, 30.999407, 36.832973>,  <38.727165, 31.069401, 37.006748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577156, 30.999407, 36.832973>,  <38.327141, 30.882750, 36.543346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577156, 30.999407, 36.832973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644944, -0.329610, 0.689496,
		0.439748, -0.897942, -0.017923,
		0.625035, 0.291645, 0.724068,
		38.764668, 31.086901, 37.050194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267464, 30.323910, 37.028606>,  <38.327141, 30.882750, 36.543346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267464, 30.323910, 37.028606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389114, 30.645878, 37.232414>,  <38.462105, 30.839058, 37.354698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389114, 30.645878, 37.232414>,  <38.267464, 30.323910, 37.028606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389114, 30.645878, 37.232414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726975, -0.149547, 0.670181,
		0.615639, -0.574229, 0.539675,
		0.304131, 0.804920, 0.509517,
		38.480354, 30.887354, 37.385269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280647, 30.087324, 37.707981>,  <38.267464, 30.323910, 37.028606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280647, 30.087324, 37.707981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285065, 30.484655, 37.753899>,  <38.287716, 30.723055, 37.781448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285065, 30.484655, 37.753899>,  <38.280647, 30.087324, 37.707981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285065, 30.484655, 37.753899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672864, -0.077542, 0.735690,
		0.739683, -0.085364, 0.667519,
		0.011041, 0.993328, 0.114795,
		38.288376, 30.782654, 37.788338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299667, 30.163740, 38.375134>,  <38.280647, 30.087324, 37.707981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299667, 30.163740, 38.375134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165577, 30.513222, 38.234131>,  <38.085121, 30.722912, 38.149529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165577, 30.513222, 38.234131>,  <38.299667, 30.163740, 38.375134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165577, 30.513222, 38.234131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559659, 0.116321, 0.820519,
		0.757896, 0.472344, 0.449983,
		-0.335225, 0.873705, -0.352511,
		38.065010, 30.775333, 38.128376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307938, 30.550829, 38.892906>,  <38.299667, 30.163740, 38.375134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307938, 30.550829, 38.892906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048939, 30.755749, 38.667236>,  <37.893539, 30.878700, 38.531834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048939, 30.755749, 38.667236>,  <38.307938, 30.550829, 38.892906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048939, 30.755749, 38.667236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501015, 0.271666, 0.821694,
		0.574220, 0.814708, 0.080765,
		-0.647500, 0.512298, -0.564177,
		37.854691, 30.909437, 38.497982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175892, 31.338799, 39.171066>,  <38.307938, 30.550829, 38.892906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175892, 31.338799, 39.171066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854946, 31.226982, 38.960136>,  <37.662380, 31.159891, 38.833580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854946, 31.226982, 38.960136>,  <38.175892, 31.338799, 39.171066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854946, 31.226982, 38.960136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581896, 0.169945, 0.795309,
		-0.132706, 0.944973, -0.299021,
		-0.802363, -0.279542, -0.527324,
		37.614239, 31.143120, 38.801941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713623, 31.865711, 39.288891>,  <38.175892, 31.338799, 39.171066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713623, 31.865711, 39.288891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516380, 31.536993, 39.174702>,  <37.398033, 31.339762, 39.106190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516380, 31.536993, 39.174702>,  <37.713623, 31.865711, 39.288891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516380, 31.536993, 39.174702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675727, 0.155125, 0.720645,
		-0.547941, 0.548256, -0.631804,
		-0.493107, -0.821798, -0.285472,
		37.368446, 31.290453, 39.089062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010242, 32.238750, 39.267921>,  <37.713623, 31.865711, 39.288891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010242, 32.238750, 39.267921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966766, 31.841211, 39.259354>,  <36.940681, 31.602688, 39.254211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966766, 31.841211, 39.259354>,  <37.010242, 32.238750, 39.267921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966766, 31.841211, 39.259354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536906, 0.040553, 0.842667,
		-0.836611, 0.103090, -0.538009,
		-0.108688, -0.993845, -0.021423,
		36.934158, 31.543058, 39.252926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365288, 32.112019, 39.286282>,  <37.010242, 32.238750, 39.267921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365288, 32.112019, 39.286282> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512535, 31.763979, 39.417385>,  <36.600883, 31.555157, 39.496048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512535, 31.763979, 39.417385>,  <36.365288, 32.112019, 39.286282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512535, 31.763979, 39.417385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592512, 0.052135, 0.803872,
		-0.716534, -0.490117, -0.496351,
		0.368114, -0.870096, 0.327757,
		36.622971, 31.502951, 39.515713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800400, 31.677509, 39.496185>,  <36.365288, 32.112019, 39.286282>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800400, 31.677509, 39.496185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120552, 31.539837, 39.692528>,  <36.312641, 31.457233, 39.810333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120552, 31.539837, 39.692528>,  <35.800400, 31.677509, 39.496185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120552, 31.539837, 39.692528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529593, -0.022222, 0.847961,
		-0.280943, -0.938641, -0.200061,
		0.800377, -0.344180, 0.490854,
		36.360664, 31.436583, 39.839783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531990, 31.335783, 40.033672>,  <35.800400, 31.677509, 39.496185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531990, 31.335783, 40.033672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909752, 31.355398, 40.163719>,  <36.136410, 31.367167, 40.241749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909752, 31.355398, 40.163719>,  <35.531990, 31.335783, 40.033672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909752, 31.355398, 40.163719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324114, -0.027452, 0.945620,
		0.055294, -0.998420, -0.010032,
		0.944401, 0.049035, 0.325119,
		36.193073, 31.370110, 40.261253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660728, 30.783451, 40.571030>,  <35.531990, 31.335783, 40.033672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660728, 30.783451, 40.571030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932255, 31.074455, 40.610912>,  <36.095169, 31.249058, 40.634842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932255, 31.074455, 40.610912>,  <35.660728, 30.783451, 40.571030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932255, 31.074455, 40.610912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212984, 0.065121, 0.974883,
		0.702745, -0.682998, 0.199154,
		0.678813, 0.727511, 0.099704,
		36.135899, 31.292709, 40.640823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727867, 29.996689, 40.521290>,  <35.660728, 30.783451, 40.571030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727867, 29.996689, 40.521290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411526, 29.753387, 40.494209>,  <35.221722, 29.607407, 40.477962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411526, 29.753387, 40.494209>,  <35.727867, 29.996689, 40.521290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411526, 29.753387, 40.494209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039164, 0.060098, -0.997424,
		0.610754, -0.791465, -0.023707,
		-0.790851, -0.608252, -0.067702,
		35.174271, 29.570911, 40.473900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966339, 29.547195, 40.064491>,  <35.727867, 29.996689, 40.521290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966339, 29.547195, 40.064491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568665, 29.504751, 40.057152>,  <35.330059, 29.479284, 40.052750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568665, 29.504751, 40.057152>,  <35.966339, 29.547195, 40.064491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568665, 29.504751, 40.057152> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036160, -0.168458, -0.985046,
		0.101432, -0.979981, 0.171315,
		-0.994185, -0.106110, -0.018349,
		35.270409, 29.472918, 40.051647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909126, 29.016090, 39.673870>,  <35.966339, 29.547195, 40.064491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909126, 29.016090, 39.673870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559177, 29.209343, 39.660133>,  <35.349209, 29.325294, 39.651890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559177, 29.209343, 39.660133>,  <35.909126, 29.016090, 39.673870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559177, 29.209343, 39.660133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022970, -0.112217, -0.993418,
		-0.483807, -0.868326, 0.109273,
		-0.874873, 0.483133, -0.034346,
		35.296715, 29.354282, 39.649830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573837, 28.606590, 39.109058>,  <35.909126, 29.016090, 39.673870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573837, 28.606590, 39.109058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343033, 28.931458, 39.143547>,  <35.204548, 29.126379, 39.164242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343033, 28.931458, 39.143547>,  <35.573837, 28.606590, 39.109058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343033, 28.931458, 39.143547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178464, -0.022356, -0.983692,
		-0.796998, -0.582992, 0.157843,
		-0.577014, 0.812170, 0.086225,
		35.169930, 29.175108, 39.169415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120522, 28.540010, 38.460072>,  <35.573837, 28.606590, 39.109058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120522, 28.540010, 38.460072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109585, 28.913454, 38.602970>,  <35.103024, 29.137520, 38.688709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109585, 28.913454, 38.602970>,  <35.120522, 28.540010, 38.460072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109585, 28.913454, 38.602970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241345, 0.340646, -0.908687,
		-0.970054, -0.111062, 0.216009,
		-0.027338, 0.933609, 0.357249,
		35.101383, 29.193537, 38.710144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463669, 28.900627, 38.146358>,  <35.120522, 28.540010, 38.460072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463669, 28.900627, 38.146358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748512, 29.172815, 38.215473>,  <34.919418, 29.336128, 38.256943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748512, 29.172815, 38.215473>,  <34.463669, 28.900627, 38.146358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748512, 29.172815, 38.215473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022660, 0.268264, -0.963079,
		-0.701701, 0.681904, 0.206453,
		0.712111, 0.680471, 0.172790,
		34.962147, 29.376957, 38.267311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234356, 29.553854, 37.851852>,  <34.463669, 28.900627, 38.146358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234356, 29.553854, 37.851852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626591, 29.601772, 37.913948>,  <34.861931, 29.630524, 37.951206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626591, 29.601772, 37.913948>,  <34.234356, 29.553854, 37.851852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626591, 29.601772, 37.913948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093156, 0.412017, -0.906402,
		-0.172543, 0.903267, 0.392858,
		0.980587, 0.119797, 0.155235,
		34.920769, 29.637711, 37.960518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336658, 30.120480, 37.503941>,  <34.234356, 29.553854, 37.851852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336658, 30.120480, 37.503941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715763, 30.002960, 37.553623>,  <34.943226, 29.932447, 37.583435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715763, 30.002960, 37.553623>,  <34.336658, 30.120480, 37.503941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715763, 30.002960, 37.553623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255422, 0.465780, -0.847236,
		0.191064, 0.834704, 0.516492,
		0.947762, -0.293800, 0.124208,
		35.000092, 29.914820, 37.590885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811146, 30.770630, 37.400791>,  <34.336658, 30.120480, 37.503941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811146, 30.770630, 37.400791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056053, 30.459215, 37.345646>,  <35.202999, 30.272367, 37.312561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056053, 30.459215, 37.345646>,  <34.811146, 30.770630, 37.400791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056053, 30.459215, 37.345646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422455, 0.469524, -0.775293,
		0.668322, 0.416450, 0.616372,
		0.612272, -0.778535, -0.137861,
		35.239735, 30.225655, 37.304287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516087, 31.083645, 37.271526>,  <34.811146, 30.770630, 37.400791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516087, 31.083645, 37.271526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536659, 30.721411, 37.103111>,  <35.549004, 30.504070, 37.002064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536659, 30.721411, 37.103111>,  <35.516087, 31.083645, 37.271526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536659, 30.721411, 37.103111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181571, 0.423046, -0.887730,
		0.982032, -0.030788, 0.186187,
		0.051435, -0.905585, -0.421034,
		35.552090, 30.449736, 36.976803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123745, 31.007429, 36.912708>,  <35.516087, 31.083645, 37.271526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123745, 31.007429, 36.912708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876949, 30.751263, 36.729759>,  <35.728874, 30.597563, 36.619987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876949, 30.751263, 36.729759>,  <36.123745, 31.007429, 36.912708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876949, 30.751263, 36.729759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273690, 0.370289, -0.887682,
		0.737849, -0.672867, -0.053187,
		-0.616986, -0.640418, -0.457375,
		35.691853, 30.559137, 36.592548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404224, 30.905512, 36.291073>,  <36.123745, 31.007429, 36.912708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404224, 30.905512, 36.291073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029865, 30.785578, 36.217098>,  <35.805252, 30.713617, 36.172714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029865, 30.785578, 36.217098>,  <36.404224, 30.905512, 36.291073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029865, 30.785578, 36.217098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068673, 0.359609, -0.930573,
		0.345508, -0.883622, -0.315969,
		-0.935900, -0.299822, -0.184929,
		35.749096, 30.695627, 36.161617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.864151, 29.269623, 44.276260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.607788, 29.403427, 43.999901>,  <33.453968, 29.483709, 43.834087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.607788, 29.403427, 43.999901>,  <33.864151, 29.269623, 44.276260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607788, 29.403427, 43.999901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575220, -0.386690, -0.720828,
		-0.508287, -0.859403, 0.055416,
		-0.640911, 0.334511, -0.690895,
		33.415516, 29.503780, 43.792633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711990, 28.716284, 43.788422>,  <33.864151, 29.269623, 44.276260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711990, 28.716284, 43.788422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.625935, 29.047998, 43.582123>,  <33.574303, 29.247028, 43.458344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.625935, 29.047998, 43.582123>,  <33.711990, 28.716284, 43.788422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625935, 29.047998, 43.582123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565686, -0.324669, -0.758017,
		-0.796062, -0.454832, -0.399267,
		-0.215141, 0.829288, -0.515748,
		33.561394, 29.296785, 43.427399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489922, 28.482100, 43.093632>,  <33.711990, 28.716284, 43.788422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489922, 28.482100, 43.093632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.642494, 28.851818, 43.099133>,  <33.734035, 29.073648, 43.102432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.642494, 28.851818, 43.099133>,  <33.489922, 28.482100, 43.093632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642494, 28.851818, 43.099133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486465, -0.188053, -0.853222,
		-0.786043, 0.332135, -0.521366,
		0.381429, 0.924296, 0.013754,
		33.756924, 29.129107, 43.103260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758247, 28.507086, 42.457539>,  <33.489922, 28.482100, 43.093632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758247, 28.507086, 42.457539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.897888, 28.864515, 42.570427>,  <33.981674, 29.078974, 42.638161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.897888, 28.864515, 42.570427>,  <33.758247, 28.507086, 42.457539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897888, 28.864515, 42.570427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588280, 0.025450, -0.808257,
		-0.729421, 0.448190, -0.516788,
		0.349101, 0.893576, 0.282225,
		34.002617, 29.132587, 42.655094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518898, 29.019289, 41.925350>,  <33.758247, 28.507086, 42.457539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518898, 29.019289, 41.925350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.848049, 29.148203, 42.112537>,  <34.045540, 29.225552, 42.224850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.848049, 29.148203, 42.112537>,  <33.518898, 29.019289, 41.925350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848049, 29.148203, 42.112537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444499, 0.147926, -0.883481,
		-0.353958, 0.935014, -0.021530,
		0.822882, 0.322285, 0.467972,
		34.094913, 29.244888, 42.252930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678928, 29.635515, 41.595200>,  <33.518898, 29.019289, 41.925350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678928, 29.635515, 41.595200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.018215, 29.524099, 41.775398>,  <34.221786, 29.457251, 41.883518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.018215, 29.524099, 41.775398>,  <33.678928, 29.635515, 41.595200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018215, 29.524099, 41.775398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508317, 0.189161, -0.840138,
		0.148795, 0.941613, 0.302036,
		0.848218, -0.278538, 0.450492,
		34.272682, 29.440538, 41.910545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078537, 30.024775, 41.347099>,  <33.678928, 29.635515, 41.595200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078537, 30.024775, 41.347099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.352619, 29.766239, 41.481411>,  <34.517067, 29.611118, 41.561996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.352619, 29.766239, 41.481411>,  <34.078537, 30.024775, 41.347099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352619, 29.766239, 41.481411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512475, 0.100232, -0.852832,
		0.517560, 0.756441, 0.399910,
		0.685201, -0.646336, 0.335780,
		34.558178, 29.572338, 41.582146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630074, 30.358940, 41.188900>,  <34.078537, 30.024775, 41.347099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630074, 30.358940, 41.188900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.715355, 29.970709, 41.233658>,  <34.766525, 29.737770, 41.260513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.715355, 29.970709, 41.233658>,  <34.630074, 30.358940, 41.188900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715355, 29.970709, 41.233658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535305, 0.020243, -0.844416,
		0.817308, 0.239929, 0.523872,
		0.213205, -0.970579, 0.111890,
		34.779316, 29.679535, 41.267223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371189, 30.203299, 41.158207>,  <34.630074, 30.358940, 41.188900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371189, 30.203299, 41.158207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.167995, 29.889151, 41.016697>,  <35.046082, 29.700663, 40.931793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.167995, 29.889151, 41.016697>,  <35.371189, 30.203299, 41.158207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167995, 29.889151, 41.016697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569411, 0.001998, -0.822051,
		0.646319, -0.619026, 0.446182,
		-0.507980, -0.785368, -0.353771,
		35.015602, 29.653540, 40.910564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996967, 30.550875, 41.335186>,  <35.371189, 30.203299, 41.158207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996967, 30.550875, 41.335186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.109543, 30.922653, 41.239750>,  <36.177086, 31.145720, 41.182487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.109543, 30.922653, 41.239750>,  <35.996967, 30.550875, 41.335186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109543, 30.922653, 41.239750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090981, 0.273370, 0.957597,
		0.955257, -0.247793, 0.161498,
		0.281435, 0.929445, -0.238594,
		36.193974, 31.201487, 41.168171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567833, 30.778532, 41.811352>,  <35.996967, 30.550875, 41.335186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567833, 30.778532, 41.811352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.435650, 31.120768, 41.651970>,  <36.356342, 31.326109, 41.556339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.435650, 31.120768, 41.651970>,  <36.567833, 30.778532, 41.811352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435650, 31.120768, 41.651970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020691, 0.415504, 0.909356,
		0.943596, 0.308744, -0.119602,
		-0.330453, 0.855590, -0.398456,
		36.336514, 31.377445, 41.532433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867756, 31.330502, 42.293541>,  <36.567833, 30.778532, 41.811352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867756, 31.330502, 42.293541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.561901, 31.506683, 42.105358>,  <36.378387, 31.612392, 41.992451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.561901, 31.506683, 42.105358>,  <36.867756, 31.330502, 42.293541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561901, 31.506683, 42.105358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151554, 0.586633, 0.795546,
		0.626386, 0.679604, -0.381810,
		-0.764639, 0.440454, -0.470455,
		36.332508, 31.638819, 41.964222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995167, 32.074028, 42.246578>,  <36.867756, 31.330502, 42.293541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995167, 32.074028, 42.246578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.602036, 32.009712, 42.210381>,  <36.366158, 31.971123, 42.188663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.602036, 32.009712, 42.210381>,  <36.995167, 32.074028, 42.246578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602036, 32.009712, 42.210381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169433, 0.592364, 0.787653,
		-0.073044, 0.789462, -0.609437,
		-0.982831, -0.160792, -0.090492,
		36.307186, 31.961475, 42.183231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689190, 32.761494, 42.326061>,  <36.995167, 32.074028, 42.246578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689190, 32.761494, 42.326061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.412308, 32.488949, 42.421215>,  <36.246178, 32.325420, 42.478306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.412308, 32.488949, 42.421215>,  <36.689190, 32.761494, 42.326061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412308, 32.488949, 42.421215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204874, 0.501580, 0.840502,
		-0.692007, 0.533066, -0.486792,
		-0.692208, -0.681365, 0.237886,
		36.204647, 32.284538, 42.492580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148628, 33.182968, 42.579868>,  <36.689190, 32.761494, 42.326061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148628, 33.182968, 42.579868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.074909, 32.814999, 42.718304>,  <36.030678, 32.594219, 42.801365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.074909, 32.814999, 42.718304>,  <36.148628, 33.182968, 42.579868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074909, 32.814999, 42.718304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232619, 0.382944, 0.894004,
		-0.954946, 0.084257, -0.284567,
		-0.184300, -0.919921, 0.346091,
		36.019619, 32.539021, 42.822132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598972, 33.278206, 42.977295>,  <36.148628, 33.182968, 42.579868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598972, 33.278206, 42.977295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.741112, 32.925110, 43.100254>,  <35.826397, 32.713253, 43.174030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.741112, 32.925110, 43.100254>,  <35.598972, 33.278206, 42.977295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741112, 32.925110, 43.100254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407957, 0.149429, 0.900690,
		-0.841011, -0.445465, -0.307021,
		0.355347, -0.882741, 0.307402,
		35.847717, 32.660286, 43.192474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080070, 33.136353, 43.364162>,  <35.598972, 33.278206, 42.977295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080070, 33.136353, 43.364162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.384136, 32.897057, 43.465565>,  <35.566574, 32.753479, 43.526405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.384136, 32.897057, 43.465565>,  <35.080070, 33.136353, 43.364162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384136, 32.897057, 43.465565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221923, 0.127641, 0.966674,
		-0.610656, -0.791090, -0.035734,
		0.760164, -0.598235, 0.253505,
		35.612186, 32.717587, 43.541615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868225, 32.610950, 43.945679>,  <35.080070, 33.136353, 43.364162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868225, 32.610950, 43.945679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.267548, 32.631203, 43.957142>,  <35.507141, 32.643353, 43.964020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.267548, 32.631203, 43.957142>,  <34.868225, 32.610950, 43.945679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267548, 32.631203, 43.957142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032946, 0.085997, 0.995751,
		0.047940, -0.995009, 0.087519,
		0.998307, 0.050619, 0.028659,
		35.567039, 32.646389, 43.965740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089401, 32.146519, 44.542824>,  <34.868225, 32.610950, 43.945679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089401, 32.146519, 44.542824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.362808, 32.435562, 44.501575>,  <35.526852, 32.608990, 44.476826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.362808, 32.435562, 44.501575>,  <35.089401, 32.146519, 44.542824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362808, 32.435562, 44.501575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024525, 0.163926, 0.986168,
		0.729521, -0.671535, 0.129769,
		0.683519, 0.722612, -0.103118,
		35.567863, 32.652348, 44.470638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511070, 32.060368, 45.116314>,  <35.089401, 32.146519, 44.542824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511070, 32.060368, 45.116314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.644741, 32.412895, 44.982685>,  <35.724945, 32.624413, 44.902508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.644741, 32.412895, 44.982685>,  <35.511070, 32.060368, 45.116314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644741, 32.412895, 44.982685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137020, 0.305251, 0.942363,
		0.932497, -0.360691, -0.018751,
		0.334178, 0.881319, -0.334067,
		35.744995, 32.677292, 44.882465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972687, 32.252151, 45.607750>,  <35.511070, 32.060368, 45.116314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972687, 32.252151, 45.607750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.870232, 32.597591, 45.434048>,  <35.808758, 32.804855, 45.329826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.870232, 32.597591, 45.434048>,  <35.972687, 32.252151, 45.607750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870232, 32.597591, 45.434048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098693, 0.423535, 0.900488,
		0.961588, 0.273510, -0.023253,
		-0.256141, 0.863603, -0.434260,
		35.793388, 32.856674, 45.303768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282249, 32.724888, 45.988110>,  <35.972687, 32.252151, 45.607750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282249, 32.724888, 45.988110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.009846, 32.951523, 45.802547>,  <35.846405, 33.087505, 45.691212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.009846, 32.951523, 45.802547>,  <36.282249, 32.724888, 45.988110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009846, 32.951523, 45.802547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070186, 0.681096, 0.728822,
		0.728904, 0.463775, -0.503599,
		-0.681008, 0.566587, -0.463904,
		35.805542, 33.121498, 45.663376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526058, 33.443718, 46.061245>,  <36.282249, 32.724888, 45.988110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526058, 33.443718, 46.061245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.133663, 33.466812, 45.987133>,  <35.898228, 33.480667, 45.942665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.133663, 33.466812, 45.987133>,  <36.526058, 33.443718, 46.061245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133663, 33.466812, 45.987133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086393, 0.724980, 0.683330,
		0.173778, 0.686346, -0.706209,
		-0.980988, 0.057736, -0.185281,
		35.839367, 33.484135, 45.931549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.746553, 35.056358, 43.466518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.001614, 34.780968, 43.604736>,  <29.154650, 34.615734, 43.687668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.001614, 34.780968, 43.604736>,  <28.746553, 35.056358, 43.466518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001614, 34.780968, 43.604736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501406, 0.030416, -0.864677,
		0.584801, 0.724620, 0.364601,
		0.637652, -0.688477, 0.345542,
		29.192909, 34.574425, 43.708397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.405474, 35.221657, 42.973095>,  <28.746553, 35.056358, 43.466518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.405474, 35.221657, 42.973095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.510399, 34.895779, 43.179958>,  <29.573353, 34.700253, 43.304077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.510399, 34.895779, 43.179958>,  <29.405474, 35.221657, 42.973095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510399, 34.895779, 43.179958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657850, -0.241117, -0.713510,
		0.705993, 0.527377, 0.472703,
		0.262312, -0.814700, 0.517162,
		29.589092, 34.651367, 43.335106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134388, 35.198116, 43.102604>,  <29.405474, 35.221657, 42.973095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.134388, 35.198116, 43.102604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.012119, 34.817303, 43.108116>,  <29.938759, 34.588814, 43.111423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.012119, 34.817303, 43.108116>,  <30.134388, 35.198116, 43.102604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.012119, 34.817303, 43.108116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470090, -0.163488, -0.867345,
		0.827998, -0.258643, 0.497517,
		-0.305670, -0.952038, 0.013782,
		29.920418, 34.531693, 43.112251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664263, 34.762863, 43.133671>,  <30.134388, 35.198116, 43.102604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664263, 34.762863, 43.133671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.378229, 34.526649, 42.984047>,  <30.206610, 34.384922, 42.894272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.378229, 34.526649, 42.984047>,  <30.664263, 34.762863, 43.133671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378229, 34.526649, 42.984047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539999, -0.126840, -0.832053,
		0.443910, -0.796982, 0.409590,
		-0.715084, -0.590535, -0.374064,
		30.163704, 34.349487, 42.871826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995558, 34.147156, 42.957020>,  <30.664263, 34.762863, 43.133671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995558, 34.147156, 42.957020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.660656, 34.159542, 42.738644>,  <30.459715, 34.166973, 42.607616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.660656, 34.159542, 42.738644>,  <30.995558, 34.147156, 42.957020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660656, 34.159542, 42.738644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542945, -0.071521, -0.836717,
		-0.064938, -0.996959, 0.043080,
		-0.837254, 0.030945, -0.545938,
		30.409481, 34.168831, 42.574863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161766, 33.654709, 42.370392>,  <30.995558, 34.147156, 42.957020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161766, 33.654709, 42.370392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.864189, 33.899834, 42.263802>,  <30.685644, 34.046909, 42.199848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.864189, 33.899834, 42.263802>,  <31.161766, 33.654709, 42.370392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864189, 33.899834, 42.263802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464436, 0.187445, -0.865542,
		-0.480469, -0.767672, -0.424062,
		-0.743941, 0.612816, -0.266473,
		30.641006, 34.083679, 42.183861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160837, 33.409863, 41.796715>,  <31.161766, 33.654709, 42.370392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160837, 33.409863, 41.796715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.964012, 33.757732, 41.781017>,  <30.845917, 33.966454, 41.771599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.964012, 33.757732, 41.781017>,  <31.160837, 33.409863, 41.796715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.964012, 33.757732, 41.781017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329048, 0.144064, -0.933259,
		-0.805980, -0.472133, -0.357053,
		-0.492061, 0.869676, -0.039242,
		30.816393, 34.018635, 41.769245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883116, 33.428638, 41.125866>,  <31.160837, 33.409863, 41.796715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883116, 33.428638, 41.125866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.857929, 33.805122, 41.258625>,  <30.842817, 34.031013, 41.338280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.857929, 33.805122, 41.258625>,  <30.883116, 33.428638, 41.125866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857929, 33.805122, 41.258625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212900, 0.337569, -0.916908,
		-0.975043, 0.012925, -0.221640,
		-0.062968, 0.941212, 0.331896,
		30.839039, 34.087486, 41.358192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.415905, 33.726479, 40.646824>,  <30.883116, 33.428638, 41.125866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.415905, 33.726479, 40.646824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.610453, 34.045490, 40.789593>,  <30.727180, 34.236897, 40.875256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.610453, 34.045490, 40.789593>,  <30.415905, 33.726479, 40.646824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610453, 34.045490, 40.789593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109145, 0.349842, -0.930429,
		-0.866910, 0.491488, 0.083106,
		0.486368, 0.797528, 0.356925,
		30.756363, 34.284748, 40.896671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282862, 34.310284, 40.296574>,  <30.415905, 33.726479, 40.646824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.282862, 34.310284, 40.296574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.629749, 34.447937, 40.440521>,  <30.837881, 34.530529, 40.526890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.629749, 34.447937, 40.440521>,  <30.282862, 34.310284, 40.296574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629749, 34.447937, 40.440521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226474, 0.371029, -0.900581,
		-0.443442, 0.862501, 0.243826,
		0.867219, 0.344136, 0.359865,
		30.889915, 34.551178, 40.548481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434916, 34.850212, 39.796547>,  <30.282862, 34.310284, 40.296574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434916, 34.850212, 39.796547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.767040, 34.761890, 40.001225>,  <30.966314, 34.708897, 40.124031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.767040, 34.761890, 40.001225>,  <30.434916, 34.850212, 39.796547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767040, 34.761890, 40.001225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552141, 0.201288, -0.809088,
		0.075652, 0.954321, 0.289047,
		0.830311, -0.220804, 0.511692,
		31.016134, 34.695648, 40.154732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875326, 35.419357, 39.722164>,  <30.434916, 34.850212, 39.796547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875326, 35.419357, 39.722164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.085817, 35.088989, 39.803101>,  <31.212112, 34.890770, 39.851662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.085817, 35.088989, 39.803101>,  <30.875326, 35.419357, 39.722164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085817, 35.088989, 39.803101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593048, 0.185935, -0.783404,
		0.609406, 0.532247, 0.587654,
		0.526230, -0.825918, 0.202338,
		31.243687, 34.841213, 39.863804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587734, 35.607021, 39.546242>,  <30.875326, 35.419357, 39.722164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587734, 35.607021, 39.546242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.565136, 35.207691, 39.551327>,  <31.551577, 34.968094, 39.554379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.565136, 35.207691, 39.551327>,  <31.587734, 35.607021, 39.546242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565136, 35.207691, 39.551327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679586, -0.047780, -0.732038,
		0.731417, -0.032715, 0.681145,
		-0.056494, -0.998322, 0.012714,
		31.548187, 34.908195, 39.555141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204208, 35.460762, 39.340092>,  <31.587734, 35.607021, 39.546242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204208, 35.460762, 39.340092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.989788, 35.129848, 39.272865>,  <31.861135, 34.931301, 39.232529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.989788, 35.129848, 39.272865>,  <32.204208, 35.460762, 39.340092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989788, 35.129848, 39.272865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448949, -0.110768, -0.886665,
		0.714909, -0.550751, 0.430787,
		-0.536050, -0.827286, -0.168070,
		31.828974, 34.881664, 39.222443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877655, 35.332272, 39.662746>,  <32.204208, 35.460762, 39.340092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877655, 35.332272, 39.662746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.185909, 35.586445, 39.643368>,  <33.370861, 35.738949, 39.631741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.185909, 35.586445, 39.643368>,  <32.877655, 35.332272, 39.662746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185909, 35.586445, 39.643368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291139, 0.418669, 0.860206,
		0.566892, -0.648795, 0.507640,
		0.770631, 0.635438, -0.048451,
		33.417099, 35.777077, 39.628834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258007, 35.189953, 40.352142>,  <32.877655, 35.332272, 39.662746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258007, 35.189953, 40.352142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.335907, 35.554787, 40.207825>,  <33.382648, 35.773685, 40.121235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.335907, 35.554787, 40.207825>,  <33.258007, 35.189953, 40.352142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335907, 35.554787, 40.207825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397595, 0.409674, 0.821027,
		0.896654, -0.016448, 0.442425,
		0.194754, 0.912083, -0.360796,
		33.394333, 35.828411, 40.099586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659420, 35.520008, 40.886909>,  <33.258007, 35.189953, 40.352142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659420, 35.520008, 40.886909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.508541, 35.806076, 40.651535>,  <33.418015, 35.977718, 40.510311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.508541, 35.806076, 40.651535>,  <33.659420, 35.520008, 40.886909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508541, 35.806076, 40.651535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408776, 0.441565, 0.798700,
		0.831038, 0.541806, 0.125787,
		-0.377197, 0.715169, -0.588434,
		33.395382, 36.020626, 40.475006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752571, 36.069824, 41.207905>,  <33.659420, 35.520008, 40.886909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752571, 36.069824, 41.207905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.485161, 36.208630, 40.944798>,  <33.324715, 36.291912, 40.786934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.485161, 36.208630, 40.944798>,  <33.752571, 36.069824, 41.207905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485161, 36.208630, 40.944798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443480, 0.523981, 0.727165,
		0.596990, 0.777836, -0.196403,
		-0.668527, 0.347009, -0.657766,
		33.284603, 36.312733, 40.747467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764305, 36.747192, 41.245106>,  <33.752571, 36.069824, 41.207905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764305, 36.747192, 41.245106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.406506, 36.634556, 41.106213>,  <33.191826, 36.566975, 41.022877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.406506, 36.634556, 41.106213>,  <33.764305, 36.747192, 41.245106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406506, 36.634556, 41.106213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439422, 0.410802, 0.798843,
		-0.082304, 0.867149, -0.491201,
		-0.894502, -0.281593, -0.347234,
		33.138153, 36.550079, 41.002041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371185, 37.269035, 41.450741>,  <33.764305, 36.747192, 41.245106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371185, 37.269035, 41.450741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.116581, 36.967407, 41.385948>,  <32.963818, 36.786430, 41.347073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.116581, 36.967407, 41.385948>,  <33.371185, 37.269035, 41.450741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116581, 36.967407, 41.385948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532349, 0.277562, 0.799727,
		-0.558087, 0.595266, -0.578098,
		-0.636508, -0.754067, -0.161986,
		32.925629, 36.741188, 41.337353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724873, 37.547424, 41.700718>,  <33.371185, 37.269035, 41.450741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724873, 37.547424, 41.700718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.662212, 37.157570, 41.636795>,  <32.624615, 36.923656, 41.598442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.662212, 37.157570, 41.636795>,  <32.724873, 37.547424, 41.700718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662212, 37.157570, 41.636795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687694, -0.008498, 0.725951,
		-0.708898, 0.223618, -0.668923,
		-0.156651, -0.974640, -0.159805,
		32.615215, 36.865177, 41.588852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987461, 37.413334, 41.690796>,  <32.724873, 37.547424, 41.700718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987461, 37.413334, 41.690796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.160625, 37.075832, 41.817711>,  <32.264523, 36.873333, 41.893860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.160625, 37.075832, 41.817711>,  <31.987461, 37.413334, 41.690796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160625, 37.075832, 41.817711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571159, 0.015569, 0.820691,
		-0.697399, -0.536510, -0.475176,
		0.432911, -0.843751, 0.317290,
		32.290497, 36.822708, 41.912899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465429, 37.081055, 42.052181>,  <31.987461, 37.413334, 41.690796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465429, 37.081055, 42.052181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.770458, 36.859112, 42.185219>,  <31.953476, 36.725948, 42.265041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.770458, 36.859112, 42.185219>,  <31.465429, 37.081055, 42.052181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770458, 36.859112, 42.185219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422415, -0.037707, 0.905618,
		-0.489946, -0.831092, -0.263134,
		0.762573, -0.554855, 0.332591,
		31.999231, 36.692654, 42.284996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120480, 36.496162, 42.365120>,  <31.465429, 37.081055, 42.052181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120480, 36.496162, 42.365120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.492737, 36.535709, 42.506046>,  <31.716091, 36.559437, 42.590603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.492737, 36.535709, 42.506046>,  <31.120480, 36.496162, 42.365120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492737, 36.535709, 42.506046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331711, -0.178596, 0.926321,
		0.154508, -0.978943, -0.133413,
		0.930642, 0.098869, 0.352321,
		31.771929, 36.565369, 42.611744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340139, 35.886322, 42.832985>,  <31.120480, 36.496162, 42.365120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340139, 35.886322, 42.832985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.577946, 36.179638, 42.964943>,  <31.720631, 36.355629, 43.044117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.577946, 36.179638, 42.964943>,  <31.340139, 35.886322, 42.832985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577946, 36.179638, 42.964943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178471, -0.279706, 0.943352,
		0.784026, -0.619717, -0.035419,
		0.594518, 0.733291, 0.329898,
		31.756302, 36.399624, 43.063911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773140, 35.624786, 43.426624>,  <31.340139, 35.886322, 42.832985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773140, 35.624786, 43.426624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.761225, 36.022083, 43.471478>,  <31.754076, 36.260464, 43.498390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.761225, 36.022083, 43.471478>,  <31.773140, 35.624786, 43.426624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761225, 36.022083, 43.471478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367153, -0.115215, 0.922997,
		0.929683, -0.013674, 0.368106,
		-0.029790, 0.993246, 0.112134,
		31.752287, 36.320057, 43.505119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195992, 35.663380, 43.895386>,  <31.773140, 35.624786, 43.426624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195992, 35.663380, 43.895386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.974648, 35.995754, 43.872280>,  <31.841841, 36.195179, 43.858418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.974648, 35.995754, 43.872280>,  <32.195992, 35.663380, 43.895386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974648, 35.995754, 43.872280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354256, -0.172023, 0.919190,
		0.753851, 0.529108, 0.389555,
		-0.553363, 0.830935, -0.057760,
		31.808640, 36.245033, 43.854954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294468, 35.976418, 44.484215>,  <32.195992, 35.663380, 43.895386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294468, 35.976418, 44.484215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.961714, 36.165268, 44.367546>,  <31.762062, 36.278580, 44.297546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.961714, 36.165268, 44.367546>,  <32.294468, 35.976418, 44.484215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961714, 36.165268, 44.367546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270991, 0.113065, 0.955919,
		0.484292, 0.874250, 0.033886,
		-0.831881, 0.472126, -0.291670,
		31.712149, 36.306908, 44.280045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881138, 36.264915, 44.783020>,  <32.294468, 35.976418, 44.484215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881138, 36.264915, 44.783020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.179901, 36.160480, 45.027630>,  <33.359158, 36.097820, 45.174397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.179901, 36.160480, 45.027630>,  <32.881138, 36.264915, 44.783020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179901, 36.160480, 45.027630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568830, -0.225358, -0.790978,
		0.344326, 0.938641, -0.019807,
		0.746908, -0.261087, 0.611524,
		33.403973, 36.082153, 45.211086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355808, 36.738396, 44.691727>,  <32.881138, 36.264915, 44.783020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355808, 36.738396, 44.691727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.484474, 36.374397, 44.796368>,  <33.561672, 36.155998, 44.859154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.484474, 36.374397, 44.796368>,  <33.355808, 36.738396, 44.691727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484474, 36.374397, 44.796368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448290, -0.096996, -0.888610,
		0.834008, 0.403106, 0.376743,
		0.321662, -0.909998, 0.261604,
		33.580971, 36.101398, 44.874847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975750, 36.671513, 44.414963>,  <33.355808, 36.738396, 44.691727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975750, 36.671513, 44.414963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.958012, 36.278938, 44.489594>,  <33.947369, 36.043392, 44.534370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.958012, 36.278938, 44.489594>,  <33.975750, 36.671513, 44.414963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958012, 36.278938, 44.489594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399681, -0.188590, -0.897045,
		0.915581, 0.034789, 0.400626,
		-0.044347, -0.981439, 0.186574,
		33.944706, 35.984505, 44.545567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671253, 36.283794, 44.388756>,  <33.975750, 36.671513, 44.414963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671253, 36.283794, 44.388756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.386944, 36.007133, 44.337490>,  <34.216358, 35.841137, 44.306732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.386944, 36.007133, 44.337490>,  <34.671253, 36.283794, 44.388756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386944, 36.007133, 44.337490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469381, -0.330639, -0.818755,
		0.523915, -0.642105, 0.559656,
		-0.710770, -0.691650, -0.128166,
		34.173714, 35.799637, 44.299042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967075, 35.675194, 44.255108>,  <34.671253, 36.283794, 44.388756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967075, 35.675194, 44.255108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.608170, 35.612282, 44.090099>,  <34.392826, 35.574535, 43.991093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.608170, 35.612282, 44.090099>,  <34.967075, 35.675194, 44.255108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608170, 35.612282, 44.090099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427769, -0.540823, -0.724241,
		-0.109193, -0.826302, 0.552542,
		-0.897268, -0.157278, -0.412520,
		34.338989, 35.565098, 43.966343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898720, 34.940273, 44.200661>,  <34.967075, 35.675194, 44.255108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898720, 34.940273, 44.200661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.639057, 35.073425, 43.927078>,  <34.483261, 35.153316, 43.762928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.639057, 35.073425, 43.927078>,  <34.898720, 34.940273, 44.200661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639057, 35.073425, 43.927078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522162, -0.458825, -0.718907,
		-0.553127, -0.823813, 0.124028,
		-0.649152, 0.332884, -0.683952,
		34.444313, 35.173290, 43.721893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859169, 34.412064, 43.686005>,  <34.898720, 34.940273, 44.200661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859169, 34.412064, 43.686005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.720779, 34.720310, 43.471920>,  <34.637745, 34.905258, 43.343468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.720779, 34.720310, 43.471920>,  <34.859169, 34.412064, 43.686005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720779, 34.720310, 43.471920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588219, -0.266264, -0.763611,
		-0.730961, -0.579008, -0.361173,
		-0.345970, 0.770618, -0.535212,
		34.616989, 34.951496, 43.311356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668503, 34.067230, 42.972019>,  <34.859169, 34.412064, 43.686005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668503, 34.067230, 42.972019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.720051, 34.459652, 42.914154>,  <34.750980, 34.695107, 42.879433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.720051, 34.459652, 42.914154>,  <34.668503, 34.067230, 42.972019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720051, 34.459652, 42.914154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707533, -0.193176, -0.679765,
		-0.694831, -0.014755, -0.719022,
		0.128868, 0.981053, -0.144664,
		34.758713, 34.753967, 42.870754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617287, 34.179279, 42.246048>,  <34.668503, 34.067230, 42.972019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617287, 34.179279, 42.246048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.826580, 34.489971, 42.386292>,  <34.952156, 34.676384, 42.470436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.826580, 34.489971, 42.386292>,  <34.617287, 34.179279, 42.246048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826580, 34.489971, 42.386292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552755, 0.003803, -0.833335,
		-0.648607, 0.629827, -0.427349,
		0.523232, 0.776726, 0.350606,
		34.983551, 34.722988, 42.491474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667240, 34.727329, 41.678833>,  <34.617287, 34.179279, 42.246048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667240, 34.727329, 41.678833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.974178, 34.780247, 41.929810>,  <35.158340, 34.811996, 42.080395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.974178, 34.780247, 41.929810>,  <34.667240, 34.727329, 41.678833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974178, 34.780247, 41.929810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623908, 0.071896, -0.778184,
		-0.148055, 0.988600, -0.027368,
		0.767345, 0.132289, 0.627440,
		35.204380, 34.819935, 42.118042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069359, 35.252720, 41.346062>,  <34.667240, 34.727329, 41.678833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069359, 35.252720, 41.346062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.307758, 35.067020, 41.608131>,  <35.450798, 34.955601, 41.765373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.307758, 35.067020, 41.608131>,  <35.069359, 35.252720, 41.346062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307758, 35.067020, 41.608131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735728, -0.011161, -0.677185,
		0.321694, 0.885635, 0.334908,
		0.596000, -0.464248, 0.655177,
		35.486557, 34.927746, 41.804684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624802, 35.611519, 41.270214>,  <35.069359, 35.252720, 41.346062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624802, 35.611519, 41.270214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.748123, 35.269466, 41.436920>,  <35.822117, 35.064236, 41.536945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.748123, 35.269466, 41.436920>,  <35.624802, 35.611519, 41.270214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748123, 35.269466, 41.436920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805888, 0.001997, -0.592065,
		0.505462, 0.518404, 0.689757,
		0.308306, -0.855133, 0.416766,
		35.840614, 35.012928, 41.561951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366089, 35.694145, 41.517414>,  <35.624802, 35.611519, 41.270214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366089, 35.694145, 41.517414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.297691, 35.301090, 41.488636>,  <36.256653, 35.065258, 41.471371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.297691, 35.301090, 41.488636>,  <36.366089, 35.694145, 41.517414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297691, 35.301090, 41.488636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735787, -0.078791, -0.672614,
		0.655270, -0.167948, 0.736488,
		-0.170993, -0.982642, -0.071945,
		36.246395, 35.006298, 41.467052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111530, 35.276588, 41.543186>,  <36.366089, 35.694145, 41.517414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111530, 35.276588, 41.543186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.826775, 35.043941, 41.385738>,  <36.655922, 34.904354, 41.291267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.826775, 35.043941, 41.385738>,  <37.111530, 35.276588, 41.543186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826775, 35.043941, 41.385738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623405, -0.265243, -0.735536,
		0.323392, -0.769006, 0.551405,
		-0.711888, -0.581615, -0.393624,
		36.613209, 34.869457, 41.267651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.172184, 41.423588, 38.517410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.877071, 41.686600, 38.578506>,  <28.700005, 41.844406, 38.615166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.877071, 41.686600, 38.578506>,  <29.172184, 41.423588, 38.517410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.877071, 41.686600, 38.578506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665679, -0.671131, -0.326274,
		-0.112025, -0.342397, 0.932853,
		-0.737781, 0.657532, 0.152743,
		28.655737, 41.883858, 38.624329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720957, 41.212379, 39.079010>,  <29.172184, 41.423588, 38.517410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.720957, 41.212379, 39.079010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.521914, 41.439388, 38.816620>,  <28.402487, 41.575592, 38.659187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.521914, 41.439388, 38.816620>,  <28.720957, 41.212379, 39.079010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.521914, 41.439388, 38.816620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439695, -0.816927, -0.373228,
		-0.747699, 0.102707, 0.656047,
		-0.497609, 0.567523, -0.655975,
		28.372631, 41.609646, 38.619827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.073383, 40.847076, 39.103191>,  <28.720957, 41.212379, 39.079010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.073383, 40.847076, 39.103191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.084089, 41.076672, 38.775822>,  <28.090513, 41.214428, 38.579399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.084089, 41.076672, 38.775822>,  <28.073383, 40.847076, 39.103191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.084089, 41.076672, 38.775822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431166, -0.732019, -0.527487,
		-0.901875, 0.366997, 0.227890,
		0.026766, 0.573987, -0.818427,
		28.092119, 41.248867, 38.530293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.537252, 40.523052, 38.759441>,  <28.073383, 40.847076, 39.103191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.537252, 40.523052, 38.759441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.710434, 40.711876, 38.452271>,  <27.814342, 40.825172, 38.267967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.710434, 40.711876, 38.452271>,  <27.537252, 40.523052, 38.759441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.710434, 40.711876, 38.452271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451712, -0.623606, -0.638022,
		-0.780068, 0.623115, -0.056756,
		0.432954, 0.472063, -0.767924,
		27.840321, 40.853497, 38.221893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.009321, 40.704994, 38.237736>,  <27.537252, 40.523052, 38.759441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.009321, 40.704994, 38.237736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.352674, 40.682049, 38.033817>,  <27.558687, 40.668282, 37.911469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.352674, 40.682049, 38.033817>,  <27.009321, 40.704994, 38.237736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.352674, 40.682049, 38.033817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456006, -0.540578, -0.706989,
		-0.235027, 0.839336, -0.490181,
		0.858383, -0.057364, -0.509793,
		27.610189, 40.664841, 37.880878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.814949, 40.712452, 37.554264>,  <27.009321, 40.704994, 38.237736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.814949, 40.712452, 37.554264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.193121, 40.586578, 37.520470>,  <27.420025, 40.511055, 37.500195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.193121, 40.586578, 37.520470>,  <26.814949, 40.712452, 37.554264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.193121, 40.586578, 37.520470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266506, -0.597691, -0.756135,
		0.187444, 0.737389, -0.648940,
		0.945431, -0.314679, -0.084484,
		27.476749, 40.492176, 37.495125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.934793, 40.627693, 36.793953>,  <26.814949, 40.712452, 37.554264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.934793, 40.627693, 36.793953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.237211, 40.424469, 36.959007>,  <27.418661, 40.302536, 37.058041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.237211, 40.424469, 36.959007>,  <26.934793, 40.627693, 36.793953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.237211, 40.424469, 36.959007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153604, -0.750565, -0.642696,
		0.636241, 0.422524, -0.645501,
		0.756045, -0.508061, 0.412638,
		27.464025, 40.272049, 37.082798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342787, 40.394218, 36.269577>,  <26.934793, 40.627693, 36.793953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342787, 40.394218, 36.269577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.435369, 40.139416, 36.563694>,  <27.490919, 39.986534, 36.740162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.435369, 40.139416, 36.563694>,  <27.342787, 40.394218, 36.269577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.435369, 40.139416, 36.563694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182019, -0.770822, -0.610494,
		0.955665, 0.007467, -0.294361,
		0.231458, -0.637007, 0.735288,
		27.504807, 39.948315, 36.784279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824627, 39.952492, 35.984943>,  <27.342787, 40.394218, 36.269577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.824627, 39.952492, 35.984943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.694630, 39.759895, 36.310532>,  <27.616631, 39.644337, 36.505886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.694630, 39.759895, 36.310532>,  <27.824627, 39.952492, 35.984943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.694630, 39.759895, 36.310532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069594, -0.846182, -0.528330,
		0.943152, -0.228352, 0.241495,
		-0.324994, -0.481489, 0.813970,
		27.597132, 39.615448, 36.554722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199324, 39.333134, 36.011692>,  <27.824627, 39.952492, 35.984943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199324, 39.333134, 36.011692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.878826, 39.267056, 36.241722>,  <27.686527, 39.227409, 36.379742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.878826, 39.267056, 36.241722>,  <28.199324, 39.333134, 36.011692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.878826, 39.267056, 36.241722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094145, -0.914352, -0.393825,
		0.590884, -0.369691, 0.717067,
		-0.801245, -0.165197, 0.575080,
		27.638453, 39.217495, 36.414246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261181, 38.721622, 36.231724>,  <28.199324, 39.333134, 36.011692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.261181, 38.721622, 36.231724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.871881, 38.778675, 36.303772>,  <27.638302, 38.812908, 36.347000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.871881, 38.778675, 36.303772>,  <28.261181, 38.721622, 36.231724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.871881, 38.778675, 36.303772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158449, -0.984387, -0.076655,
		0.166376, -0.103144, 0.980653,
		-0.973249, 0.142630, 0.180121,
		27.579906, 38.821465, 36.357807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.041986, 38.234608, 36.754536>,  <28.261181, 38.721622, 36.231724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.041986, 38.234608, 36.754536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.730978, 38.356064, 36.534260>,  <27.544373, 38.428940, 36.402092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.730978, 38.356064, 36.534260>,  <28.041986, 38.234608, 36.754536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.730978, 38.356064, 36.534260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197837, -0.949347, -0.244132,
		-0.596928, -0.080870, 0.798209,
		-0.777520, 0.303644, -0.550692,
		27.497723, 38.447159, 36.369053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.566566, 37.789101, 36.900955>,  <28.041986, 38.234608, 36.754536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.566566, 37.789101, 36.900955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.387640, 37.942924, 36.577961>,  <27.280285, 38.035217, 36.384167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.387640, 37.942924, 36.577961>,  <27.566566, 37.789101, 36.900955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.387640, 37.942924, 36.577961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431687, -0.883545, -0.181642,
		-0.783298, 0.267328, 0.561230,
		-0.447314, 0.384556, -0.807482,
		27.253447, 38.058292, 36.335716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.871828, 37.545868, 36.875221>,  <27.566566, 37.789101, 36.900955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.871828, 37.545868, 36.875221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.968552, 37.651680, 36.501793>,  <27.026587, 37.715168, 36.277737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.968552, 37.651680, 36.501793>,  <26.871828, 37.545868, 36.875221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.968552, 37.651680, 36.501793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298304, -0.895262, -0.330938,
		-0.923333, 0.358512, -0.137572,
		0.241808, 0.264528, -0.933570,
		27.041094, 37.731037, 36.221722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.263550, 37.319889, 36.466377>,  <26.871828, 37.545868, 36.875221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.263550, 37.319889, 36.466377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.580566, 37.376060, 36.229008>,  <26.770777, 37.409763, 36.086586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.580566, 37.376060, 36.229008>,  <26.263550, 37.319889, 36.466377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.580566, 37.376060, 36.229008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358131, -0.680455, -0.639315,
		-0.493576, 0.719210, -0.488999,
		0.792543, 0.140425, -0.593427,
		26.818329, 37.418186, 36.050980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.000164, 37.399048, 35.772045>,  <26.263550, 37.319889, 36.466377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.000164, 37.399048, 35.772045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.377769, 37.267754, 35.758808>,  <26.604334, 37.188976, 35.750866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.377769, 37.267754, 35.758808>,  <26.000164, 37.399048, 35.772045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.377769, 37.267754, 35.758808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300807, -0.815221, -0.494904,
		0.135468, 0.477151, -0.868318,
		0.944014, -0.328240, -0.033094,
		26.660975, 37.169281, 35.748878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.897596, 36.765751, 35.442474>,  <26.000164, 37.399048, 35.772045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.897596, 36.765751, 35.442474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.291529, 36.746639, 35.509197>,  <26.527887, 36.735172, 35.549232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.291529, 36.746639, 35.509197>,  <25.897596, 36.765751, 35.442474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.291529, 36.746639, 35.509197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002889, -0.965717, -0.259580,
		0.173491, 0.255161, -0.951207,
		0.984831, -0.047783, 0.166806,
		26.586979, 36.732304, 35.559238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.173311, 36.395267, 34.853519>,  <25.897596, 36.765751, 35.442474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.173311, 36.395267, 34.853519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.444668, 36.346363, 35.143303>,  <26.607483, 36.317020, 35.317173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.444668, 36.346363, 35.143303>,  <26.173311, 36.395267, 34.853519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.444668, 36.346363, 35.143303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004262, -0.986695, -0.162528,
		0.734687, 0.107171, -0.669887,
		0.678393, -0.122262, 0.724456,
		26.648186, 36.309685, 35.360638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.635656, 35.961773, 34.627762>,  <26.173311, 36.395267, 34.853519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.635656, 35.961773, 34.627762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.648989, 35.941799, 35.027039>,  <26.656988, 35.929813, 35.266605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.648989, 35.941799, 35.027039>,  <26.635656, 35.961773, 34.627762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.648989, 35.941799, 35.027039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041369, -0.997826, -0.051298,
		0.998588, 0.043004, -0.031193,
		0.033331, -0.049935, 0.998196,
		26.658987, 35.926819, 35.326496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.037851, 35.461441, 34.705460>,  <26.635656, 35.961773, 34.627762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.037851, 35.461441, 34.705460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.876345, 35.470242, 35.071301>,  <26.779440, 35.475521, 35.290806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.876345, 35.470242, 35.071301>,  <27.037851, 35.461441, 34.705460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.876345, 35.470242, 35.071301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132367, -0.987787, 0.082193,
		0.905236, 0.154250, 0.395923,
		-0.403766, 0.021997, 0.914598,
		26.755215, 35.476841, 35.345680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.543087, 35.249607, 35.225277>,  <27.037851, 35.461441, 34.705460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.543087, 35.249607, 35.225277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.175802, 35.188675, 35.371525>,  <26.955431, 35.152115, 35.459274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.175802, 35.188675, 35.371525>,  <27.543087, 35.249607, 35.225277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.175802, 35.188675, 35.371525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244848, -0.943887, 0.221645,
		0.311341, 0.293039, 0.903988,
		-0.918214, -0.152333, 0.365620,
		26.900337, 35.142975, 35.481213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.605488, 35.717178, 35.907738>,  <27.543087, 35.249607, 35.225277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.605488, 35.717178, 35.907738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.997826, 35.739132, 35.832973>,  <28.233229, 35.752304, 35.788116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.997826, 35.739132, 35.832973>,  <27.605488, 35.717178, 35.907738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.997826, 35.739132, 35.832973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153918, 0.369737, 0.916299,
		0.119396, -0.927514, 0.354206,
		0.980843, 0.054883, -0.186906,
		28.292078, 35.755596, 35.776901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902479, 35.357006, 36.449501>,  <27.605488, 35.717178, 35.907738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.902479, 35.357006, 36.449501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.188919, 35.598885, 36.310047>,  <28.360783, 35.744011, 36.226376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.188919, 35.598885, 36.310047>,  <27.902479, 35.357006, 36.449501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188919, 35.598885, 36.310047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245211, 0.249695, 0.936763,
		0.653507, -0.756305, 0.030530,
		0.716101, 0.604694, -0.348632,
		28.403749, 35.780293, 36.205460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444849, 35.205036, 36.825024>,  <27.902479, 35.357006, 36.449501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.444849, 35.205036, 36.825024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.517876, 35.573795, 36.688332>,  <28.561691, 35.795052, 36.606316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.517876, 35.573795, 36.688332>,  <28.444849, 35.205036, 36.825024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517876, 35.573795, 36.688332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131815, 0.321479, 0.937697,
		0.974318, -0.216235, -0.062829,
		0.182565, 0.921897, -0.341726,
		28.572645, 35.850365, 36.585815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.876844, 35.553303, 37.363274>,  <28.444849, 35.205036, 36.825024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.876844, 35.553303, 37.363274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.779768, 35.879154, 37.152569>,  <28.721521, 36.074665, 37.026146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.779768, 35.879154, 37.152569>,  <28.876844, 35.553303, 37.363274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779768, 35.879154, 37.152569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173453, 0.570680, 0.802644,
		0.954471, 0.103428, -0.279801,
		-0.242693, 0.814633, -0.526758,
		28.706961, 36.123543, 36.994541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.428621, 36.138977, 37.545433>,  <28.876844, 35.553303, 37.363274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.428621, 36.138977, 37.545433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.109297, 36.323215, 37.390232>,  <28.917702, 36.433758, 37.297112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.109297, 36.323215, 37.390232>,  <29.428621, 36.138977, 37.545433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109297, 36.323215, 37.390232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151987, 0.777494, 0.610248,
		0.582752, 0.428196, -0.690687,
		-0.798310, 0.460599, -0.388006,
		28.869804, 36.461395, 37.273830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560797, 36.891243, 37.478775>,  <29.428621, 36.138977, 37.545433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560797, 36.891243, 37.478775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.162262, 36.867630, 37.503532>,  <28.923141, 36.853462, 37.518387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.162262, 36.867630, 37.503532>,  <29.560797, 36.891243, 37.478775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162262, 36.867630, 37.503532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015022, 0.833183, 0.552794,
		-0.084204, 0.549838, -0.831016,
		-0.996335, -0.059031, 0.061898,
		28.863361, 36.849922, 37.522102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.355000, 37.604073, 37.549236>,  <29.560797, 36.891243, 37.478775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.355000, 37.604073, 37.549236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.019068, 37.433002, 37.682972>,  <28.817509, 37.330360, 37.763214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.019068, 37.433002, 37.682972>,  <29.355000, 37.604073, 37.549236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.019068, 37.433002, 37.682972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060117, 0.685382, 0.725698,
		-0.539511, 0.589364, -0.601314,
		-0.839830, -0.427671, 0.334340,
		28.767118, 37.304703, 37.783276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.787376, 38.216419, 37.758442>,  <29.355000, 37.604073, 37.549236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.787376, 38.216419, 37.758442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.695219, 37.873760, 37.943085>,  <28.639925, 37.668167, 38.053871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.695219, 37.873760, 37.943085>,  <28.787376, 38.216419, 37.758442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.695219, 37.873760, 37.943085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073126, 0.488269, 0.869624,
		-0.970346, 0.166601, -0.175138,
		-0.230395, -0.856643, 0.461606,
		28.626101, 37.616768, 38.081566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184891, 38.286613, 38.070366>,  <28.787376, 38.216419, 37.758442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.184891, 38.286613, 38.070366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.361963, 37.988529, 38.269844>,  <28.468206, 37.809681, 38.389530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.361963, 37.988529, 38.269844>,  <28.184891, 38.286613, 38.070366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.361963, 37.988529, 38.269844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040962, 0.538773, 0.841454,
		-0.895743, -0.392924, 0.207980,
		0.442681, -0.745208, 0.498697,
		28.494768, 37.764965, 38.419453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.827206, 38.217243, 38.817085>,  <28.184891, 38.286613, 38.070366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.827206, 38.217243, 38.817085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.193480, 38.056866, 38.828156>,  <28.413244, 37.960640, 38.834797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.193480, 38.056866, 38.828156>,  <27.827206, 38.217243, 38.817085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193480, 38.056866, 38.828156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182068, 0.475227, 0.860819,
		-0.358289, -0.783202, 0.508158,
		0.915686, -0.400941, 0.027672,
		28.468185, 37.936584, 38.836456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.888042, 38.159630, 39.409641>,  <27.827206, 38.217243, 38.817085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.888042, 38.159630, 39.409641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.273209, 38.095535, 39.322819>,  <28.504309, 38.057079, 39.270725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.273209, 38.095535, 39.322819>,  <27.888042, 38.159630, 39.409641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.273209, 38.095535, 39.322819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267776, 0.469371, 0.841419,
		-0.032947, -0.868340, 0.494874,
		0.962918, -0.160238, -0.217056,
		28.562084, 38.047462, 39.257702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.144110, 37.763294, 40.033825>,  <27.888042, 38.159630, 39.409641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.144110, 37.763294, 40.033825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.464256, 37.895931, 39.834042>,  <28.656343, 37.975513, 39.714172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.464256, 37.895931, 39.834042>,  <28.144110, 37.763294, 40.033825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.464256, 37.895931, 39.834042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390388, 0.344010, 0.853964,
		0.454985, -0.878468, 0.145885,
		0.800366, 0.331589, -0.499463,
		28.704367, 37.995407, 39.684204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768314, 37.569897, 40.452267>,  <28.144110, 37.763294, 40.033825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768314, 37.569897, 40.452267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.889587, 37.861645, 40.206959>,  <28.962351, 38.036694, 40.059776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.889587, 37.861645, 40.206959>,  <28.768314, 37.569897, 40.452267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.889587, 37.861645, 40.206959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443358, 0.461697, 0.768291,
		0.843512, -0.504831, -0.183393,
		0.303185, 0.729371, -0.613267,
		28.980543, 38.080456, 40.022980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.435127, 37.703827, 40.667816>,  <28.768314, 37.569897, 40.452267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.435127, 37.703827, 40.667816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.288847, 38.024113, 40.478027>,  <29.201078, 38.216282, 40.364155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.288847, 38.024113, 40.478027>,  <29.435127, 37.703827, 40.667816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288847, 38.024113, 40.478027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303606, 0.584525, 0.752432,
		0.879821, 0.131113, -0.456863,
		-0.365702, 0.800712, -0.474471,
		29.179136, 38.264328, 40.335686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958452, 38.192822, 40.704235>,  <29.435127, 37.703827, 40.667816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958452, 38.192822, 40.704235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.619677, 38.392479, 40.630974>,  <29.416410, 38.512272, 40.587017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.619677, 38.392479, 40.630974>,  <29.958452, 38.192822, 40.704235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.619677, 38.392479, 40.630974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262545, 0.692172, 0.672285,
		0.462344, 0.521299, -0.717277,
		-0.846940, 0.499145, -0.183157,
		29.365595, 38.542221, 40.576027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184401, 38.849617, 40.678326>,  <29.958452, 38.192822, 40.704235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184401, 38.849617, 40.678326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.787579, 38.870693, 40.724026>,  <29.549486, 38.883339, 40.751446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.787579, 38.870693, 40.724026>,  <30.184401, 38.849617, 40.678326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787579, 38.870693, 40.724026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117992, 0.704898, 0.699426,
		-0.043683, 0.707349, -0.705514,
		-0.992053, 0.052692, 0.114253,
		29.489964, 38.886501, 40.758301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.006378, 39.568096, 40.567261>,  <30.184401, 38.849617, 40.678326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.006378, 39.568096, 40.567261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.712439, 39.405582, 40.784489>,  <29.536076, 39.308075, 40.914825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.712439, 39.405582, 40.784489>,  <30.006378, 39.568096, 40.567261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712439, 39.405582, 40.784489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086770, 0.737824, 0.669393,
		-0.672657, 0.539025, -0.506936,
		-0.734849, -0.406285, 0.543074,
		29.491983, 39.283695, 40.947411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579460, 40.036751, 40.577988>,  <30.006378, 39.568096, 40.567261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579460, 40.036751, 40.577988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.509613, 39.812435, 40.901722>,  <29.467705, 39.677845, 41.095963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.509613, 39.812435, 40.901722>,  <29.579460, 40.036751, 40.577988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.509613, 39.812435, 40.901722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257762, 0.767262, 0.587255,
		-0.950299, 0.311160, 0.010573,
		-0.174618, -0.560793, 0.809333,
		29.457228, 39.644196, 41.144524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031633, 40.390064, 40.995941>,  <29.579460, 40.036751, 40.577988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.031633, 40.390064, 40.995941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.231110, 40.134609, 41.230362>,  <29.350796, 39.981339, 41.371014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.231110, 40.134609, 41.230362>,  <29.031633, 40.390064, 40.995941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.231110, 40.134609, 41.230362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291597, 0.760324, 0.580413,
		-0.816259, -0.118556, 0.565389,
		0.498690, -0.638633, 0.586051,
		29.380716, 39.943020, 41.406178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781830, 40.608192, 41.612556>,  <29.031633, 40.390064, 40.995941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781830, 40.608192, 41.612556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.106449, 40.383400, 41.676525>,  <29.301220, 40.248528, 41.714905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.106449, 40.383400, 41.676525>,  <28.781830, 40.608192, 41.612556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.106449, 40.383400, 41.676525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340519, 0.677320, 0.652139,
		-0.474804, -0.474785, 0.741040,
		0.811547, -0.561977, 0.159921,
		29.349913, 40.214806, 41.724503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915819, 40.585434, 42.284431>,  <28.781830, 40.608192, 41.612556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915819, 40.585434, 42.284431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.271122, 40.479885, 42.134033>,  <29.484304, 40.416557, 42.043793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.271122, 40.479885, 42.134033>,  <28.915819, 40.585434, 42.284431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.271122, 40.479885, 42.134033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458133, 0.568400, 0.683400,
		0.033387, -0.779290, 0.625773,
		0.888256, -0.263871, -0.375995,
		29.537600, 40.400723, 42.021233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.779209, 34.584438, 46.494148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.564163, 34.277252, 46.354893>,  <35.435135, 34.092941, 46.271339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.564163, 34.277252, 46.354893>,  <35.779209, 34.584438, 46.494148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564163, 34.277252, 46.354893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729747, 0.216923, 0.648393,
		-0.422422, 0.602641, -0.677040,
		-0.537614, -0.767964, -0.348142,
		35.402878, 34.046864, 46.250450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092575, 34.844017, 46.429081>,  <35.779209, 34.584438, 46.494148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092575, 34.844017, 46.429081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.069870, 34.446316, 46.465370>,  <35.056248, 34.207695, 46.487144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.069870, 34.446316, 46.465370>,  <35.092575, 34.844017, 46.429081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069870, 34.446316, 46.465370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767874, 0.101547, 0.632501,
		-0.638081, -0.033763, -0.769229,
		-0.056758, -0.994258, 0.090721,
		35.052841, 34.148037, 46.492588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365704, 34.658546, 46.413754>,  <35.092575, 34.844017, 46.429081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365704, 34.658546, 46.413754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.541401, 34.336430, 46.573036>,  <34.646820, 34.143158, 46.668606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.541401, 34.336430, 46.573036>,  <34.365704, 34.658546, 46.413754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541401, 34.336430, 46.573036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745913, -0.079877, 0.661236,
		-0.500682, -0.587470, -0.635764,
		0.439239, -0.805294, 0.398209,
		34.673172, 34.094841, 46.692497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822411, 34.226711, 46.580360>,  <34.365704, 34.658546, 46.413754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822411, 34.226711, 46.580360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.130863, 34.099125, 46.800766>,  <34.315937, 34.022575, 46.933010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.130863, 34.099125, 46.800766>,  <33.822411, 34.226711, 46.580360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130863, 34.099125, 46.800766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612676, -0.136409, 0.778473,
		-0.173152, -0.937895, -0.300619,
		0.771133, -0.318976, 0.551007,
		34.362206, 34.003437, 46.966068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652737, 33.702755, 46.894398>,  <33.822411, 34.226711, 46.580360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652737, 33.702755, 46.894398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.941238, 33.798046, 47.154564>,  <34.114338, 33.855221, 47.310665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.941238, 33.798046, 47.154564>,  <33.652737, 33.702755, 46.894398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941238, 33.798046, 47.154564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649298, -0.094544, 0.754635,
		0.241270, -0.966596, 0.086492,
		0.721250, 0.238230, 0.650419,
		34.157612, 33.869514, 47.349689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739941, 33.125122, 47.360714>,  <33.652737, 33.702755, 46.894398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739941, 33.125122, 47.360714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.911354, 33.436855, 47.543579>,  <34.014202, 33.623894, 47.653297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.911354, 33.436855, 47.543579>,  <33.739941, 33.125122, 47.360714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911354, 33.436855, 47.543579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567998, -0.161122, 0.807104,
		0.702663, -0.605539, 0.373614,
		0.428536, 0.779335, 0.457159,
		34.039913, 33.670654, 47.680725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946461, 32.923973, 48.093323>,  <33.739941, 33.125122, 47.360714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946461, 32.923973, 48.093323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.947346, 33.323570, 48.111229>,  <33.947876, 33.563328, 48.121971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.947346, 33.323570, 48.111229>,  <33.946461, 32.923973, 48.093323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947346, 33.323570, 48.111229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523805, -0.036973, 0.851035,
		0.851835, -0.025334, 0.523197,
		0.002216, 0.998995, 0.044765,
		33.948009, 33.623268, 48.124657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999790, 33.106850, 48.819046>,  <33.946461, 32.923973, 48.093323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999790, 33.106850, 48.819046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.862968, 33.441463, 48.647831>,  <33.780876, 33.642231, 48.545101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.862968, 33.441463, 48.647831>,  <33.999790, 33.106850, 48.819046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862968, 33.441463, 48.647831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438245, 0.260926, 0.860151,
		0.831230, 0.481799, 0.277356,
		-0.342050, 0.836533, -0.428035,
		33.760353, 33.692425, 48.519421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010620, 33.641697, 49.316017>,  <33.999790, 33.106850, 48.819046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010620, 33.641697, 49.316017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.758205, 33.768639, 49.032871>,  <33.606754, 33.844803, 48.862984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.758205, 33.768639, 49.032871>,  <34.010620, 33.641697, 49.316017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758205, 33.768639, 49.032871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553963, 0.454439, 0.697574,
		0.543058, 0.832330, -0.110969,
		-0.631041, 0.317351, -0.707867,
		33.568893, 33.863842, 48.820511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907555, 34.313751, 49.507401>,  <34.010620, 33.641697, 49.316017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907555, 34.313751, 49.507401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.594910, 34.213909, 49.278744>,  <33.407322, 34.154003, 49.141548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.594910, 34.213909, 49.278744>,  <33.907555, 34.313751, 49.507401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594910, 34.213909, 49.278744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594453, 0.575686, 0.561437,
		0.188948, 0.778642, -0.598344,
		-0.781616, -0.249605, -0.571641,
		33.360424, 34.139027, 49.107250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498634, 34.938351, 49.362629>,  <33.907555, 34.313751, 49.507401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498634, 34.938351, 49.362629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.245323, 34.631157, 49.324348>,  <33.093338, 34.446842, 49.301380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.245323, 34.631157, 49.324348>,  <33.498634, 34.938351, 49.362629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245323, 34.631157, 49.324348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622820, 0.432320, 0.652070,
		-0.459405, 0.472547, -0.752095,
		-0.633279, -0.767984, -0.095702,
		33.055340, 34.400761, 49.295639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845032, 35.266338, 49.315781>,  <33.498634, 34.938351, 49.362629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845032, 35.266338, 49.315781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.777042, 34.881176, 49.399609>,  <32.736248, 34.650078, 49.449905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.777042, 34.881176, 49.399609>,  <32.845032, 35.266338, 49.315781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777042, 34.881176, 49.399609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568264, 0.269520, 0.777454,
		-0.805100, 0.013053, -0.592996,
		-0.169972, -0.962906, 0.209572,
		32.726051, 34.592304, 49.462479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191456, 35.254017, 49.432686>,  <32.845032, 35.266338, 49.315781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191456, 35.254017, 49.432686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.372353, 34.947796, 49.615730>,  <32.480888, 34.764065, 49.725559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.372353, 34.947796, 49.615730>,  <32.191456, 35.254017, 49.432686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372353, 34.947796, 49.615730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463676, 0.236491, 0.853860,
		-0.761896, -0.598333, -0.248017,
		0.452239, -0.765552, 0.457615,
		32.508026, 34.718132, 49.753014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837757, 35.243229, 50.081993>,  <32.191456, 35.254017, 49.432686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837757, 35.243229, 50.081993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.062817, 34.914238, 50.115364>,  <32.197853, 34.716843, 50.135387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.062817, 34.914238, 50.115364>,  <31.837757, 35.243229, 50.081993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062817, 34.914238, 50.115364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446254, -0.217216, 0.868144,
		-0.695904, -0.525692, -0.489249,
		0.562649, -0.822475, 0.083431,
		32.231613, 34.667496, 50.140392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885244, 36.081741, 50.141571>,  <31.837757, 35.243229, 50.081993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885244, 36.081741, 50.141571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.704596, 36.428928, 50.224190>,  <31.596207, 36.637241, 50.273762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.704596, 36.428928, 50.224190>,  <31.885244, 36.081741, 50.141571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704596, 36.428928, 50.224190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402350, 0.404756, -0.821150,
		-0.796337, -0.287746, -0.532025,
		-0.451622, 0.867972, 0.206547,
		31.569109, 36.689320, 50.286156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455423, 36.199612, 49.614887>,  <31.885244, 36.081741, 50.141571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455423, 36.199612, 49.614887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.589235, 36.535843, 49.785309>,  <31.669521, 36.737583, 49.887562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.589235, 36.535843, 49.785309>,  <31.455423, 36.199612, 49.614887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589235, 36.535843, 49.785309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330955, 0.318511, -0.888268,
		-0.882360, 0.438154, -0.171643,
		0.334528, 0.840578, 0.426051,
		31.689594, 36.788017, 49.913124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258022, 36.730106, 49.198742>,  <31.455423, 36.199612, 49.614887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258022, 36.730106, 49.198742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.573275, 36.879021, 49.394806>,  <31.762426, 36.968369, 49.512444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.573275, 36.879021, 49.394806>,  <31.258022, 36.730106, 49.198742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573275, 36.879021, 49.394806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360721, 0.365887, -0.857909,
		-0.498730, 0.852953, 0.154075,
		0.788130, 0.372287, 0.490157,
		31.809713, 36.990707, 49.541851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268297, 37.370934, 48.886959>,  <31.258022, 36.730106, 49.198742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268297, 37.370934, 48.886959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.632271, 37.312370, 49.042179>,  <31.850655, 37.277233, 49.135311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.632271, 37.312370, 49.042179>,  <31.268297, 37.370934, 48.886959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632271, 37.312370, 49.042179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409207, 0.164381, -0.897512,
		0.067617, 0.975470, 0.209489,
		0.909933, -0.146412, 0.388055,
		31.905251, 37.268448, 49.158596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647173, 37.944897, 48.617165>,  <31.268297, 37.370934, 48.886959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647173, 37.944897, 48.617165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.891073, 37.642258, 48.711620>,  <32.037415, 37.460674, 48.768295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.891073, 37.642258, 48.711620>,  <31.647173, 37.944897, 48.617165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891073, 37.642258, 48.711620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447209, 0.082441, -0.890622,
		0.654374, 0.648663, 0.388626,
		0.609752, -0.756597, 0.236141,
		32.073997, 37.415279, 48.782463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409012, 38.098114, 48.399147>,  <31.647173, 37.944897, 48.617165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409012, 38.098114, 48.399147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.395912, 37.698605, 48.413982>,  <32.388050, 37.458900, 48.422886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.395912, 37.698605, 48.413982>,  <32.409012, 38.098114, 48.399147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395912, 37.698605, 48.413982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706818, -0.049385, -0.705669,
		0.706637, 0.003103, 0.707570,
		-0.032753, -0.998775, 0.037091,
		32.386086, 37.398972, 48.425110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996468, 37.830227, 47.992176>,  <32.409012, 38.098114, 48.399147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996468, 37.830227, 47.992176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.814266, 37.478115, 48.045277>,  <32.704945, 37.266850, 48.077137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.814266, 37.478115, 48.045277>,  <32.996468, 37.830227, 47.992176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814266, 37.478115, 48.045277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538824, -0.391319, -0.746015,
		0.708648, -0.268286, 0.652564,
		-0.455506, -0.880279, 0.132748,
		32.677616, 37.214031, 48.085102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585972, 37.276581, 48.112045>,  <32.996468, 37.830227, 47.992176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585972, 37.276581, 48.112045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.268105, 37.074375, 47.977608>,  <33.077385, 36.953053, 47.896946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.268105, 37.074375, 47.977608>,  <33.585972, 37.276581, 48.112045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268105, 37.074375, 47.977608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566917, -0.420077, -0.708618,
		0.217030, -0.753654, 0.620406,
		-0.794672, -0.505510, -0.336090,
		33.029701, 36.922722, 47.876781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710983, 36.525066, 47.995205>,  <33.585972, 37.276581, 48.112045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710983, 36.525066, 47.995205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.395687, 36.614769, 47.765984>,  <33.206509, 36.668591, 47.628452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.395687, 36.614769, 47.765984>,  <33.710983, 36.525066, 47.995205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395687, 36.614769, 47.765984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424035, -0.476914, -0.769901,
		-0.445948, -0.849861, 0.280832,
		-0.788242, 0.224254, -0.573050,
		33.159214, 36.682045, 47.594067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663704, 35.925762, 47.481266>,  <33.710983, 36.525066, 47.995205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663704, 35.925762, 47.481266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.444870, 36.219906, 47.321293>,  <33.313572, 36.396393, 47.225307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.444870, 36.219906, 47.321293>,  <33.663704, 35.925762, 47.481266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444870, 36.219906, 47.321293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218440, -0.335800, -0.916254,
		-0.808074, -0.588628, 0.023078,
		-0.547083, 0.735361, -0.399932,
		33.280746, 36.440514, 47.201313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209312, 35.605370, 47.038971>,  <33.663704, 35.925762, 47.481266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209312, 35.605370, 47.038971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.229931, 35.990299, 46.932175>,  <33.242302, 36.221256, 46.868095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.229931, 35.990299, 46.932175>,  <33.209312, 35.605370, 47.038971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229931, 35.990299, 46.932175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030646, -0.268744, -0.962724,
		-0.998200, 0.041446, -0.043345,
		0.051550, 0.962320, -0.266990,
		33.245396, 36.278996, 46.852077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670067, 35.553085, 46.556404>,  <33.209312, 35.605370, 47.038971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670067, 35.553085, 46.556404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.899681, 35.871094, 46.478004>,  <33.037449, 36.061901, 46.430965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.899681, 35.871094, 46.478004>,  <32.670067, 35.553085, 46.556404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899681, 35.871094, 46.478004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030852, -0.218199, -0.975416,
		-0.818246, 0.565974, -0.100727,
		0.574039, 0.795023, -0.196002,
		33.071892, 36.109600, 46.419205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565903, 35.697750, 45.924461>,  <32.670067, 35.553085, 46.556404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565903, 35.697750, 45.924461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.893650, 35.921818, 45.973202>,  <33.090298, 36.056259, 46.002445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.893650, 35.921818, 45.973202>,  <32.565903, 35.697750, 45.924461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893650, 35.921818, 45.973202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264037, -0.180093, -0.947550,
		-0.508845, 0.808564, -0.295468,
		0.819366, 0.560171, 0.121851,
		33.139462, 36.089870, 46.009758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578888, 36.166153, 45.432507>,  <32.565903, 35.697750, 45.924461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578888, 36.166153, 45.432507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.955921, 36.121986, 45.558586>,  <33.182140, 36.095486, 45.634235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.955921, 36.121986, 45.558586>,  <32.578888, 36.166153, 45.432507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955921, 36.121986, 45.558586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281262, -0.246487, -0.927435,
		0.180093, 0.962836, -0.201279,
		0.942581, -0.110413, 0.315200,
		33.238697, 36.088863, 45.653145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035770, 36.580482, 45.025951>,  <32.578888, 36.166153, 45.432507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035770, 36.580482, 45.025951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.715509, 36.472336, 44.812088>,  <31.523354, 36.407448, 44.683769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.715509, 36.472336, 44.812088>,  <32.035770, 36.580482, 45.025951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715509, 36.472336, 44.812088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551142, -0.017580, 0.834226,
		-0.234949, 0.962596, -0.134937,
		-0.800651, -0.270370, -0.534657,
		31.475315, 36.391224, 44.651691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500378, 37.103840, 45.242340>,  <32.035770, 36.580482, 45.025951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500378, 37.103840, 45.242340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.290367, 36.810028, 45.070377>,  <31.164360, 36.633739, 44.967201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.290367, 36.810028, 45.070377>,  <31.500378, 37.103840, 45.242340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290367, 36.810028, 45.070377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631912, -0.001933, 0.775038,
		-0.570118, 0.678576, -0.463142,
		-0.525026, -0.734528, -0.429902,
		31.132858, 36.589668, 44.941406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804190, 37.373138, 45.219540>,  <31.500378, 37.103840, 45.242340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804190, 37.373138, 45.219540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.760790, 36.977722, 45.177570>,  <30.734751, 36.740471, 45.152390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.760790, 36.977722, 45.177570>,  <30.804190, 37.373138, 45.219540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760790, 36.977722, 45.177570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692816, -0.000499, 0.721114,
		-0.712905, 0.150933, -0.684825,
		-0.108498, -0.988544, -0.104925,
		30.728241, 36.681160, 45.146091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.052477, 37.230232, 45.264774>,  <30.804190, 37.373138, 45.219540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.052477, 37.230232, 45.264774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.224625, 36.880581, 45.354832>,  <30.327913, 36.670792, 45.408867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.224625, 36.880581, 45.354832>,  <30.052477, 37.230232, 45.264774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224625, 36.880581, 45.354832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581027, -0.077389, 0.810196,
		-0.690791, -0.479494, -0.541197,
		0.430367, -0.874126, 0.225140,
		30.353735, 36.618343, 45.422375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497072, 36.862778, 45.432014>,  <30.052477, 37.230232, 45.264774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497072, 36.862778, 45.432014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.806494, 36.674351, 45.601582>,  <29.992147, 36.561295, 45.703323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.806494, 36.674351, 45.601582>,  <29.497072, 36.862778, 45.432014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.806494, 36.674351, 45.601582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549605, -0.165641, 0.818839,
		-0.315512, -0.866404, -0.387035,
		0.773554, -0.471070, 0.423918,
		30.038561, 36.533031, 45.728756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196823, 36.218437, 45.670750>,  <29.497072, 36.862778, 45.432014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196823, 36.218437, 45.670750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.528833, 36.325230, 45.866619>,  <29.728039, 36.389305, 45.984138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.528833, 36.325230, 45.866619>,  <29.196823, 36.218437, 45.670750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528833, 36.325230, 45.866619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448917, -0.201172, 0.870634,
		0.330952, -0.942470, -0.047125,
		0.830027, 0.266983, 0.489670,
		29.777842, 36.405323, 46.013519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224327, 35.795097, 46.258389>,  <29.196823, 36.218437, 45.670750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224327, 35.795097, 46.258389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.465132, 36.098854, 46.357105>,  <29.609613, 36.281109, 46.416336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.465132, 36.098854, 46.357105>,  <29.224327, 35.795097, 46.258389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465132, 36.098854, 46.357105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430446, 0.048322, 0.901322,
		0.672533, -0.648834, 0.355969,
		0.602009, 0.759394, 0.246790,
		29.645735, 36.326672, 46.431141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.240204, 35.073093, 46.539440>,  <29.224327, 35.795097, 46.258389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.240204, 35.073093, 46.539440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.925066, 34.827591, 46.519043>,  <28.735983, 34.680290, 46.506805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.925066, 34.827591, 46.519043>,  <29.240204, 35.073093, 46.539440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.925066, 34.827591, 46.519043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255163, -0.249935, -0.934036,
		0.560528, -0.748888, 0.353519,
		-0.787846, -0.613759, -0.050993,
		28.688713, 34.643463, 46.503746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440577, 34.302078, 46.298820>,  <29.240204, 35.073093, 46.539440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440577, 34.302078, 46.298820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.056280, 34.371201, 46.211998>,  <28.825703, 34.412674, 46.159904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.056280, 34.371201, 46.211998>,  <29.440577, 34.302078, 46.298820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.056280, 34.371201, 46.211998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185376, -0.182277, -0.965614,
		-0.206431, -0.967942, 0.143087,
		-0.960741, 0.172808, -0.217061,
		28.768057, 34.423042, 46.146881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.258202, 33.758095, 45.921635>,  <29.440577, 34.302078, 46.298820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.258202, 33.758095, 45.921635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.006548, 34.052670, 45.822147>,  <28.855556, 34.229412, 45.762455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.006548, 34.052670, 45.822147>,  <29.258202, 33.758095, 45.921635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.006548, 34.052670, 45.822147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249987, -0.111276, -0.961834,
		-0.736003, -0.667296, -0.114091,
		-0.629132, 0.736434, -0.248715,
		28.817808, 34.273598, 45.747532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.869783, 33.448048, 45.345242>,  <29.258202, 33.758095, 45.921635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.869783, 33.448048, 45.345242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.847113, 33.847248, 45.334095>,  <28.833509, 34.086769, 45.327408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.847113, 33.847248, 45.334095>,  <28.869783, 33.448048, 45.345242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847113, 33.847248, 45.334095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327985, -0.007746, -0.944651,
		-0.942981, -0.062678, -0.326891,
		-0.056677, 0.998004, -0.027862,
		28.830109, 34.146648, 45.325737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.493706, 33.507469, 44.854965>,  <28.869783, 33.448048, 45.345242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.493706, 33.507469, 44.854965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.676147, 33.861423, 44.892788>,  <28.785612, 34.073795, 44.915482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.676147, 33.861423, 44.892788>,  <28.493706, 33.507469, 44.854965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676147, 33.861423, 44.892788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322349, -0.065234, -0.944370,
		-0.829493, 0.461214, -0.314996,
		0.456105, 0.884888, 0.094560,
		28.812979, 34.126888, 44.921158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.390118, 33.793571, 44.291485>,  <28.493706, 33.507469, 44.854965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.390118, 33.793571, 44.291485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.670067, 34.049580, 44.418320>,  <28.838036, 34.203186, 44.494423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.670067, 34.049580, 44.418320>,  <28.390118, 33.793571, 44.291485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.670067, 34.049580, 44.418320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335262, 0.097634, -0.937052,
		-0.630695, 0.762126, -0.146244,
		0.699873, 0.640025, 0.317089,
		28.880030, 34.241589, 44.513447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.420755, 34.375675, 43.765591>,  <28.390118, 33.793571, 44.291485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.420755, 34.375675, 43.765591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.763134, 34.378952, 43.972389>,  <28.968561, 34.380917, 44.096470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.763134, 34.378952, 43.972389>,  <28.420755, 34.375675, 43.765591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.763134, 34.378952, 43.972389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511926, 0.127189, -0.849562,
		-0.072716, 0.991845, 0.104673,
		0.855947, 0.008192, 0.516999,
		29.019918, 34.381409, 44.127487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.491459, 31.778713, 49.655312> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.857630, 31.935375, 49.618225>,  <31.077333, 32.029373, 49.595974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.857630, 31.935375, 49.618225>,  <30.491459, 31.778713, 49.655312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857630, 31.935375, 49.618225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104437, -0.453632, -0.885049,
		-0.388694, 0.800515, -0.456171,
		0.915429, 0.391654, -0.092721,
		31.132259, 32.052872, 49.590408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511913, 32.103512, 49.055767>,  <30.491459, 31.778713, 49.655312>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511913, 32.103512, 49.055767> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.904303, 32.068954, 49.125317>,  <31.139736, 32.048222, 49.167046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.904303, 32.068954, 49.125317>,  <30.511913, 32.103512, 49.055767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904303, 32.068954, 49.125317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163831, -0.112230, -0.980084,
		0.104186, 0.989920, -0.095941,
		0.980971, -0.086392, 0.173872,
		31.198593, 32.043037, 49.177479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869726, 32.504505, 48.538719>,  <30.511913, 32.103512, 49.055767>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869726, 32.504505, 48.538719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.143644, 32.249252, 48.679485>,  <31.307995, 32.096100, 48.763947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.143644, 32.249252, 48.679485>,  <30.869726, 32.504505, 48.538719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143644, 32.249252, 48.679485> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375816, -0.104493, -0.920784,
		0.624356, 0.762802, 0.168265,
		0.684793, -0.638134, 0.351914,
		31.349083, 32.057812, 48.785061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567940, 32.699539, 48.122433>,  <30.869726, 32.504505, 48.538719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567940, 32.699539, 48.122433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.587803, 32.330967, 48.276573>,  <31.599720, 32.109821, 48.369057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.587803, 32.330967, 48.276573>,  <31.567940, 32.699539, 48.122433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587803, 32.330967, 48.276573> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408789, -0.333275, -0.849599,
		0.911277, 0.199715, 0.360122,
		0.049658, -0.921434, 0.385348,
		31.602701, 32.054535, 48.392178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269482, 32.461201, 48.019680>,  <31.567940, 32.699539, 48.122433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269482, 32.461201, 48.019680> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.042454, 32.139004, 48.087845>,  <31.906237, 31.945684, 48.128742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.042454, 32.139004, 48.087845>,  <32.269482, 32.461201, 48.019680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042454, 32.139004, 48.087845> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335384, -0.415222, -0.845641,
		0.751919, -0.422808, 0.505818,
		-0.567570, -0.805496, 0.170410,
		31.872183, 31.897354, 48.138969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736561, 31.862329, 47.839886>,  <32.269482, 32.461201, 48.019680>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736561, 31.862329, 47.839886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.353390, 31.748693, 47.823536>,  <32.123489, 31.680511, 47.813725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.353390, 31.748693, 47.823536>,  <32.736561, 31.862329, 47.839886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353390, 31.748693, 47.823536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186981, -0.509635, -0.839828,
		0.217754, -0.812136, 0.541312,
		-0.957925, -0.284091, -0.040879,
		32.066013, 31.663465, 47.811272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852051, 31.147280, 47.663872>,  <32.736561, 31.862329, 47.839886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852051, 31.147280, 47.663872> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.467556, 31.215200, 47.576981>,  <32.236858, 31.255953, 47.524845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.467556, 31.215200, 47.576981>,  <32.852051, 31.147280, 47.663872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467556, 31.215200, 47.576981> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133671, -0.402095, -0.905788,
		-0.241149, -0.899716, 0.363812,
		-0.961238, 0.169799, -0.217231,
		32.179184, 31.266140, 47.511810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592403, 30.534264, 47.322495>,  <32.852051, 31.147280, 47.663872>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592403, 30.534264, 47.322495> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.327534, 30.807240, 47.198685>,  <32.168613, 30.971025, 47.124401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.327534, 30.807240, 47.198685>,  <32.592403, 30.534264, 47.322495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327534, 30.807240, 47.198685> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017778, -0.398628, -0.916940,
		-0.749142, -0.612674, 0.251827,
		-0.662170, 0.682441, -0.309522,
		32.128883, 31.011972, 47.105827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051849, 30.175447, 46.999046>,  <32.592403, 30.534264, 47.322495>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051849, 30.175447, 46.999046> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.048523, 30.550604, 46.860317>,  <32.046528, 30.775698, 46.777081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.048523, 30.550604, 46.860317>,  <32.051849, 30.175447, 46.999046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048523, 30.550604, 46.860317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084547, -0.346257, -0.934322,
		-0.996385, 0.021558, 0.082174,
		-0.008312, 0.937892, -0.346828,
		32.046028, 30.831972, 46.756268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423965, 30.178690, 46.713062>,  <32.051849, 30.175447, 46.999046>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423965, 30.178690, 46.713062> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.656399, 30.461777, 46.552326>,  <31.795858, 30.631630, 46.455883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.656399, 30.461777, 46.552326>,  <31.423965, 30.178690, 46.713062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656399, 30.461777, 46.552326> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044528, -0.465367, -0.883997,
		-0.812624, 0.531570, -0.238904,
		0.581084, 0.707719, -0.401839,
		31.830725, 30.674093, 46.431774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414091, 30.006538, 46.086895>,  <31.423965, 30.178690, 46.713062>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414091, 30.006538, 46.086895> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.675125, 30.306808, 46.045677>,  <31.831745, 30.486971, 46.020947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.675125, 30.306808, 46.045677>,  <31.414091, 30.006538, 46.086895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675125, 30.306808, 46.045677> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039090, -0.169167, -0.984812,
		-0.756708, 0.638644, -0.139740,
		0.652584, 0.750677, -0.103046,
		31.870901, 30.532011, 46.014763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202049, 30.644529, 45.539009>,  <31.414091, 30.006538, 46.086895>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202049, 30.644529, 45.539009> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.594721, 30.580072, 45.579685>,  <31.830324, 30.541399, 45.604092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.594721, 30.580072, 45.579685>,  <31.202049, 30.644529, 45.539009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594721, 30.580072, 45.579685> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028662, -0.402747, -0.914863,
		0.188378, 0.901016, -0.390749,
		0.981678, -0.161141, 0.101693,
		31.889225, 30.531731, 45.610191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925463, 31.065098, 45.034248>,  <31.202049, 30.644529, 45.539009>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925463, 31.065098, 45.034248> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.540470, 30.999769, 44.947571>,  <30.309475, 30.960571, 44.895565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.540470, 30.999769, 44.947571>,  <30.925463, 31.065098, 45.034248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540470, 30.999769, 44.947571> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233606, 0.092407, 0.967930,
		-0.138060, 0.982236, -0.127093,
		-0.962480, -0.163322, -0.216698,
		30.251726, 30.950773, 44.882561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575928, 31.608442, 45.394566>,  <30.925463, 31.065098, 45.034248>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575928, 31.608442, 45.394566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.275114, 31.354912, 45.322220>,  <30.094625, 31.202793, 45.278812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.275114, 31.354912, 45.322220>,  <30.575928, 31.608442, 45.394566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275114, 31.354912, 45.322220> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464755, 0.315339, 0.827384,
		-0.467384, 0.706277, -0.531719,
		-0.752034, -0.633825, -0.180861,
		30.049503, 31.164764, 45.267960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997562, 31.915648, 45.607903>,  <30.575928, 31.608442, 45.394566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.997562, 31.915648, 45.607903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.877245, 31.534464, 45.592987>,  <29.805054, 31.305754, 45.584038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.877245, 31.534464, 45.592987>,  <29.997562, 31.915648, 45.607903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877245, 31.534464, 45.592987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536213, 0.136662, 0.832946,
		-0.788669, 0.270539, -0.552096,
		-0.300796, -0.952960, -0.037285,
		29.787006, 31.248575, 45.581802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.215431, 31.939320, 45.533924>,  <29.997562, 31.915648, 45.607903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.215431, 31.939320, 45.533924> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.318296, 31.588711, 45.696686>,  <29.380016, 31.378345, 45.794342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.318296, 31.588711, 45.696686>,  <29.215431, 31.939320, 45.533924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318296, 31.588711, 45.696686> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647950, 0.155998, 0.745537,
		-0.716958, -0.455380, -0.527827,
		0.257163, -0.876524, 0.406907,
		29.395445, 31.325754, 45.818756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.628147, 31.529299, 45.619732>,  <29.215431, 31.939320, 45.533924>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.628147, 31.529299, 45.619732> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.901726, 31.391304, 45.876854>,  <29.065874, 31.308506, 46.031128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.901726, 31.391304, 45.876854>,  <28.628147, 31.529299, 45.619732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.901726, 31.391304, 45.876854> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616417, 0.197978, 0.762125,
		-0.390185, -0.917490, -0.077250,
		0.683949, -0.344988, 0.642805,
		29.106911, 31.287807, 46.069695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.298845, 31.046854, 46.063915>,  <28.628147, 31.529299, 45.619732>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.298845, 31.046854, 46.063915> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.635502, 31.179186, 46.234650>,  <28.837496, 31.258585, 46.337090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.635502, 31.179186, 46.234650>,  <28.298845, 31.046854, 46.063915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.635502, 31.179186, 46.234650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517346, 0.267220, 0.812986,
		0.154899, -0.905067, 0.396056,
		0.841641, 0.330828, 0.426841,
		28.887995, 31.278435, 46.362701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258425, 30.795135, 46.773918>,  <28.298845, 31.046854, 46.063915>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.258425, 30.795135, 46.773918> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.511681, 31.104500, 46.786411>,  <28.663633, 31.290117, 46.793907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.511681, 31.104500, 46.786411>,  <28.258425, 30.795135, 46.773918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.511681, 31.104500, 46.786411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323511, 0.227753, 0.918406,
		0.703191, -0.591580, 0.394405,
		0.633138, 0.773409, 0.031229,
		28.701622, 31.336523, 46.795780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562126, 30.826712, 47.426258>,  <28.258425, 30.795135, 46.773918>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562126, 30.826712, 47.426258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.651150, 31.199116, 47.310543>,  <28.704565, 31.422558, 47.241112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.651150, 31.199116, 47.310543>,  <28.562126, 30.826712, 47.426258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.651150, 31.199116, 47.310543> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132072, 0.322791, 0.937210,
		0.965932, -0.170378, 0.194800,
		0.222560, 0.931009, -0.289292,
		28.717918, 31.478418, 47.223755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.983601, 31.076185, 47.925770>,  <28.562126, 30.826712, 47.426258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.983601, 31.076185, 47.925770> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.865393, 31.420158, 47.759308>,  <28.794468, 31.626541, 47.659431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.865393, 31.420158, 47.759308>,  <28.983601, 31.076185, 47.925770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.865393, 31.420158, 47.759308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307206, 0.326933, 0.893722,
		0.904595, 0.391959, 0.167560,
		-0.295522, 0.859931, -0.416154,
		28.776735, 31.678139, 47.634460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.258858, 31.741499, 48.261372>,  <28.983601, 31.076185, 47.925770>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.258858, 31.741499, 48.261372> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.935625, 31.877546, 48.068985>,  <28.741686, 31.959175, 47.953552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.935625, 31.877546, 48.068985>,  <29.258858, 31.741499, 48.261372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.935625, 31.877546, 48.068985> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261463, 0.524558, 0.810232,
		0.527868, 0.780486, -0.334957,
		-0.808080, 0.340116, -0.480966,
		28.693201, 31.979582, 47.924694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334974, 32.493069, 48.209888>,  <29.258858, 31.741499, 48.261372>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.334974, 32.493069, 48.209888> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.956959, 32.362316, 48.212788>,  <28.730150, 32.283863, 48.214527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.956959, 32.362316, 48.212788>,  <29.334974, 32.493069, 48.209888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.956959, 32.362316, 48.212788> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219698, 0.651262, 0.726354,
		-0.242148, 0.684841, -0.687282,
		-0.945038, -0.326880, 0.007244,
		28.673447, 32.264252, 48.214962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045017, 32.991634, 48.436226>,  <29.334974, 32.493069, 48.209888>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045017, 32.991634, 48.436226> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.739323, 32.735214, 48.464497>,  <28.555906, 32.581360, 48.481461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.739323, 32.735214, 48.464497>,  <29.045017, 32.991634, 48.436226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.739323, 32.735214, 48.464497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415525, 0.573235, 0.706216,
		-0.493237, 0.510346, -0.704460,
		-0.764236, -0.641053, 0.070679,
		28.510052, 32.542900, 48.485699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378014, 33.326927, 48.381874>,  <29.045017, 32.991634, 48.436226>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.378014, 33.326927, 48.381874> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.297640, 33.000988, 48.599369>,  <28.249416, 32.805424, 48.729866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.297640, 33.000988, 48.599369>,  <28.378014, 33.326927, 48.381874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297640, 33.000988, 48.599369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576069, 0.547227, 0.607196,
		-0.792320, -0.191225, -0.579363,
		-0.200932, -0.814847, 0.543738,
		28.237360, 32.756535, 48.762489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.620893, 33.049545, 48.488766>,  <28.378014, 33.326927, 48.381874>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.620893, 33.049545, 48.488766> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.858919, 32.971214, 48.800549>,  <28.001736, 32.924217, 48.987617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.858919, 32.971214, 48.800549>,  <27.620893, 33.049545, 48.488766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.858919, 32.971214, 48.800549> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649225, 0.454539, 0.609837,
		-0.473714, -0.868935, 0.143346,
		0.595065, -0.195824, 0.779455,
		28.037439, 32.912468, 49.034386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414196, 33.438499, 49.114861>,  <27.620893, 33.049545, 48.488766>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.414196, 33.438499, 49.114861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.479616, 33.832207, 49.141567>,  <27.518869, 34.068432, 49.157589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.479616, 33.832207, 49.141567>,  <27.414196, 33.438499, 49.114861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.479616, 33.832207, 49.141567> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434114, -0.011035, -0.900790,
		-0.885887, 0.176309, -0.429091,
		0.163553, 0.984273, 0.066763,
		27.528683, 34.127487, 49.161594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.221474, 33.693642, 48.465366>,  <27.414196, 33.438499, 49.114861>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.221474, 33.693642, 48.465366> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.439676, 34.002495, 48.595737>,  <27.570599, 34.187809, 48.673958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.439676, 34.002495, 48.595737>,  <27.221474, 33.693642, 48.465366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.439676, 34.002495, 48.595737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287030, 0.193250, -0.938226,
		-0.787424, 0.605359, -0.116207,
		0.545506, 0.772137, 0.325926,
		27.603329, 34.234135, 48.693516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.099243, 34.222748, 48.056400>,  <27.221474, 33.693642, 48.465366>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.099243, 34.222748, 48.056400> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.443932, 34.349342, 48.215031>,  <27.650745, 34.425297, 48.310207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.443932, 34.349342, 48.215031>,  <27.099243, 34.222748, 48.056400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.443932, 34.349342, 48.215031> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332758, 0.237525, -0.912608,
		-0.383021, 0.918379, 0.099369,
		0.861723, 0.316483, 0.396575,
		27.702448, 34.444286, 48.334003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.147997, 34.919250, 47.789646>,  <27.099243, 34.222748, 48.056400>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.147997, 34.919250, 47.789646> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.510445, 34.785580, 47.893394>,  <27.727913, 34.705379, 47.955643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.510445, 34.785580, 47.893394>,  <27.147997, 34.919250, 47.789646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.510445, 34.785580, 47.893394> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354426, 0.265016, -0.896743,
		0.230931, 0.904485, 0.358577,
		0.906120, -0.334175, 0.259373,
		27.782280, 34.685326, 47.971207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.541454, 35.305359, 47.458298>,  <27.147997, 34.919250, 47.789646>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.541454, 35.305359, 47.458298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.787394, 35.002190, 47.545486>,  <27.934958, 34.820286, 47.597797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.787394, 35.002190, 47.545486>,  <27.541454, 35.305359, 47.458298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.787394, 35.002190, 47.545486> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462715, 0.122880, -0.877949,
		0.638636, 0.640663, 0.426256,
		0.614848, -0.757926, 0.217969,
		27.971848, 34.774811, 47.610878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328606, 35.536942, 47.311745>,  <27.541454, 35.305359, 47.458298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.328606, 35.536942, 47.311745> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.304401, 35.138535, 47.337936>,  <28.289879, 34.899490, 47.353653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.304401, 35.138535, 47.337936>,  <28.328606, 35.536942, 47.311745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304401, 35.138535, 47.337936> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437944, -0.085441, -0.894933,
		0.896964, -0.025476, 0.441370,
		-0.060510, -0.996018, 0.065480,
		28.286249, 34.839729, 47.357582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898811, 35.332890, 47.194561>,  <28.328606, 35.536942, 47.311745>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.898811, 35.332890, 47.194561> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.657625, 35.040157, 47.067532>,  <28.512913, 34.864517, 46.991314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.657625, 35.040157, 47.067532>,  <28.898811, 35.332890, 47.194561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.657625, 35.040157, 47.067532> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517356, -0.055693, -0.853956,
		0.607268, -0.679203, 0.412200,
		-0.602966, -0.731835, -0.317569,
		28.476736, 34.820606, 46.972260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374430, 35.727428, 47.005566>,  <28.898811, 35.332890, 47.194561>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374430, 35.727428, 47.005566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.486954, 36.106911, 46.947853>,  <29.554468, 36.334602, 46.913223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.486954, 36.106911, 46.947853>,  <29.374430, 35.727428, 47.005566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486954, 36.106911, 46.947853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223603, 0.211022, 0.951563,
		0.933202, -0.235421, 0.271496,
		0.281310, 0.948708, -0.144286,
		29.571346, 36.391521, 46.904568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595917, 35.851231, 47.669052>,  <29.374430, 35.727428, 47.005566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595917, 35.851231, 47.669052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.585590, 36.213970, 47.500786>,  <29.579395, 36.431614, 47.399826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.585590, 36.213970, 47.500786>,  <29.595917, 35.851231, 47.669052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.585590, 36.213970, 47.500786> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007454, 0.420623, 0.907205,
		0.999639, 0.026555, -0.004099,
		-0.025815, 0.906847, -0.420669,
		29.577847, 36.486023, 47.374584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236525, 36.312370, 47.945938>,  <29.595917, 35.851231, 47.669052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.236525, 36.312370, 47.945938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.898390, 36.503250, 47.849865>,  <29.695509, 36.617779, 47.792221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.898390, 36.503250, 47.849865>,  <30.236525, 36.312370, 47.945938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.898390, 36.503250, 47.849865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062424, 0.358278, 0.931526,
		0.530577, 0.802444, -0.273077,
		-0.845335, 0.477200, -0.240186,
		29.644789, 36.646412, 47.777809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452448, 37.053890, 48.082760>,  <30.236525, 36.312370, 47.945938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.452448, 37.053890, 48.082760> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.052879, 37.035892, 48.087326>,  <29.813137, 37.025093, 48.090065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.052879, 37.035892, 48.087326>,  <30.452448, 37.053890, 48.082760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052879, 37.035892, 48.087326> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004164, 0.331749, 0.943358,
		-0.046230, 0.942294, -0.331579,
		-0.998922, -0.044992, 0.011413,
		29.753202, 37.022396, 48.090752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357615, 37.595612, 48.430473>,  <30.452448, 37.053890, 48.082760>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.357615, 37.595612, 48.430473> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.002016, 37.412655, 48.421726>,  <29.788656, 37.302879, 48.416477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.002016, 37.412655, 48.421726>,  <30.357615, 37.595612, 48.430473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002016, 37.412655, 48.421726> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179074, 0.303313, 0.935913,
		-0.421448, 0.835939, -0.351551,
		-0.888996, -0.457392, -0.021864,
		29.735317, 37.275436, 48.415169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770273, 37.987095, 48.638458>,  <30.357615, 37.595612, 48.430473>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770273, 37.987095, 48.638458> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.607569, 37.622528, 48.663338>,  <29.509947, 37.403790, 48.678265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.607569, 37.622528, 48.663338>,  <29.770273, 37.987095, 48.638458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.607569, 37.622528, 48.663338> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442873, 0.256283, 0.859176,
		-0.799006, 0.321932, -0.507887,
		-0.406759, -0.911416, 0.062197,
		29.485540, 37.349102, 48.681995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.156933, 38.137657, 48.928379>,  <29.770273, 37.987095, 48.638458>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.156933, 38.137657, 48.928379> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.205444, 37.744473, 48.983624>,  <29.234550, 37.508560, 49.016769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.205444, 37.744473, 48.983624>,  <29.156933, 38.137657, 48.928379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205444, 37.744473, 48.983624> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461355, 0.067373, 0.884654,
		-0.878887, -0.171006, -0.445325,
		0.121278, -0.982964, 0.138107,
		29.241827, 37.449585, 49.025055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.524473, 37.840561, 49.232082>,  <29.156933, 38.137657, 48.928379>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.524473, 37.840561, 49.232082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.808214, 37.565147, 49.292404>,  <28.978458, 37.399899, 49.328598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.808214, 37.565147, 49.292404>,  <28.524473, 37.840561, 49.232082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.808214, 37.565147, 49.292404> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252681, -0.048670, 0.966325,
		-0.658007, -0.723570, -0.208504,
		0.709351, -0.688533, 0.150807,
		29.021019, 37.358589, 49.337646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151182, 37.173691, 49.568615>,  <28.524473, 37.840561, 49.232082>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151182, 37.173691, 49.568615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.543949, 37.187733, 49.643024>,  <28.779610, 37.196159, 49.687672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.543949, 37.187733, 49.643024>,  <28.151182, 37.173691, 49.568615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.543949, 37.187733, 49.643024> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182795, -0.079689, 0.979916,
		0.049225, -0.996202, -0.071831,
		0.981918, 0.035106, 0.186023,
		28.838524, 37.198265, 49.698830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.550205, 34.417217, 35.529469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851067, 34.265701, 35.745167>,  <36.031582, 34.174793, 35.874584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851067, 34.265701, 35.745167>,  <35.550205, 34.417217, 35.529469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851067, 34.265701, 35.745167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541676, 0.110659, 0.833272,
		-0.375305, -0.918844, -0.121947,
		0.752153, -0.378787, 0.539247,
		36.076714, 34.152065, 35.906940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359688, 33.787083, 35.935665>,  <35.550205, 34.417217, 35.529469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359688, 33.787083, 35.935665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665882, 33.942032, 36.141178>,  <35.849598, 34.035000, 36.264488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665882, 33.942032, 36.141178>,  <35.359688, 33.787083, 35.935665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665882, 33.942032, 36.141178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573904, 0.049945, 0.817398,
		0.290979, -0.920568, 0.260548,
		0.765484, 0.387375, 0.513785,
		35.895527, 34.058243, 36.295315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353901, 33.489613, 36.520344>,  <35.359688, 33.787083, 35.935665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353901, 33.489613, 36.520344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562099, 33.816040, 36.620831>,  <35.687019, 34.011898, 36.681122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562099, 33.816040, 36.620831>,  <35.353901, 33.489613, 36.520344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562099, 33.816040, 36.620831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512784, 0.063493, 0.856167,
		0.682743, -0.574451, 0.451516,
		0.520494, 0.816072, 0.251220,
		35.718246, 34.060863, 36.696198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436253, 33.521515, 37.283260>,  <35.353901, 33.489613, 36.520344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436253, 33.521515, 37.283260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520657, 33.907784, 37.222652>,  <35.571297, 34.139545, 37.186287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520657, 33.907784, 37.222652>,  <35.436253, 33.521515, 37.283260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520657, 33.907784, 37.222652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525910, 0.242820, 0.815143,
		0.823951, -0.092311, 0.559091,
		0.211005, 0.965669, -0.151524,
		35.583958, 34.197483, 37.177197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640827, 33.773090, 37.924591>,  <35.436253, 33.521515, 37.283260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640827, 33.773090, 37.924591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502586, 34.073929, 37.700123>,  <35.419640, 34.254433, 37.565441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502586, 34.073929, 37.700123>,  <35.640827, 33.773090, 37.924591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502586, 34.073929, 37.700123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472241, 0.377372, 0.796604,
		0.810891, 0.540318, 0.224748,
		-0.345606, 0.752095, -0.561168,
		35.398903, 34.299557, 37.531773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877247, 34.350967, 38.278664>,  <35.640827, 33.773090, 37.924591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877247, 34.350967, 38.278664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563255, 34.439541, 38.047222>,  <35.374863, 34.492687, 37.908360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563255, 34.439541, 38.047222>,  <35.877247, 34.350967, 38.278664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563255, 34.439541, 38.047222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437307, 0.463496, 0.770671,
		0.438833, 0.857985, -0.266998,
		-0.784976, 0.221436, -0.578600,
		35.327763, 34.505970, 37.873642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730412, 35.015293, 38.532207>,  <35.877247, 34.350967, 38.278664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730412, 35.015293, 38.532207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415928, 34.942398, 38.296013>,  <35.227238, 34.898663, 38.154297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415928, 34.942398, 38.296013>,  <35.730412, 35.015293, 38.532207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415928, 34.942398, 38.296013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572763, 0.573620, 0.585579,
		0.231999, 0.798592, -0.555362,
		-0.786205, -0.182237, -0.590483,
		35.180065, 34.887726, 38.118866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435730, 35.711044, 38.288738>,  <35.730412, 35.015293, 38.532207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435730, 35.711044, 38.288738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129986, 35.454868, 38.258820>,  <34.946541, 35.301163, 38.240868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129986, 35.454868, 38.258820>,  <35.435730, 35.711044, 38.288738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129986, 35.454868, 38.258820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540229, 0.572751, 0.616530,
		-0.352010, 0.511657, -0.783770,
		-0.764357, -0.640440, -0.074798,
		34.900681, 35.262737, 38.236382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806591, 36.116283, 38.219170>,  <35.435730, 35.711044, 38.288738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806591, 36.116283, 38.219170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676151, 35.755852, 38.333515>,  <34.597889, 35.539593, 38.402122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676151, 35.755852, 38.333515>,  <34.806591, 36.116283, 38.219170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676151, 35.755852, 38.333515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647468, 0.433220, 0.626981,
		-0.688800, 0.019371, -0.724692,
		-0.326097, -0.901080, 0.285860,
		34.578323, 35.485527, 38.419273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085709, 36.197372, 38.230247>,  <34.806591, 36.116283, 38.219170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085709, 36.197372, 38.230247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183636, 35.888851, 38.465248>,  <34.242393, 35.703739, 38.606247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183636, 35.888851, 38.465248>,  <34.085709, 36.197372, 38.230247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183636, 35.888851, 38.465248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634840, 0.330468, 0.698405,
		-0.732831, -0.543953, -0.408747,
		0.244822, -0.771301, 0.587500,
		34.257084, 35.657459, 38.641499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438549, 35.915806, 38.508121>,  <34.085709, 36.197372, 38.230247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438549, 35.915806, 38.508121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724438, 35.798862, 38.762272>,  <33.895969, 35.728699, 38.914761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724438, 35.798862, 38.762272>,  <33.438549, 35.915806, 38.508121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724438, 35.798862, 38.762272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546551, 0.333382, 0.768205,
		-0.436412, -0.896317, 0.078488,
		0.714721, -0.292356, 0.635375,
		33.938854, 35.711155, 38.952885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023129, 35.472069, 38.895832>,  <33.438549, 35.915806, 38.508121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023129, 35.472069, 38.895832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361309, 35.585575, 39.076805>,  <33.564217, 35.653679, 39.185390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361309, 35.585575, 39.076805>,  <33.023129, 35.472069, 38.895832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361309, 35.585575, 39.076805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530971, 0.355655, 0.769142,
		0.057347, -0.890498, 0.451360,
		0.845447, 0.283767, 0.452433,
		33.614944, 35.670704, 39.212536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811764, 34.784191, 39.135174>,  <33.023129, 35.472069, 38.895832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811764, 34.784191, 39.135174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448269, 34.650623, 39.035023>,  <32.230171, 34.570484, 38.974934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448269, 34.650623, 39.035023>,  <32.811764, 34.784191, 39.135174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448269, 34.650623, 39.035023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385540, -0.441880, -0.810001,
		0.159841, -0.832610, 0.530294,
		-0.908741, -0.333921, -0.250374,
		32.175648, 34.550446, 38.959911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981644, 33.984623, 38.925510>,  <32.811764, 34.784191, 39.135174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981644, 33.984623, 38.925510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634991, 34.113503, 38.773125>,  <32.426998, 34.190830, 38.681694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634991, 34.113503, 38.773125>,  <32.981644, 33.984623, 38.925510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634991, 34.113503, 38.773125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232861, -0.414093, -0.879945,
		-0.441275, -0.851300, 0.283839,
		-0.866633, 0.322202, -0.380963,
		32.375000, 34.210163, 38.658836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743492, 33.417362, 38.613346>,  <32.981644, 33.984623, 38.925510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743492, 33.417362, 38.613346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535332, 33.710621, 38.438225>,  <32.410435, 33.886578, 38.333153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535332, 33.710621, 38.438225>,  <32.743492, 33.417362, 38.613346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535332, 33.710621, 38.438225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153925, -0.423761, -0.892599,
		-0.839933, -0.531901, 0.107677,
		-0.520404, 0.733149, -0.437804,
		32.379211, 33.930565, 38.306885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207123, 33.078083, 38.237862>,  <32.743492, 33.417362, 38.613346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207123, 33.078083, 38.237862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294476, 33.432930, 38.075214>,  <32.346886, 33.645840, 37.977627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294476, 33.432930, 38.075214>,  <32.207123, 33.078083, 38.237862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294476, 33.432930, 38.075214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157813, -0.443291, -0.882376,
		-0.963019, 0.128522, -0.236803,
		0.218378, 0.887116, -0.406616,
		32.359989, 33.699066, 37.953228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953081, 33.111755, 37.663792>,  <32.207123, 33.078083, 38.237862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953081, 33.111755, 37.663792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198856, 33.419342, 37.593185>,  <32.346321, 33.603893, 37.550823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198856, 33.419342, 37.593185>,  <31.953081, 33.111755, 37.663792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198856, 33.419342, 37.593185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146828, -0.331269, -0.932042,
		-0.775181, 0.546767, -0.316450,
		0.614440, 0.768965, -0.176512,
		32.383190, 33.650032, 37.540230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721340, 33.467224, 37.034206>,  <31.953081, 33.111755, 37.663792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721340, 33.467224, 37.034206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108055, 33.564808, 37.064674>,  <32.340084, 33.623360, 37.082954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108055, 33.564808, 37.064674>,  <31.721340, 33.467224, 37.034206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108055, 33.564808, 37.064674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132553, -0.223834, -0.965571,
		-0.218514, 0.943600, -0.248739,
		0.966789, 0.243962, 0.076166,
		32.398090, 33.637997, 37.087524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804785, 34.131279, 36.580067>,  <31.721340, 33.467224, 37.034206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804785, 34.131279, 36.580067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150600, 33.938808, 36.638092>,  <32.358089, 33.823326, 36.672905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150600, 33.938808, 36.638092>,  <31.804785, 34.131279, 36.580067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150600, 33.938808, 36.638092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123068, -0.077152, -0.989395,
		0.487263, 0.873223, -0.007484,
		0.864540, -0.481174, 0.145059,
		32.409962, 33.794456, 36.681610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124886, 34.165379, 35.953682>,  <31.804785, 34.131279, 36.580067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124886, 34.165379, 35.953682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378376, 33.901367, 36.115055>,  <32.530472, 33.742962, 36.211880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378376, 33.901367, 36.115055>,  <32.124886, 34.165379, 35.953682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378376, 33.901367, 36.115055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361430, -0.208464, -0.908797,
		0.683930, 0.721741, 0.106444,
		0.633726, -0.660025, 0.403433,
		32.568493, 33.703362, 36.236084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767162, 34.199600, 35.560726>,  <32.124886, 34.165379, 35.953682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767162, 34.199600, 35.560726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728386, 33.832047, 35.713696>,  <32.705120, 33.611515, 35.805477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728386, 33.832047, 35.713696>,  <32.767162, 34.199600, 35.560726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728386, 33.832047, 35.713696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362474, -0.390440, -0.846268,
		0.926938, 0.056581, 0.370923,
		-0.096941, -0.918888, 0.382423,
		32.699303, 33.556381, 35.828423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235607, 33.768917, 35.043861>,  <32.767162, 34.199600, 35.560726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235607, 33.768917, 35.043861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.030319, 33.500847, 35.258327>,  <32.907146, 33.340004, 35.387009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.030319, 33.500847, 35.258327>,  <33.235607, 33.768917, 35.043861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030319, 33.500847, 35.258327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218555, -0.706169, -0.673468,
		0.829964, -0.228455, 0.508890,
		-0.513219, -0.670174, 0.536165,
		32.876354, 33.299793, 35.419178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714825, 33.226139, 35.141739>,  <33.235607, 33.768917, 35.043861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714825, 33.226139, 35.141739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336834, 33.096882, 35.162121>,  <33.110039, 33.019329, 35.174351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336834, 33.096882, 35.162121>,  <33.714825, 33.226139, 35.141739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336834, 33.096882, 35.162121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126767, -0.505300, -0.853582,
		0.301574, -0.800157, 0.518462,
		-0.944978, -0.323142, 0.050952,
		33.053341, 32.999939, 35.177406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782509, 32.522747, 34.965607>,  <33.714825, 33.226139, 35.141739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782509, 32.522747, 34.965607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392048, 32.603951, 34.934834>,  <33.157772, 32.652672, 34.916370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392048, 32.603951, 34.934834>,  <33.782509, 32.522747, 34.965607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392048, 32.603951, 34.934834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085442, -0.685027, -0.723490,
		-0.199572, -0.699663, 0.686035,
		-0.976151, 0.203004, -0.076931,
		33.099201, 32.664852, 34.911755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462746, 31.945591, 35.039341>,  <33.782509, 32.522747, 34.965607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462746, 31.945591, 35.039341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233498, 32.182274, 34.812569>,  <33.095947, 32.324284, 34.676506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233498, 32.182274, 34.812569>,  <33.462746, 31.945591, 35.039341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233498, 32.182274, 34.812569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190583, -0.576617, -0.794475,
		-0.796999, -0.563381, 0.217704,
		-0.573124, 0.591705, -0.566934,
		33.061562, 32.359787, 34.642487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046989, 31.511986, 34.508774>,  <33.462746, 31.945591, 35.039341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046989, 31.511986, 34.508774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063644, 31.886395, 34.368984>,  <33.073639, 32.111038, 34.285110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063644, 31.886395, 34.368984>,  <33.046989, 31.511986, 34.508774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063644, 31.886395, 34.368984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086838, -0.351842, -0.932023,
		-0.995352, 0.008459, -0.095931,
		0.041636, 0.936021, -0.349472,
		33.076134, 32.167202, 34.264141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626774, 30.987743, 34.198967>,  <33.046989, 31.511986, 34.508774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626774, 30.987743, 34.198967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026505, 30.997772, 34.188190>,  <33.266342, 31.003790, 34.181725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026505, 30.997772, 34.188190>,  <32.626774, 30.987743, 34.198967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026505, 30.997772, 34.188190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032563, -0.261066, 0.964772,
		0.017155, -0.964995, -0.261705,
		0.999323, 0.025073, -0.026945,
		33.326302, 31.005295, 34.180107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699993, 30.477396, 34.666489>,  <32.626774, 30.987743, 34.198967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699993, 30.477396, 34.666489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036526, 30.692640, 34.646091>,  <33.238445, 30.821787, 34.633854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036526, 30.692640, 34.646091>,  <32.699993, 30.477396, 34.666489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036526, 30.692640, 34.646091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250082, -0.303890, 0.919299,
		0.479187, -0.786187, -0.390243,
		0.841331, 0.538109, -0.050991,
		33.288925, 30.854073, 34.630795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351490, 29.901148, 34.933910>,  <32.699993, 30.477396, 34.666489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351490, 29.901148, 34.933910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740700, 29.936920, 35.018970>,  <32.974228, 29.958384, 35.070007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740700, 29.936920, 35.018970>,  <32.351490, 29.901148, 34.933910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740700, 29.936920, 35.018970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192156, -0.195850, 0.961623,
		0.127647, -0.976547, -0.173382,
		0.973027, 0.089432, 0.212649,
		33.032608, 29.963749, 35.082764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425034, 29.606405, 35.511959>,  <32.351490, 29.901148, 34.933910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425034, 29.606405, 35.511959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776859, 29.793303, 35.547855>,  <32.987953, 29.905441, 35.569393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776859, 29.793303, 35.547855>,  <32.425034, 29.606405, 35.511959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776859, 29.793303, 35.547855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202388, 0.196730, 0.959342,
		0.430593, -0.861963, 0.267600,
		0.879562, 0.467245, 0.089740,
		33.040730, 29.933475, 35.574776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690159, 29.363766, 36.106129>,  <32.425034, 29.606405, 35.511959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690159, 29.363766, 36.106129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865082, 29.719486, 36.052601>,  <32.970036, 29.932919, 36.020485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865082, 29.719486, 36.052601>,  <32.690159, 29.363766, 36.106129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865082, 29.719486, 36.052601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371285, 0.314062, 0.873792,
		0.819090, -0.332432, 0.467526,
		0.437308, 0.889300, -0.133818,
		32.996273, 29.986277, 36.012455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138332, 29.389133, 36.686516>,  <32.690159, 29.363766, 36.106129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138332, 29.389133, 36.686516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091694, 29.765045, 36.558002>,  <33.063709, 29.990591, 36.480896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091694, 29.765045, 36.558002>,  <33.138332, 29.389133, 36.686516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091694, 29.765045, 36.558002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175279, 0.298940, 0.938036,
		0.977590, 0.165689, 0.129867,
		-0.116600, 0.939778, -0.321282,
		33.056713, 30.046978, 36.461617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621037, 29.795101, 37.097862>,  <33.138332, 29.389133, 36.686516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621037, 29.795101, 37.097862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310051, 30.000732, 36.952938>,  <33.123459, 30.124111, 36.865982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310051, 30.000732, 36.952938>,  <33.621037, 29.795101, 37.097862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310051, 30.000732, 36.952938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306309, 0.193630, 0.932031,
		0.549291, 0.835603, 0.006925,
		-0.777467, 0.514077, -0.362312,
		33.076813, 30.154955, 36.844246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580997, 30.291992, 37.623165>,  <33.621037, 29.795101, 37.097862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580997, 30.291992, 37.623165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242119, 30.313269, 37.411724>,  <33.038792, 30.326035, 37.284859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242119, 30.313269, 37.411724>,  <33.580997, 30.291992, 37.623165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242119, 30.313269, 37.411724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484235, 0.332017, 0.809494,
		0.218566, 0.941772, -0.255526,
		-0.847198, 0.053193, -0.528607,
		32.987961, 30.329227, 37.253143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309769, 30.988998, 37.472244>,  <33.580997, 30.291992, 37.623165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309769, 30.988998, 37.472244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996914, 30.740593, 37.451813>,  <32.809200, 30.591551, 37.439556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996914, 30.740593, 37.451813>,  <33.309769, 30.988998, 37.472244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996914, 30.740593, 37.451813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389498, 0.423276, 0.818003,
		-0.486371, 0.659683, -0.572942,
		-0.782135, -0.621013, -0.051077,
		32.762272, 30.554289, 37.436489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834381, 31.310211, 38.002388>,  <33.309769, 30.988998, 37.472244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834381, 31.310211, 38.002388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667377, 30.951469, 37.943962>,  <32.567177, 30.736223, 37.908909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667377, 30.951469, 37.943962>,  <32.834381, 31.310211, 38.002388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667377, 30.951469, 37.943962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532631, 0.111315, 0.838996,
		-0.736199, 0.428087, -0.524168,
		-0.417510, -0.896856, -0.146062,
		32.542126, 30.682413, 37.900143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011539, 31.374630, 37.909798>,  <32.834381, 31.310211, 38.002388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011539, 31.374630, 37.909798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131302, 31.022234, 38.056339>,  <32.203159, 30.810797, 38.144264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131302, 31.022234, 38.056339>,  <32.011539, 31.374630, 37.909798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131302, 31.022234, 38.056339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389567, 0.237628, 0.889815,
		-0.870973, -0.409135, -0.272057,
		0.299406, -0.880989, 0.366353,
		32.221123, 30.757936, 38.166245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583611, 31.339399, 38.460606>,  <32.011539, 31.374630, 37.909798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583611, 31.339399, 38.460606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859907, 31.057610, 38.525833>,  <32.025684, 30.888535, 38.564972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859907, 31.057610, 38.525833>,  <31.583611, 31.339399, 38.460606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859907, 31.057610, 38.525833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223434, 0.006544, 0.974697,
		-0.687719, -0.709697, -0.152883,
		0.690739, -0.704477, 0.163071,
		32.067127, 30.846266, 38.574753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247259, 30.913744, 38.920689>,  <31.583611, 31.339399, 38.460606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247259, 30.913744, 38.920689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619017, 30.777475, 38.977493>,  <31.842072, 30.695715, 39.011578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619017, 30.777475, 38.977493>,  <31.247259, 30.913744, 38.920689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619017, 30.777475, 38.977493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201781, -0.146804, 0.968366,
		-0.309047, -0.928650, -0.205180,
		0.929394, -0.340672, 0.142015,
		31.897835, 30.675274, 39.020100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.229130, 30.192039, 39.194202>,  <31.247259, 30.913744, 38.920689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.229130, 30.192039, 39.194202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570927, 30.365051, 39.309273>,  <31.776005, 30.468859, 39.378315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570927, 30.365051, 39.309273>,  <31.229130, 30.192039, 39.194202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570927, 30.365051, 39.309273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310087, -0.019588, 0.950506,
		0.416756, -0.901407, 0.117384,
		0.854494, 0.432529, 0.287678,
		31.827274, 30.494810, 39.395576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363251, 29.778374, 39.793468>,  <31.229130, 30.192039, 39.194202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363251, 29.778374, 39.793468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586206, 30.110104, 39.809166>,  <31.719980, 30.309141, 39.818584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586206, 30.110104, 39.809166>,  <31.363251, 29.778374, 39.793468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586206, 30.110104, 39.809166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106334, 0.024428, 0.994030,
		0.823414, -0.558234, 0.101801,
		0.557389, 0.829323, 0.039245,
		31.753424, 30.358900, 39.820938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986626, 29.705252, 40.233849>,  <31.363251, 29.778374, 39.793468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986626, 29.705252, 40.233849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933229, 30.101042, 40.211514>,  <31.901192, 30.338516, 40.198112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933229, 30.101042, 40.211514>,  <31.986626, 29.705252, 40.233849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933229, 30.101042, 40.211514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123148, 0.072467, 0.989739,
		0.983369, 0.125245, -0.131525,
		-0.133491, 0.989476, -0.055838,
		31.893183, 30.397884, 40.194763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431549, 29.939224, 40.706623>,  <31.986626, 29.705252, 40.233849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431549, 29.939224, 40.706623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155281, 30.223297, 40.652042>,  <31.989521, 30.393740, 40.619293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155281, 30.223297, 40.652042>,  <32.431549, 29.939224, 40.706623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155281, 30.223297, 40.652042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025472, 0.164674, 0.986019,
		0.722722, 0.684489, -0.095646,
		-0.690670, 0.710181, -0.136449,
		31.948080, 30.436352, 40.611107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298161, 30.122244, 41.389565>,  <32.431549, 29.939224, 40.706623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298161, 30.122244, 41.389565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002010, 30.319914, 41.207298>,  <31.824320, 30.438517, 41.097939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002010, 30.319914, 41.207298>,  <32.298161, 30.122244, 41.389565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002010, 30.319914, 41.207298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389143, 0.237632, 0.889999,
		0.548098, 0.836254, 0.016368,
		-0.740376, 0.494177, -0.455668,
		31.779898, 30.468166, 41.070599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128895, 30.703257, 41.819473>,  <32.298161, 30.122244, 41.389565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128895, 30.703257, 41.819473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811523, 30.603588, 41.597340>,  <31.621101, 30.543787, 41.464062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811523, 30.603588, 41.597340>,  <32.128895, 30.703257, 41.819473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811523, 30.603588, 41.597340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545215, -0.114655, 0.830418,
		-0.270589, 0.961648, -0.044884,
		-0.793424, -0.249173, -0.555330,
		31.573496, 30.528835, 41.430740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658009, 31.119324, 42.070724>,  <32.128895, 30.703257, 41.819473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658009, 31.119324, 42.070724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456272, 30.838902, 41.869068>,  <31.335230, 30.670649, 41.748074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456272, 30.838902, 41.869068>,  <31.658009, 31.119324, 42.070724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456272, 30.838902, 41.869068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589859, -0.146683, 0.794072,
		-0.630638, 0.697857, -0.339546,
		-0.504343, -0.701056, -0.504142,
		31.304970, 30.628584, 41.717827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023548, 31.302485, 42.030674>,  <31.658009, 31.119324, 42.070724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023548, 31.302485, 42.030674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986517, 30.908371, 41.973198>,  <30.964298, 30.671904, 41.938713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986517, 30.908371, 41.973198>,  <31.023548, 31.302485, 42.030674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986517, 30.908371, 41.973198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685706, -0.041545, 0.726692,
		-0.721966, 0.165804, -0.671769,
		-0.092580, -0.985283, -0.143687,
		30.958742, 30.612785, 41.930092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372194, 31.242559, 42.148594>,  <31.023548, 31.302485, 42.030674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372194, 31.242559, 42.148594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537176, 30.881479, 42.197598>,  <30.636166, 30.664831, 42.227001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537176, 30.881479, 42.197598>,  <30.372194, 31.242559, 42.148594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537176, 30.881479, 42.197598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458114, -0.089289, 0.884398,
		-0.787409, -0.420899, -0.450368,
		0.412455, -0.902703, 0.122512,
		30.660913, 30.610668, 42.234352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854679, 30.819019, 42.323982>,  <30.372194, 31.242559, 42.148594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854679, 30.819019, 42.323982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.200174, 30.649561, 42.433147>,  <30.407471, 30.547886, 42.498646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.200174, 30.649561, 42.433147>,  <29.854679, 30.819019, 42.323982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200174, 30.649561, 42.433147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402938, -0.255327, 0.878891,
		-0.302662, -0.869096, -0.391240,
		0.863734, -0.423652, 0.272914,
		30.459295, 30.522467, 42.515022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596287, 30.209873, 42.658417>,  <29.854679, 30.819019, 42.323982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596287, 30.209873, 42.658417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963808, 30.288473, 42.795345>,  <30.184320, 30.335632, 42.877502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963808, 30.288473, 42.795345>,  <29.596287, 30.209873, 42.658417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963808, 30.288473, 42.795345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361419, 0.070204, 0.929757,
		0.158667, -0.977987, 0.135524,
		0.918804, 0.196502, 0.342324,
		30.239449, 30.347424, 42.898041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733665, 29.847282, 43.288807>,  <29.596287, 30.209873, 42.658417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733665, 29.847282, 43.288807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.023781, 30.121281, 43.316330>,  <30.197849, 30.285681, 43.332844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.023781, 30.121281, 43.316330>,  <29.733665, 29.847282, 43.288807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.023781, 30.121281, 43.316330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191621, 0.104871, 0.975850,
		0.661239, -0.720958, 0.207322,
		0.725289, 0.684998, 0.068806,
		30.241367, 30.326780, 43.336971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341021, 29.623075, 43.739494>,  <29.733665, 29.847282, 43.288807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341021, 29.623075, 43.739494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304625, 30.021397, 43.735546>,  <30.282787, 30.260389, 43.733177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304625, 30.021397, 43.735546>,  <30.341021, 29.623075, 43.739494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304625, 30.021397, 43.735546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014526, 0.008585, 0.999858,
		0.995746, 0.091119, 0.013684,
		-0.090988, 0.995803, -0.009872,
		30.277328, 30.320137, 43.732586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.431021, 29.754803, 44.464420>,  <30.341021, 29.623075, 43.739494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.431021, 29.754803, 44.464420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382317, 30.118271, 44.304676>,  <30.353094, 30.336351, 44.208828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382317, 30.118271, 44.304676>,  <30.431021, 29.754803, 44.464420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382317, 30.118271, 44.304676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157093, 0.379644, 0.911697,
		0.980049, 0.173745, 0.096521,
		-0.121759, 0.908671, -0.399364,
		30.345789, 30.390873, 44.184868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915825, 30.303806, 44.866680>,  <30.431021, 29.754803, 44.464420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915825, 30.303806, 44.866680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590914, 30.474653, 44.707798>,  <30.395967, 30.577162, 44.612469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590914, 30.474653, 44.707798>,  <30.915825, 30.303806, 44.866680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590914, 30.474653, 44.707798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219595, 0.406949, 0.886663,
		0.540352, 0.807442, -0.236764,
		-0.812280, 0.427118, -0.397206,
		30.347229, 30.602789, 44.588634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446468, 30.738520, 44.671719>,  <30.915825, 30.303806, 44.866680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446468, 30.738520, 44.671719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777180, 30.611219, 44.857258>,  <31.975607, 30.534840, 44.968582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777180, 30.611219, 44.857258>,  <31.446468, 30.738520, 44.671719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777180, 30.611219, 44.857258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369311, -0.314902, -0.874326,
		0.424324, 0.894177, -0.142819,
		0.826776, -0.318253, 0.463850,
		32.025211, 30.515743, 44.996414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080738, 31.087002, 44.365093>,  <31.446468, 30.738520, 44.671719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080738, 31.087002, 44.365093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193035, 30.743908, 44.537361>,  <32.260414, 30.538052, 44.640724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193035, 30.743908, 44.537361>,  <32.080738, 31.087002, 44.365093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193035, 30.743908, 44.537361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437864, -0.284844, -0.852725,
		0.854084, 0.427970, 0.295604,
		0.280740, -0.857733, 0.430673,
		32.277256, 30.486588, 44.666565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936798, 31.064657, 44.510975>,  <32.080738, 31.087002, 44.365093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936798, 31.064657, 44.510975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799026, 30.690262, 44.481884>,  <32.716362, 30.465624, 44.464428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799026, 30.690262, 44.481884>,  <32.936798, 31.064657, 44.510975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799026, 30.690262, 44.481884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605907, -0.162455, -0.778771,
		0.717108, -0.312298, 0.623078,
		-0.344431, -0.935991, -0.072726,
		32.695698, 30.409464, 44.460068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541386, 30.661160, 44.519939>,  <32.936798, 31.064657, 44.510975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541386, 30.661160, 44.519939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253437, 30.443815, 44.347179>,  <33.080666, 30.313410, 44.243523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253437, 30.443815, 44.347179>,  <33.541386, 30.661160, 44.519939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253437, 30.443815, 44.347179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673384, -0.395812, -0.624408,
		0.168325, -0.740334, 0.650825,
		-0.719875, -0.543359, -0.431904,
		33.037476, 30.280807, 44.217609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898827, 29.953501, 44.480656>,  <33.541386, 30.661160, 44.519939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898827, 29.953501, 44.480656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600773, 30.005564, 44.219021>,  <33.421940, 30.036800, 44.062038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600773, 30.005564, 44.219021>,  <33.898827, 29.953501, 44.480656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600773, 30.005564, 44.219021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560517, -0.409227, -0.719968,
		-0.361377, -0.903102, 0.231977,
		-0.745136, 0.130153, -0.654089,
		33.377232, 30.044611, 44.022793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
