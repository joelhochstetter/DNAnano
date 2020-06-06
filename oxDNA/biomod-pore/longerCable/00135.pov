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
	<24.406868, 34.530876, 35.333355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.574625, 34.859066, 35.177956>,  <24.675280, 35.055981, 35.084717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.574625, 34.859066, 35.177956>,  <24.406868, 34.530876, 35.333355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.574625, 34.859066, 35.177956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354910, 0.245699, 0.902037,
		0.835553, -0.516189, -0.188151,
		0.419393, 0.820476, -0.388495,
		24.700443, 35.105209, 35.061405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.143002, 34.572666, 35.493916>,  <24.406868, 34.530876, 35.333355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.143002, 34.572666, 35.493916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.063715, 34.954426, 35.404621>,  <25.016144, 35.183483, 35.351044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.063715, 34.954426, 35.404621>,  <25.143002, 34.572666, 35.493916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.063715, 34.954426, 35.404621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476416, 0.292851, 0.829015,
		0.856585, 0.057974, -0.512739,
		-0.198217, 0.954399, -0.223232,
		25.004250, 35.240746, 35.337650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.743046, 34.987103, 35.656956>,  <25.143002, 34.572666, 35.493916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.743046, 34.987103, 35.656956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.418421, 35.215904, 35.704586>,  <25.223646, 35.353184, 35.733166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.418421, 35.215904, 35.704586>,  <25.743046, 34.987103, 35.656956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.418421, 35.215904, 35.704586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417654, 0.425435, 0.802851,
		0.408576, 0.701296, -0.584167,
		-0.811561, 0.572005, 0.119077,
		25.174953, 35.387505, 35.740311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.951561, 35.659256, 35.895939>,  <25.743046, 34.987103, 35.656956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.951561, 35.659256, 35.895939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.561754, 35.684265, 35.982109>,  <25.327869, 35.699272, 36.033810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.561754, 35.684265, 35.982109>,  <25.951561, 35.659256, 35.895939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.561754, 35.684265, 35.982109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206231, 0.627501, 0.750807,
		-0.088237, 0.776101, -0.624404,
		-0.974517, 0.062522, 0.215425,
		25.269400, 35.703022, 36.046738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.736324, 36.259373, 35.993275>,  <25.951561, 35.659256, 35.895939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.736324, 36.259373, 35.993275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.495049, 36.053154, 36.236706>,  <25.350283, 35.929420, 36.382767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.495049, 36.053154, 36.236706>,  <25.736324, 36.259373, 35.993275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.495049, 36.053154, 36.236706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146193, 0.678628, 0.719786,
		-0.784086, 0.523137, -0.333971,
		-0.603189, -0.515550, 0.608582,
		25.314093, 35.898487, 36.419281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.237724, 36.778645, 36.332020>,  <25.736324, 36.259373, 35.993275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.237724, 36.778645, 36.332020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.317451, 36.453255, 36.550571>,  <25.365288, 36.258022, 36.681702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.317451, 36.453255, 36.550571>,  <25.237724, 36.778645, 36.332020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.317451, 36.453255, 36.550571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341462, 0.580279, 0.739378,
		-0.918518, 0.039198, 0.393430,
		0.199317, -0.813474, 0.546381,
		25.377247, 36.209213, 36.714485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.816635, 36.763596, 36.906616>,  <25.237724, 36.778645, 36.332020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.816635, 36.763596, 36.906616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178789, 36.596642, 36.937759>,  <25.396082, 36.496468, 36.956444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178789, 36.596642, 36.937759>,  <24.816635, 36.763596, 36.906616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.178789, 36.596642, 36.937759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336602, 0.817361, 0.467567,
		-0.258794, -0.397123, 0.880522,
		0.905386, -0.417389, 0.077856,
		25.450405, 36.471424, 36.961117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.152336, 36.646679, 37.646622>,  <24.816635, 36.763596, 36.906616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.152336, 36.646679, 37.646622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.448811, 36.695698, 37.382614>,  <25.626696, 36.725109, 37.224209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.448811, 36.695698, 37.382614>,  <25.152336, 36.646679, 37.646622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.448811, 36.695698, 37.382614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337569, 0.781808, 0.524236,
		0.580251, -0.611358, 0.538098,
		0.741185, 0.122544, -0.660021,
		25.671165, 36.732460, 37.184608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.687513, 36.892872, 38.034546>,  <25.152336, 36.646679, 37.646622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.687513, 36.892872, 38.034546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.817152, 36.979961, 37.666294>,  <25.894936, 37.032215, 37.445343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.817152, 36.979961, 37.666294>,  <25.687513, 36.892872, 38.034546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.817152, 36.979961, 37.666294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507230, 0.781458, 0.363374,
		0.798548, -0.584739, 0.142831,
		0.324095, 0.217723, -0.920630,
		25.914381, 37.045277, 37.390106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.496128, 36.712444, 38.030460>,  <25.687513, 36.892872, 38.034546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.496128, 36.712444, 38.030460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.378019, 37.006596, 37.786484>,  <26.307154, 37.183086, 37.640099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.378019, 37.006596, 37.786484>,  <26.496128, 36.712444, 38.030460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.378019, 37.006596, 37.786484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781536, 0.553125, 0.288538,
		0.549559, -0.391495, -0.738049,
		-0.295272, 0.735381, -0.609942,
		26.289438, 37.227211, 37.603500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.089819, 36.990692, 37.856335>,  <26.496128, 36.712444, 38.030460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.089819, 36.990692, 37.856335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823980, 37.269688, 37.749138>,  <26.664476, 37.437084, 37.684818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823980, 37.269688, 37.749138>,  <27.089819, 36.990692, 37.856335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.823980, 37.269688, 37.749138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641863, 0.716532, 0.273119,
		0.382523, 0.009499, -0.923897,
		-0.664596, 0.697489, -0.267993,
		26.624601, 37.478935, 37.668739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.438154, 37.500542, 37.394249>,  <27.089819, 36.990692, 37.856335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.438154, 37.500542, 37.394249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123981, 37.661049, 37.582752>,  <26.935478, 37.757355, 37.695854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123981, 37.661049, 37.582752>,  <27.438154, 37.500542, 37.394249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.123981, 37.661049, 37.582752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479930, 0.875624, 0.054305,
		-0.390853, 0.268824, -0.880323,
		-0.785430, 0.401268, 0.471257,
		26.888351, 37.781429, 37.724129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.211094, 38.140995, 37.004459>,  <27.438154, 37.500542, 37.394249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.211094, 38.140995, 37.004459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.078743, 38.157021, 37.381588>,  <26.999332, 38.166634, 37.607864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.078743, 38.157021, 37.381588>,  <27.211094, 38.140995, 37.004459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.078743, 38.157021, 37.381588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442326, 0.889130, 0.117452,
		-0.833588, 0.455898, -0.311911,
		-0.330875, 0.040060, 0.942824,
		26.979481, 38.169037, 37.664436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.879412, 38.746311, 37.241192>,  <27.211094, 38.140995, 37.004459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.879412, 38.746311, 37.241192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063789, 38.595871, 37.562710>,  <27.174416, 38.505608, 37.755619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063789, 38.595871, 37.562710>,  <26.879412, 38.746311, 37.241192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.063789, 38.595871, 37.562710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374731, 0.903530, 0.207872,
		-0.804431, 0.205388, 0.557411,
		0.460943, -0.376098, 0.803792,
		27.202072, 38.483040, 37.803848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.554531, 38.967247, 37.889839>,  <26.879412, 38.746311, 37.241192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.554531, 38.967247, 37.889839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945990, 38.901581, 37.939316>,  <27.180864, 38.862183, 37.969002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945990, 38.901581, 37.939316>,  <26.554531, 38.967247, 37.889839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.945990, 38.901581, 37.939316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142634, 0.975683, 0.166428,
		-0.148006, -0.145232, 0.978265,
		0.978647, -0.164166, 0.123692,
		27.239584, 38.852329, 37.976425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.979187, 38.482903, 38.015564>,  <26.554531, 38.967247, 37.889839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.979187, 38.482903, 38.015564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265142, 38.259605, 37.847134>,  <26.436716, 38.125629, 37.746075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265142, 38.259605, 37.847134>,  <25.979187, 38.482903, 38.015564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265142, 38.259605, 37.847134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699206, -0.576607, -0.422651,
		-0.006855, 0.596567, -0.802534,
		0.714887, -0.558240, -0.421076,
		26.479609, 38.092133, 37.720810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.785334, 38.428089, 37.240292>,  <25.979187, 38.482903, 38.015564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.785334, 38.428089, 37.240292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.038996, 38.139297, 37.350998>,  <26.191193, 37.966022, 37.417419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.038996, 38.139297, 37.350998>,  <25.785334, 38.428089, 37.240292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.038996, 38.139297, 37.350998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465292, -0.642206, -0.609159,
		0.617537, 0.257526, -0.743188,
		0.634154, -0.721978, 0.276761,
		26.229242, 37.922703, 37.434025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.854561, 38.097008, 36.641430>,  <25.785334, 38.428089, 37.240292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.854561, 38.097008, 36.641430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.979000, 37.858353, 36.937332>,  <26.053663, 37.715160, 37.114872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.979000, 37.858353, 36.937332>,  <25.854561, 38.097008, 36.641430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.979000, 37.858353, 36.937332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267198, -0.801892, -0.534391,
		0.912043, -0.031411, -0.408890,
		0.311100, -0.596642, 0.739753,
		26.072330, 37.679359, 37.159260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.174202, 37.509098, 36.220303>,  <25.854561, 38.097008, 36.641430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.174202, 37.509098, 36.220303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.109255, 37.369137, 36.589344>,  <26.070286, 37.285160, 36.810768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.109255, 37.369137, 36.589344>,  <26.174202, 37.509098, 36.220303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.109255, 37.369137, 36.589344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056322, -0.930204, -0.362695,
		0.985121, -0.110854, 0.131329,
		-0.162369, -0.349901, 0.922608,
		26.060543, 37.264168, 36.866127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.524109, 36.865120, 36.269890>,  <26.174202, 37.509098, 36.220303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.524109, 36.865120, 36.269890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.232000, 36.851189, 36.542797>,  <26.056734, 36.842831, 36.706543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.232000, 36.851189, 36.542797>,  <26.524109, 36.865120, 36.269890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.232000, 36.851189, 36.542797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332892, -0.853968, -0.399903,
		0.596561, -0.519159, 0.612037,
		-0.730273, -0.034825, 0.682268,
		26.012918, 36.840740, 36.747478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153978, 36.448936, 36.221405>,  <26.524109, 36.865120, 36.269890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.153978, 36.448936, 36.221405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314392, 36.726406, 36.460735>,  <27.410641, 36.892887, 36.604332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314392, 36.726406, 36.460735>,  <27.153978, 36.448936, 36.221405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.314392, 36.726406, 36.460735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535105, -0.707515, 0.461611,
		0.743529, 0.135044, -0.654926,
		0.401032, 0.693675, 0.598321,
		27.434702, 36.934509, 36.640232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.762457, 36.160511, 36.378788>,  <27.153978, 36.448936, 36.221405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.762457, 36.160511, 36.378788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.705687, 36.429966, 36.668911>,  <27.671625, 36.591640, 36.842983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.705687, 36.429966, 36.668911>,  <27.762457, 36.160511, 36.378788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.705687, 36.429966, 36.668911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450121, -0.608667, 0.653388,
		0.881617, 0.419207, -0.216834,
		-0.141925, 0.673639, 0.725305,
		27.663109, 36.632057, 36.886501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.479408, 36.366787, 36.538719>,  <27.762457, 36.160511, 36.378788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.479408, 36.366787, 36.538719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204300, 36.329117, 36.826637>,  <28.039236, 36.306515, 36.999390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204300, 36.329117, 36.826637>,  <28.479408, 36.366787, 36.538719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204300, 36.329117, 36.826637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552534, -0.711019, 0.434923,
		0.470829, 0.696838, 0.541051,
		-0.687769, -0.094175, 0.719795,
		27.997969, 36.300865, 37.042576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.734476, 36.003307, 35.913654>,  <28.479408, 36.366787, 36.538719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.734476, 36.003307, 35.913654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.795977, 36.220520, 35.583450>,  <28.832878, 36.350849, 35.385326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.795977, 36.220520, 35.583450>,  <28.734476, 36.003307, 35.913654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.795977, 36.220520, 35.583450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418679, 0.720940, 0.552225,
		0.895024, -0.430532, -0.116511,
		0.153753, 0.543035, -0.825513,
		28.842102, 36.383430, 35.335796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.409626, 36.158455, 35.738895>,  <28.734476, 36.003307, 35.913654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.409626, 36.158455, 35.738895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206457, 36.461632, 35.575169>,  <29.084557, 36.643539, 35.476933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206457, 36.461632, 35.575169>,  <29.409626, 36.158455, 35.738895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.206457, 36.461632, 35.575169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527083, 0.649299, 0.548265,
		0.681321, 0.062733, -0.729291,
		-0.507922, 0.757942, -0.409316,
		29.054081, 36.689014, 35.452374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956253, 36.549179, 35.195049>,  <29.409626, 36.158455, 35.738895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.956253, 36.549179, 35.195049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973398, 36.584278, 34.796963>,  <29.983685, 36.605335, 34.558109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973398, 36.584278, 34.796963>,  <29.956253, 36.549179, 35.195049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973398, 36.584278, 34.796963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696673, -0.716621, -0.033178,
		-0.716107, -0.691922, -0.091844,
		0.042861, 0.087744, -0.995220,
		29.986258, 36.610603, 34.498398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899197, 35.864662, 34.917995>,  <29.956253, 36.549179, 35.195049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.899197, 35.864662, 34.917995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.144962, 36.045204, 34.659145>,  <30.292421, 36.153530, 34.503834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.144962, 36.045204, 34.659145>,  <29.899197, 35.864662, 34.917995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.144962, 36.045204, 34.659145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546565, -0.835009, -0.063459,
		-0.569001, -0.314707, -0.759735,
		0.614414, 0.451353, -0.647129,
		30.329287, 36.180611, 34.465008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.970222, 35.458546, 34.255001>,  <29.899197, 35.864662, 34.917995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.970222, 35.458546, 34.255001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.263998, 35.673195, 34.421200>,  <30.440264, 35.801983, 34.520920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.263998, 35.673195, 34.421200>,  <29.970222, 35.458546, 34.255001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263998, 35.673195, 34.421200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569677, -0.820201, 0.052330,
		0.368868, 0.198263, -0.908090,
		0.734441, 0.536622, 0.415492,
		30.484331, 35.834183, 34.545849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795786, 36.163689, 34.089687>,  <29.970222, 35.458546, 34.255001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795786, 36.163689, 34.089687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.019127, 36.425488, 33.885777>,  <30.153131, 36.582569, 33.763432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.019127, 36.425488, 33.885777>,  <29.795786, 36.163689, 34.089687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.019127, 36.425488, 33.885777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726595, -0.682363, -0.080251,
		-0.400378, -0.325594, -0.856555,
		0.558352, 0.654499, -0.509778,
		30.186632, 36.621838, 33.732841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492218, 35.854717, 33.879986>,  <29.795786, 36.163689, 34.089687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492218, 35.854717, 33.879986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744022, 35.547108, 33.835587>,  <30.895105, 35.362541, 33.808949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744022, 35.547108, 33.835587>,  <30.492218, 35.854717, 33.879986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744022, 35.547108, 33.835587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698170, -0.497159, -0.515162,
		0.340987, 0.401796, -0.849875,
		0.629513, -0.769021, -0.110998,
		30.932877, 35.316402, 33.802288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581297, 35.603741, 33.254917>,  <30.492218, 35.854717, 33.879986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581297, 35.603741, 33.254917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.705328, 35.276909, 33.449333>,  <30.779747, 35.080811, 33.565983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.705328, 35.276909, 33.449333>,  <30.581297, 35.603741, 33.254917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.705328, 35.276909, 33.449333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732302, -0.531301, -0.425974,
		0.606288, -0.223844, -0.763091,
		0.310079, -0.817076, 0.486043,
		30.798351, 35.031788, 33.595146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216206, 35.708061, 32.821957>,  <30.581297, 35.603741, 33.254917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216206, 35.708061, 32.821957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860044, 35.884483, 32.776955>,  <30.646349, 35.990337, 32.749954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860044, 35.884483, 32.776955>,  <31.216206, 35.708061, 32.821957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860044, 35.884483, 32.776955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026318, 0.296639, 0.954627,
		0.454416, 0.847040, -0.275735,
		-0.890401, 0.441055, -0.112505,
		30.592924, 36.016800, 32.743202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139183, 36.429775, 33.057354>,  <31.216206, 35.708061, 32.821957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139183, 36.429775, 33.057354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.776926, 36.268700, 33.110504>,  <30.559572, 36.172054, 33.142395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.776926, 36.268700, 33.110504>,  <31.139183, 36.429775, 33.057354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776926, 36.268700, 33.110504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063238, 0.181595, 0.981338,
		-0.419304, 0.897143, -0.138995,
		-0.905641, -0.402689, 0.132877,
		30.505234, 36.147892, 33.150368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046246, 36.986057, 33.647552>,  <31.139183, 36.429775, 33.057354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046246, 36.986057, 33.647552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411310, 36.870228, 33.532173>,  <31.630348, 36.800732, 33.462948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411310, 36.870228, 33.532173>,  <31.046246, 36.986057, 33.647552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411310, 36.870228, 33.532173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408517, 0.624011, 0.666127,
		-0.012900, -0.725781, 0.687805,
		0.912660, -0.289572, -0.288444,
		31.685108, 36.783356, 33.445641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527414, 36.654903, 34.208950>,  <31.046246, 36.986057, 33.647552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527414, 36.654903, 34.208950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716072, 36.880531, 33.937840>,  <31.829266, 37.015907, 33.775173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716072, 36.880531, 33.937840>,  <31.527414, 36.654903, 34.208950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716072, 36.880531, 33.937840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302585, 0.618434, 0.725246,
		0.828249, -0.547141, 0.121000,
		0.471642, 0.564071, -0.677774,
		31.857565, 37.049751, 33.734509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374481, 36.774567, 34.279861>,  <31.527414, 36.654903, 34.208950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374481, 36.774567, 34.279861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164211, 37.076763, 34.123451>,  <32.038052, 37.258083, 34.029606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164211, 37.076763, 34.123451>,  <32.374481, 36.774567, 34.279861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164211, 37.076763, 34.123451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340823, 0.608193, 0.716897,
		0.779430, 0.243581, -0.577198,
		-0.525670, 0.755493, -0.391026,
		32.006512, 37.303410, 34.006142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871693, 36.565907, 34.667339>,  <32.374481, 36.774567, 34.279861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871693, 36.565907, 34.667339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101994, 36.399952, 34.949158>,  <33.240173, 36.300381, 35.118248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101994, 36.399952, 34.949158>,  <32.871693, 36.565907, 34.667339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101994, 36.399952, 34.949158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120229, -0.895290, -0.428953,
		0.808739, 0.162262, -0.565343,
		0.575749, -0.414882, 0.704547,
		33.274719, 36.275486, 35.160522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190262, 36.007069, 34.348171>,  <32.871693, 36.565907, 34.667339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190262, 36.007069, 34.348171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252922, 35.918678, 34.733219>,  <33.290520, 35.865643, 34.964249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252922, 35.918678, 34.733219>,  <33.190262, 36.007069, 34.348171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252922, 35.918678, 34.733219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194011, -0.962544, -0.189391,
		0.968411, -0.157090, -0.193657,
		0.156652, -0.220980, 0.962615,
		33.299919, 35.852383, 35.022003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595860, 35.376900, 34.375530>,  <33.190262, 36.007069, 34.348171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595860, 35.376900, 34.375530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376633, 35.429249, 34.705982>,  <33.245098, 35.460659, 34.904255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376633, 35.429249, 34.705982>,  <33.595860, 35.376900, 34.375530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376633, 35.429249, 34.705982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331411, -0.940825, -0.070818,
		0.767979, -0.312603, 0.559006,
		-0.548064, 0.130874, 0.826134,
		33.212212, 35.468510, 34.953823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766312, 34.895897, 35.002888>,  <33.595860, 35.376900, 34.375530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766312, 34.895897, 35.002888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385014, 35.011055, 34.966133>,  <33.156235, 35.080151, 34.944080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385014, 35.011055, 34.966133>,  <33.766312, 34.895897, 35.002888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385014, 35.011055, 34.966133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280485, -0.956036, -0.085574,
		-0.112485, -0.055799, 0.992086,
		-0.953245, 0.287891, -0.091889,
		33.099041, 35.097424, 34.938568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192890, 34.540318, 35.529221>,  <33.766312, 34.895897, 35.002888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192890, 34.540318, 35.529221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082832, 34.631454, 35.155613>,  <33.016800, 34.686134, 34.931450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082832, 34.631454, 35.155613>,  <33.192890, 34.540318, 35.529221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082832, 34.631454, 35.155613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370628, -0.921557, -0.115621,
		-0.887092, 0.314360, 0.338001,
		-0.275141, 0.227840, -0.934017,
		33.000290, 34.699806, 34.875408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340775, 34.469692, 35.389141>,  <33.192890, 34.540318, 35.529221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340775, 34.469692, 35.389141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577717, 34.382732, 35.078823>,  <32.719883, 34.330559, 34.892632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577717, 34.382732, 35.078823>,  <32.340775, 34.469692, 35.389141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577717, 34.382732, 35.078823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386791, -0.921420, -0.037132,
		-0.706756, 0.322064, -0.629897,
		0.592358, -0.217395, -0.775791,
		32.755424, 34.317513, 34.846085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244732, 35.123882, 35.698757>,  <32.340775, 34.469692, 35.389141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244732, 35.123882, 35.698757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603279, 35.107960, 35.522148>,  <32.818409, 35.098408, 35.416183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603279, 35.107960, 35.522148>,  <32.244732, 35.123882, 35.698757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603279, 35.107960, 35.522148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211635, 0.913562, 0.347296,
		0.389535, -0.404746, 0.827311,
		0.896367, -0.039804, -0.441523,
		32.872189, 35.096020, 35.389690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637283, 35.475376, 36.126534>,  <32.244732, 35.123882, 35.698757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637283, 35.475376, 36.126534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836739, 35.464436, 35.779980>,  <32.956409, 35.457870, 35.572048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836739, 35.464436, 35.779980>,  <32.637283, 35.475376, 36.126534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836739, 35.464436, 35.779980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447428, 0.864178, 0.230226,
		0.742409, -0.502441, 0.443150,
		0.498636, -0.027356, -0.866380,
		32.986328, 35.456230, 35.520065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373829, 35.568436, 36.299591>,  <32.637283, 35.475376, 36.126534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373829, 35.568436, 36.299591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368885, 35.661095, 35.910503>,  <33.365921, 35.716690, 35.677052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368885, 35.661095, 35.910503>,  <33.373829, 35.568436, 36.299591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368885, 35.661095, 35.910503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418750, 0.884581, 0.205339,
		0.908017, -0.404790, -0.107933,
		-0.012356, 0.231648, -0.972721,
		33.365177, 35.730591, 35.618687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041553, 35.824490, 36.067413>,  <33.373829, 35.568436, 36.299591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041553, 35.824490, 36.067413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816547, 35.960312, 35.765877>,  <33.681541, 36.041805, 35.584957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816547, 35.960312, 35.765877>,  <34.041553, 35.824490, 36.067413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816547, 35.960312, 35.765877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536032, 0.843965, -0.019835,
		0.629477, -0.415239, -0.656761,
		-0.562519, 0.339559, -0.753838,
		33.647793, 36.062180, 35.539726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354248, 35.988457, 35.383595>,  <34.041553, 35.824490, 36.067413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354248, 35.988457, 35.383595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045071, 36.228584, 35.465740>,  <33.859566, 36.372662, 35.515026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045071, 36.228584, 35.465740>,  <34.354248, 35.988457, 35.383595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045071, 36.228584, 35.465740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577700, 0.799723, -0.163419,
		-0.262336, -0.007676, -0.964946,
		-0.772944, 0.600320, 0.205362,
		33.813187, 36.408680, 35.527348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717808, 35.948570, 34.672871>,  <34.354248, 35.988457, 35.383595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717808, 35.948570, 34.672871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863876, 35.780422, 34.340618>,  <34.951515, 35.679535, 34.141266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863876, 35.780422, 34.340618>,  <34.717808, 35.948570, 34.672871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863876, 35.780422, 34.340618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692246, -0.473966, 0.544198,
		-0.622452, -0.773724, 0.117919,
		0.365169, -0.420366, -0.830629,
		34.973427, 35.654312, 34.091431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909649, 35.350266, 34.795097>,  <34.717808, 35.948570, 34.672871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909649, 35.350266, 34.795097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118824, 35.431503, 34.463970>,  <35.244328, 35.480247, 34.265293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118824, 35.431503, 34.463970>,  <34.909649, 35.350266, 34.795097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118824, 35.431503, 34.463970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807744, -0.428209, 0.405200,
		-0.272185, -0.880562, -0.387977,
		0.522939, 0.203096, -0.827821,
		35.275707, 35.492432, 34.215626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151863, 34.739017, 34.470379>,  <34.909649, 35.350266, 34.795097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151863, 34.739017, 34.470379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396423, 35.051037, 34.417141>,  <35.543159, 35.238247, 34.385197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396423, 35.051037, 34.417141>,  <35.151863, 34.739017, 34.470379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396423, 35.051037, 34.417141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734832, -0.497256, 0.461257,
		0.293619, -0.379817, -0.877227,
		0.611400, 0.780048, -0.133098,
		35.579842, 35.285049, 34.377213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739933, 34.470284, 34.189442>,  <35.151863, 34.739017, 34.470379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739933, 34.470284, 34.189442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858631, 34.828754, 34.321388>,  <35.929848, 35.043839, 34.400555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858631, 34.828754, 34.321388>,  <35.739933, 34.470284, 34.189442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858631, 34.828754, 34.321388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858449, -0.401654, 0.318966,
		0.418342, 0.188524, -0.888509,
		0.296741, 0.896177, 0.329867,
		35.947655, 35.097607, 34.420349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476467, 34.496902, 34.075890>,  <35.739933, 34.470284, 34.189442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476467, 34.496902, 34.075890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415894, 34.766781, 34.364845>,  <36.379551, 34.928707, 34.538219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415894, 34.766781, 34.364845>,  <36.476467, 34.496902, 34.075890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415894, 34.766781, 34.364845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871652, -0.253495, 0.419479,
		0.466144, 0.693198, -0.549715,
		-0.151432, 0.674698, 0.722392,
		36.370464, 34.969189, 34.581562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158279, 34.879494, 34.094769>,  <36.476467, 34.496902, 34.075890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158279, 34.879494, 34.094769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951782, 34.909035, 34.436069>,  <36.827885, 34.926758, 34.640850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951782, 34.909035, 34.436069>,  <37.158279, 34.879494, 34.094769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951782, 34.909035, 34.436069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855825, 0.006645, 0.517223,
		0.032526, 0.997247, -0.066632,
		-0.516242, 0.073848, 0.853253,
		36.796909, 34.931190, 34.692047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791451, 35.532051, 33.953411>,  <37.158279, 34.879494, 34.094769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791451, 35.532051, 33.953411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667320, 35.623863, 34.322414>,  <36.592842, 35.678951, 34.543816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667320, 35.623863, 34.322414>,  <36.791451, 35.532051, 33.953411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667320, 35.623863, 34.322414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918373, -0.178267, 0.353288,
		0.245543, 0.956836, -0.155477,
		-0.310323, 0.229534, 0.922504,
		36.574223, 35.692722, 34.599167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305920, 35.978241, 34.367893>,  <36.791451, 35.532051, 33.953411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305920, 35.978241, 34.367893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.070938, 35.793461, 34.633675>,  <36.929951, 35.682594, 34.793144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.070938, 35.793461, 34.633675>,  <37.305920, 35.978241, 34.367893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070938, 35.793461, 34.633675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797858, -0.193267, 0.571025,
		-0.135367, 0.865592, 0.482106,
		-0.587450, -0.461950, 0.664458,
		36.894703, 35.654877, 34.833012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310349, 36.289928, 35.150738>,  <37.305920, 35.978241, 34.367893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310349, 36.289928, 35.150738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193016, 35.908657, 35.180145>,  <37.122616, 35.679893, 35.197788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193016, 35.908657, 35.180145>,  <37.310349, 36.289928, 35.150738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193016, 35.908657, 35.180145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726550, -0.172290, 0.665162,
		-0.621353, 0.248527, 0.743071,
		-0.293334, -0.953179, 0.073514,
		37.105015, 35.622704, 35.202198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588909, 36.060074, 35.798630>,  <37.310349, 36.289928, 35.150738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588909, 36.060074, 35.798630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497025, 35.712132, 35.624001>,  <37.441895, 35.503368, 35.519222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497025, 35.712132, 35.624001>,  <37.588909, 36.060074, 35.798630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497025, 35.712132, 35.624001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604898, -0.479004, 0.636124,
		-0.762452, -0.117957, 0.636202,
		-0.229707, -0.869851, -0.436569,
		37.428112, 35.451176, 35.493031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089195, 35.602940, 35.898834>,  <37.588909, 36.060074, 35.798630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089195, 35.602940, 35.898834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840664, 35.402943, 36.140148>,  <37.691544, 35.282944, 36.284939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840664, 35.402943, 36.140148>,  <38.089195, 35.602940, 35.898834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840664, 35.402943, 36.140148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591881, -0.205035, -0.779511,
		0.513445, -0.841408, -0.168542,
		-0.621330, -0.499993, 0.603288,
		37.654266, 35.252945, 36.321133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990551, 34.827904, 35.747849>,  <38.089195, 35.602940, 35.898834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990551, 34.827904, 35.747849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687355, 35.038395, 35.902008>,  <37.505436, 35.164688, 35.994503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687355, 35.038395, 35.902008>,  <37.990551, 34.827904, 35.747849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687355, 35.038395, 35.902008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529682, -0.151790, -0.834504,
		-0.380637, -0.836688, 0.393788,
		-0.757993, 0.526225, 0.385402,
		37.459957, 35.196262, 36.017628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415394, 34.410374, 35.511818>,  <37.990551, 34.827904, 35.747849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415394, 34.410374, 35.511818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271420, 34.776756, 35.582771>,  <37.185036, 34.996586, 35.625343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271420, 34.776756, 35.582771>,  <37.415394, 34.410374, 35.511818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271420, 34.776756, 35.582771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592398, -0.077487, -0.801910,
		-0.720773, -0.393717, 0.570503,
		-0.359932, 0.915960, 0.177387,
		37.163441, 35.051544, 35.635986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673241, 34.438549, 35.390926>,  <37.415394, 34.410374, 35.511818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673241, 34.438549, 35.390926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809589, 34.808655, 35.324368>,  <36.891399, 35.030720, 35.284431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809589, 34.808655, 35.324368>,  <36.673241, 34.438549, 35.390926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809589, 34.808655, 35.324368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616687, 0.086473, -0.782445,
		-0.709581, 0.369328, 0.600076,
		0.340869, 0.925267, -0.166400,
		36.911850, 35.086235, 35.274448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171391, 34.928604, 35.457344>,  <36.673241, 34.438549, 35.390926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171391, 34.928604, 35.457344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438137, 35.092861, 35.208614>,  <36.598186, 35.191414, 35.059376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438137, 35.092861, 35.208614>,  <36.171391, 34.928604, 35.457344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438137, 35.092861, 35.208614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736643, 0.237347, -0.633264,
		-0.112457, 0.880363, 0.460776,
		0.666866, 0.410643, -0.621822,
		36.638199, 35.216053, 35.022068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007759, 35.722893, 35.514942>,  <36.171391, 34.928604, 35.457344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007759, 35.722893, 35.514942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164726, 35.541687, 35.194744>,  <36.258907, 35.432964, 35.002625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164726, 35.541687, 35.194744>,  <36.007759, 35.722893, 35.514942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164726, 35.541687, 35.194744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783135, 0.291889, -0.549091,
		0.482400, 0.842366, -0.240229,
		0.392415, -0.453013, -0.800493,
		36.282452, 35.405785, 34.954597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283226, 36.256947, 34.949192>,  <36.007759, 35.722893, 35.514942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283226, 36.256947, 34.949192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211975, 35.906582, 34.769833>,  <36.169224, 35.696365, 34.662216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211975, 35.906582, 34.769833>,  <36.283226, 36.256947, 34.949192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211975, 35.906582, 34.769833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594848, 0.458842, -0.660015,
		0.783854, 0.149163, -0.602763,
		-0.178123, -0.875908, -0.448395,
		36.158539, 35.643810, 34.635315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392757, 36.344643, 34.175995>,  <36.283226, 36.256947, 34.949192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392757, 36.344643, 34.175995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157623, 36.027283, 34.239185>,  <36.016541, 35.836864, 34.277100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157623, 36.027283, 34.239185>,  <36.392757, 36.344643, 34.175995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157623, 36.027283, 34.239185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673914, 0.372241, -0.638182,
		0.447531, -0.481611, -0.753503,
		-0.587840, -0.793403, 0.157975,
		35.981270, 35.789261, 34.286579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177498, 35.940842, 33.507347>,  <36.392757, 36.344643, 34.175995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177498, 35.940842, 33.507347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888962, 35.894707, 33.780510>,  <35.715839, 35.867023, 33.944408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888962, 35.894707, 33.780510>,  <36.177498, 35.940842, 33.507347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888962, 35.894707, 33.780510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668269, 0.374873, -0.642563,
		-0.181889, -0.919873, -0.347491,
		-0.721341, -0.115342, 0.682908,
		35.672558, 35.860104, 33.985382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597515, 35.599575, 33.278893>,  <36.177498, 35.940842, 33.507347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597515, 35.599575, 33.278893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462074, 35.826717, 33.578995>,  <35.380810, 35.963005, 33.759056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462074, 35.826717, 33.578995>,  <35.597515, 35.599575, 33.278893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462074, 35.826717, 33.578995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766105, 0.296548, -0.570213,
		-0.546287, -0.767851, 0.334627,
		-0.338605, 0.567860, 0.750254,
		35.360493, 35.997074, 33.804070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864235, 35.538013, 33.301830>,  <35.597515, 35.599575, 33.278893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864235, 35.538013, 33.301830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989296, 35.902142, 33.410328>,  <35.064331, 36.120617, 33.475426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989296, 35.902142, 33.410328>,  <34.864235, 35.538013, 33.301830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989296, 35.902142, 33.410328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483323, 0.398289, -0.779593,
		-0.817709, 0.112643, 0.564503,
		0.312651, 0.910317, 0.271241,
		35.083092, 36.175236, 33.491699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283192, 35.971451, 33.517651>,  <34.864235, 35.538013, 33.301830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283192, 35.971451, 33.517651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598965, 36.141811, 33.340832>,  <34.788429, 36.244030, 33.234741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598965, 36.141811, 33.340832>,  <34.283192, 35.971451, 33.517651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598965, 36.141811, 33.340832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577910, 0.272908, -0.769117,
		-0.206933, 0.862627, 0.461577,
		0.789429, 0.425906, -0.442047,
		34.835793, 36.269585, 33.208218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137310, 36.713005, 33.296131>,  <34.283192, 35.971451, 33.517651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137310, 36.713005, 33.296131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422592, 36.584728, 33.046810>,  <34.593761, 36.507763, 32.897217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422592, 36.584728, 33.046810>,  <34.137310, 36.713005, 33.296131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422592, 36.584728, 33.046810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560511, 0.273048, -0.781839,
		0.420917, 0.906975, 0.014989,
		0.713202, -0.320688, -0.623300,
		34.636551, 36.488522, 32.859821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091900, 37.076759, 32.717369>,  <34.137310, 36.713005, 33.296131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091900, 37.076759, 32.717369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308208, 36.774933, 32.568672>,  <34.437996, 36.593838, 32.479454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308208, 36.774933, 32.568672>,  <34.091900, 37.076759, 32.717369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308208, 36.774933, 32.568672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486858, 0.079619, -0.869845,
		0.685953, 0.651376, -0.324311,
		0.540775, -0.754566, -0.371742,
		34.470440, 36.548561, 32.457150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281616, 37.292835, 32.132206>,  <34.091900, 37.076759, 32.717369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281616, 37.292835, 32.132206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336308, 36.898888, 32.089619>,  <34.369122, 36.662518, 32.064068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336308, 36.898888, 32.089619>,  <34.281616, 37.292835, 32.132206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336308, 36.898888, 32.089619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328595, 0.056299, -0.942792,
		0.934522, 0.163889, -0.315926,
		0.136727, -0.984871, -0.106466,
		34.377327, 36.603428, 32.057678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598206, 37.160290, 31.553246>,  <34.281616, 37.292835, 32.132206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598206, 37.160290, 31.553246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413609, 36.814072, 31.631071>,  <34.302849, 36.606342, 31.677767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413609, 36.814072, 31.631071>,  <34.598206, 37.160290, 31.553246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413609, 36.814072, 31.631071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383779, -0.002951, -0.923420,
		0.799837, -0.500820, -0.330817,
		-0.461491, -0.865546, 0.194565,
		34.275162, 36.554409, 31.689440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791840, 36.863644, 30.910353>,  <34.598206, 37.160290, 31.553246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791840, 36.863644, 30.910353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474728, 36.690903, 31.082397>,  <34.284458, 36.587257, 31.185625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474728, 36.690903, 31.082397>,  <34.791840, 36.863644, 30.910353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474728, 36.690903, 31.082397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535677, 0.157030, -0.829694,
		0.290764, -0.888170, -0.355824,
		-0.792784, -0.431852, 0.430113,
		34.236893, 36.561348, 31.211432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516376, 36.494205, 30.351156>,  <34.791840, 36.863644, 30.910353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516376, 36.494205, 30.351156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207001, 36.504349, 30.604502>,  <34.021378, 36.510437, 30.756510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207001, 36.504349, 30.604502>,  <34.516376, 36.494205, 30.351156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207001, 36.504349, 30.604502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627473, 0.111001, -0.770686,
		-0.089851, -0.993497, -0.069938,
		-0.773437, 0.025362, 0.633365,
		33.974968, 36.511959, 30.794512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106510, 36.047676, 30.086954>,  <34.516376, 36.494205, 30.351156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106510, 36.047676, 30.086954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858032, 36.265907, 30.311975>,  <33.708946, 36.396847, 30.446987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858032, 36.265907, 30.311975>,  <34.106510, 36.047676, 30.086954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858032, 36.265907, 30.311975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652055, 0.038335, -0.757202,
		-0.434680, -0.837181, 0.331935,
		-0.621190, 0.545581, 0.562552,
		33.671677, 36.429581, 30.480742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382504, 35.834812, 29.855976>,  <34.106510, 36.047676, 30.086954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382504, 35.834812, 29.855976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352966, 36.189995, 30.037558>,  <33.335243, 36.403107, 30.146507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352966, 36.189995, 30.037558>,  <33.382504, 35.834812, 29.855976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352966, 36.189995, 30.037558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539870, 0.347136, -0.766836,
		-0.838503, -0.301703, 0.453749,
		-0.073844, 0.887960, 0.453955,
		33.330814, 36.456383, 30.173744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658184, 36.028240, 29.926041>,  <33.382504, 35.834812, 29.855976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658184, 36.028240, 29.926041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877296, 36.362839, 29.920198>,  <33.008762, 36.563599, 29.916693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877296, 36.362839, 29.920198>,  <32.658184, 36.028240, 29.926041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877296, 36.362839, 29.920198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643261, 0.409947, -0.646652,
		-0.534934, 0.363619, 0.762645,
		0.547779, 0.836496, -0.014607,
		33.041630, 36.613789, 29.915815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181229, 36.461037, 29.695286>,  <32.658184, 36.028240, 29.926041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181229, 36.461037, 29.695286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491421, 36.711288, 29.661318>,  <32.677536, 36.861439, 29.640938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491421, 36.711288, 29.661318>,  <32.181229, 36.461037, 29.695286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491421, 36.711288, 29.661318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484563, 0.503541, -0.715294,
		-0.404749, 0.595847, 0.693645,
		0.775485, 0.625629, -0.084918,
		32.724068, 36.898979, 29.635843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913712, 37.123669, 29.607687>,  <32.181229, 36.461037, 29.695286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913712, 37.123669, 29.607687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275887, 37.160801, 29.442007>,  <32.493191, 37.183083, 29.342600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275887, 37.160801, 29.442007>,  <31.913712, 37.123669, 29.607687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275887, 37.160801, 29.442007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399151, 0.518203, -0.756402,
		0.144419, 0.850204, 0.506257,
		0.905440, 0.092834, -0.414199,
		32.547520, 37.188652, 29.317747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966066, 37.845455, 29.404816>,  <31.913712, 37.123669, 29.607687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966066, 37.845455, 29.404816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269489, 37.673580, 29.208874>,  <32.451542, 37.570454, 29.091309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269489, 37.673580, 29.208874>,  <31.966066, 37.845455, 29.404816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269489, 37.673580, 29.208874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110298, 0.656242, -0.746446,
		0.642203, 0.620252, 0.450403,
		0.758558, -0.429691, -0.489853,
		32.497055, 37.544674, 29.061918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430973, 38.429695, 29.160114>,  <31.966066, 37.845455, 29.404816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430973, 38.429695, 29.160114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519550, 38.124859, 28.916744>,  <32.572697, 37.941956, 28.770721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519550, 38.124859, 28.916744>,  <32.430973, 38.429695, 29.160114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519550, 38.124859, 28.916744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214248, 0.570651, -0.792752,
		0.951347, 0.305904, -0.036910,
		0.221443, -0.762089, -0.608426,
		32.585983, 37.896233, 28.734217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113850, 38.669270, 28.772945>,  <32.430973, 38.429695, 29.160114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113850, 38.669270, 28.772945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903030, 38.399906, 28.565582>,  <32.776539, 38.238289, 28.441164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903030, 38.399906, 28.565582>,  <33.113850, 38.669270, 28.772945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903030, 38.399906, 28.565582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054870, 0.635698, -0.769985,
		0.848065, -0.377371, -0.371991,
		-0.527044, -0.673408, -0.518407,
		32.744919, 38.197884, 28.410061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414356, 38.742554, 28.061975>,  <33.113850, 38.669270, 28.772945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414356, 38.742554, 28.061975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064064, 38.549759, 28.050756>,  <32.853889, 38.434082, 28.044025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064064, 38.549759, 28.050756>,  <33.414356, 38.742554, 28.061975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064064, 38.549759, 28.050756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319344, 0.621838, -0.715078,
		0.362098, -0.617260, -0.698481,
		-0.875731, -0.481984, -0.028048,
		32.801346, 38.405163, 28.042341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413166, 38.778954, 27.253706>,  <33.414356, 38.742554, 28.061975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413166, 38.778954, 27.253706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059734, 38.651917, 27.391352>,  <32.847675, 38.575695, 27.473940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059734, 38.651917, 27.391352>,  <33.413166, 38.778954, 27.253706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059734, 38.651917, 27.391352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461121, 0.462166, -0.757476,
		0.081529, -0.827973, -0.554810,
		-0.883584, -0.317591, 0.344116,
		32.794659, 38.556641, 27.494587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023533, 38.488987, 26.656702>,  <33.413166, 38.778954, 27.253706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023533, 38.488987, 26.656702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772579, 38.595581, 26.949379>,  <32.622005, 38.659538, 27.124985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772579, 38.595581, 26.949379>,  <33.023533, 38.488987, 26.656702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772579, 38.595581, 26.949379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663410, 0.309120, -0.681419,
		-0.407769, -0.912924, -0.017149,
		-0.627385, 0.266485, 0.731693,
		32.584362, 38.675526, 27.168886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364826, 38.354515, 26.429371>,  <33.023533, 38.488987, 26.656702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364826, 38.354515, 26.429371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280884, 38.611855, 26.723869>,  <32.230518, 38.766258, 26.900568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280884, 38.611855, 26.723869>,  <32.364826, 38.354515, 26.429371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280884, 38.611855, 26.723869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463485, 0.597574, -0.654284,
		-0.860896, -0.478545, 0.172779,
		-0.209856, 0.643351, 0.736247,
		32.217926, 38.804859, 26.944744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729244, 38.690720, 26.239283>,  <32.364826, 38.354515, 26.429371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729244, 38.690720, 26.239283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881727, 38.925037, 26.525366>,  <31.973217, 39.065628, 26.697016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881727, 38.925037, 26.525366>,  <31.729244, 38.690720, 26.239283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881727, 38.925037, 26.525366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361974, 0.806437, -0.467583,
		-0.850679, -0.080641, 0.519463,
		0.381208, 0.585795, 0.715209,
		31.996090, 39.100777, 26.739929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160568, 39.147846, 26.597065>,  <31.729244, 38.690720, 26.239283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160568, 39.147846, 26.597065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511282, 39.340157, 26.593058>,  <31.721710, 39.455544, 26.590652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511282, 39.340157, 26.593058>,  <31.160568, 39.147846, 26.597065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511282, 39.340157, 26.593058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468793, 0.849921, -0.240554,
		-0.107138, 0.215611, 0.970584,
		0.876786, 0.480776, -0.010018,
		31.774319, 39.484390, 26.590052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089724, 39.798737, 26.952032>,  <31.160568, 39.147846, 26.597065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089724, 39.798737, 26.952032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418879, 39.838852, 26.728319>,  <31.616371, 39.862923, 26.594091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418879, 39.838852, 26.728319>,  <31.089724, 39.798737, 26.952032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418879, 39.838852, 26.728319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333241, 0.882428, -0.332071,
		0.460223, 0.459633, 0.759560,
		0.822888, 0.100290, -0.559282,
		31.665745, 39.868938, 26.560534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261623, 40.520176, 27.042328>,  <31.089724, 39.798737, 26.952032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261623, 40.520176, 27.042328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480112, 40.414066, 26.724518>,  <31.611206, 40.350403, 26.533833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480112, 40.414066, 26.724518>,  <31.261623, 40.520176, 27.042328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480112, 40.414066, 26.724518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214507, 0.872601, -0.438810,
		0.809708, 0.410119, 0.419733,
		0.546224, -0.265272, -0.794525,
		31.643980, 40.334484, 26.486160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501287, 41.103363, 26.867468>,  <31.261623, 40.520176, 27.042328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501287, 41.103363, 26.867468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561359, 40.880680, 26.540661>,  <31.597403, 40.747070, 26.344576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561359, 40.880680, 26.540661>,  <31.501287, 41.103363, 26.867468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561359, 40.880680, 26.540661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256517, 0.776150, -0.576012,
		0.954801, 0.296085, -0.026242,
		0.150181, -0.556709, -0.817020,
		31.606413, 40.713669, 26.295555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979563, 41.468353, 26.487265>,  <31.501287, 41.103363, 26.867468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979563, 41.468353, 26.487265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837738, 41.222866, 26.205091>,  <31.752644, 41.075573, 26.035788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837738, 41.222866, 26.205091>,  <31.979563, 41.468353, 26.487265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837738, 41.222866, 26.205091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137187, 0.780429, -0.610009,
		0.924915, -0.119509, -0.360903,
		-0.354560, -0.613717, -0.705435,
		31.731369, 41.038750, 25.993462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220989, 41.725689, 25.798374>,  <31.979563, 41.468353, 26.487265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220989, 41.725689, 25.798374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919930, 41.478680, 25.706999>,  <31.739294, 41.330475, 25.652174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919930, 41.478680, 25.706999>,  <32.220989, 41.725689, 25.798374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919930, 41.478680, 25.706999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260059, 0.597545, -0.758491,
		0.604901, -0.511460, -0.610331,
		-0.752638, -0.617534, -0.228446,
		31.694136, 41.293423, 25.638468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324257, 41.567322, 25.093431>,  <32.220989, 41.725689, 25.798374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324257, 41.567322, 25.093431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938124, 41.524796, 25.188791>,  <31.706444, 41.499279, 25.246006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938124, 41.524796, 25.188791>,  <32.324257, 41.567322, 25.093431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938124, 41.524796, 25.188791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256178, 0.561090, -0.787116,
		-0.050084, -0.820900, -0.568872,
		-0.965331, -0.106311, 0.238398,
		31.648525, 41.492901, 25.260311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941959, 41.527603, 24.487160>,  <32.324257, 41.567322, 25.093431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941959, 41.527603, 24.487160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629370, 41.602142, 24.725344>,  <31.441816, 41.646866, 24.868254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629370, 41.602142, 24.725344>,  <31.941959, 41.527603, 24.487160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629370, 41.602142, 24.725344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494499, 0.397007, -0.773212,
		-0.380487, -0.898700, -0.218102,
		-0.781473, 0.186346, 0.595462,
		31.394928, 41.658047, 24.903982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464916, 41.131645, 24.169523>,  <31.941959, 41.527603, 24.487160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464916, 41.131645, 24.169523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305351, 41.424076, 24.390936>,  <31.209612, 41.599533, 24.523783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305351, 41.424076, 24.390936>,  <31.464916, 41.131645, 24.169523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305351, 41.424076, 24.390936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522417, 0.314910, -0.792409,
		-0.753623, -0.605277, 0.256304,
		-0.398914, 0.731075, 0.553531,
		31.185677, 41.643398, 24.556995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764502, 41.071114, 23.906664>,  <31.464916, 41.131645, 24.169523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764502, 41.071114, 23.906664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.821157, 41.438148, 24.055241>,  <30.855150, 41.658371, 24.144386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.821157, 41.438148, 24.055241>,  <30.764502, 41.071114, 23.906664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.821157, 41.438148, 24.055241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304970, 0.397420, -0.865477,
		-0.941771, 0.009306, 0.336127,
		0.141638, 0.917590, 0.371440,
		30.863649, 41.713425, 24.166672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199522, 41.422775, 23.683382>,  <30.764502, 41.071114, 23.906664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199522, 41.422775, 23.683382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431067, 41.730320, 23.792023>,  <30.569994, 41.914848, 23.857208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431067, 41.730320, 23.792023>,  <30.199522, 41.422775, 23.683382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431067, 41.730320, 23.792023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184158, 0.447743, -0.874992,
		-0.794358, 0.456482, 0.400774,
		0.578862, 0.768863, 0.271603,
		30.604725, 41.960979, 23.873505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841824, 41.991962, 23.436939>,  <30.199522, 41.422775, 23.683382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.841824, 41.991962, 23.436939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.211267, 42.136093, 23.489267>,  <30.432934, 42.222572, 23.520664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.211267, 42.136093, 23.489267>,  <29.841824, 41.991962, 23.436939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.211267, 42.136093, 23.489267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058473, 0.469703, -0.880886,
		-0.378850, 0.805945, 0.454891,
		0.923609, 0.360322, 0.130821,
		30.488350, 42.244190, 23.528513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737120, 42.709850, 23.207012>,  <29.841824, 41.991962, 23.436939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737120, 42.709850, 23.207012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.128893, 42.632164, 23.228878>,  <30.363956, 42.585552, 23.241997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.128893, 42.632164, 23.228878>,  <29.737120, 42.709850, 23.207012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128893, 42.632164, 23.228878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161760, 0.593952, -0.788070,
		0.120586, 0.780706, 0.613153,
		0.979435, -0.194214, 0.054665,
		30.422724, 42.573898, 23.245277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085621, 43.333035, 23.193466>,  <29.737120, 42.709850, 23.207012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085621, 43.333035, 23.193466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346508, 43.058315, 23.065138>,  <30.503040, 42.893486, 22.988142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346508, 43.058315, 23.065138>,  <30.085621, 43.333035, 23.193466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346508, 43.058315, 23.065138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189322, 0.557399, -0.808371,
		0.734010, 0.466495, 0.493571,
		0.652217, -0.686795, -0.320819,
		30.542173, 42.852276, 22.968893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755934, 43.686302, 23.109674>,  <30.085621, 43.333035, 23.193466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755934, 43.686302, 23.109674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754757, 43.369598, 22.865345>,  <30.754051, 43.179577, 22.718748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754757, 43.369598, 22.865345>,  <30.755934, 43.686302, 23.109674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754757, 43.369598, 22.865345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358061, 0.569492, -0.739913,
		0.933693, -0.220887, 0.281825,
		-0.002940, -0.791762, -0.610822,
		30.753874, 43.132069, 22.682098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464008, 43.462734, 22.794991>,  <30.755934, 43.686302, 23.109674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464008, 43.462734, 22.794991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.170568, 43.359871, 22.543373>,  <30.994503, 43.298153, 22.392403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.170568, 43.359871, 22.543373>,  <31.464008, 43.462734, 22.794991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.170568, 43.359871, 22.543373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463286, 0.487954, -0.739775,
		0.497194, -0.834125, -0.238817,
		-0.733596, -0.257172, -0.629046,
		30.950487, 43.282722, 22.354660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846874, 43.423531, 22.253132>,  <31.464008, 43.462734, 22.794991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846874, 43.423531, 22.253132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464235, 43.431206, 22.136822>,  <31.234652, 43.435810, 22.067036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464235, 43.431206, 22.136822>,  <31.846874, 43.423531, 22.253132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464235, 43.431206, 22.136822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272941, 0.408551, -0.870970,
		0.102087, -0.912534, -0.396055,
		-0.956599, 0.019185, -0.290776,
		31.177256, 43.436962, 22.049589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887079, 43.103664, 21.549801>,  <31.846874, 43.423531, 22.253132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887079, 43.103664, 21.549801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534090, 43.291809, 21.550533>,  <31.322296, 43.404694, 21.550972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534090, 43.291809, 21.550533>,  <31.887079, 43.103664, 21.549801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534090, 43.291809, 21.550533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203763, 0.385794, -0.899802,
		-0.423935, -0.793679, -0.436295,
		-0.882474, 0.470358, 0.001829,
		31.269348, 43.432915, 21.551083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696861, 43.129128, 20.833094>,  <31.887079, 43.103664, 21.549801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696861, 43.129128, 20.833094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462124, 43.408264, 20.997355>,  <31.321281, 43.575745, 21.095911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462124, 43.408264, 20.997355>,  <31.696861, 43.129128, 20.833094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462124, 43.408264, 20.997355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126275, 0.579834, -0.804890,
		-0.799794, -0.420489, -0.428391,
		-0.586842, 0.697841, 0.410650,
		31.286072, 43.617615, 21.120550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391266, 43.470058, 20.190718>,  <31.696861, 43.129128, 20.833094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391266, 43.470058, 20.190718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251928, 43.707973, 20.480513>,  <31.168325, 43.850723, 20.654390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251928, 43.707973, 20.480513>,  <31.391266, 43.470058, 20.190718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251928, 43.707973, 20.480513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186013, 0.713662, -0.675341,
		-0.918725, -0.370016, -0.137962,
		-0.348345, 0.594790, 0.724487,
		31.147425, 43.886410, 20.697859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663961, 43.665783, 20.008856>,  <31.391266, 43.470058, 20.190718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663961, 43.665783, 20.008856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884567, 43.914276, 20.231531>,  <31.016930, 44.063374, 20.365135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884567, 43.914276, 20.231531>,  <30.663961, 43.665783, 20.008856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.884567, 43.914276, 20.231531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111911, 0.716427, -0.688628,
		-0.826626, 0.317487, 0.464642,
		0.551512, 0.621236, 0.556687,
		31.050020, 44.100647, 20.398537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328428, 44.306202, 20.023251>,  <30.663961, 43.665783, 20.008856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328428, 44.306202, 20.023251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716818, 44.378334, 20.086107>,  <30.949852, 44.421612, 20.123821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716818, 44.378334, 20.086107>,  <30.328428, 44.306202, 20.023251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716818, 44.378334, 20.086107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038839, 0.767125, -0.640321,
		-0.236014, 0.615632, 0.751861,
		0.970973, 0.180326, 0.157142,
		31.008110, 44.432430, 20.133249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448999, 45.002808, 20.241728>,  <30.328428, 44.306202, 20.023251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448999, 45.002808, 20.241728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.778238, 44.869301, 20.057943>,  <30.975782, 44.789196, 19.947672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.778238, 44.869301, 20.057943>,  <30.448999, 45.002808, 20.241728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778238, 44.869301, 20.057943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097042, 0.714495, -0.692878,
		0.559545, 0.614895, 0.555711,
		0.823099, -0.333769, -0.459462,
		31.025167, 44.769169, 19.920105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.934465, 45.538666, 20.180731>,  <30.448999, 45.002808, 20.241728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.934465, 45.538666, 20.180731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.901646, 45.235012, 19.922436>,  <30.881954, 45.052818, 19.767458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.901646, 45.235012, 19.922436>,  <30.934465, 45.538666, 20.180731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901646, 45.235012, 19.922436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487835, 0.595588, -0.638194,
		0.869071, 0.262650, -0.419202,
		-0.082050, -0.759137, -0.645739,
		30.877031, 45.007271, 19.728714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369539, 45.970806, 19.977043>,  <30.934465, 45.538666, 20.180731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369539, 45.970806, 19.977043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375772, 46.294743, 20.211620>,  <30.379513, 46.489105, 20.352367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375772, 46.294743, 20.211620>,  <30.369539, 45.970806, 19.977043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375772, 46.294743, 20.211620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856695, 0.291621, -0.425476,
		-0.515587, 0.509033, -0.689243,
		0.015583, 0.809841, 0.586442,
		30.380447, 46.537697, 20.387552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501873, 46.572582, 19.530605>,  <30.369539, 45.970806, 19.977043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501873, 46.572582, 19.530605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.637920, 46.575283, 19.906750>,  <30.719549, 46.576904, 20.132437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.637920, 46.575283, 19.906750>,  <30.501873, 46.572582, 19.530605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637920, 46.575283, 19.906750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939017, 0.051435, -0.340001,
		-0.050662, 0.998654, 0.011155,
		0.340117, 0.006750, 0.940359,
		30.739956, 46.577309, 20.188858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052052, 47.109009, 19.602142>,  <30.501873, 46.572582, 19.530605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052052, 47.109009, 19.602142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096634, 46.901367, 19.941109>,  <31.123383, 46.776783, 20.144489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096634, 46.901367, 19.941109>,  <31.052052, 47.109009, 19.602142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096634, 46.901367, 19.941109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992217, 0.010490, -0.124074,
		0.055517, 0.854649, 0.516229,
		0.111455, -0.519100, 0.847416,
		31.130070, 46.745636, 20.195333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541378, 47.388103, 20.151239>,  <31.052052, 47.109009, 19.602142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541378, 47.388103, 20.151239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552406, 46.989555, 20.183456>,  <31.559023, 46.750427, 20.202787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552406, 46.989555, 20.183456>,  <31.541378, 47.388103, 20.151239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552406, 46.989555, 20.183456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981608, 0.011761, -0.190543,
		0.188904, 0.084316, 0.978369,
		0.027572, -0.996370, 0.080544,
		31.560678, 46.690643, 20.207619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976425, 47.159580, 20.594370>,  <31.541378, 47.388103, 20.151239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976425, 47.159580, 20.594370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978960, 46.876831, 20.311445>,  <31.980480, 46.707180, 20.141689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978960, 46.876831, 20.311445>,  <31.976425, 47.159580, 20.594370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978960, 46.876831, 20.311445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989676, 0.105712, -0.096779,
		0.143182, -0.699397, 0.700245,
		0.006338, -0.706872, -0.707313,
		31.980862, 46.664768, 20.099251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316521, 46.577011, 20.816191>,  <31.976425, 47.159580, 20.594370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316521, 46.577011, 20.816191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.327099, 46.647999, 20.422682>,  <32.333447, 46.690594, 20.186577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.327099, 46.647999, 20.422682>,  <32.316521, 46.577011, 20.816191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327099, 46.647999, 20.422682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962783, -0.269319, -0.022706,
		-0.268978, -0.946557, -0.177991,
		0.026444, 0.177474, -0.983770,
		32.335033, 46.701241, 20.127550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088837, 46.729229, 20.976784>,  <32.316521, 46.577011, 20.816191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088837, 46.729229, 20.976784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003960, 47.118225, 20.938353>,  <32.953033, 47.351624, 20.915295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003960, 47.118225, 20.938353>,  <33.088837, 46.729229, 20.976784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003960, 47.118225, 20.938353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976868, -0.208419, 0.047863,
		0.026522, 0.104011, 0.994222,
		-0.212193, 0.972493, -0.096077,
		32.940300, 47.409973, 20.909529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056293, 46.459957, 21.761333>,  <33.088837, 46.729229, 20.976784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056293, 46.459957, 21.761333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831203, 46.205612, 21.550047>,  <32.696148, 46.053005, 21.423275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831203, 46.205612, 21.550047>,  <33.056293, 46.459957, 21.761333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831203, 46.205612, 21.550047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157612, -0.709802, 0.686542,
		-0.811477, 0.303084, 0.499646,
		-0.562729, -0.635863, -0.528218,
		32.662384, 46.014854, 21.391582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567532, 46.168068, 22.192345>,  <33.056293, 46.459957, 21.761333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567532, 46.168068, 22.192345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662373, 45.952156, 21.869255>,  <32.719276, 45.822609, 21.675402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662373, 45.952156, 21.869255>,  <32.567532, 46.168068, 22.192345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662373, 45.952156, 21.869255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399736, -0.703579, 0.587527,
		-0.885434, -0.462180, 0.048949,
		0.237104, -0.539783, -0.807723,
		32.733505, 45.790222, 21.626938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363003, 45.469318, 22.339031>,  <32.567532, 46.168068, 22.192345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363003, 45.469318, 22.339031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640865, 45.413410, 22.056778>,  <32.807583, 45.379864, 21.887426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640865, 45.413410, 22.056778>,  <32.363003, 45.469318, 22.339031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640865, 45.413410, 22.056778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503435, -0.606213, 0.615678,
		-0.513818, -0.782924, -0.350744,
		0.694654, -0.139769, -0.705634,
		32.849262, 45.371479, 21.845087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340794, 44.773510, 22.255510>,  <32.363003, 45.469318, 22.339031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340794, 44.773510, 22.255510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679874, 44.864330, 22.063740>,  <32.883324, 44.918823, 21.948677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679874, 44.864330, 22.063740>,  <32.340794, 44.773510, 22.255510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679874, 44.864330, 22.063740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468535, -0.744264, 0.475969,
		-0.248750, -0.628107, -0.737295,
		0.847702, 0.227051, -0.479426,
		32.934185, 44.932446, 21.919912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532772, 44.200012, 22.006660>,  <32.340794, 44.773510, 22.255510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532772, 44.200012, 22.006660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876072, 44.404938, 22.018982>,  <33.082050, 44.527893, 22.026375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876072, 44.404938, 22.018982>,  <32.532772, 44.200012, 22.006660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876072, 44.404938, 22.018982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448739, -0.778170, 0.439413,
		0.249089, -0.363301, -0.897757,
		0.858247, 0.512312, 0.030806,
		33.133545, 44.558632, 22.028223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051022, 43.701294, 21.842375>,  <32.532772, 44.200012, 22.006660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051022, 43.701294, 21.842375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210953, 44.024929, 22.014658>,  <33.306911, 44.219109, 22.118029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210953, 44.024929, 22.014658>,  <33.051022, 43.701294, 21.842375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210953, 44.024929, 22.014658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589004, -0.586839, 0.555602,
		0.702288, 0.031543, -0.711193,
		0.399831, 0.809089, 0.430709,
		33.330902, 44.267654, 22.143871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759037, 43.666996, 21.735960>,  <33.051022, 43.701294, 21.842375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759037, 43.666996, 21.735960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694878, 43.909492, 22.047535>,  <33.656384, 44.054989, 22.234480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694878, 43.909492, 22.047535>,  <33.759037, 43.666996, 21.735960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694878, 43.909492, 22.047535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618337, -0.553404, 0.558036,
		0.769371, 0.571153, -0.286097,
		-0.160397, 0.606241, 0.778938,
		33.646759, 44.091366, 22.281216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380562, 43.723160, 22.072760>,  <33.759037, 43.666996, 21.735960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380562, 43.723160, 22.072760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103642, 43.805325, 22.349464>,  <33.937489, 43.854622, 22.515488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103642, 43.805325, 22.349464>,  <34.380562, 43.723160, 22.072760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103642, 43.805325, 22.349464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477502, -0.588337, 0.652573,
		0.541034, 0.782090, 0.309219,
		-0.692296, 0.205412, 0.691760,
		33.895954, 43.866947, 22.556992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774139, 43.861275, 22.492290>,  <34.380562, 43.723160, 22.072760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774139, 43.861275, 22.492290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435246, 43.786480, 22.691179>,  <34.231911, 43.741604, 22.810513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435246, 43.786480, 22.691179>,  <34.774139, 43.861275, 22.492290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435246, 43.786480, 22.691179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526600, -0.418814, 0.739789,
		0.069909, 0.888611, 0.453303,
		-0.847234, -0.186991, 0.497221,
		34.181076, 43.730381, 22.840345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999733, 43.875538, 23.166071>,  <34.774139, 43.861275, 22.492290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999733, 43.875538, 23.166071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640358, 43.701969, 23.192987>,  <34.424732, 43.597828, 23.209137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640358, 43.701969, 23.192987>,  <34.999733, 43.875538, 23.166071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640358, 43.701969, 23.192987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283533, -0.456259, 0.843467,
		-0.335293, 0.776880, 0.532950,
		-0.898436, -0.433918, 0.067291,
		34.370827, 43.571793, 23.213175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649586, 44.071663, 23.797262>,  <34.999733, 43.875538, 23.166071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649586, 44.071663, 23.797262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498440, 43.715279, 23.696547>,  <34.407753, 43.501446, 23.636118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498440, 43.715279, 23.696547>,  <34.649586, 44.071663, 23.797262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498440, 43.715279, 23.696547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209712, -0.347245, 0.914025,
		-0.901797, 0.292577, 0.318059,
		-0.377867, -0.890965, -0.251788,
		34.385078, 43.447990, 23.621010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528763, 43.715008, 24.409687>,  <34.649586, 44.071663, 23.797262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528763, 43.715008, 24.409687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487698, 43.407627, 24.157040>,  <34.463058, 43.223198, 24.005451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487698, 43.407627, 24.157040>,  <34.528763, 43.715008, 24.409687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487698, 43.407627, 24.157040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212078, -0.637286, 0.740871,
		-0.971845, -0.057890, 0.228399,
		-0.102666, -0.768450, -0.631620,
		34.456898, 43.177094, 23.967554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106026, 43.308914, 24.779671>,  <34.528763, 43.715008, 24.409687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106026, 43.308914, 24.779671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277176, 43.089138, 24.492607>,  <34.379864, 42.957272, 24.320368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277176, 43.089138, 24.492607>,  <34.106026, 43.308914, 24.779671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277176, 43.089138, 24.492607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121217, -0.751957, 0.647971,
		-0.895674, -0.364241, -0.255140,
		0.427872, -0.549444, -0.717660,
		34.405537, 42.924305, 24.277309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816151, 42.692497, 24.872707>,  <34.106026, 43.308914, 24.779671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816151, 42.692497, 24.872707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127079, 42.595840, 24.640371>,  <34.313637, 42.537846, 24.500971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127079, 42.595840, 24.640371>,  <33.816151, 42.692497, 24.872707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127079, 42.595840, 24.640371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254061, -0.724064, 0.641237,
		-0.575515, -0.646018, -0.501442,
		0.777326, -0.241645, -0.580837,
		34.360275, 42.523346, 24.466120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664017, 42.018185, 24.792795>,  <33.816151, 42.692497, 24.872707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664017, 42.018185, 24.792795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047932, 42.095875, 24.711712>,  <34.278278, 42.142487, 24.663061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047932, 42.095875, 24.711712>,  <33.664017, 42.018185, 24.792795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047932, 42.095875, 24.711712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279195, -0.735942, 0.616798,
		-0.029386, -0.648589, -0.760572,
		0.959785, 0.194223, -0.202709,
		34.335869, 42.154140, 24.650900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941944, 41.446472, 24.701200>,  <33.664017, 42.018185, 24.792795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941944, 41.446472, 24.701200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268154, 41.659138, 24.792631>,  <34.463882, 41.786736, 24.847490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268154, 41.659138, 24.792631>,  <33.941944, 41.446472, 24.701200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268154, 41.659138, 24.792631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172167, -0.599980, 0.781270,
		0.552514, -0.597795, -0.580836,
		0.815529, 0.531663, 0.228576,
		34.512814, 41.818638, 24.861204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432426, 40.929699, 24.977629>,  <33.941944, 41.446472, 24.701200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432426, 40.929699, 24.977629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560524, 41.271133, 25.141991>,  <34.637383, 41.475994, 25.240608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560524, 41.271133, 25.141991>,  <34.432426, 40.929699, 24.977629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560524, 41.271133, 25.141991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187766, -0.482334, 0.855627,
		0.928542, -0.196851, -0.314736,
		0.320239, 0.853583, 0.410906,
		34.656597, 41.527206, 25.265263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990959, 40.714901, 25.276173>,  <34.432426, 40.929699, 24.977629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990959, 40.714901, 25.276173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929428, 41.076591, 25.435530>,  <34.892509, 41.293606, 25.531145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929428, 41.076591, 25.435530>,  <34.990959, 40.714901, 25.276173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929428, 41.076591, 25.435530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326688, -0.333977, 0.884157,
		0.932530, 0.266156, -0.244025,
		-0.153825, 0.904224, 0.398394,
		34.883282, 41.347858, 25.555048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517792, 40.901833, 25.766539>,  <34.990959, 40.714901, 25.276173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517792, 40.901833, 25.766539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205643, 41.132648, 25.862904>,  <35.018353, 41.271137, 25.920723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205643, 41.132648, 25.862904>,  <35.517792, 40.901833, 25.766539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205643, 41.132648, 25.862904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147141, -0.204995, 0.967640,
		0.607756, 0.790568, 0.075067,
		-0.780374, 0.577043, 0.240912,
		34.971531, 41.305763, 25.935177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846737, 41.380619, 26.102905>,  <35.517792, 40.901833, 25.766539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846737, 41.380619, 26.102905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460644, 41.359104, 26.205225>,  <35.228989, 41.346195, 26.266617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460644, 41.359104, 26.205225>,  <35.846737, 41.380619, 26.102905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460644, 41.359104, 26.205225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258180, -0.349159, 0.900795,
		0.040866, 0.935519, 0.350906,
		-0.965232, -0.053785, 0.255801,
		35.171074, 41.342968, 26.281965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812946, 41.734406, 26.717537>,  <35.846737, 41.380619, 26.102905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812946, 41.734406, 26.717537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504147, 41.481289, 26.693541>,  <35.318867, 41.329418, 26.679142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504147, 41.481289, 26.693541>,  <35.812946, 41.734406, 26.717537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504147, 41.481289, 26.693541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173284, -0.300330, 0.937963,
		-0.611551, 0.713708, 0.341506,
		-0.771996, -0.632790, -0.059993,
		35.272549, 41.291451, 26.675543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509602, 41.809254, 27.341640>,  <35.812946, 41.734406, 26.717537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509602, 41.809254, 27.341640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375877, 41.463436, 27.191544>,  <35.295643, 41.255947, 27.101484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375877, 41.463436, 27.191544>,  <35.509602, 41.809254, 27.341640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375877, 41.463436, 27.191544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039961, -0.410798, 0.910851,
		-0.941615, 0.289512, 0.171881,
		-0.334311, -0.864539, -0.375244,
		35.275585, 41.204075, 27.078970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008396, 41.708702, 27.794256>,  <35.509602, 41.809254, 27.341640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008396, 41.708702, 27.794256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090050, 41.364651, 27.607277>,  <35.139042, 41.158218, 27.495090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090050, 41.364651, 27.607277>,  <35.008396, 41.708702, 27.794256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090050, 41.364651, 27.607277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303520, -0.398360, 0.865555,
		-0.930701, -0.318570, 0.179748,
		0.204135, -0.860129, -0.467446,
		35.151291, 41.106613, 27.467043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658405, 41.213871, 28.175257>,  <35.008396, 41.708702, 27.794256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658405, 41.213871, 28.175257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933498, 40.997078, 27.982061>,  <35.098553, 40.867001, 27.866144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933498, 40.997078, 27.982061>,  <34.658405, 41.213871, 28.175257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933498, 40.997078, 27.982061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132083, -0.560787, 0.817357,
		-0.713847, -0.625917, -0.314085,
		0.687733, -0.541983, -0.482989,
		35.139820, 40.834484, 27.837164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472729, 40.501060, 28.303638>,  <34.658405, 41.213871, 28.175257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472729, 40.501060, 28.303638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860031, 40.515610, 28.204714>,  <35.092411, 40.524338, 28.145359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860031, 40.515610, 28.204714>,  <34.472729, 40.501060, 28.303638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860031, 40.515610, 28.204714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216758, -0.614958, 0.758184,
		-0.124510, -0.787721, -0.603319,
		0.968252, 0.036373, -0.247313,
		35.150505, 40.526520, 28.130520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680313, 39.725868, 28.228630>,  <34.472729, 40.501060, 28.303638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680313, 39.725868, 28.228630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009731, 39.947716, 28.276253>,  <35.207382, 40.080822, 28.304827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009731, 39.947716, 28.276253>,  <34.680313, 39.725868, 28.228630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009731, 39.947716, 28.276253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389611, -0.705589, 0.591901,
		0.412282, -0.441072, -0.797169,
		0.823545, 0.554616, 0.119055,
		35.256794, 40.114101, 28.311970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204624, 39.322376, 28.241535>,  <34.680313, 39.725868, 28.228630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204624, 39.322376, 28.241535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362896, 39.628906, 28.443993>,  <35.457859, 39.812824, 28.565466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362896, 39.628906, 28.443993>,  <35.204624, 39.322376, 28.241535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362896, 39.628906, 28.443993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315633, -0.631021, 0.708653,
		0.862445, -0.120646, -0.491561,
		0.395681, 0.766327, 0.506141,
		35.481602, 39.858803, 28.595835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768223, 39.037590, 28.569901>,  <35.204624, 39.322376, 28.241535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768223, 39.037590, 28.569901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739086, 39.378563, 28.776997>,  <35.721603, 39.583145, 28.901255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739086, 39.378563, 28.776997>,  <35.768223, 39.037590, 28.569901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739086, 39.378563, 28.776997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267559, -0.483388, 0.833515,
		0.960784, 0.199239, -0.192866,
		-0.072839, 0.852432, 0.517740,
		35.717236, 39.634293, 28.932318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381153, 39.098957, 28.985426>,  <35.768223, 39.037590, 28.569901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381153, 39.098957, 28.985426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122662, 39.334267, 29.179878>,  <35.967567, 39.475452, 29.296549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122662, 39.334267, 29.179878>,  <36.381153, 39.098957, 28.985426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122662, 39.334267, 29.179878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393247, -0.289229, 0.872756,
		0.654023, 0.755169, -0.044429,
		-0.646228, 0.588274, 0.486131,
		35.928795, 39.510750, 29.325718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658878, 39.217075, 29.623970>,  <36.381153, 39.098957, 28.985426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658878, 39.217075, 29.623970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295368, 39.372017, 29.686052>,  <36.077263, 39.464981, 29.723301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295368, 39.372017, 29.686052>,  <36.658878, 39.217075, 29.623970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295368, 39.372017, 29.686052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117032, -0.120424, 0.985800,
		0.400540, 0.914034, 0.064106,
		-0.908775, 0.387350, 0.155206,
		36.022736, 39.488220, 29.732615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688019, 39.763371, 29.985476>,  <36.658878, 39.217075, 29.623970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688019, 39.763371, 29.985476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329502, 39.595245, 30.042046>,  <36.114391, 39.494370, 30.075987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329502, 39.595245, 30.042046>,  <36.688019, 39.763371, 29.985476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329502, 39.595245, 30.042046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211902, -0.125765, 0.969165,
		-0.389566, 0.898622, 0.201787,
		-0.896290, -0.420313, 0.141426,
		36.060616, 39.469151, 30.084473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543190, 39.890015, 30.644541>,  <36.688019, 39.763371, 29.985476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543190, 39.890015, 30.644541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253338, 39.628685, 30.556837>,  <36.079426, 39.471886, 30.504215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253338, 39.628685, 30.556837>,  <36.543190, 39.890015, 30.644541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253338, 39.628685, 30.556837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010938, -0.329029, 0.944256,
		-0.689049, 0.681840, 0.245571,
		-0.724632, -0.653325, -0.219259,
		36.035950, 39.432686, 30.491058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052109, 39.864697, 31.257223>,  <36.543190, 39.890015, 30.644541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052109, 39.864697, 31.257223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008575, 39.524593, 31.051226>,  <35.982456, 39.320534, 30.927628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008575, 39.524593, 31.051226>,  <36.052109, 39.864697, 31.257223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008575, 39.524593, 31.051226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193821, -0.526281, 0.827926,
		-0.974981, -0.009709, 0.222076,
		-0.108836, -0.850255, -0.514996,
		35.975925, 39.269516, 30.896727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425938, 39.457874, 31.545889>,  <36.052109, 39.864697, 31.257223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425938, 39.457874, 31.545889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669182, 39.205685, 31.352932>,  <35.815128, 39.054371, 31.237158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669182, 39.205685, 31.352932>,  <35.425938, 39.457874, 31.545889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669182, 39.205685, 31.352932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029603, -0.625247, 0.779866,
		-0.793303, -0.459961, -0.398880,
		0.608106, -0.630478, -0.482394,
		35.851612, 39.016541, 31.208214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145695, 38.751682, 31.659117>,  <35.425938, 39.457874, 31.545889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145695, 38.751682, 31.659117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527145, 38.691956, 31.554583>,  <35.756016, 38.656120, 31.491861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527145, 38.691956, 31.554583>,  <35.145695, 38.751682, 31.659117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527145, 38.691956, 31.554583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135411, -0.562597, 0.815566,
		-0.268802, -0.813136, -0.516290,
		0.953630, -0.149315, -0.261335,
		35.813232, 38.647160, 31.476183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268772, 38.188728, 31.980841>,  <35.145695, 38.751682, 31.659117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268772, 38.188728, 31.980841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643574, 38.278805, 31.874029>,  <35.868454, 38.332851, 31.809942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643574, 38.278805, 31.874029>,  <35.268772, 38.188728, 31.980841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643574, 38.278805, 31.874029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347985, -0.668299, 0.657482,
		-0.030397, -0.708988, -0.704565,
		0.937007, 0.225193, -0.267031,
		35.924675, 38.346363, 31.793921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621780, 37.531094, 32.014233>,  <35.268772, 38.188728, 31.980841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621780, 37.531094, 32.014233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865875, 37.844868, 32.058529>,  <36.012333, 38.033134, 32.085106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865875, 37.844868, 32.058529>,  <35.621780, 37.531094, 32.014233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865875, 37.844868, 32.058529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330403, -0.379054, 0.864379,
		0.720028, -0.490891, -0.490495,
		0.610240, 0.784438, 0.110737,
		36.048946, 38.080200, 32.091751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258411, 37.230881, 32.153103>,  <35.621780, 37.531094, 32.014233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258411, 37.230881, 32.153103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.273296, 37.609463, 32.281376>,  <36.282227, 37.836613, 32.358341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.273296, 37.609463, 32.281376>,  <36.258411, 37.230881, 32.153103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273296, 37.609463, 32.281376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313102, -0.315794, 0.895679,
		0.948990, 0.067074, -0.308090,
		0.037216, 0.946454, 0.320687,
		36.284462, 37.893398, 32.377583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946632, 37.356400, 32.323147>,  <36.258411, 37.230881, 32.153103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946632, 37.356400, 32.323147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708447, 37.602913, 32.529301>,  <36.565536, 37.750820, 32.652992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708447, 37.602913, 32.529301>,  <36.946632, 37.356400, 32.323147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708447, 37.602913, 32.529301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258090, -0.460766, 0.849167,
		0.760796, 0.638665, 0.115314,
		-0.595466, 0.616281, 0.515382,
		36.529808, 37.787796, 32.683914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401821, 37.596077, 32.811642>,  <36.946632, 37.356400, 32.323147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401821, 37.596077, 32.811642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030453, 37.635281, 32.954987>,  <36.807632, 37.658802, 33.040993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030453, 37.635281, 32.954987>,  <37.401821, 37.596077, 32.811642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030453, 37.635281, 32.954987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282588, -0.439908, 0.852423,
		0.241194, 0.892678, 0.380724,
		-0.928423, 0.098012, 0.358363,
		36.751926, 37.664684, 33.062496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770763, 37.417603, 32.190384>,  <37.401821, 37.596077, 32.811642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770763, 37.417603, 32.190384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059044, 37.161411, 32.084270>,  <38.232010, 37.007694, 32.020603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059044, 37.161411, 32.084270>,  <37.770763, 37.417603, 32.190384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059044, 37.161411, 32.084270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078730, 0.304574, -0.949229,
		0.688763, 0.704995, 0.169081,
		0.720699, -0.640482, -0.265284,
		38.275253, 36.969265, 32.004684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294178, 37.786942, 31.886053>,  <37.770763, 37.417603, 32.190384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294178, 37.786942, 31.886053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366043, 37.415455, 31.756313>,  <38.409161, 37.192562, 31.678469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366043, 37.415455, 31.756313>,  <38.294178, 37.786942, 31.886053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366043, 37.415455, 31.756313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077162, 0.342003, -0.936525,
		0.980698, 0.143230, 0.133106,
		0.179661, -0.928719, -0.324350,
		38.419941, 37.136841, 31.659008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748631, 37.898125, 31.432909>,  <38.294178, 37.786942, 31.886053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748631, 37.898125, 31.432909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614891, 37.539528, 31.316624>,  <38.534649, 37.324371, 31.246853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614891, 37.539528, 31.316624>,  <38.748631, 37.898125, 31.432909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614891, 37.539528, 31.316624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013551, 0.303862, -0.952620,
		0.942353, -0.322443, -0.089447,
		-0.334345, -0.896492, -0.290714,
		38.514587, 37.270580, 31.229410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132771, 37.719498, 30.851706>,  <38.748631, 37.898125, 31.432909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132771, 37.719498, 30.851706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794609, 37.507168, 30.827978>,  <38.591713, 37.379772, 30.813742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794609, 37.507168, 30.827978>,  <39.132771, 37.719498, 30.851706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794609, 37.507168, 30.827978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078193, 0.232861, -0.969361,
		0.528372, -0.814864, -0.238368,
		-0.845405, -0.530822, -0.059320,
		38.540989, 37.347919, 30.810183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256893, 37.372730, 30.278835>,  <39.132771, 37.719498, 30.851706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256893, 37.372730, 30.278835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866821, 37.391499, 30.365383>,  <38.632778, 37.402760, 30.417311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866821, 37.391499, 30.365383>,  <39.256893, 37.372730, 30.278835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866821, 37.391499, 30.365383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199743, 0.235073, -0.951233,
		-0.095497, -0.970844, -0.219867,
		-0.975184, 0.046923, 0.216368,
		38.574265, 37.405575, 30.430294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784664, 36.919624, 29.774162>,  <39.256893, 37.372730, 30.278835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784664, 36.919624, 29.774162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521271, 37.194279, 29.897408>,  <38.363235, 37.359070, 29.971355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521271, 37.194279, 29.897408>,  <38.784664, 36.919624, 29.774162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521271, 37.194279, 29.897408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178784, 0.254964, -0.950279,
		-0.731049, -0.680830, -0.045131,
		-0.658485, 0.686632, 0.308113,
		38.323727, 37.400269, 29.989841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343452, 36.885098, 29.307838>,  <38.784664, 36.919624, 29.774162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343452, 36.885098, 29.307838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244160, 37.234776, 29.474771>,  <38.184586, 37.444584, 29.574932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244160, 37.234776, 29.474771>,  <38.343452, 36.885098, 29.307838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244160, 37.234776, 29.474771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186830, 0.379523, -0.906121,
		-0.950514, -0.302896, 0.069117,
		-0.248229, 0.874194, 0.417332,
		38.169689, 37.497032, 29.599972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665131, 37.101357, 28.979156>,  <38.343452, 36.885098, 29.307838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665131, 37.101357, 28.979156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817577, 37.436180, 29.136168>,  <37.909046, 37.637074, 29.230375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817577, 37.436180, 29.136168>,  <37.665131, 37.101357, 28.979156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817577, 37.436180, 29.136168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227260, 0.496366, -0.837839,
		-0.896160, 0.230109, 0.379404,
		0.381117, 0.837061, 0.392529,
		37.931911, 37.687298, 29.253925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263176, 37.577141, 28.712347>,  <37.665131, 37.101357, 28.979156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263176, 37.577141, 28.712347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582550, 37.776714, 28.847145>,  <37.774174, 37.896458, 28.928024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582550, 37.776714, 28.847145>,  <37.263176, 37.577141, 28.712347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582550, 37.776714, 28.847145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017778, 0.579010, -0.815127,
		-0.601822, 0.644832, 0.471170,
		0.798432, 0.498938, 0.336997,
		37.822079, 37.926395, 28.948244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060871, 38.249592, 28.710234>,  <37.263176, 37.577141, 28.712347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060871, 38.249592, 28.710234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458282, 38.235439, 28.667046>,  <37.696728, 38.226948, 28.641132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458282, 38.235439, 28.667046>,  <37.060871, 38.249592, 28.710234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458282, 38.235439, 28.667046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064805, 0.604063, -0.794297,
		0.093324, 0.796150, 0.597859,
		0.993525, -0.035383, -0.107968,
		37.756340, 38.224823, 28.634655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236389, 39.009304, 28.654657>,  <37.060871, 38.249592, 28.710234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236389, 39.009304, 28.654657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557365, 38.815861, 28.514822>,  <37.749950, 38.699795, 28.430922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557365, 38.815861, 28.514822>,  <37.236389, 39.009304, 28.654657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557365, 38.815861, 28.514822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020943, 0.562654, -0.826427,
		0.596362, 0.670481, 0.441369,
		0.802442, -0.483606, -0.349588,
		37.798100, 38.670780, 28.409946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761002, 39.503124, 28.435385>,  <37.236389, 39.009304, 28.654657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761002, 39.503124, 28.435385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854916, 39.174664, 28.227314>,  <37.911266, 38.977589, 28.102472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854916, 39.174664, 28.227314>,  <37.761002, 39.503124, 28.435385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854916, 39.174664, 28.227314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092339, 0.551557, -0.829010,
		0.967651, 0.146610, 0.205324,
		0.234789, -0.821152, -0.520177,
		37.925354, 38.928318, 28.071260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355854, 39.685764, 28.167135>,  <37.761002, 39.503124, 28.435385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355854, 39.685764, 28.167135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215717, 39.382999, 27.946466>,  <38.131638, 39.201340, 27.814066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215717, 39.382999, 27.946466>,  <38.355854, 39.685764, 28.167135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215717, 39.382999, 27.946466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187493, 0.520403, -0.833083,
		0.917665, -0.395296, -0.040401,
		-0.350340, -0.756915, -0.551671,
		38.110615, 39.155926, 27.780966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911674, 39.631783, 27.604404>,  <38.355854, 39.685764, 28.167135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911674, 39.631783, 27.604404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562790, 39.467514, 27.498127>,  <38.353458, 39.368954, 27.434361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562790, 39.467514, 27.498127>,  <38.911674, 39.631783, 27.604404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562790, 39.467514, 27.498127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069186, 0.434160, -0.898175,
		0.484211, -0.801781, -0.350267,
		-0.872212, -0.410673, -0.265697,
		38.301125, 39.344315, 27.418419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892723, 39.701748, 26.899860>,  <38.911674, 39.631783, 27.604404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892723, 39.701748, 26.899860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516151, 39.600895, 26.989429>,  <38.290211, 39.540382, 27.043171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516151, 39.600895, 26.989429>,  <38.892723, 39.701748, 26.899860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516151, 39.600895, 26.989429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319356, 0.453381, -0.832140,
		0.108290, -0.854911, -0.507347,
		-0.941427, -0.252137, 0.223924,
		38.233723, 39.525253, 27.056606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692791, 39.411537, 26.283133>,  <38.892723, 39.701748, 26.899860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692791, 39.411537, 26.283133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362736, 39.528484, 26.476492>,  <38.164703, 39.598652, 26.592506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362736, 39.528484, 26.476492>,  <38.692791, 39.411537, 26.283133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362736, 39.528484, 26.476492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415078, 0.266693, -0.869819,
		-0.383227, -0.918366, -0.098701,
		-0.825135, 0.292369, 0.483397,
		38.115196, 39.616196, 26.621511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199738, 39.223591, 25.840612>,  <38.692791, 39.411537, 26.283133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199738, 39.223591, 25.840612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043663, 39.497658, 26.086639>,  <37.950020, 39.662098, 26.234257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043663, 39.497658, 26.086639>,  <38.199738, 39.223591, 25.840612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043663, 39.497658, 26.086639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407655, 0.470422, -0.782637,
		-0.825576, -0.556107, 0.095760,
		-0.390182, 0.685163, 0.615069,
		37.926609, 39.703205, 26.271160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511009, 39.338593, 25.535402>,  <38.199738, 39.223591, 25.840612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511009, 39.338593, 25.535402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557686, 39.655148, 25.775431>,  <37.585693, 39.845081, 25.919449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557686, 39.655148, 25.775431>,  <37.511009, 39.338593, 25.535402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557686, 39.655148, 25.775431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373469, 0.594821, -0.711834,
		-0.920273, -0.141042, 0.364971,
		0.116694, 0.791388, 0.600073,
		37.592693, 39.892563, 25.955452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835194, 39.654461, 25.564363>,  <37.511009, 39.338593, 25.535402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835194, 39.654461, 25.564363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099792, 39.936447, 25.666697>,  <37.258553, 40.105640, 25.728096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099792, 39.936447, 25.666697>,  <36.835194, 39.654461, 25.564363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099792, 39.936447, 25.666697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271312, 0.542984, -0.794707,
		-0.699154, 0.456283, 0.550446,
		0.661494, 0.704964, 0.255834,
		37.298241, 40.147938, 25.743446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487019, 40.265915, 25.276026>,  <36.835194, 39.654461, 25.564363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487019, 40.265915, 25.276026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.861282, 40.393200, 25.337067>,  <37.085838, 40.469570, 25.373692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.861282, 40.393200, 25.337067>,  <36.487019, 40.265915, 25.276026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861282, 40.393200, 25.337067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076105, 0.604172, -0.793211,
		-0.344605, 0.730560, 0.589516,
		0.935658, 0.318210, 0.152601,
		37.141979, 40.488663, 25.382847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454613, 40.931778, 25.211594>,  <36.487019, 40.265915, 25.276026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454613, 40.931778, 25.211594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843136, 40.857754, 25.151833>,  <37.076248, 40.813339, 25.115976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843136, 40.857754, 25.151833>,  <36.454613, 40.931778, 25.211594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843136, 40.857754, 25.151833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010676, 0.593605, -0.804686,
		0.237598, 0.783190, 0.574596,
		0.971305, -0.185058, -0.149401,
		37.134529, 40.802235, 25.107012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807823, 41.628208, 25.190937>,  <36.454613, 40.931778, 25.211594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807823, 41.628208, 25.190937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036224, 41.366844, 24.992136>,  <37.173264, 41.210026, 24.872856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036224, 41.366844, 24.992136>,  <36.807823, 41.628208, 25.190937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036224, 41.366844, 24.992136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013292, 0.612677, -0.790222,
		0.820841, 0.444611, 0.358525,
		0.571001, -0.653412, -0.497001,
		37.207523, 41.170822, 24.843037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307217, 42.050632, 24.823801>,  <36.807823, 41.628208, 25.190937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307217, 42.050632, 24.823801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294724, 41.696087, 24.639025>,  <37.287228, 41.483360, 24.528160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294724, 41.696087, 24.639025>,  <37.307217, 42.050632, 24.823801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294724, 41.696087, 24.639025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027508, 0.462753, -0.886061,
		0.999133, -0.014970, -0.038836,
		-0.031236, -0.886361, -0.461940,
		37.285355, 41.430180, 24.500443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793938, 42.081924, 24.311203>,  <37.307217, 42.050632, 24.823801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793938, 42.081924, 24.311203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544662, 41.787655, 24.205053>,  <37.395100, 41.611092, 24.141363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544662, 41.787655, 24.205053>,  <37.793938, 42.081924, 24.311203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544662, 41.787655, 24.205053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126876, 0.429927, -0.893904,
		0.771714, -0.523399, -0.361264,
		-0.623185, -0.735674, -0.265374,
		37.357708, 41.566952, 24.125441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910534, 42.075504, 23.648603>,  <37.793938, 42.081924, 24.311203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910534, 42.075504, 23.648603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566467, 41.876068, 23.691542>,  <37.360027, 41.756409, 23.717304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566467, 41.876068, 23.691542>,  <37.910534, 42.075504, 23.648603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566467, 41.876068, 23.691542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238738, 0.207636, -0.948626,
		0.450684, -0.841605, -0.297633,
		-0.860168, -0.498587, 0.107345,
		37.308418, 41.726494, 23.723745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766579, 42.018555, 22.964478>,  <37.910534, 42.075504, 23.648603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766579, 42.018555, 22.964478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436882, 41.892017, 23.152330>,  <37.239063, 41.816093, 23.265041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436882, 41.892017, 23.152330>,  <37.766579, 42.018555, 22.964478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436882, 41.892017, 23.152330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561669, 0.351606, -0.748933,
		0.071793, -0.881080, -0.467487,
		-0.824241, -0.316342, 0.469632,
		37.189610, 41.797115, 23.293221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476093, 41.502945, 22.575623>,  <37.766579, 42.018555, 22.964478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476093, 41.502945, 22.575623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187878, 41.661434, 22.803249>,  <37.014950, 41.756527, 22.939825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187878, 41.661434, 22.803249>,  <37.476093, 41.502945, 22.575623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187878, 41.661434, 22.803249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563440, 0.143814, -0.813544,
		-0.404182, -0.906823, 0.119623,
		-0.720536, 0.396220, 0.569067,
		36.971718, 41.780300, 22.973970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834488, 41.287037, 22.376223>,  <37.476093, 41.502945, 22.575623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834488, 41.287037, 22.376223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711365, 41.598774, 22.594536>,  <36.637489, 41.785816, 22.725523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711365, 41.598774, 22.594536>,  <36.834488, 41.287037, 22.376223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711365, 41.598774, 22.594536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676038, 0.224495, -0.701836,
		-0.669497, -0.584999, 0.457765,
		-0.307808, 0.779344, 0.545781,
		36.619022, 41.832577, 22.758270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049202, 41.309120, 22.262060>,  <36.834488, 41.287037, 22.376223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049202, 41.309120, 22.262060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171860, 41.681606, 22.340858>,  <36.245453, 41.905098, 22.388138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171860, 41.681606, 22.340858>,  <36.049202, 41.309120, 22.262060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171860, 41.681606, 22.340858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586609, 0.347881, -0.731348,
		-0.749573, 0.108704, 0.652935,
		0.306644, 0.931216, 0.196996,
		36.263851, 41.960972, 22.399958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487091, 41.692139, 22.439743>,  <36.049202, 41.309120, 22.262060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487091, 41.692139, 22.439743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752499, 41.950489, 22.288698>,  <35.911743, 42.105499, 22.198071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752499, 41.950489, 22.288698>,  <35.487091, 41.692139, 22.439743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752499, 41.950489, 22.288698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635941, 0.221007, -0.739416,
		-0.394116, 0.730753, 0.557381,
		0.663515, 0.645877, -0.377613,
		35.951553, 42.144253, 22.175415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051056, 42.252579, 22.179598>,  <35.487091, 41.692139, 22.439743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051056, 42.252579, 22.179598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403614, 42.367809, 22.029846>,  <35.615147, 42.436947, 21.939995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403614, 42.367809, 22.029846>,  <35.051056, 42.252579, 22.179598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403614, 42.367809, 22.029846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461921, 0.359720, -0.810698,
		-0.098872, 0.887476, 0.450124,
		0.881393, 0.288077, -0.374377,
		35.668034, 42.454231, 21.917534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908791, 42.848835, 21.907248>,  <35.051056, 42.252579, 22.179598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908791, 42.848835, 21.907248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249344, 42.767540, 21.713818>,  <35.453674, 42.718765, 21.597759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249344, 42.767540, 21.713818>,  <34.908791, 42.848835, 21.907248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249344, 42.767540, 21.713818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418225, 0.293430, -0.859643,
		0.316604, 0.934128, 0.164824,
		0.851381, -0.203233, -0.483577,
		35.504757, 42.706570, 21.568745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810688, 43.396317, 21.520765>,  <34.908791, 42.848835, 21.907248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810688, 43.396317, 21.520765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034691, 43.102978, 21.366573>,  <35.169090, 42.926975, 21.274057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034691, 43.102978, 21.366573>,  <34.810688, 43.396317, 21.520765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034691, 43.102978, 21.366573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548697, 0.020322, -0.835774,
		0.620748, 0.679549, -0.391006,
		0.560004, -0.733348, -0.385481,
		35.202690, 42.882973, 21.250929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975166, 43.658825, 20.883698>,  <34.810688, 43.396317, 21.520765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975166, 43.658825, 20.883698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005936, 43.260227, 20.870510>,  <35.024399, 43.021069, 20.862598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005936, 43.260227, 20.870510>,  <34.975166, 43.658825, 20.883698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005936, 43.260227, 20.870510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633538, -0.023321, -0.773360,
		0.769878, 0.080379, -0.633109,
		0.076927, -0.996491, -0.032969,
		35.029015, 42.961281, 20.860619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918480, 43.550407, 20.213274>,  <34.975166, 43.658825, 20.883698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918480, 43.550407, 20.213274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854488, 43.180096, 20.350296>,  <34.816093, 42.957909, 20.432510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854488, 43.180096, 20.350296>,  <34.918480, 43.550407, 20.213274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854488, 43.180096, 20.350296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655857, -0.159669, -0.737806,
		0.737739, -0.342700, -0.581634,
		-0.159977, -0.925777, 0.342556,
		34.806496, 42.902363, 20.453062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964924, 43.061367, 19.585072>,  <34.918480, 43.550407, 20.213274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964924, 43.061367, 19.585072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757160, 42.871956, 19.869604>,  <34.632504, 42.758308, 20.040323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757160, 42.871956, 19.869604>,  <34.964924, 43.061367, 19.585072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757160, 42.871956, 19.869604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669135, -0.292361, -0.683216,
		0.531486, -0.830841, -0.164999,
		-0.519405, -0.473527, 0.711331,
		34.601337, 42.729897, 20.083004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865639, 42.443130, 19.198523>,  <34.964924, 43.061367, 19.585072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865639, 42.443130, 19.198523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593796, 42.485622, 19.488859>,  <34.430691, 42.511120, 19.663061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593796, 42.485622, 19.488859>,  <34.865639, 42.443130, 19.198523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593796, 42.485622, 19.488859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729335, -0.204065, -0.653015,
		0.078749, -0.973177, 0.216161,
		-0.679610, 0.106230, 0.725842,
		34.389912, 42.517490, 19.706612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091274, 42.281490, 19.137281>,  <34.865639, 42.443130, 19.198523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091274, 42.281490, 19.137281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105770, 42.054634, 18.808153>,  <34.114468, 41.918518, 18.610676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105770, 42.054634, 18.808153>,  <34.091274, 42.281490, 19.137281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105770, 42.054634, 18.808153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648721, -0.612949, 0.451059,
		-0.760163, -0.550127, 0.345705,
		0.036241, -0.567145, -0.822821,
		34.116642, 41.884491, 18.561306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051296, 41.601025, 19.373573>,  <34.091274, 42.281490, 19.137281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051296, 41.601025, 19.373573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220684, 41.580357, 19.011799>,  <34.322315, 41.567955, 18.794735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220684, 41.580357, 19.011799>,  <34.051296, 41.601025, 19.373573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220684, 41.580357, 19.011799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635685, -0.694356, 0.337304,
		-0.645428, -0.717774, -0.261196,
		0.423471, -0.051667, -0.904435,
		34.347725, 41.564857, 18.740469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051689, 40.857834, 19.229839>,  <34.051296, 41.601025, 19.373573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051689, 40.857834, 19.229839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311592, 41.051418, 18.995369>,  <34.467533, 41.167568, 18.854687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311592, 41.051418, 18.995369>,  <34.051689, 40.857834, 19.229839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311592, 41.051418, 18.995369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713692, -0.653837, 0.251279,
		-0.261656, -0.581620, -0.770230,
		0.649754, 0.483959, -0.586178,
		34.506519, 41.196606, 18.819515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420509, 40.430439, 18.860392>,  <34.051689, 40.857834, 19.229839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420509, 40.430439, 18.860392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672981, 40.740696, 18.860559>,  <34.824463, 40.926849, 18.860661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672981, 40.740696, 18.860559>,  <34.420509, 40.430439, 18.860392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672981, 40.740696, 18.860559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696628, -0.567118, 0.439417,
		0.341068, -0.277057, -0.898283,
		0.631176, 0.775640, 0.000420,
		34.862335, 40.973389, 18.860685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030792, 40.175114, 18.617025>,  <34.420509, 40.430439, 18.860392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030792, 40.175114, 18.617025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141418, 40.514797, 18.796963>,  <35.207794, 40.718605, 18.904924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141418, 40.514797, 18.796963>,  <35.030792, 40.175114, 18.617025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141418, 40.514797, 18.796963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787524, -0.468548, 0.400334,
		0.550740, 0.243542, -0.798356,
		0.276570, 0.849205, 0.449844,
		35.224388, 40.769558, 18.931915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797943, 40.196514, 18.553001>,  <35.030792, 40.175114, 18.617025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797943, 40.196514, 18.553001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717117, 40.468437, 18.835003>,  <35.668621, 40.631592, 19.004204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717117, 40.468437, 18.835003>,  <35.797943, 40.196514, 18.553001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717117, 40.468437, 18.835003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706214, -0.397605, 0.585808,
		0.678552, 0.616252, -0.399752,
		-0.202062, 0.679812, 0.705001,
		35.656498, 40.672382, 19.046503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420937, 40.420746, 18.819653>,  <35.797943, 40.196514, 18.553001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420937, 40.420746, 18.819653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153740, 40.504776, 19.105213>,  <35.993423, 40.555195, 19.276550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153740, 40.504776, 19.105213>,  <36.420937, 40.420746, 18.819653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153740, 40.504776, 19.105213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627873, -0.355848, 0.692205,
		0.399455, 0.910627, 0.105803,
		-0.667990, 0.210073, 0.713904,
		35.953342, 40.567799, 19.319384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863853, 40.366760, 19.393091>,  <36.420937, 40.420746, 18.819653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863853, 40.366760, 19.393091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520668, 40.376022, 19.598370>,  <36.314758, 40.381580, 19.721537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520668, 40.376022, 19.598370>,  <36.863853, 40.366760, 19.393091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520668, 40.376022, 19.598370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494768, -0.231581, 0.837601,
		0.138239, 0.972540, 0.187231,
		-0.857959, 0.023153, 0.513196,
		36.263279, 40.382969, 19.752329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010002, 40.664310, 19.987619>,  <36.863853, 40.366760, 19.393091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010002, 40.664310, 19.987619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665550, 40.481304, 20.076286>,  <36.458878, 40.371502, 20.129486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665550, 40.481304, 20.076286>,  <37.010002, 40.664310, 19.987619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665550, 40.481304, 20.076286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436123, -0.440739, 0.784567,
		-0.261255, 0.772287, 0.579067,
		-0.861129, -0.457516, 0.221667,
		36.407211, 40.344048, 20.142786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804085, 40.782974, 20.639246>,  <37.010002, 40.664310, 19.987619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804085, 40.782974, 20.639246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608673, 40.446026, 20.548248>,  <36.491425, 40.243858, 20.493649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608673, 40.446026, 20.548248>,  <36.804085, 40.782974, 20.639246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608673, 40.446026, 20.548248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246450, -0.383321, 0.890128,
		-0.837020, 0.378786, 0.394865,
		-0.488528, -0.842369, -0.227496,
		36.462116, 40.193314, 20.480000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430588, 40.618237, 21.223558>,  <36.804085, 40.782974, 20.639246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430588, 40.618237, 21.223558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465076, 40.276440, 21.018654>,  <36.485767, 40.071362, 20.895712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465076, 40.276440, 21.018654>,  <36.430588, 40.618237, 21.223558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465076, 40.276440, 21.018654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214949, -0.486112, 0.847049,
		-0.972812, -0.183140, 0.141761,
		0.086217, -0.854491, -0.512261,
		36.490940, 40.020092, 20.864975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109303, 40.129005, 21.573921>,  <36.430588, 40.618237, 21.223558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109303, 40.129005, 21.573921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333294, 39.891479, 21.342819>,  <36.467690, 39.748962, 21.204159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333294, 39.891479, 21.342819>,  <36.109303, 40.129005, 21.573921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333294, 39.891479, 21.342819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158512, -0.607677, 0.778205,
		-0.813200, -0.527363, -0.246161,
		0.559983, -0.593817, -0.577756,
		36.501289, 39.713333, 21.169493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944481, 39.535656, 21.770554>,  <36.109303, 40.129005, 21.573921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944481, 39.535656, 21.770554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281445, 39.445263, 21.574888>,  <36.483624, 39.391026, 21.457489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281445, 39.445263, 21.574888>,  <35.944481, 39.535656, 21.770554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281445, 39.445263, 21.574888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297418, -0.561992, 0.771821,
		-0.449327, -0.795673, -0.406213,
		0.842405, -0.225985, -0.489166,
		36.534168, 39.377468, 21.428139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100742, 38.842697, 21.951036>,  <35.944481, 39.535656, 21.770554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100742, 38.842697, 21.951036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.442039, 39.016781, 21.836096>,  <36.646816, 39.121231, 21.767132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.442039, 39.016781, 21.836096>,  <36.100742, 38.842697, 21.951036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442039, 39.016781, 21.836096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505789, -0.556298, 0.659326,
		0.127091, -0.707904, -0.694780,
		0.853244, 0.435207, -0.287349,
		36.698013, 39.147343, 21.749891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492565, 38.284336, 22.171421>,  <36.100742, 38.842697, 21.951036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492565, 38.284336, 22.171421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687683, 38.627522, 22.106979>,  <36.804752, 38.833431, 22.068314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687683, 38.627522, 22.106979>,  <36.492565, 38.284336, 22.171421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687683, 38.627522, 22.106979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675012, -0.253680, 0.692824,
		0.553549, -0.446703, -0.702879,
		0.487793, 0.857964, -0.161106,
		36.834023, 38.884911, 22.058647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134872, 38.125626, 22.102634>,  <36.492565, 38.284336, 22.171421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134872, 38.125626, 22.102634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212368, 38.504253, 22.205769>,  <37.258865, 38.731430, 22.267649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212368, 38.504253, 22.205769>,  <37.134872, 38.125626, 22.102634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212368, 38.504253, 22.205769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626626, -0.321611, 0.709863,
		0.754855, 0.024040, -0.655451,
		0.193735, 0.946567, 0.257834,
		37.270489, 38.788223, 22.283119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844093, 38.186485, 22.120806>,  <37.134872, 38.125626, 22.102634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844093, 38.186485, 22.120806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701748, 38.470871, 22.363420>,  <37.616341, 38.641502, 22.508989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701748, 38.470871, 22.363420>,  <37.844093, 38.186485, 22.120806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701748, 38.470871, 22.363420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669133, -0.259240, 0.696459,
		0.652399, 0.653697, -0.383479,
		-0.355860, 0.710968, 0.606538,
		37.594990, 38.684162, 22.545382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444523, 38.646740, 22.294090>,  <37.844093, 38.186485, 22.120806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444523, 38.646740, 22.294090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156406, 38.688507, 22.568398>,  <37.983536, 38.713566, 22.732983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156406, 38.688507, 22.568398>,  <38.444523, 38.646740, 22.294090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156406, 38.688507, 22.568398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656406, -0.217074, 0.722503,
		0.224302, 0.970555, 0.087819,
		-0.720292, 0.104414, 0.685768,
		37.940319, 38.719830, 22.774128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793800, 38.876976, 22.847982>,  <38.444523, 38.646740, 22.294090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793800, 38.876976, 22.847982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445839, 38.802250, 23.030577>,  <38.237064, 38.757416, 23.140133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445839, 38.802250, 23.030577>,  <38.793800, 38.876976, 22.847982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445839, 38.802250, 23.030577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485419, -0.160204, 0.859478,
		-0.087430, 0.969245, 0.230043,
		-0.869899, -0.186812, 0.456484,
		38.184868, 38.746208, 23.167522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853119, 39.068871, 23.587090>,  <38.793800, 38.876976, 22.847982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853119, 39.068871, 23.587090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534870, 38.827663, 23.610233>,  <38.343922, 38.682938, 23.624121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534870, 38.827663, 23.610233>,  <38.853119, 39.068871, 23.587090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534870, 38.827663, 23.610233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280634, -0.282243, 0.917378,
		-0.536868, 0.746126, 0.393788,
		-0.795624, -0.603022, 0.057861,
		38.296185, 38.646755, 23.627592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559036, 39.195499, 24.334463>,  <38.853119, 39.068871, 23.587090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559036, 39.195499, 24.334463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451687, 38.843105, 24.178598>,  <38.387276, 38.631668, 24.085079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451687, 38.843105, 24.178598>,  <38.559036, 39.195499, 24.334463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451687, 38.843105, 24.178598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322411, -0.463319, 0.825461,
		-0.907758, 0.095904, 0.408384,
		-0.268377, -0.880987, -0.389661,
		38.371174, 38.578808, 24.061701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047291, 38.826847, 24.749151>,  <38.559036, 39.195499, 24.334463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047291, 38.826847, 24.749151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233166, 38.543919, 24.536072>,  <38.344692, 38.374161, 24.408224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233166, 38.543919, 24.536072>,  <38.047291, 38.826847, 24.749151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233166, 38.543919, 24.536072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111792, -0.549920, 0.827702,
		-0.878391, -0.444172, -0.176467,
		0.464685, -0.707318, -0.532699,
		38.372570, 38.331722, 24.376263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765575, 38.294025, 25.079031>,  <38.047291, 38.826847, 24.749151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765575, 38.294025, 25.079031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068501, 38.127346, 24.877899>,  <38.250256, 38.027336, 24.757219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068501, 38.127346, 24.877899>,  <37.765575, 38.294025, 25.079031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068501, 38.127346, 24.877899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057324, -0.724581, 0.686801,
		-0.650532, -0.548948, -0.524847,
		0.757313, -0.416699, -0.502831,
		38.295692, 38.002335, 24.727049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587620, 37.582752, 24.990051>,  <37.765575, 38.294025, 25.079031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587620, 37.582752, 24.990051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985798, 37.619633, 24.980333>,  <38.224705, 37.641762, 24.974503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985798, 37.619633, 24.980333>,  <37.587620, 37.582752, 24.990051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985798, 37.619633, 24.980333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076733, -0.623427, 0.778107,
		0.056595, -0.776427, -0.627661,
		0.995444, 0.092200, -0.024295,
		38.284431, 37.647293, 24.973045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874172, 36.911995, 25.059311>,  <37.587620, 37.582752, 24.990051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874172, 36.911995, 25.059311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195938, 37.127312, 25.159840>,  <38.388996, 37.256504, 25.220158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195938, 37.127312, 25.159840>,  <37.874172, 36.911995, 25.059311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195938, 37.127312, 25.159840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224915, -0.667512, 0.709818,
		0.549852, -0.514459, -0.658024,
		0.804411, 0.538294, 0.251323,
		38.437260, 37.288799, 25.235237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447403, 36.454735, 25.202995>,  <37.874172, 36.911995, 25.059311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447403, 36.454735, 25.202995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545364, 36.793457, 25.391863>,  <38.604141, 36.996689, 25.505184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545364, 36.793457, 25.391863>,  <38.447403, 36.454735, 25.202995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545364, 36.793457, 25.391863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307109, -0.529677, 0.790649,
		0.919623, -0.048625, -0.389781,
		0.244903, 0.846805, 0.472170,
		38.618835, 37.047497, 25.533514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075226, 36.399841, 25.417080>,  <38.447403, 36.454735, 25.202995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075226, 36.399841, 25.417080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946934, 36.695213, 25.654350>,  <38.869961, 36.872437, 25.796713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946934, 36.695213, 25.654350>,  <39.075226, 36.399841, 25.417080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946934, 36.695213, 25.654350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471449, -0.418711, 0.776155,
		0.821505, 0.528585, -0.213840,
		-0.320727, 0.738430, 0.593174,
		38.850716, 36.916740, 25.832302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669014, 36.556908, 25.816660>,  <39.075226, 36.399841, 25.417080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669014, 36.556908, 25.816660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349556, 36.701721, 26.008947>,  <39.157879, 36.788609, 26.124319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349556, 36.701721, 26.008947>,  <39.669014, 36.556908, 25.816660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349556, 36.701721, 26.008947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334672, -0.396691, 0.854769,
		0.500153, 0.843544, 0.195654,
		-0.798650, 0.362036, 0.480717,
		39.109962, 36.810333, 26.153162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006771, 36.785500, 26.404215>,  <39.669014, 36.556908, 25.816660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006771, 36.785500, 26.404215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621002, 36.740253, 26.499800>,  <39.389542, 36.713104, 26.557150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621002, 36.740253, 26.499800>,  <40.006771, 36.785500, 26.404215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621002, 36.740253, 26.499800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264183, -0.377310, 0.887606,
		-0.010242, 0.919153, 0.393768,
		-0.964418, -0.113117, 0.238960,
		39.331676, 36.706318, 26.571487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900288, 37.190392, 27.073055>,  <40.006771, 36.785500, 26.404215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900288, 37.190392, 27.073055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.652794, 36.882298, 27.011219>,  <39.504299, 36.697441, 26.974117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.652794, 36.882298, 27.011219>,  <39.900288, 37.190392, 27.073055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652794, 36.882298, 27.011219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270379, -0.393546, 0.878645,
		-0.737607, 0.501849, 0.451757,
		-0.618734, -0.770240, -0.154593,
		39.467175, 36.651226, 26.964842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914600, 36.941154, 27.619825>,  <39.900288, 37.190392, 27.073055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914600, 36.941154, 27.619825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.696587, 36.649414, 27.454424>,  <39.565781, 36.474369, 27.355183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.696587, 36.649414, 27.454424>,  <39.914600, 36.941154, 27.619825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696587, 36.649414, 27.454424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054381, -0.522909, 0.850652,
		-0.836651, 0.441145, 0.324665,
		-0.545031, -0.729354, -0.413502,
		39.533077, 36.430607, 27.330374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363701, 36.841759, 28.080858>,  <39.914600, 36.941154, 27.619825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363701, 36.841759, 28.080858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422462, 36.506863, 27.870163>,  <39.457718, 36.305927, 27.743746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422462, 36.506863, 27.870163>,  <39.363701, 36.841759, 28.080858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422462, 36.506863, 27.870163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074728, -0.540387, 0.838091,
		-0.986324, -0.083755, -0.141950,
		0.146902, -0.837238, -0.526738,
		39.466534, 36.255692, 27.712141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870003, 36.409302, 28.403496>,  <39.363701, 36.841759, 28.080858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870003, 36.409302, 28.403496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150150, 36.196671, 28.212957>,  <39.318237, 36.069092, 28.098635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150150, 36.196671, 28.212957>,  <38.870003, 36.409302, 28.403496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150150, 36.196671, 28.212957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007621, -0.661749, 0.749687,
		-0.713743, -0.528686, -0.459416,
		0.700367, -0.531583, -0.476347,
		39.360260, 36.037197, 28.070053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774326, 35.662376, 28.664162>,  <38.870003, 36.409302, 28.403496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774326, 35.662376, 28.664162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138416, 35.674347, 28.498951>,  <39.356873, 35.681530, 28.399824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138416, 35.674347, 28.498951>,  <38.774326, 35.662376, 28.664162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138416, 35.674347, 28.498951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295542, -0.745578, 0.597301,
		-0.290072, -0.665746, -0.687488,
		0.910227, 0.029922, -0.413027,
		39.411484, 35.683323, 28.375042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947769, 35.001560, 28.427513>,  <38.774326, 35.662376, 28.664162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947769, 35.001560, 28.427513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306549, 35.171055, 28.477987>,  <39.521816, 35.272751, 28.508272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306549, 35.171055, 28.477987>,  <38.947769, 35.001560, 28.427513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306549, 35.171055, 28.477987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295744, -0.787177, 0.541192,
		0.328654, -0.448105, -0.831378,
		0.896952, 0.423740, 0.126185,
		39.575634, 35.298176, 28.515842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416107, 34.480598, 28.255552>,  <38.947769, 35.001560, 28.427513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416107, 34.480598, 28.255552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630760, 34.738850, 28.472876>,  <39.759552, 34.893799, 28.603270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630760, 34.738850, 28.472876>,  <39.416107, 34.480598, 28.255552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630760, 34.738850, 28.472876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397237, -0.761359, 0.512383,
		0.744462, -0.059141, -0.665040,
		0.536637, 0.645628, 0.543310,
		39.791752, 34.932537, 28.635868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071789, 34.128883, 28.399401>,  <39.416107, 34.480598, 28.255552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071789, 34.128883, 28.399401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062588, 34.413658, 28.680149>,  <40.057068, 34.584522, 28.848598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062588, 34.413658, 28.680149>,  <40.071789, 34.128883, 28.399401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062588, 34.413658, 28.680149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432276, -0.625951, 0.649094,
		0.901448, 0.318335, -0.293352,
		-0.023005, 0.711933, 0.701870,
		40.055687, 34.627239, 28.890711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685390, 34.074867, 28.737732>,  <40.071789, 34.128883, 28.399401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685390, 34.074867, 28.737732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411270, 34.238121, 28.978991>,  <40.246796, 34.336075, 29.123747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411270, 34.238121, 28.978991>,  <40.685390, 34.074867, 28.737732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411270, 34.238121, 28.978991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346456, -0.545772, 0.762956,
		0.640569, 0.731820, 0.232618,
		-0.685303, 0.408133, 0.603148,
		40.205681, 34.360561, 29.159935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061840, 34.192249, 29.331690>,  <40.685390, 34.074867, 28.737732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061840, 34.192249, 29.331690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669586, 34.159405, 29.402807>,  <40.434235, 34.139698, 29.445478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669586, 34.159405, 29.402807>,  <41.061840, 34.192249, 29.331690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669586, 34.159405, 29.402807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187828, -0.651350, 0.735162,
		0.055442, 0.754321, 0.654160,
		-0.980636, -0.082111, 0.177795,
		40.375397, 34.134773, 29.456146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047806, 33.996155, 30.092487>,  <41.061840, 34.192249, 29.331690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047806, 33.996155, 30.092487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.672073, 33.933140, 29.970606>,  <40.446636, 33.895329, 29.897478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.672073, 33.933140, 29.970606>,  <41.047806, 33.996155, 30.092487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672073, 33.933140, 29.970606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136807, -0.642527, 0.753952,
		-0.314556, 0.749894, 0.581991,
		-0.939329, -0.157539, -0.304702,
		40.390274, 33.885880, 29.879196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692387, 33.952675, 30.668684>,  <41.047806, 33.996155, 30.092487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692387, 33.952675, 30.668684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455811, 33.766800, 30.405090>,  <40.313866, 33.655273, 30.246935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455811, 33.766800, 30.405090>,  <40.692387, 33.952675, 30.668684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455811, 33.766800, 30.405090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256673, -0.666240, 0.700174,
		-0.764403, 0.583257, 0.274771,
		-0.591445, -0.464689, -0.658982,
		40.278378, 33.627392, 30.207396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066975, 33.806553, 31.008259>,  <40.692387, 33.952675, 30.668684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066975, 33.806553, 31.008259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.093975, 33.544930, 30.706888>,  <40.110176, 33.387955, 30.526066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.093975, 33.544930, 30.706888>,  <40.066975, 33.806553, 31.008259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.093975, 33.544930, 30.706888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217817, -0.746592, 0.628614,
		-0.973653, 0.121678, -0.192860,
		0.067499, -0.654060, -0.753425,
		40.114223, 33.348713, 30.480860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803417, 33.247406, 31.303535>,  <40.066975, 33.806553, 31.008259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803417, 33.247406, 31.303535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937775, 33.074463, 30.968813>,  <40.018387, 32.970695, 30.767981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937775, 33.074463, 30.968813>,  <39.803417, 33.247406, 31.303535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937775, 33.074463, 30.968813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037909, -0.881496, 0.470667,
		-0.941138, -0.189815, -0.279696,
		0.335890, -0.432360, -0.836805,
		40.038544, 32.944756, 30.717772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431942, 32.666107, 31.228256>,  <39.803417, 33.247406, 31.303535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431942, 32.666107, 31.228256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776978, 32.617153, 31.031902>,  <39.983997, 32.587780, 30.914089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776978, 32.617153, 31.031902>,  <39.431942, 32.666107, 31.228256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776978, 32.617153, 31.031902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120723, -0.892475, 0.434642,
		-0.491295, -0.434177, -0.755062,
		0.862586, -0.122384, -0.490884,
		40.035755, 32.580437, 30.884638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339443, 32.034889, 31.071844>,  <39.431942, 32.666107, 31.228256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339443, 32.034889, 31.071844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727669, 32.093437, 30.995333>,  <39.960602, 32.128567, 30.949427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727669, 32.093437, 30.995333>,  <39.339443, 32.034889, 31.071844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727669, 32.093437, 30.995333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217217, -0.875034, 0.432588,
		-0.104056, -0.461401, -0.881068,
		0.970561, 0.146370, -0.191277,
		40.018837, 32.137348, 30.937950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699997, 31.351702, 30.806883>,  <39.339443, 32.034889, 31.071844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699997, 31.351702, 30.806883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977230, 31.598089, 30.956669>,  <40.143570, 31.745922, 31.046541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977230, 31.598089, 30.956669>,  <39.699997, 31.351702, 30.806883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977230, 31.598089, 30.956669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310769, -0.724032, 0.615793,
		0.650434, -0.310420, -0.693235,
		0.693079, 0.615968, 0.374467,
		40.185154, 31.782879, 31.069008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332977, 30.915949, 30.861052>,  <39.699997, 31.351702, 30.806883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332977, 30.915949, 30.861052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474445, 31.215006, 31.085890>,  <40.559326, 31.394440, 31.220793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474445, 31.215006, 31.085890>,  <40.332977, 30.915949, 30.861052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474445, 31.215006, 31.085890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312179, -0.660824, 0.682537,
		0.881738, -0.065918, -0.467111,
		0.353670, 0.747641, 0.562095,
		40.580547, 31.439299, 31.254519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035839, 30.825752, 30.935154>,  <40.332977, 30.915949, 30.861052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035839, 30.825752, 30.935154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899178, 31.046917, 31.239143>,  <40.817181, 31.179617, 31.421537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899178, 31.046917, 31.239143>,  <41.035839, 30.825752, 30.935154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899178, 31.046917, 31.239143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150179, -0.766122, 0.624902,
		0.927749, 0.327633, 0.178714,
		-0.341655, 0.552914, 0.759973,
		40.796680, 31.212791, 31.467134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563625, 30.856298, 31.455759>,  <41.035839, 30.825752, 30.935154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.563625, 30.856298, 31.455759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217957, 30.919193, 31.646961>,  <41.010555, 30.956930, 31.761683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217957, 30.919193, 31.646961>,  <41.563625, 30.856298, 31.455759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217957, 30.919193, 31.646961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285641, -0.628766, 0.723231,
		0.414274, 0.761531, 0.498445,
		-0.864168, 0.157239, 0.478006,
		40.958706, 30.966366, 31.790363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.673981, 31.114674, 32.179527>,  <41.563625, 30.856298, 31.455759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.673981, 31.114674, 32.179527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.340233, 30.900404, 32.127563>,  <41.139984, 30.771843, 32.096386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.340233, 30.900404, 32.127563>,  <41.673981, 31.114674, 32.179527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340233, 30.900404, 32.127563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278347, -0.612907, 0.739506,
		-0.475758, 0.580862, 0.660495,
		-0.834372, -0.535672, -0.129914,
		41.089920, 30.739702, 32.088589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724037, 30.702805, 32.769901>,  <41.673981, 31.114674, 32.179527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724037, 30.702805, 32.769901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393051, 30.584721, 32.578842>,  <41.194458, 30.513870, 32.464207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393051, 30.584721, 32.578842>,  <41.724037, 30.702805, 32.769901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393051, 30.584721, 32.578842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027967, -0.827920, 0.560148,
		-0.560818, 0.476862, 0.676820,
		-0.827467, -0.295212, -0.477649,
		41.144810, 30.496157, 32.435547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128822, 30.499187, 33.189796>,  <41.724037, 30.702805, 32.769901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128822, 30.499187, 33.189796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.127396, 30.291365, 32.848026>,  <41.126541, 30.166672, 32.642963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.127396, 30.291365, 32.848026>,  <41.128822, 30.499187, 33.189796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.127396, 30.291365, 32.848026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014917, -0.854366, 0.519456,
		-0.999882, -0.010893, 0.010798,
		-0.003567, -0.519556, -0.854429,
		41.126328, 30.135498, 32.591698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725498, 30.027588, 33.275883>,  <41.128822, 30.499187, 33.189796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725498, 30.027588, 33.275883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963932, 29.912502, 32.976044>,  <41.106995, 29.843451, 32.796139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963932, 29.912502, 32.976044>,  <40.725498, 30.027588, 33.275883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963932, 29.912502, 32.976044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053273, -0.917364, 0.394468,
		-0.801150, -0.275071, -0.531502,
		0.596088, -0.287713, -0.749600,
		41.142757, 29.826189, 32.751163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505058, 29.416267, 33.246655>,  <40.725498, 30.027588, 33.275883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505058, 29.416267, 33.246655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.876724, 29.430777, 33.099499>,  <41.099724, 29.439482, 33.011208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.876724, 29.430777, 33.099499>,  <40.505058, 29.416267, 33.246655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876724, 29.430777, 33.099499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144685, -0.951468, 0.271615,
		-0.340180, -0.305603, -0.889317,
		0.929163, 0.036273, -0.367887,
		41.155472, 29.441658, 32.989132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651539, 28.863258, 32.786583>,  <40.505058, 29.416267, 33.246655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.651539, 28.863258, 32.786583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000679, 28.964645, 32.953377>,  <41.210163, 29.025478, 33.053455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000679, 28.964645, 32.953377>,  <40.651539, 28.863258, 32.786583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000679, 28.964645, 32.953377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114561, -0.937073, 0.329802,
		0.474343, -0.240099, -0.846966,
		0.872854, 0.253469, 0.416988,
		41.262535, 29.040686, 33.078472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.049026, 28.306957, 32.663143>,  <40.651539, 28.863258, 32.786583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.049026, 28.306957, 32.663143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259567, 28.489405, 32.950172>,  <41.385891, 28.598873, 33.122391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259567, 28.489405, 32.950172>,  <41.049026, 28.306957, 32.663143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259567, 28.489405, 32.950172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289477, -0.889652, 0.353161,
		0.799473, 0.021834, -0.600306,
		0.526352, 0.456117, 0.717573,
		41.417473, 28.626240, 33.165443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645988, 27.987940, 32.611855>,  <41.049026, 28.306957, 32.663143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.645988, 27.987940, 32.611855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.615635, 28.118805, 32.988621>,  <41.597424, 28.197325, 33.214680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.615635, 28.118805, 32.988621>,  <41.645988, 27.987940, 32.611855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.615635, 28.118805, 32.988621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356506, -0.873297, 0.332050,
		0.931206, 0.360996, -0.050365,
		-0.075885, 0.327162, 0.941916,
		41.592869, 28.216953, 33.271194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145206, 27.583830, 32.932003>,  <41.645988, 27.987940, 32.611855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145206, 27.583830, 32.932003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.957310, 27.737366, 33.250000>,  <41.844570, 27.829487, 33.440800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.957310, 27.737366, 33.250000>,  <42.145206, 27.583830, 32.932003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.957310, 27.737366, 33.250000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151108, -0.852280, 0.500785,
		0.869776, 0.355369, 0.342349,
		-0.469741, 0.383839, 0.794991,
		41.816387, 27.852518, 33.488499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.606121, 27.555656, 33.514896>,  <42.145206, 27.583830, 32.932003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.606121, 27.555656, 33.514896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224117, 27.539963, 33.632484>,  <41.994915, 27.530546, 33.703037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224117, 27.539963, 33.632484>,  <42.606121, 27.555656, 33.514896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224117, 27.539963, 33.632484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180656, -0.863048, 0.471711,
		0.235200, 0.503596, 0.831308,
		-0.955010, -0.039234, 0.293966,
		41.937614, 27.528193, 33.720673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.731987, 27.491135, 34.274555>,  <42.606121, 27.555656, 33.514896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.731987, 27.491135, 34.274555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.366344, 27.364677, 34.172993>,  <42.146957, 27.288803, 34.112057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.366344, 27.364677, 34.172993>,  <42.731987, 27.491135, 34.274555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.366344, 27.364677, 34.172993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118931, -0.807683, 0.577497,
		-0.387643, 0.497696, 0.775906,
		-0.914105, -0.316142, -0.253902,
		42.092113, 27.269835, 34.096821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.307659, 27.332886, 34.972984>,  <42.731987, 27.491135, 34.274555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.307659, 27.332886, 34.972984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.126095, 27.135921, 34.675934>,  <42.017155, 27.017742, 34.497704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.126095, 27.135921, 34.675934>,  <42.307659, 27.332886, 34.972984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.126095, 27.135921, 34.675934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375826, -0.861472, 0.341498,
		-0.807910, -0.124088, 0.576094,
		-0.453913, -0.492411, -0.742627,
		41.989922, 26.988197, 34.453144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.835991, 26.765968, 35.127251>,  <42.307659, 27.332886, 34.972984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.835991, 26.765968, 35.127251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033978, 26.709866, 34.784245>,  <42.152767, 26.676205, 34.578442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033978, 26.709866, 34.784245>,  <41.835991, 26.765968, 35.127251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033978, 26.709866, 34.784245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506141, -0.755633, 0.415739,
		-0.706280, -0.639801, -0.303022,
		0.494964, -0.140257, -0.857519,
		42.182468, 26.667788, 34.526989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.691685, 26.040367, 34.820080>,  <41.835991, 26.765968, 35.127251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.691685, 26.040367, 34.820080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034100, 26.146152, 34.642422>,  <42.239548, 26.209623, 34.535828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034100, 26.146152, 34.642422>,  <41.691685, 26.040367, 34.820080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.034100, 26.146152, 34.642422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342715, -0.933594, 0.104641,
		-0.386976, -0.241791, -0.889824,
		0.856035, 0.264462, -0.444143,
		42.290909, 26.225491, 34.509178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769947, 25.454714, 34.422268>,  <41.691685, 26.040367, 34.820080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769947, 25.454714, 34.422268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131142, 25.599319, 34.515156>,  <42.347858, 25.686083, 34.570889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131142, 25.599319, 34.515156>,  <41.769947, 25.454714, 34.422268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131142, 25.599319, 34.515156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363555, -0.930896, 0.035509,
		0.229007, 0.052360, -0.972016,
		0.902986, 0.361513, 0.232217,
		42.402039, 25.707773, 34.584820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.305367, 25.217941, 33.930977>,  <41.769947, 25.454714, 34.422268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.305367, 25.217941, 33.930977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.483482, 25.290268, 34.281754>,  <42.590351, 25.333664, 34.492218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.483482, 25.290268, 34.281754>,  <42.305367, 25.217941, 33.930977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.483482, 25.290268, 34.281754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421449, -0.906447, -0.027101,
		0.789998, 0.381652, -0.479839,
		0.445292, 0.180818, 0.876938,
		42.617069, 25.344513, 34.544834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828033, 25.905369, 33.746986>,  <42.305367, 25.217941, 33.930977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828033, 25.905369, 33.746986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730446, 26.156767, 34.042412>,  <41.671894, 26.307606, 34.219666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730446, 26.156767, 34.042412>,  <41.828033, 25.905369, 33.746986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.730446, 26.156767, 34.042412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214225, 0.707834, -0.673111,
		-0.945826, -0.322437, -0.038050,
		-0.243969, 0.628495, 0.738562,
		41.657253, 26.345316, 34.263981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383373, 26.468956, 33.460022>,  <41.828033, 25.905369, 33.746986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383373, 26.468956, 33.460022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536030, 26.624962, 33.795219>,  <41.627625, 26.718565, 33.996338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536030, 26.624962, 33.795219>,  <41.383373, 26.468956, 33.460022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536030, 26.624962, 33.795219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092575, 0.918188, -0.385175,
		-0.919663, 0.069421, 0.386525,
		0.381642, 0.390013, 0.837997,
		41.650524, 26.741966, 34.046619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867897, 26.970373, 33.791309>,  <41.383373, 26.468956, 33.460022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867897, 26.970373, 33.791309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235752, 27.068098, 33.914322>,  <41.456467, 27.126734, 33.988129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235752, 27.068098, 33.914322>,  <40.867897, 26.970373, 33.791309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235752, 27.068098, 33.914322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174518, 0.955630, -0.237309,
		-0.351862, 0.164569, 0.921472,
		0.919640, 0.244313, 0.307530,
		41.511642, 27.141392, 34.006580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777691, 27.528835, 34.154938>,  <40.867897, 26.970373, 33.791309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777691, 27.528835, 34.154938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163193, 27.545164, 34.049477>,  <41.394493, 27.554962, 33.986202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163193, 27.545164, 34.049477>,  <40.777691, 27.528835, 34.154938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163193, 27.545164, 34.049477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096203, 0.974916, -0.200709,
		0.248844, 0.218798, 0.943506,
		0.963754, 0.040823, -0.263651,
		41.452320, 27.557411, 33.970383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087605, 28.169725, 34.498291>,  <40.777691, 27.528835, 34.154938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.087605, 28.169725, 34.498291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307346, 28.074024, 34.178047>,  <41.439190, 28.016603, 33.985901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307346, 28.074024, 34.178047>,  <41.087605, 28.169725, 34.498291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307346, 28.074024, 34.178047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044981, 0.965210, -0.257578,
		0.834379, 0.105489, 0.541003,
		0.549353, -0.239252, -0.800606,
		41.472153, 28.002249, 33.937866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.788170, 28.581839, 34.495121>,  <41.087605, 28.169725, 34.498291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.788170, 28.581839, 34.495121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.671074, 28.494064, 34.122852>,  <41.600815, 28.441401, 33.899490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.671074, 28.494064, 34.122852>,  <41.788170, 28.581839, 34.495121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.671074, 28.494064, 34.122852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141501, 0.952654, -0.269126,
		0.945663, -0.210476, -0.247834,
		-0.292744, -0.219434, -0.930672,
		41.583252, 28.428234, 33.843651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.030830, 29.223862, 34.121777>,  <41.788170, 28.581839, 34.495121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.030830, 29.223862, 34.121777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835629, 29.034649, 33.828358>,  <41.718506, 28.921122, 33.652306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835629, 29.034649, 33.828358>,  <42.030830, 29.223862, 34.121777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835629, 29.034649, 33.828358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073684, 0.815085, -0.574636,
		0.869725, -0.334476, -0.362910,
		-0.488005, -0.473035, -0.733545,
		41.689228, 28.892738, 33.608295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387047, 29.321068, 33.601799>,  <42.030830, 29.223862, 34.121777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387047, 29.321068, 33.601799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.028809, 29.238613, 33.444111>,  <41.813866, 29.189140, 33.349499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.028809, 29.238613, 33.444111>,  <42.387047, 29.321068, 33.601799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.028809, 29.238613, 33.444111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025281, 0.861147, -0.507727,
		0.444145, -0.464685, -0.766030,
		-0.895598, -0.206139, -0.394222,
		41.760128, 29.176771, 33.325844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.393585, 29.350395, 32.842903>,  <42.387047, 29.321068, 33.601799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.393585, 29.350395, 32.842903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.025467, 29.433611, 32.975433>,  <41.804596, 29.483541, 33.054951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.025467, 29.433611, 32.975433>,  <42.393585, 29.350395, 32.842903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.025467, 29.433611, 32.975433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062828, 0.914490, -0.399700,
		-0.386148, -0.347026, -0.854671,
		-0.920295, 0.208040, 0.331326,
		41.749378, 29.496023, 33.074833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006126, 29.523813, 32.244347>,  <42.393585, 29.350395, 32.842903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006126, 29.523813, 32.244347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904591, 29.707924, 32.584633>,  <41.843670, 29.818390, 32.788803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904591, 29.707924, 32.584633>,  <42.006126, 29.523813, 32.244347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904591, 29.707924, 32.584633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018208, 0.877091, -0.479980,
		-0.967074, -0.137329, -0.214262,
		-0.253843, 0.460275, 0.850712,
		41.828438, 29.846006, 32.839848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358158, 29.574867, 31.811457>,  <42.006126, 29.523813, 32.244347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358158, 29.574867, 31.811457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109642, 29.680824, 32.106438>,  <40.960533, 29.744398, 32.283424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109642, 29.680824, 32.106438>,  <41.358158, 29.574867, 31.811457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109642, 29.680824, 32.106438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059380, 0.954337, -0.292771,
		-0.781331, -0.138105, -0.608645,
		-0.621286, 0.264892, 0.737452,
		40.923256, 29.760292, 32.327675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654305, 29.675217, 31.654390>,  <41.358158, 29.574867, 31.811457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654305, 29.675217, 31.654390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.725517, 29.942221, 31.943592>,  <40.768246, 30.102423, 32.117111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.725517, 29.942221, 31.943592>,  <40.654305, 29.675217, 31.654390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725517, 29.942221, 31.943592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316945, 0.734483, -0.600068,
		-0.931585, -0.122321, 0.342325,
		0.178031, 0.667512, 0.723002,
		40.778927, 30.142475, 32.160492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061260, 30.109192, 31.700188>,  <40.654305, 29.675217, 31.654390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061260, 30.109192, 31.700188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374119, 30.311815, 31.845324>,  <40.561832, 30.433390, 31.932405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374119, 30.311815, 31.845324>,  <40.061260, 30.109192, 31.700188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374119, 30.311815, 31.845324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306562, 0.819798, -0.483684,
		-0.542468, 0.267078, 0.796491,
		0.782143, 0.506557, 0.362838,
		40.608761, 30.463783, 31.954176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786976, 30.629904, 32.232468>,  <40.061260, 30.109192, 31.700188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786976, 30.629904, 32.232468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179733, 30.698898, 32.263813>,  <40.415386, 30.740295, 32.282619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179733, 30.698898, 32.263813>,  <39.786976, 30.629904, 32.232468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179733, 30.698898, 32.263813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117263, 0.878197, -0.463702,
		-0.148802, 0.446114, 0.882519,
		0.981890, 0.172487, 0.078365,
		40.474300, 30.750645, 32.287323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919182, 31.273930, 32.551613>,  <39.786976, 30.629904, 32.232468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919182, 31.273930, 32.551613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249210, 31.197268, 32.339001>,  <40.447227, 31.151270, 32.211433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249210, 31.197268, 32.339001>,  <39.919182, 31.273930, 32.551613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249210, 31.197268, 32.339001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065526, 0.901913, -0.426919,
		0.561212, 0.387069, 0.731587,
		0.825074, -0.191654, -0.531527,
		40.496731, 31.139771, 32.179543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194641, 31.973101, 32.393166>,  <39.919182, 31.273930, 32.551613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194641, 31.973101, 32.393166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395420, 31.753040, 32.126217>,  <40.515888, 31.621004, 31.966047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395420, 31.753040, 32.126217>,  <40.194641, 31.973101, 32.393166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395420, 31.753040, 32.126217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124786, 0.717478, -0.685313,
		0.855848, 0.427270, 0.291485,
		0.501948, -0.550151, -0.667370,
		40.546005, 31.587996, 31.926006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738480, 32.386349, 32.073223>,  <40.194641, 31.973101, 32.393166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738480, 32.386349, 32.073223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665913, 32.099361, 31.804205>,  <40.622372, 31.927168, 31.642794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665913, 32.099361, 31.804205>,  <40.738480, 32.386349, 32.073223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665913, 32.099361, 31.804205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166209, 0.696429, -0.698112,
		0.969258, -0.014867, -0.245596,
		-0.181419, -0.717472, -0.672549,
		40.611488, 31.884119, 31.602440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148464, 32.529900, 31.481291>,  <40.738480, 32.386349, 32.073223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148464, 32.529900, 31.481291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.863602, 32.283752, 31.346149>,  <40.692684, 32.136063, 31.265064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.863602, 32.283752, 31.346149>,  <41.148464, 32.529900, 31.481291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863602, 32.283752, 31.346149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206965, 0.643913, -0.736574,
		0.670818, -0.454632, -0.585928,
		-0.712157, -0.615375, -0.337856,
		40.649952, 32.099140, 31.244793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255196, 32.594551, 30.854477>,  <41.148464, 32.529900, 31.481291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255196, 32.594551, 30.854477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889381, 32.435375, 30.883507>,  <40.669891, 32.339870, 30.900925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889381, 32.435375, 30.883507>,  <41.255196, 32.594551, 30.854477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889381, 32.435375, 30.883507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308055, 0.568893, -0.762537,
		0.262156, -0.719725, -0.642861,
		-0.914536, -0.397940, 0.072577,
		40.615021, 32.315994, 30.905279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018509, 32.317261, 30.090141>,  <41.255196, 32.594551, 30.854477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018509, 32.317261, 30.090141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716309, 32.420349, 30.331074>,  <40.534988, 32.482201, 30.475634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716309, 32.420349, 30.331074>,  <41.018509, 32.317261, 30.090141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716309, 32.420349, 30.331074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327614, 0.647561, -0.687993,
		-0.567355, -0.717110, -0.404799,
		-0.755499, 0.257718, 0.602331,
		40.489658, 32.497665, 30.511774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534267, 32.415588, 29.620522>,  <41.018509, 32.317261, 30.090141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534267, 32.415588, 29.620522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.387344, 32.577358, 29.955549>,  <40.299191, 32.674419, 30.156567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.387344, 32.577358, 29.955549>,  <40.534267, 32.415588, 29.620522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387344, 32.577358, 29.955549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341993, 0.778707, -0.525982,
		-0.864942, -0.479640, -0.147715,
		-0.367309, 0.404426, 0.837570,
		40.277153, 32.698685, 30.206820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959568, 32.635674, 29.361431>,  <40.534267, 32.415588, 29.620522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959568, 32.635674, 29.361431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.012680, 32.845669, 29.697706>,  <40.044548, 32.971668, 29.899471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.012680, 32.845669, 29.697706>,  <39.959568, 32.635674, 29.361431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012680, 32.845669, 29.697706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374491, 0.811895, -0.447864,
		-0.917674, -0.255363, 0.304407,
		0.132779, 0.524991, 0.840686,
		40.052513, 33.003166, 29.949913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528206, 33.220779, 29.367449>,  <39.959568, 32.635674, 29.361431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528206, 33.220779, 29.367449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753239, 33.330994, 29.679239>,  <40.888256, 33.397121, 29.866314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753239, 33.330994, 29.679239>,  <40.528206, 33.220779, 29.367449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753239, 33.330994, 29.679239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042749, -0.951261, 0.305411,
		0.825637, -0.138496, -0.546939,
		0.562580, 0.275540, 0.779475,
		40.922012, 33.413654, 29.913082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372063, 33.170444, 29.340380>,  <40.528206, 33.220779, 29.367449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.372063, 33.170444, 29.340380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660873, 33.387047, 29.168123>,  <41.834160, 33.517010, 29.064770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660873, 33.387047, 29.168123>,  <41.372063, 33.170444, 29.340380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.660873, 33.387047, 29.168123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218168, 0.412480, 0.884457,
		0.656569, -0.732552, 0.179681,
		0.722025, 0.541506, -0.430641,
		41.877480, 33.549500, 29.038931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.051098, 33.205627, 29.589680>,  <41.372063, 33.170444, 29.340380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.051098, 33.205627, 29.589680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963646, 33.592144, 29.535288>,  <41.911175, 33.824055, 29.502653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963646, 33.592144, 29.535288>,  <42.051098, 33.205627, 29.589680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963646, 33.592144, 29.535288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297262, 0.198678, 0.933896,
		0.929428, 0.163753, -0.330677,
		-0.218627, 0.966288, -0.135980,
		41.898056, 33.882030, 29.494493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.594830, 33.512436, 29.782459>,  <42.051098, 33.205627, 29.589680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.594830, 33.512436, 29.782459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.312931, 33.795586, 29.801426>,  <42.143791, 33.965477, 29.812805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.312931, 33.795586, 29.801426>,  <42.594830, 33.512436, 29.782459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.312931, 33.795586, 29.801426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320272, 0.257796, 0.911574,
		0.633056, 0.657613, -0.408392,
		-0.704745, 0.707874, 0.047416,
		42.101509, 34.007950, 29.815651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.832359, 32.923885, 30.134300>,  <42.594830, 33.512436, 29.782459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.832359, 32.923885, 30.134300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.770721, 32.538727, 30.222927>,  <42.733738, 32.307632, 30.276104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.770721, 32.538727, 30.222927>,  <42.832359, 32.923885, 30.134300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.770721, 32.538727, 30.222927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817868, -0.250128, -0.518197,
		0.554389, 0.101362, 0.826062,
		-0.154096, -0.962892, 0.221569,
		42.724491, 32.249859, 30.289398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.524448, 33.076004, 29.983351>,  <42.832359, 32.923885, 30.134300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.524448, 33.076004, 29.983351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.701828, 33.305252, 29.707703>,  <43.808254, 33.442799, 29.542313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.701828, 33.305252, 29.707703>,  <43.524448, 33.076004, 29.983351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.701828, 33.305252, 29.707703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615223, 0.364493, 0.699032,
		0.651807, -0.733949, -0.190961,
		0.443449, 0.573118, -0.689121,
		43.834862, 33.477188, 29.500967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.148502, 32.841370, 29.764389>,  <43.524448, 33.076004, 29.983351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.148502, 32.841370, 29.764389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.127930, 33.240837, 29.766127>,  <44.115585, 33.480518, 29.767170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.127930, 33.240837, 29.766127>,  <44.148502, 32.841370, 29.764389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.127930, 33.240837, 29.766127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647698, 0.030042, 0.761304,
		0.760159, 0.041968, -0.648380,
		-0.051429, 0.998667, 0.004346,
		44.112499, 33.540436, 29.767429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.728798, 33.321663, 29.547419>,  <44.148502, 32.841370, 29.764389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.728798, 33.321663, 29.547419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.509842, 33.462444, 29.851128>,  <44.378468, 33.546913, 30.033354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.509842, 33.462444, 29.851128>,  <44.728798, 33.321663, 29.547419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.509842, 33.462444, 29.851128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833780, 0.151337, 0.530951,
		0.071965, 0.923701, -0.376293,
		-0.547387, 0.351955, 0.759273,
		44.345627, 33.568031, 30.078909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.826782, 33.432545, 30.212099>,  <44.728798, 33.321663, 29.547419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.826782, 33.432545, 30.212099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.936874, 33.588844, 29.860744>,  <45.002930, 33.682625, 29.649933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.936874, 33.588844, 29.860744>,  <44.826782, 33.432545, 30.212099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.936874, 33.588844, 29.860744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539502, 0.819023, 0.195294,
		0.795729, 0.420139, 0.436233,
		0.275234, 0.390750, -0.878386,
		45.019444, 33.706070, 29.597229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.213238, 34.123287, 30.282042>,  <44.826782, 33.432545, 30.212099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.213238, 34.123287, 30.282042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.989071, 34.047180, 29.959618>,  <44.854572, 34.001514, 29.766163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.989071, 34.047180, 29.959618>,  <45.213238, 34.123287, 30.282042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.989071, 34.047180, 29.959618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592270, 0.772377, 0.229454,
		0.578924, 0.605995, -0.545542,
		-0.560412, -0.190271, -0.806061,
		44.820946, 33.990097, 29.717800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.549484, 34.132950, 30.935499>,  <45.213238, 34.123287, 30.282042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.549484, 34.132950, 30.935499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.733532, 33.852840, 31.153820>,  <45.843960, 33.684772, 31.284813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.733532, 33.852840, 31.153820>,  <45.549484, 34.132950, 30.935499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.733532, 33.852840, 31.153820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066517, 0.585826, 0.807703,
		-0.885360, -0.407948, 0.222972,
		0.460123, -0.700276, 0.545802,
		45.871571, 33.642757, 31.317560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.215755, 34.059792, 31.581863>,  <45.549484, 34.132950, 30.935499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.215755, 34.059792, 31.581863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.591904, 33.932728, 31.630522>,  <45.817593, 33.856487, 31.659718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.591904, 33.932728, 31.630522>,  <45.215755, 34.059792, 31.581863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.591904, 33.932728, 31.630522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027616, 0.427735, 0.903482,
		-0.339037, -0.846246, 0.411000,
		0.940368, -0.317664, 0.121648,
		45.874016, 33.837429, 31.667017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.229305, 33.781570, 32.287979>,  <45.215755, 34.059792, 31.581863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.229305, 33.781570, 32.287979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.610634, 33.843689, 32.184387>,  <45.839432, 33.880959, 32.122234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.610634, 33.843689, 32.184387>,  <45.229305, 33.781570, 32.287979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.610634, 33.843689, 32.184387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176237, 0.410282, 0.894767,
		0.245203, -0.898640, 0.363761,
		0.953318, 0.155292, -0.258977,
		45.896629, 33.890278, 32.106693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.818760, 33.515823, 32.853497>,  <45.229305, 33.781570, 32.287979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.818760, 33.515823, 32.853497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.986298, 33.805374, 32.634197>,  <46.086823, 33.979103, 32.502617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.986298, 33.805374, 32.634197>,  <45.818760, 33.515823, 32.853497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.986298, 33.805374, 32.634197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280576, 0.471047, 0.836296,
		0.863623, -0.504104, -0.005805,
		0.418846, 0.723874, -0.548247,
		46.111950, 34.022537, 32.469723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.490952, 33.608654, 33.083351>,  <45.818760, 33.515823, 32.853497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.490952, 33.608654, 33.083351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.366623, 33.935043, 32.888386>,  <46.292027, 34.130878, 32.771408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.366623, 33.935043, 32.888386>,  <46.490952, 33.608654, 33.083351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.366623, 33.935043, 32.888386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181342, 0.554303, 0.812320,
		0.933007, 0.164101, -0.320262,
		-0.310825, 0.815977, -0.487410,
		46.273376, 34.179836, 32.742161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.104347, 33.933689, 32.895489>,  <46.490952, 33.608654, 33.083351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.104347, 33.933689, 32.895489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.812107, 34.194523, 32.976494>,  <46.636765, 34.351025, 33.025097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.812107, 34.194523, 32.976494>,  <47.104347, 33.933689, 32.895489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.812107, 34.194523, 32.976494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551393, 0.388515, 0.738256,
		0.402728, 0.651031, -0.643404,
		-0.730600, 0.652085, 0.202508,
		46.592926, 34.390148, 33.037247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.480167, 34.517876, 32.923367>,  <47.104347, 33.933689, 32.895489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.480167, 34.517876, 32.923367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.149307, 34.546532, 33.146324>,  <46.950790, 34.563725, 33.280098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.149307, 34.546532, 33.146324>,  <47.480167, 34.517876, 32.923367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.149307, 34.546532, 33.146324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531300, 0.422898, 0.734083,
		-0.183130, 0.903341, -0.387864,
		-0.827154, 0.071640, 0.557390,
		46.901161, 34.568024, 33.313541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.563423, 35.158009, 33.157402>,  <47.480167, 34.517876, 32.923367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.563423, 35.158009, 33.157402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.302841, 34.984222, 33.406189>,  <47.146492, 34.879951, 33.555462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.302841, 34.984222, 33.406189>,  <47.563423, 35.158009, 33.157402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.302841, 34.984222, 33.406189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393831, 0.507037, 0.766688,
		-0.648461, 0.744414, -0.159206,
		-0.651457, -0.434467, 0.621967,
		47.107403, 34.853882, 33.592777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.293903, 35.576874, 33.654942>,  <47.563423, 35.158009, 33.157402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.293903, 35.576874, 33.654942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.260296, 35.227909, 33.847542>,  <47.240131, 35.018532, 33.963100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.260296, 35.227909, 33.847542>,  <47.293903, 35.576874, 33.654942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.260296, 35.227909, 33.847542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429443, 0.404332, 0.807524,
		-0.899177, 0.274624, 0.340679,
		-0.084018, -0.872409, 0.481501,
		47.235092, 34.966187, 33.991993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.004417, 35.688637, 34.370132>,  <47.293903, 35.576874, 33.654942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.004417, 35.688637, 34.370132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.253277, 35.376221, 34.348545>,  <47.402592, 35.188770, 34.335594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.253277, 35.376221, 34.348545>,  <47.004417, 35.688637, 34.370132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.253277, 35.376221, 34.348545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388196, 0.247897, 0.887610,
		-0.679879, -0.573173, 0.457424,
		0.622148, -0.781038, -0.053964,
		47.439922, 35.141911, 34.332355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.134010, 35.171154, 34.988136>,  <47.004417, 35.688637, 34.370132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.134010, 35.171154, 34.988136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.490101, 35.203228, 34.808777>,  <47.703754, 35.222473, 34.701160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.490101, 35.203228, 34.808777>,  <47.134010, 35.171154, 34.988136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.490101, 35.203228, 34.808777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433823, 0.150880, 0.888275,
		0.138871, -0.985295, 0.099537,
		0.890232, 0.080175, -0.448396,
		47.757172, 35.227283, 34.674259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.547272, 37.189522, 23.822983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.369335, 37.385319, 24.122988>,  <32.262573, 37.502796, 24.302990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.369335, 37.385319, 24.122988>,  <32.547272, 37.189522, 23.822983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369335, 37.385319, 24.122988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463502, -0.590740, 0.660449,
		0.766345, 0.641425, 0.035904,
		-0.444838, 0.489490, 0.750012,
		32.235882, 37.532166, 24.347992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107323, 37.267426, 24.412537>,  <32.547272, 37.189522, 23.822983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107323, 37.267426, 24.412537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.771862, 37.364655, 24.607506>,  <32.570587, 37.422993, 24.724487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.771862, 37.364655, 24.607506>,  <33.107323, 37.267426, 24.412537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771862, 37.364655, 24.607506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344771, -0.455881, 0.820552,
		0.421658, 0.856206, 0.298521,
		-0.838652, 0.243071, 0.487421,
		32.520267, 37.437576, 24.753733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226631, 37.650040, 25.013744>,  <33.107323, 37.267426, 24.412537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226631, 37.650040, 25.013744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.876324, 37.460217, 25.049137>,  <32.666142, 37.346325, 25.070374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.876324, 37.460217, 25.049137>,  <33.226631, 37.650040, 25.013744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876324, 37.460217, 25.049137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363623, -0.527944, 0.767498,
		-0.317506, 0.704324, 0.634915,
		-0.875767, -0.474556, 0.088483,
		32.613594, 37.317848, 25.075682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125603, 37.777252, 25.694324>,  <33.226631, 37.650040, 25.013744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125603, 37.777252, 25.694324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.908783, 37.456814, 25.592787>,  <32.778690, 37.264553, 25.531864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.908783, 37.456814, 25.592787>,  <33.125603, 37.777252, 25.694324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908783, 37.456814, 25.592787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362781, -0.495545, 0.789193,
		-0.758007, 0.335689, 0.559230,
		-0.542047, -0.801092, -0.253845,
		32.746170, 37.216488, 25.516634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899216, 37.636356, 26.302065>,  <33.125603, 37.777252, 25.694324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899216, 37.636356, 26.302065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.823635, 37.310566, 26.082638>,  <32.778286, 37.115093, 25.950981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.823635, 37.310566, 26.082638>,  <32.899216, 37.636356, 26.302065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823635, 37.310566, 26.082638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397870, -0.574221, 0.715520,
		-0.897774, -0.083064, 0.432553,
		-0.188947, -0.814476, -0.548570,
		32.766953, 37.066223, 25.918066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559246, 37.118645, 26.715542>,  <32.899216, 37.636356, 26.302065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559246, 37.118645, 26.715542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.755997, 36.927971, 26.424110>,  <32.874046, 36.813564, 26.249252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.755997, 36.927971, 26.424110>,  <32.559246, 37.118645, 26.715542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755997, 36.927971, 26.424110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414701, -0.607519, 0.677454,
		-0.765560, -0.635365, -0.101141,
		0.491875, -0.476689, -0.728578,
		32.903561, 36.784966, 26.205538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340504, 36.452869, 26.778131>,  <32.559246, 37.118645, 26.715542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340504, 36.452869, 26.778131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.688087, 36.410229, 26.584827>,  <32.896637, 36.384644, 26.468845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.688087, 36.410229, 26.584827>,  <32.340504, 36.452869, 26.778131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688087, 36.410229, 26.584827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339359, -0.582397, 0.738681,
		-0.360197, -0.805884, -0.469903,
		0.868961, -0.106605, -0.483262,
		32.948776, 36.378246, 26.439848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524693, 35.756687, 26.886919>,  <32.340504, 36.452869, 26.778131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524693, 35.756687, 26.886919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.867069, 35.922993, 26.763948>,  <33.072495, 36.022774, 26.690166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.867069, 35.922993, 26.763948>,  <32.524693, 35.756687, 26.886919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867069, 35.922993, 26.763948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511614, -0.594759, 0.620091,
		0.074965, -0.688044, -0.721786,
		0.855939, 0.415761, -0.307427,
		33.123852, 36.047722, 26.671721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937836, 35.141762, 26.726450>,  <32.524693, 35.756687, 26.886919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937836, 35.141762, 26.726450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.179264, 35.459908, 26.748728>,  <33.324120, 35.650795, 26.762094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.179264, 35.459908, 26.748728>,  <32.937836, 35.141762, 26.726450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179264, 35.459908, 26.748728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688960, -0.555428, 0.465654,
		0.401299, -0.242683, -0.883212,
		0.603568, 0.795364, 0.055694,
		33.360336, 35.698517, 26.765436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480991, 34.861954, 26.648653>,  <32.937836, 35.141762, 26.726450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480991, 34.861954, 26.648653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.556644, 35.204887, 26.840157>,  <33.602036, 35.410648, 26.955059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.556644, 35.204887, 26.840157>,  <33.480991, 34.861954, 26.648653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556644, 35.204887, 26.840157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659045, -0.472262, 0.585345,
		0.727936, 0.204819, -0.654339,
		0.189129, 0.857332, 0.478761,
		33.613384, 35.462086, 26.983786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115101, 34.796711, 26.960836>,  <33.480991, 34.861954, 26.648653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115101, 34.796711, 26.960836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.026115, 35.141033, 27.143929>,  <33.972725, 35.347626, 27.253784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.026115, 35.141033, 27.143929>,  <34.115101, 34.796711, 26.960836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026115, 35.141033, 27.143929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514728, -0.295025, 0.804994,
		0.827988, 0.414692, -0.377448,
		-0.222468, 0.860808, 0.457731,
		33.959373, 35.399277, 27.281248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723866, 35.120586, 27.320200>,  <34.115101, 34.796711, 26.960836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723866, 35.120586, 27.320200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.420300, 35.297077, 27.511766>,  <34.238159, 35.402973, 27.626707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.420300, 35.297077, 27.511766>,  <34.723866, 35.120586, 27.320200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420300, 35.297077, 27.511766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531939, -0.004164, 0.846772,
		0.375616, 0.897384, -0.231548,
		-0.758916, 0.441231, 0.478918,
		34.192623, 35.429447, 27.655441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935516, 35.688011, 27.707117>,  <34.723866, 35.120586, 27.320200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935516, 35.688011, 27.707117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.606537, 35.552071, 27.889578>,  <34.409149, 35.470505, 27.999054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.606537, 35.552071, 27.889578>,  <34.935516, 35.688011, 27.707117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606537, 35.552071, 27.889578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515085, -0.104677, 0.850723,
		-0.241372, 0.934635, 0.261144,
		-0.822452, -0.339853, 0.456151,
		34.359802, 35.450115, 28.026423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969101, 35.976116, 28.382322>,  <34.935516, 35.688011, 27.707117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969101, 35.976116, 28.382322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.710541, 35.673004, 28.417959>,  <34.555405, 35.491138, 28.439341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.710541, 35.673004, 28.417959>,  <34.969101, 35.976116, 28.382322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710541, 35.673004, 28.417959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464800, -0.298481, 0.833588,
		-0.605082, 0.580243, 0.545154,
		-0.646402, -0.757777, 0.089092,
		34.516621, 35.445671, 28.444687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703049, 35.915386, 29.090921>,  <34.969101, 35.976116, 28.382322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703049, 35.915386, 29.090921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.634731, 35.547337, 28.949949>,  <34.593739, 35.326508, 28.865366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.634731, 35.547337, 28.949949>,  <34.703049, 35.915386, 29.090921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634731, 35.547337, 28.949949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506816, -0.388780, 0.769408,
		-0.844965, -0.047203, 0.532734,
		-0.170798, -0.920121, -0.352429,
		34.583492, 35.271301, 28.844221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645390, 35.477501, 29.739187>,  <34.703049, 35.915386, 29.090921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645390, 35.477501, 29.739187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.735500, 35.190125, 29.475948>,  <34.789566, 35.017696, 29.318005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.735500, 35.190125, 29.475948>,  <34.645390, 35.477501, 29.739187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735500, 35.190125, 29.475948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524692, -0.479686, 0.703278,
		-0.820945, -0.503727, 0.268902,
		0.225272, -0.718443, -0.658097,
		34.803082, 34.974590, 29.278519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750927, 34.987907, 30.233982>,  <34.645390, 35.477501, 29.739187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750927, 34.987907, 30.233982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.915508, 34.859962, 29.892599>,  <35.014259, 34.783195, 29.687769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.915508, 34.859962, 29.892599>,  <34.750927, 34.987907, 30.233982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915508, 34.859962, 29.892599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648238, -0.555542, 0.520731,
		-0.640696, -0.767502, -0.021232,
		0.411457, -0.319866, -0.853457,
		35.038944, 34.764004, 29.636562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866837, 34.235386, 30.275961>,  <34.750927, 34.987907, 30.233982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866837, 34.235386, 30.275961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.124565, 34.366875, 29.999762>,  <35.279202, 34.445766, 29.834042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.124565, 34.366875, 29.999762>,  <34.866837, 34.235386, 30.275961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124565, 34.366875, 29.999762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758445, -0.390382, 0.521884,
		-0.098006, -0.859969, -0.500848,
		0.644326, 0.328718, -0.690499,
		35.317863, 34.465488, 29.792612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193413, 33.652863, 30.041016>,  <34.866837, 34.235386, 30.275961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193413, 33.652863, 30.041016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.446903, 33.946678, 29.943975>,  <35.598995, 34.122967, 29.885752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.446903, 33.946678, 29.943975>,  <35.193413, 33.652863, 30.041016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446903, 33.946678, 29.943975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739455, -0.483127, 0.468824,
		0.227162, -0.476494, -0.849324,
		0.633723, 0.734535, -0.242598,
		35.637020, 34.167038, 29.871197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873348, 33.341782, 29.797266>,  <35.193413, 33.652863, 30.041016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873348, 33.341782, 29.797266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.976109, 33.722668, 29.863348>,  <36.037766, 33.951199, 29.902996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.976109, 33.722668, 29.863348>,  <35.873348, 33.341782, 29.797266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976109, 33.722668, 29.863348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891609, -0.299474, 0.339630,
		0.372874, 0.060046, -0.925937,
		0.256901, 0.952213, 0.165204,
		36.053181, 34.008331, 29.912909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597519, 33.375072, 29.603889>,  <35.873348, 33.341782, 29.797266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597519, 33.375072, 29.603889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.512302, 33.675976, 29.853277>,  <36.461174, 33.856518, 30.002911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.512302, 33.675976, 29.853277>,  <36.597519, 33.375072, 29.603889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512302, 33.675976, 29.853277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614893, -0.392672, 0.683897,
		0.759289, 0.529066, -0.378905,
		-0.213042, 0.752262, 0.623471,
		36.448391, 33.901653, 30.040318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270126, 33.617332, 29.763206>,  <36.597519, 33.375072, 29.603889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270126, 33.617332, 29.763206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.021027, 33.763012, 30.040203>,  <36.871567, 33.850418, 30.206400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.021027, 33.763012, 30.040203>,  <37.270126, 33.617332, 29.763206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021027, 33.763012, 30.040203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677872, -0.190847, 0.709977,
		0.390730, 0.911559, -0.128027,
		-0.622752, 0.364195, 0.692490,
		36.834202, 33.872269, 30.247950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774559, 33.015842, 29.797279>,  <37.270126, 33.617332, 29.763206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774559, 33.015842, 29.797279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.846756, 32.733494, 29.523298>,  <37.890076, 32.564083, 29.358910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.846756, 32.733494, 29.523298>,  <37.774559, 33.015842, 29.797279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846756, 32.733494, 29.523298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409332, 0.579313, -0.704872,
		0.894354, 0.407599, -0.184374,
		0.180495, -0.705875, -0.684954,
		37.900906, 32.521732, 29.317812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074879, 33.413761, 29.185688>,  <37.774559, 33.015842, 29.797279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074879, 33.413761, 29.185688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.966969, 33.060539, 29.032095>,  <37.902222, 32.848606, 28.939939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.966969, 33.060539, 29.032095>,  <38.074879, 33.413761, 29.185688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966969, 33.060539, 29.032095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476311, 0.468941, -0.743789,
		0.836868, -0.017763, -0.547117,
		-0.269777, -0.883051, -0.383981,
		37.886036, 32.795624, 28.916901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156990, 33.546001, 28.431881>,  <38.074879, 33.413761, 29.185688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156990, 33.546001, 28.431881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.920376, 33.231903, 28.505064>,  <37.778408, 33.043446, 28.548973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.920376, 33.231903, 28.505064>,  <38.156990, 33.546001, 28.431881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920376, 33.231903, 28.505064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612643, 0.290229, -0.735143,
		0.524170, -0.546950, -0.652757,
		-0.591536, -0.785247, 0.182956,
		37.742916, 32.996330, 28.559952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199947, 33.226593, 27.775795>,  <38.156990, 33.546001, 28.431881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199947, 33.226593, 27.775795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.863014, 33.092697, 27.944752>,  <37.660854, 33.012360, 28.046125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.863014, 33.092697, 27.944752>,  <38.199947, 33.226593, 27.775795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863014, 33.092697, 27.944752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531009, 0.381413, -0.756673,
		0.092183, -0.861668, -0.499029,
		-0.842337, -0.334741, 0.422394,
		37.610313, 32.992275, 28.071470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886726, 32.787334, 27.309885>,  <38.199947, 33.226593, 27.775795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886726, 32.787334, 27.309885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.603214, 32.898125, 27.569397>,  <37.433105, 32.964600, 27.725103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.603214, 32.898125, 27.569397>,  <37.886726, 32.787334, 27.309885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603214, 32.898125, 27.569397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557004, 0.344614, -0.755638,
		-0.432871, -0.896954, -0.089979,
		-0.708780, 0.276975, 0.648780,
		37.390579, 32.981216, 27.764030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186558, 32.599022, 26.993774>,  <37.886726, 32.787334, 27.309885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186558, 32.599022, 26.993774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.137012, 32.892204, 27.261337>,  <37.107285, 33.068111, 27.421875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.137012, 32.892204, 27.261337>,  <37.186558, 32.599022, 26.993774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137012, 32.892204, 27.261337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550539, 0.510077, -0.660854,
		-0.825570, -0.450114, 0.340341,
		-0.123859, 0.732953, 0.668910,
		37.099854, 33.112091, 27.462009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560787, 32.833450, 26.816437>,  <37.186558, 32.599022, 26.993774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560787, 32.833450, 26.816437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.681778, 33.135082, 27.049631>,  <36.754372, 33.316063, 27.189547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.681778, 33.135082, 27.049631>,  <36.560787, 32.833450, 26.816437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681778, 33.135082, 27.049631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533344, 0.640819, -0.552173,
		-0.789971, -0.143913, 0.596016,
		0.302473, 0.754082, 0.582984,
		36.772518, 33.361305, 27.224525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020424, 33.241734, 26.946295>,  <36.560787, 32.833450, 26.816437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020424, 33.241734, 26.946295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.303551, 33.503334, 27.053085>,  <36.473427, 33.660294, 27.117161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.303551, 33.503334, 27.053085>,  <36.020424, 33.241734, 26.946295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303551, 33.503334, 27.053085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443795, 0.705753, -0.552230,
		-0.549578, 0.272396, 0.789787,
		0.707820, 0.653998, 0.266978,
		36.515896, 33.699532, 27.133179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639343, 33.832588, 27.086105>,  <36.020424, 33.241734, 26.946295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639343, 33.832588, 27.086105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.015923, 33.950531, 27.020691>,  <36.241871, 34.021297, 26.981441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.015923, 33.950531, 27.020691>,  <35.639343, 33.832588, 27.086105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015923, 33.950531, 27.020691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328894, 0.696271, -0.637993,
		-0.074249, 0.654421, 0.752476,
		0.941444, 0.294855, -0.163537,
		36.298355, 34.038986, 26.971630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731556, 34.630005, 27.131351>,  <35.639343, 33.832588, 27.086105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731556, 34.630005, 27.131351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.042957, 34.499752, 26.916729>,  <36.229797, 34.421600, 26.787956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.042957, 34.499752, 26.916729>,  <35.731556, 34.630005, 27.131351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042957, 34.499752, 26.916729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111226, 0.769771, -0.628555,
		0.617705, 0.549012, 0.563051,
		0.778504, -0.325636, -0.536556,
		36.276508, 34.402061, 26.755762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222645, 35.208664, 27.016102>,  <35.731556, 34.630005, 27.131351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222645, 35.208664, 27.016102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.274097, 34.927868, 26.735912>,  <36.304970, 34.759392, 26.567799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.274097, 34.927868, 26.735912>,  <36.222645, 35.208664, 27.016102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274097, 34.927868, 26.735912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083021, 0.711486, -0.697779,
		0.988211, 0.031602, 0.149799,
		0.128631, -0.701990, -0.700475,
		36.312687, 34.717270, 26.525770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538597, 35.529766, 26.457619>,  <36.222645, 35.208664, 27.016102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538597, 35.529766, 26.457619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.393459, 35.196140, 26.291397>,  <36.306377, 34.995964, 26.191664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.393459, 35.196140, 26.291397>,  <36.538597, 35.529766, 26.457619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393459, 35.196140, 26.291397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103799, 0.479344, -0.871467,
		0.926052, -0.273069, -0.260501,
		-0.362840, -0.834064, -0.415554,
		36.284607, 34.945923, 26.166731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799404, 35.554531, 25.733477>,  <36.538597, 35.529766, 26.457619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799404, 35.554531, 25.733477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.481178, 35.312241, 25.738731>,  <36.290241, 35.166866, 25.741884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.481178, 35.312241, 25.738731>,  <36.799404, 35.554531, 25.733477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481178, 35.312241, 25.738731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315818, 0.396102, -0.862185,
		0.517042, -0.690074, -0.506424,
		-0.795566, -0.605723, 0.013137,
		36.242508, 35.130524, 25.742672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723320, 35.454296, 25.099491>,  <36.799404, 35.554531, 25.733477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723320, 35.454296, 25.099491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.363716, 35.342422, 25.234291>,  <36.147953, 35.275299, 25.315170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.363716, 35.342422, 25.234291>,  <36.723320, 35.454296, 25.099491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363716, 35.342422, 25.234291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426796, 0.387054, -0.817334,
		0.098157, -0.878617, -0.467330,
		-0.899005, -0.279682, 0.336998,
		36.094013, 35.258518, 25.335390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421890, 35.108570, 24.581507>,  <36.723320, 35.454296, 25.099491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421890, 35.108570, 24.581507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.130791, 35.262096, 24.808865>,  <35.956131, 35.354210, 24.945278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.130791, 35.262096, 24.808865>,  <36.421890, 35.108570, 24.581507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130791, 35.262096, 24.808865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506507, 0.258003, -0.822730,
		-0.462422, -0.886635, 0.006643,
		-0.727747, 0.383813, 0.568393,
		35.912468, 35.377239, 24.979382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756168, 34.757961, 24.366167>,  <36.421890, 35.108570, 24.581507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756168, 34.757961, 24.366167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.666992, 35.106113, 24.541773>,  <35.613487, 35.315006, 24.647137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.666992, 35.106113, 24.541773>,  <35.756168, 34.757961, 24.366167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666992, 35.106113, 24.541773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668915, 0.191012, -0.718378,
		-0.709121, -0.453817, 0.539628,
		-0.222937, 0.870382, 0.439015,
		35.600113, 35.367229, 24.673477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048130, 34.726009, 24.414701>,  <35.756168, 34.757961, 24.366167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048130, 34.726009, 24.414701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.120827, 35.115429, 24.470100>,  <35.164444, 35.349079, 24.503340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.120827, 35.115429, 24.470100>,  <35.048130, 34.726009, 24.414701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120827, 35.115429, 24.470100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642478, 0.224183, -0.732778,
		-0.744441, 0.044194, 0.666224,
		0.181740, 0.973544, 0.138497,
		35.175350, 35.407494, 24.511650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483540, 34.982388, 24.126432>,  <35.048130, 34.726009, 24.414701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483540, 34.982388, 24.126432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.732693, 35.295094, 24.138153>,  <34.882187, 35.482716, 24.145185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.732693, 35.295094, 24.138153>,  <34.483540, 34.982388, 24.126432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732693, 35.295094, 24.138153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471021, 0.404674, -0.783823,
		-0.624622, 0.474431, 0.620293,
		0.622886, 0.781763, 0.029301,
		34.919559, 35.529621, 24.146944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.101894, 35.579071, 24.002687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.456589, 35.740860, 23.913158>,  <34.669407, 35.837933, 23.859442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.456589, 35.740860, 23.913158>,  <34.101894, 35.579071, 24.002687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456589, 35.740860, 23.913158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404764, 0.445473, -0.798574,
		-0.223296, 0.798721, 0.558734,
		0.886738, 0.404474, -0.223821,
		34.722610, 35.862202, 23.846012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038376, 36.307827, 24.082518>,  <34.101894, 35.579071, 24.002687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038376, 36.307827, 24.082518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.352028, 36.266880, 23.837677>,  <34.540218, 36.242310, 23.690773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.352028, 36.266880, 23.837677>,  <34.038376, 36.307827, 24.082518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352028, 36.266880, 23.837677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405999, 0.661342, -0.630707,
		0.469374, 0.743066, 0.477013,
		0.784126, -0.102370, -0.612101,
		34.587265, 36.236168, 23.654047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182381, 36.958206, 23.903435>,  <34.038376, 36.307827, 24.082518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182381, 36.958206, 23.903435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.357010, 36.745499, 23.613157>,  <34.461788, 36.617874, 23.438992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.357010, 36.745499, 23.613157>,  <34.182381, 36.958206, 23.903435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357010, 36.745499, 23.613157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369603, 0.629399, -0.683557,
		0.820242, 0.566640, 0.078237,
		0.436573, -0.531766, -0.725692,
		34.487984, 36.585968, 23.395451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520718, 37.502304, 23.350889>,  <34.182381, 36.958206, 23.903435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520718, 37.502304, 23.350889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.492821, 37.162586, 23.141575>,  <34.476082, 36.958755, 23.015985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.492821, 37.162586, 23.141575>,  <34.520718, 37.502304, 23.350889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492821, 37.162586, 23.141575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412607, 0.502149, -0.760001,
		0.908235, 0.162905, -0.385449,
		-0.069745, -0.849298, -0.523286,
		34.471897, 36.907795, 22.984589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885174, 37.638954, 22.759769>,  <34.520718, 37.502304, 23.350889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885174, 37.638954, 22.759769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.640850, 37.332699, 22.679060>,  <34.494255, 37.148945, 22.630634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.640850, 37.332699, 22.679060>,  <34.885174, 37.638954, 22.759769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640850, 37.332699, 22.679060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341141, 0.484451, -0.805562,
		0.714516, -0.423213, -0.557097,
		-0.610810, -0.765636, -0.201773,
		34.457607, 37.103008, 22.618528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968842, 37.565399, 22.061640>,  <34.885174, 37.638954, 22.759769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968842, 37.565399, 22.061640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.624126, 37.395157, 22.172043>,  <34.417297, 37.293011, 22.238285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.624126, 37.395157, 22.172043>,  <34.968842, 37.565399, 22.061640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624126, 37.395157, 22.172043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477149, 0.495427, -0.725866,
		0.172191, -0.757240, -0.630030,
		-0.861789, -0.425606, 0.276008,
		34.365589, 37.267475, 22.254845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583832, 37.861626, 21.670414>,  <34.968842, 37.565399, 22.061640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583832, 37.861626, 21.670414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.296078, 37.640640, 21.838831>,  <34.123425, 37.508049, 21.939880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.296078, 37.640640, 21.838831>,  <34.583832, 37.861626, 21.670414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296078, 37.640640, 21.838831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635824, 0.279677, -0.719380,
		0.279677, -0.785216, -0.552464,
		0.719380, 0.552464, -0.421040,
		34.080265, 37.474899, 21.965143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335815, 37.380371, 21.242865>,  <34.583832, 37.861626, 21.670414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335815, 37.380371, 21.242865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.030872, 37.470001, 21.485716>,  <33.847908, 37.523781, 21.631426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.030872, 37.470001, 21.485716>,  <34.335815, 37.380371, 21.242865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030872, 37.470001, 21.485716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542215, 0.290989, -0.788244,
		-0.353294, -0.930116, -0.100340,
		-0.762356, 0.224075, 0.607127,
		33.802166, 37.537224, 21.667854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705276, 37.074348, 20.989510>,  <34.335815, 37.380371, 21.242865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705276, 37.074348, 20.989510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.549637, 37.379951, 21.195381>,  <33.456253, 37.563313, 21.318903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.549637, 37.379951, 21.195381>,  <33.705276, 37.074348, 20.989510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549637, 37.379951, 21.195381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378397, 0.376837, -0.845464,
		-0.839893, -0.523718, 0.142475,
		-0.389095, 0.764011, 0.514676,
		33.432907, 37.609154, 21.349785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179585, 37.354107, 20.564205>,  <33.705276, 37.074348, 20.989510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179585, 37.354107, 20.564205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.180710, 37.645805, 20.837904>,  <33.181385, 37.820824, 21.002123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.180710, 37.645805, 20.837904>,  <33.179585, 37.354107, 20.564205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180710, 37.645805, 20.837904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359308, 0.639294, -0.679853,
		-0.933215, -0.243942, 0.263823,
		0.002815, 0.729243, 0.684249,
		33.181553, 37.864578, 21.043179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469711, 37.694019, 20.607685>,  <33.179585, 37.354107, 20.564205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469711, 37.694019, 20.607685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.750023, 37.960117, 20.710726>,  <32.918209, 38.119778, 20.772551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.750023, 37.960117, 20.710726>,  <32.469711, 37.694019, 20.607685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750023, 37.960117, 20.710726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187635, 0.520272, -0.833133,
		-0.688262, 0.535505, 0.489418,
		0.700777, 0.665245, 0.257604,
		32.960255, 38.159691, 20.788008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135723, 38.301727, 20.496964>,  <32.469711, 37.694019, 20.607685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135723, 38.301727, 20.496964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.514988, 38.428577, 20.505154>,  <32.742546, 38.504688, 20.510067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.514988, 38.428577, 20.505154>,  <32.135723, 38.301727, 20.496964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514988, 38.428577, 20.505154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178083, 0.583595, -0.792278,
		-0.263203, 0.747561, 0.609817,
		0.948162, 0.317128, 0.020476,
		32.799435, 38.523716, 20.511297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127792, 39.017227, 20.543621>,  <32.135723, 38.301727, 20.496964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127792, 39.017227, 20.543621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.472530, 38.933487, 20.358841>,  <32.679371, 38.883244, 20.247972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.472530, 38.933487, 20.358841>,  <32.127792, 39.017227, 20.543621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472530, 38.933487, 20.358841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168708, 0.740628, -0.650391,
		0.478293, 0.638470, 0.602986,
		0.861843, -0.209349, -0.461952,
		32.731083, 38.870682, 20.220255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386730, 39.682373, 20.320004>,  <32.127792, 39.017227, 20.543621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386730, 39.682373, 20.320004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.602741, 39.424419, 20.103672>,  <32.732349, 39.269646, 19.973873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.602741, 39.424419, 20.103672>,  <32.386730, 39.682373, 20.320004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602741, 39.424419, 20.103672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069438, 0.674529, -0.734975,
		0.838779, 0.359352, 0.409044,
		0.540027, -0.644885, -0.540828,
		32.764748, 39.230953, 19.941423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892086, 40.077316, 19.913744>,  <32.386730, 39.682373, 20.320004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892086, 40.077316, 19.913744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.892651, 39.724205, 19.725826>,  <32.892990, 39.512341, 19.613075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.892651, 39.724205, 19.725826>,  <32.892086, 40.077316, 19.913744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892651, 39.724205, 19.725826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075493, 0.468548, -0.880207,
		0.997145, -0.034224, 0.067304,
		0.001411, -0.882775, -0.469794,
		32.893074, 39.459373, 19.584888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278267, 40.156834, 19.346687>,  <32.892086, 40.077316, 19.913744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278267, 40.156834, 19.346687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.089733, 39.821682, 19.236555>,  <32.976612, 39.620590, 19.170477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.089733, 39.821682, 19.236555>,  <33.278267, 40.156834, 19.346687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089733, 39.821682, 19.236555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070974, 0.347202, -0.935101,
		0.879094, -0.421204, -0.223115,
		-0.471334, -0.837877, -0.275329,
		32.948334, 39.570320, 19.153957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632820, 39.928608, 18.752300>,  <33.278267, 40.156834, 19.346687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632820, 39.928608, 18.752300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.255268, 39.798748, 18.776583>,  <33.028736, 39.720833, 18.791153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.255268, 39.798748, 18.776583>,  <33.632820, 39.928608, 18.752300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255268, 39.798748, 18.776583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191505, 0.388217, -0.901451,
		0.269084, -0.862492, -0.428604,
		-0.943886, -0.324646, 0.060709,
		32.972103, 39.701355, 18.794794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375198, 39.826775, 18.048161>,  <33.632820, 39.928608, 18.752300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375198, 39.826775, 18.048161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.036991, 39.833786, 18.261623>,  <32.834064, 39.837994, 18.389702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.036991, 39.833786, 18.261623>,  <33.375198, 39.826775, 18.048161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036991, 39.833786, 18.261623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445805, 0.526884, -0.723638,
		-0.293862, -0.849756, -0.437675,
		-0.845520, 0.017532, 0.533656,
		32.783337, 39.839046, 18.421721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015556, 39.929951, 17.510065>,  <33.375198, 39.826775, 18.048161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015556, 39.929951, 17.510065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.783466, 39.984852, 17.831186>,  <32.644211, 40.017792, 18.023859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.783466, 39.984852, 17.831186>,  <33.015556, 39.929951, 17.510065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783466, 39.984852, 17.831186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568123, 0.638078, -0.519704,
		-0.583584, -0.757639, -0.292253,
		-0.580229, 0.137255, 0.802805,
		32.609398, 40.026028, 18.072027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169147, 39.754040, 17.397581>,  <33.015556, 39.929951, 17.510065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169147, 39.754040, 17.397581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.219158, 40.016556, 17.695213>,  <32.249165, 40.174065, 17.873793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.219158, 40.016556, 17.695213>,  <32.169147, 39.754040, 17.397581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219158, 40.016556, 17.695213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647711, 0.622089, -0.439859,
		-0.751558, -0.426957, 0.502860,
		0.125022, 0.656288, 0.744080,
		32.256664, 40.213444, 17.918438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481640, 40.014019, 17.521709>,  <32.169147, 39.754040, 17.397581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481640, 40.014019, 17.521709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.729689, 40.279251, 17.689409>,  <31.878517, 40.438393, 17.790030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.729689, 40.279251, 17.689409>,  <31.481640, 40.014019, 17.521709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729689, 40.279251, 17.689409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466873, 0.741401, -0.482032,
		-0.630459, 0.103183, 0.769334,
		0.620122, 0.663082, 0.419250,
		31.915726, 40.478176, 17.815184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159622, 40.585186, 17.744005>,  <31.481640, 40.014019, 17.521709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159622, 40.585186, 17.744005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.529343, 40.729893, 17.695360>,  <31.751175, 40.816715, 17.666174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.529343, 40.729893, 17.695360>,  <31.159622, 40.585186, 17.744005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529343, 40.729893, 17.695360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355529, 0.700271, -0.619048,
		-0.138790, 0.615424, 0.775881,
		0.924304, 0.361765, -0.121611,
		31.806633, 40.838421, 17.658876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214857, 41.380512, 17.857708>,  <31.159622, 40.585186, 17.744005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214857, 41.380512, 17.857708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.486593, 41.243336, 17.598204>,  <31.649635, 41.161030, 17.442501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.486593, 41.243336, 17.598204>,  <31.214857, 41.380512, 17.857708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486593, 41.243336, 17.598204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291936, 0.684803, -0.667696,
		0.673255, 0.642988, 0.365095,
		0.679338, -0.342945, -0.648759,
		31.690395, 41.140453, 17.403576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533165, 41.847576, 17.857340>,  <31.214857, 41.380512, 17.857708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533165, 41.847576, 17.857340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.491915, 42.244423, 17.885822>,  <30.467165, 42.482533, 17.902912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.491915, 42.244423, 17.885822>,  <30.533165, 41.847576, 17.857340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491915, 42.244423, 17.885822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188740, -0.089808, 0.977912,
		0.976597, 0.087408, 0.196513,
		-0.103126, 0.992116, 0.071208,
		30.460978, 42.542057, 17.907185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168097, 42.149338, 18.008026>,  <30.533165, 41.847576, 17.857340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168097, 42.149338, 18.008026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.844004, 42.280334, 18.202459>,  <30.649548, 42.358932, 18.319118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.844004, 42.280334, 18.202459>,  <31.168097, 42.149338, 18.008026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844004, 42.280334, 18.202459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332413, -0.426293, 0.841294,
		0.482729, 0.843222, 0.236534,
		-0.810231, 0.327490, 0.486083,
		30.600935, 42.378582, 18.348284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386961, 42.496830, 18.593086>,  <31.168097, 42.149338, 18.008026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386961, 42.496830, 18.593086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.019455, 42.367737, 18.684050>,  <30.798950, 42.290283, 18.738628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.019455, 42.367737, 18.684050>,  <31.386961, 42.496830, 18.593086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019455, 42.367737, 18.684050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300267, -0.197211, 0.933246,
		-0.256337, 0.925718, 0.278096,
		-0.918766, -0.322729, 0.227410,
		30.743826, 42.270920, 18.752272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304781, 42.763901, 19.240368>,  <31.386961, 42.496830, 18.593086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304781, 42.763901, 19.240368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.984823, 42.523846, 19.240330>,  <30.792849, 42.379814, 19.240307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.984823, 42.523846, 19.240330>,  <31.304781, 42.763901, 19.240368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984823, 42.523846, 19.240330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279184, -0.372252, 0.885147,
		-0.531246, 0.707999, 0.465312,
		-0.799896, -0.600138, -0.000096,
		30.744854, 42.343803, 19.240301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.823057, 42.819283, 19.814505>,  <31.304781, 42.763901, 19.240368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.823057, 42.819283, 19.814505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.730650, 42.449478, 19.693233>,  <30.675205, 42.227596, 19.620472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.730650, 42.449478, 19.693233>,  <30.823057, 42.819283, 19.814505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730650, 42.449478, 19.693233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043710, -0.321153, 0.946018,
		-0.971967, 0.205297, 0.114603,
		-0.231020, -0.924507, -0.303176,
		30.661345, 42.172127, 19.602282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337414, 42.522541, 20.407825>,  <30.823057, 42.819283, 19.814505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337414, 42.522541, 20.407825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.500618, 42.231781, 20.186869>,  <30.598541, 42.057323, 20.054295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.500618, 42.231781, 20.186869>,  <30.337414, 42.522541, 20.407825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500618, 42.231781, 20.186869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128744, -0.553192, 0.823045,
		-0.903853, -0.406931, -0.132125,
		0.408013, -0.726902, -0.552394,
		30.623022, 42.013710, 20.021151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.989998, 41.947773, 20.648094>,  <30.337414, 42.522541, 20.407825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.989998, 41.947773, 20.648094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.308914, 41.805893, 20.452742>,  <30.500263, 41.720764, 20.335529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.308914, 41.805893, 20.452742>,  <29.989998, 41.947773, 20.648094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308914, 41.805893, 20.452742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158519, -0.657669, 0.736439,
		-0.582411, -0.664572, -0.468125,
		0.797288, -0.354704, -0.488382,
		30.548101, 41.699482, 20.306227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924433, 41.233570, 20.688314>,  <29.989998, 41.947773, 20.648094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924433, 41.233570, 20.688314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.311733, 41.318016, 20.634775>,  <30.544113, 41.368683, 20.602652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.311733, 41.318016, 20.634775>,  <29.924433, 41.233570, 20.688314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311733, 41.318016, 20.634775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245587, -0.703567, 0.666844,
		0.046613, -0.678544, -0.733079,
		0.968253, 0.211118, -0.133846,
		30.602209, 41.381351, 20.594622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199955, 40.603466, 20.689501>,  <29.924433, 41.233570, 20.688314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199955, 40.603466, 20.689501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.504997, 40.852776, 20.758734>,  <30.688023, 41.002361, 20.800274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.504997, 40.852776, 20.758734>,  <30.199955, 40.603466, 20.689501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504997, 40.852776, 20.758734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474317, -0.720735, 0.505534,
		0.439835, -0.303427, -0.845267,
		0.762606, 0.623277, 0.173084,
		30.733780, 41.039757, 20.810659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688540, 40.183205, 20.611025>,  <30.199955, 40.603466, 20.689501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688540, 40.183205, 20.611025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.836969, 40.480255, 20.834026>,  <30.926027, 40.658485, 20.967827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.836969, 40.480255, 20.834026>,  <30.688540, 40.183205, 20.611025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836969, 40.480255, 20.834026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429371, -0.669549, 0.606089,
		0.823374, 0.014471, -0.567315,
		0.371074, 0.742627, 0.557503,
		30.948292, 40.703045, 21.001278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324154, 39.953362, 20.783150>,  <30.688540, 40.183205, 20.611025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324154, 39.953362, 20.783150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.262331, 40.245434, 21.049368>,  <31.225237, 40.420677, 21.209099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.262331, 40.245434, 21.049368>,  <31.324154, 39.953362, 20.783150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262331, 40.245434, 21.049368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437178, -0.553556, 0.708838,
		0.885995, 0.400519, -0.233661,
		-0.154559, 0.730179, 0.665545,
		31.215963, 40.464489, 21.249031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842819, 39.950916, 21.135555>,  <31.324154, 39.953362, 20.783150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842819, 39.950916, 21.135555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.620790, 40.163395, 21.391596>,  <31.487574, 40.290882, 21.545219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.620790, 40.163395, 21.391596>,  <31.842819, 39.950916, 21.135555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620790, 40.163395, 21.391596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457004, -0.448234, 0.768267,
		0.695013, 0.718972, 0.006045,
		-0.555072, 0.531193, 0.640101,
		31.454269, 40.322754, 21.583626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268402, 40.188946, 21.585775>,  <31.842819, 39.950916, 21.135555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268402, 40.188946, 21.585775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.911892, 40.175850, 21.766684>,  <31.697985, 40.167992, 21.875229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.911892, 40.175850, 21.766684>,  <32.268402, 40.188946, 21.585775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911892, 40.175850, 21.766684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390978, -0.560686, 0.729909,
		0.229688, 0.827381, 0.512527,
		-0.891280, -0.032735, 0.452271,
		31.644508, 40.166031, 21.902365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333820, 40.493423, 22.288088>,  <32.268402, 40.188946, 21.585775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333820, 40.493423, 22.288088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.010769, 40.257744, 22.278490>,  <31.816936, 40.116337, 22.272732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.010769, 40.257744, 22.278490>,  <32.333820, 40.493423, 22.288088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010769, 40.257744, 22.278490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279750, -0.418648, 0.863987,
		-0.519107, 0.691070, 0.502942,
		-0.807631, -0.589199, -0.023996,
		31.768480, 40.080982, 22.271292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241936, 40.262878, 23.028786>,  <32.333820, 40.493423, 22.288088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241936, 40.262878, 23.028786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.030979, 40.020084, 22.790989>,  <31.904406, 39.874409, 22.648312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.030979, 40.020084, 22.790989>,  <32.241936, 40.262878, 23.028786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030979, 40.020084, 22.790989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095412, -0.737600, 0.668463,
		-0.844247, 0.295821, 0.446919,
		-0.527393, -0.606990, -0.594491,
		31.872761, 39.837986, 22.612642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832375, 39.970940, 23.543789>,  <32.241936, 40.262878, 23.028786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832375, 39.970940, 23.543789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.773081, 39.737789, 23.224218>,  <31.737505, 39.597900, 23.032476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.773081, 39.737789, 23.224218>,  <31.832375, 39.970940, 23.543789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773081, 39.737789, 23.224218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000226, -0.807871, 0.589360,
		-0.988952, 0.087182, 0.119886,
		-0.148234, -0.582875, -0.798926,
		31.728611, 39.562927, 22.984541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347677, 39.532948, 23.687662>,  <31.832375, 39.970940, 23.543789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347677, 39.532948, 23.687662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.518917, 39.338547, 23.382891>,  <31.621660, 39.221905, 23.200027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.518917, 39.338547, 23.382891>,  <31.347677, 39.532948, 23.687662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518917, 39.338547, 23.382891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011376, -0.840125, 0.542273,
		-0.903661, -0.240814, -0.354127,
		0.428098, -0.486003, -0.761928,
		31.647346, 39.192745, 23.154312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896742, 38.946064, 23.494629>,  <31.347677, 39.532948, 23.687662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896742, 38.946064, 23.494629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.276150, 38.877144, 23.388327>,  <31.503794, 38.835793, 23.324545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.276150, 38.877144, 23.388327>,  <30.896742, 38.946064, 23.494629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276150, 38.877144, 23.388327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025566, -0.877997, 0.477983,
		-0.315687, -0.446581, -0.837201,
		0.948518, -0.172297, -0.265755,
		31.560705, 38.825455, 23.308599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838427, 38.288841, 23.348015>,  <30.896742, 38.946064, 23.494629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838427, 38.288841, 23.348015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.217773, 38.374371, 23.441721>,  <31.445381, 38.425690, 23.497944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.217773, 38.374371, 23.441721>,  <30.838427, 38.288841, 23.348015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217773, 38.374371, 23.441721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001177, -0.740963, 0.671545,
		0.317174, -0.636595, -0.702956,
		0.948367, 0.213824, 0.234265,
		31.502283, 38.438519, 23.512001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189800, 37.712418, 23.330835>,  <30.838427, 38.288841, 23.348015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189800, 37.712418, 23.330835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.406403, 37.949581, 23.569241>,  <31.536364, 38.091877, 23.712284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.406403, 37.949581, 23.569241>,  <31.189800, 37.712418, 23.330835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406403, 37.949581, 23.569241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017532, -0.716762, 0.697097,
		0.840514, -0.367033, -0.398525,
		0.541506, 0.592907, 0.596014,
		31.568855, 38.127453, 23.748045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412809, 37.238922, 23.725994>,  <31.189800, 37.712418, 23.330835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412809, 37.238922, 23.725994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.571915, 37.536392, 23.940931>,  <31.667377, 37.714874, 24.069893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.571915, 37.536392, 23.940931>,  <31.412809, 37.238922, 23.725994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.571915, 37.536392, 23.940931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275097, -0.655390, 0.703410,
		0.875275, -0.131968, -0.465271,
		0.397761, 0.743672, 0.537343,
		31.691242, 37.759495, 24.102135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<35.908981, 33.882343, 25.602913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.996197, 34.221611, 25.796019>,  <36.048527, 34.425171, 25.911882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.996197, 34.221611, 25.796019>,  <35.908981, 33.882343, 25.602913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996197, 34.221611, 25.796019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559050, -0.514014, 0.650578,
		0.799951, 0.128039, -0.586246,
		0.218039, 0.848172, 0.482767,
		36.061607, 34.476063, 25.940849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683296, 33.915760, 25.656075>,  <35.908981, 33.882343, 25.602913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683296, 33.915760, 25.656075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.535931, 34.144596, 25.949192>,  <36.447514, 34.281898, 26.125063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.535931, 34.144596, 25.949192>,  <36.683296, 33.915760, 25.656075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535931, 34.144596, 25.949192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538462, -0.511250, 0.669838,
		0.757848, 0.641357, -0.119698,
		-0.368410, 0.572088, 0.732796,
		36.425407, 34.316223, 26.169031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344574, 34.059673, 26.099585>,  <36.683296, 33.915760, 25.656075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344574, 34.059673, 26.099585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.023468, 34.167778, 26.312199>,  <36.830803, 34.232639, 26.439766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.023468, 34.167778, 26.312199>,  <37.344574, 34.059673, 26.099585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023468, 34.167778, 26.312199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372076, -0.469543, 0.800680,
		0.465970, 0.840529, 0.276375,
		-0.802765, 0.270261, 0.531534,
		36.782639, 34.248856, 26.471659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464497, 34.506878, 26.756441>,  <37.344574, 34.059673, 26.099585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464497, 34.506878, 26.756441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.110104, 34.333767, 26.823063>,  <36.897469, 34.229900, 26.863037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.110104, 34.333767, 26.823063>,  <37.464497, 34.506878, 26.756441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110104, 34.333767, 26.823063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334072, -0.346585, 0.876513,
		-0.321608, 0.832216, 0.451647,
		-0.885982, -0.432776, 0.166556,
		36.844311, 34.203934, 26.873030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425591, 34.552814, 27.441683>,  <37.464497, 34.506878, 26.756441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425591, 34.552814, 27.441683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.137798, 34.288689, 27.355591>,  <36.965122, 34.130211, 27.303936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.137798, 34.288689, 27.355591>,  <37.425591, 34.552814, 27.441683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137798, 34.288689, 27.355591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167295, -0.465556, 0.869063,
		-0.674060, 0.589269, 0.445427,
		-0.719483, -0.660318, -0.215231,
		36.921955, 34.090595, 27.291021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051113, 34.354263, 28.036791>,  <37.425591, 34.552814, 27.441683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051113, 34.354263, 28.036791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.977558, 34.052265, 27.785023>,  <36.933426, 33.871067, 27.633963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.977558, 34.052265, 27.785023>,  <37.051113, 34.354263, 28.036791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977558, 34.052265, 27.785023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196978, -0.655655, 0.728915,
		-0.963008, 0.010057, 0.269284,
		-0.183888, -0.754994, -0.629420,
		36.922390, 33.825768, 27.596197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776138, 33.912918, 28.446928>,  <37.051113, 34.354263, 28.036791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776138, 33.912918, 28.446928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.875774, 33.670235, 28.144972>,  <36.935555, 33.524624, 27.963799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.875774, 33.670235, 28.144972>,  <36.776138, 33.912918, 28.446928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875774, 33.670235, 28.144972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295117, -0.694839, 0.655824,
		-0.922421, -0.386139, 0.005975,
		0.249088, -0.606709, -0.754890,
		36.950500, 33.488220, 27.918505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418053, 33.283253, 28.619461>,  <36.776138, 33.912918, 28.446928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418053, 33.283253, 28.619461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.720547, 33.236187, 28.362011>,  <36.902042, 33.207947, 28.207541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.720547, 33.236187, 28.362011>,  <36.418053, 33.283253, 28.619461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720547, 33.236187, 28.362011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346366, -0.762563, 0.546378,
		-0.555097, -0.636123, -0.535924,
		0.756240, -0.117667, -0.643628,
		36.947418, 33.200886, 28.168922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541763, 32.572117, 28.806637>,  <36.418053, 33.283253, 28.619461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541763, 32.572117, 28.806637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.846855, 32.672825, 28.568359>,  <37.029911, 32.733250, 28.425394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.846855, 32.672825, 28.568359>,  <36.541763, 32.572117, 28.806637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846855, 32.672825, 28.568359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615752, -0.564307, 0.549916,
		-0.197702, -0.786238, -0.585443,
		0.762734, 0.251768, -0.595692,
		37.075676, 32.748356, 28.389652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936226, 31.956860, 28.675499>,  <36.541763, 32.572117, 28.806637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936226, 31.956860, 28.675499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.187748, 32.261379, 28.612211>,  <37.338661, 32.444092, 28.574238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.187748, 32.261379, 28.612211>,  <36.936226, 31.956860, 28.675499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187748, 32.261379, 28.612211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714110, -0.484891, 0.504902,
		0.307662, -0.430470, -0.848552,
		0.628800, 0.761299, -0.158220,
		37.376389, 32.489769, 28.564745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535126, 31.591654, 28.503960>,  <36.936226, 31.956860, 28.675499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535126, 31.591654, 28.503960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.627277, 31.957811, 28.636005>,  <37.682568, 32.177505, 28.715233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.627277, 31.957811, 28.636005>,  <37.535126, 31.591654, 28.503960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627277, 31.957811, 28.636005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606731, -0.400351, 0.686729,
		0.760790, 0.042081, -0.647632,
		0.230382, 0.915395, 0.330115,
		37.696392, 32.232430, 28.735041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188789, 31.568071, 28.487362>,  <37.535126, 31.591654, 28.503960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188789, 31.568071, 28.487362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.094303, 31.851936, 28.752867>,  <38.037613, 32.022255, 28.912170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.094303, 31.851936, 28.752867>,  <38.188789, 31.568071, 28.487362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094303, 31.851936, 28.752867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599098, -0.431447, 0.674488,
		0.765038, 0.556984, -0.323243,
		-0.236217, 0.709664, 0.663761,
		38.023438, 32.064835, 28.951996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710072, 31.863894, 28.816631>,  <38.188789, 31.568071, 28.487362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710072, 31.863894, 28.816631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.432755, 31.911108, 29.101002>,  <38.266365, 31.939436, 29.271624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.432755, 31.911108, 29.101002>,  <38.710072, 31.863894, 28.816631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432755, 31.911108, 29.101002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611384, -0.425922, 0.666933,
		0.381522, 0.897027, 0.223121,
		-0.693290, 0.118037, 0.710927,
		38.224766, 31.946520, 29.314280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006290, 32.520607, 29.320051>,  <38.710072, 31.863894, 28.816631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006290, 32.520607, 29.320051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.771526, 32.228672, 29.460264>,  <38.630669, 32.053513, 29.544392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.771526, 32.228672, 29.460264>,  <39.006290, 32.520607, 29.320051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771526, 32.228672, 29.460264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706711, -0.250521, 0.661663,
		-0.395090, 0.636063, 0.662818,
		-0.586910, -0.729837, 0.350534,
		38.595455, 32.009720, 29.565424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444435, 33.141712, 29.359749>,  <39.006290, 32.520607, 29.320051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444435, 33.141712, 29.359749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.688301, 33.284698, 29.642740>,  <39.834621, 33.370491, 29.812536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.688301, 33.284698, 29.642740>,  <39.444435, 33.141712, 29.359749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688301, 33.284698, 29.642740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110844, 0.922216, -0.370448,
		-0.784873, 0.147428, 0.601864,
		0.609662, 0.357468, 0.707480,
		39.871201, 33.391937, 29.854984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129051, 33.597775, 29.693056>,  <39.444435, 33.141712, 29.359749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129051, 33.597775, 29.693056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.515591, 33.686695, 29.744833>,  <39.747513, 33.740047, 29.775898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.515591, 33.686695, 29.744833>,  <39.129051, 33.597775, 29.693056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515591, 33.686695, 29.744833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166538, 0.924140, -0.343847,
		-0.196060, 0.310719, 0.930061,
		0.966346, 0.222306, 0.129441,
		39.805496, 33.753387, 29.783665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142204, 34.348709, 29.838545>,  <39.129051, 33.597775, 29.693056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142204, 34.348709, 29.838545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.515808, 34.260883, 29.725826>,  <39.739971, 34.208187, 29.658195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.515808, 34.260883, 29.725826>,  <39.142204, 34.348709, 29.838545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515808, 34.260883, 29.725826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073946, 0.890565, -0.448805,
		0.349501, 0.398352, 0.848035,
		0.934013, -0.219567, -0.281797,
		39.796013, 34.195015, 29.641287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355194, 34.983650, 29.870098>,  <39.142204, 34.348709, 29.838545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355194, 34.983650, 29.870098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.644653, 34.802486, 29.661789>,  <39.818329, 34.693787, 29.536802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.644653, 34.802486, 29.661789>,  <39.355194, 34.983650, 29.870098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644653, 34.802486, 29.661789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074654, 0.801502, -0.593314,
		0.686119, 0.390473, 0.613817,
		0.723649, -0.452908, -0.520775,
		39.861748, 34.666615, 29.505556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801655, 35.624344, 29.761700>,  <39.355194, 34.983650, 29.870098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801655, 35.624344, 29.761700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.898422, 35.332512, 29.505829>,  <39.956482, 35.157413, 29.352306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.898422, 35.332512, 29.505829>,  <39.801655, 35.624344, 29.761700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898422, 35.332512, 29.505829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031412, 0.653024, -0.756686,
		0.969787, 0.203152, 0.135064,
		0.241922, -0.729581, -0.639676,
		39.971001, 35.113636, 29.313927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415642, 35.871513, 29.301601>,  <39.801655, 35.624344, 29.761700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415642, 35.871513, 29.301601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.243427, 35.573898, 29.097233>,  <40.140099, 35.395329, 28.974611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.243427, 35.573898, 29.097233>,  <40.415642, 35.871513, 29.301601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243427, 35.573898, 29.097233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048840, 0.584447, -0.809961,
		0.901250, -0.323765, -0.287965,
		-0.430537, -0.744042, -0.510920,
		40.114265, 35.350685, 28.943956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754150, 35.825504, 28.557285>,  <40.415642, 35.871513, 29.301601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754150, 35.825504, 28.557285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.385475, 35.670456, 28.563580>,  <40.164272, 35.577427, 28.567356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.385475, 35.670456, 28.563580>,  <40.754150, 35.825504, 28.557285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385475, 35.670456, 28.563580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251456, 0.566044, -0.785089,
		0.295405, -0.727563, -0.619183,
		-0.921686, -0.387616, 0.015738,
		40.108971, 35.554173, 28.568300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584293, 35.744263, 27.862076>,  <40.754150, 35.825504, 28.557285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584293, 35.744263, 27.862076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.214230, 35.718128, 28.011644>,  <39.992191, 35.702446, 28.101385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.214230, 35.718128, 28.011644>,  <40.584293, 35.744263, 27.862076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214230, 35.718128, 28.011644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369063, 0.385189, -0.845826,
		-0.088765, -0.920522, -0.380473,
		-0.925156, -0.065339, 0.373922,
		39.936684, 35.698528, 28.123821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183453, 35.443722, 27.300335>,  <40.584293, 35.744263, 27.862076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183453, 35.443722, 27.300335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.910740, 35.582016, 27.558216>,  <39.747112, 35.664993, 27.712944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.910740, 35.582016, 27.558216>,  <40.183453, 35.443722, 27.300335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910740, 35.582016, 27.558216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472123, 0.465234, -0.748770,
		-0.558817, -0.814875, -0.153955,
		-0.681780, 0.345740, 0.644702,
		39.706207, 35.685738, 27.751627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498814, 35.184326, 27.027929>,  <40.183453, 35.443722, 27.300335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498814, 35.184326, 27.027929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.496372, 35.517181, 27.249744>,  <39.494907, 35.716896, 27.382833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.496372, 35.517181, 27.249744>,  <39.498814, 35.184326, 27.027929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496372, 35.517181, 27.249744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407316, 0.504389, -0.761370,
		-0.913267, -0.230521, 0.335863,
		-0.006106, 0.832137, 0.554537,
		39.494541, 35.766823, 27.416105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921749, 35.441612, 26.815714>,  <39.498814, 35.184326, 27.027929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921749, 35.441612, 26.815714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.078766, 35.774479, 26.972387>,  <39.172977, 35.974197, 27.066391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.078766, 35.774479, 26.972387>,  <38.921749, 35.441612, 26.815714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078766, 35.774479, 26.972387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502784, 0.550756, -0.666241,
		-0.770142, 0.064596, 0.634593,
		0.392542, 0.832163, 0.391683,
		39.196529, 36.024128, 27.089891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351040, 35.949337, 26.814947>,  <38.921749, 35.441612, 26.815714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351040, 35.949337, 26.814947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.665909, 36.188789, 26.874289>,  <38.854828, 36.332462, 26.909893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.665909, 36.188789, 26.874289>,  <38.351040, 35.949337, 26.814947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665909, 36.188789, 26.874289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366274, 0.647291, -0.668475,
		-0.496196, 0.471865, 0.728789,
		0.787168, 0.598630, 0.148351,
		38.902058, 36.368378, 26.918795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074993, 36.644562, 27.026690>,  <38.351040, 35.949337, 26.814947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074993, 36.644562, 27.026690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.443291, 36.666580, 26.872181>,  <38.664268, 36.679790, 26.779476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.443291, 36.666580, 26.872181>,  <38.074993, 36.644562, 27.026690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443291, 36.666580, 26.872181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313712, 0.693085, -0.649013,
		0.231994, 0.718751, 0.655420,
		0.920741, 0.055046, -0.386273,
		38.719513, 36.683094, 26.756300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241379, 37.375217, 26.974792>,  <38.074993, 36.644562, 27.026690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241379, 37.375217, 26.974792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.496609, 37.208900, 26.715569>,  <38.649746, 37.109112, 26.560034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.496609, 37.208900, 26.715569>,  <38.241379, 37.375217, 26.974792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496609, 37.208900, 26.715569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267792, 0.669279, -0.693075,
		0.721908, 0.615777, 0.315702,
		0.638072, -0.415794, -0.648058,
		38.688030, 37.084164, 26.521151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435020, 37.852787, 27.523130>,  <38.241379, 37.375217, 26.974792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435020, 37.852787, 27.523130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.284798, 38.186729, 27.684111>,  <38.194664, 38.387096, 27.780699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.284798, 38.186729, 27.684111>,  <38.435020, 37.852787, 27.523130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284798, 38.186729, 27.684111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063858, -0.456513, 0.887422,
		0.924597, 0.307578, 0.224759,
		-0.375557, 0.834860, 0.402449,
		38.172131, 38.437187, 27.804846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866154, 38.097332, 27.977068>,  <38.435020, 37.852787, 27.523130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866154, 38.097332, 27.977068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.515305, 38.246349, 28.098310>,  <38.304794, 38.335758, 28.171055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.515305, 38.246349, 28.098310>,  <38.866154, 38.097332, 27.977068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515305, 38.246349, 28.098310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142729, -0.400402, 0.905156,
		0.458572, 0.837192, 0.298028,
		-0.877120, 0.372542, 0.303104,
		38.252167, 38.358112, 28.189241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027431, 38.227257, 28.614876>,  <38.866154, 38.097332, 27.977068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027431, 38.227257, 28.614876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.628845, 38.260735, 28.611876>,  <38.389694, 38.280823, 28.610075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.628845, 38.260735, 28.611876>,  <39.027431, 38.227257, 28.614876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628845, 38.260735, 28.611876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039162, -0.383572, 0.922680,
		0.074346, 0.919711, 0.385494,
		-0.996463, 0.083695, -0.007501,
		38.329906, 38.285843, 28.609625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888676, 38.515244, 29.324406>,  <39.027431, 38.227257, 28.614876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888676, 38.515244, 29.324406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.543541, 38.360497, 29.194265>,  <38.336460, 38.267651, 29.116182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.543541, 38.360497, 29.194265>,  <38.888676, 38.515244, 29.324406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543541, 38.360497, 29.194265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241498, -0.249945, 0.937660,
		-0.444066, 0.887617, 0.122235,
		-0.862835, -0.386863, -0.325350,
		38.284691, 38.244438, 29.096661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288380, 38.864872, 29.756439>,  <38.888676, 38.515244, 29.324406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288380, 38.864872, 29.756439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.209732, 38.497238, 29.619837>,  <38.162544, 38.276657, 29.537876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.209732, 38.497238, 29.619837>,  <38.288380, 38.864872, 29.756439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209732, 38.497238, 29.619837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210113, -0.300716, 0.930281,
		-0.957703, 0.254664, -0.133986,
		-0.196617, -0.919084, -0.341505,
		38.150745, 38.221512, 29.517385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764702, 38.561558, 30.236893>,  <38.288380, 38.864872, 29.756439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764702, 38.561558, 30.236893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.903767, 38.245075, 30.035646>,  <37.987206, 38.055187, 29.914898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.903767, 38.245075, 30.035646>,  <37.764702, 38.561558, 30.236893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903767, 38.245075, 30.035646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136077, -0.488331, 0.861983,
		-0.927694, -0.368140, -0.062108,
		0.347660, -0.791205, -0.503117,
		38.008064, 38.007713, 29.884710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371803, 38.034412, 30.501411>,  <37.764702, 38.561558, 30.236893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371803, 38.034412, 30.501411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.713268, 37.883625, 30.357656>,  <37.918148, 37.793152, 30.271402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.713268, 37.883625, 30.357656>,  <37.371803, 38.034412, 30.501411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713268, 37.883625, 30.357656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101905, -0.555798, 0.825048,
		-0.510764, -0.740934, -0.436047,
		0.853660, -0.376970, -0.359387,
		37.969364, 37.770535, 30.249840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262478, 37.327908, 30.590544>,  <37.371803, 38.034412, 30.501411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262478, 37.327908, 30.590544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.659431, 37.350655, 30.546818>,  <37.897602, 37.364304, 30.520582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.659431, 37.350655, 30.546818>,  <37.262478, 37.327908, 30.590544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659431, 37.350655, 30.546818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122500, -0.551019, 0.825452,
		-0.013295, -0.832553, -0.553786,
		0.992379, 0.056864, -0.109313,
		37.957146, 37.367714, 30.514023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437176, 36.675613, 30.809633>,  <37.262478, 37.327908, 30.590544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437176, 36.675613, 30.809633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.793438, 36.857418, 30.814489>,  <38.007195, 36.966499, 30.817402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.793438, 36.857418, 30.814489>,  <37.437176, 36.675613, 30.809633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793438, 36.857418, 30.814489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186469, -0.389495, 0.901955,
		0.414676, -0.801071, -0.431659,
		0.890659, 0.454510, 0.012139,
		38.060635, 36.993771, 30.818130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981243, 36.158421, 30.815939>,  <37.437176, 36.675613, 30.809633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981243, 36.158421, 30.815939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.156345, 36.485920, 30.964544>,  <38.261406, 36.682419, 31.053707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.156345, 36.485920, 30.964544>,  <37.981243, 36.158421, 30.815939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156345, 36.485920, 30.964544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292214, -0.520333, 0.802412,
		0.850284, -0.242697, -0.467027,
		0.437753, 0.818750, 0.371511,
		38.287670, 36.731544, 31.075998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589260, 35.953144, 31.208277>,  <37.981243, 36.158421, 30.815939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589260, 35.953144, 31.208277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.523861, 36.320053, 31.353535>,  <38.484619, 36.540199, 31.440689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.523861, 36.320053, 31.353535>,  <38.589260, 35.953144, 31.208277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523861, 36.320053, 31.353535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271516, -0.312044, 0.910444,
		0.948444, 0.247459, -0.198035,
		-0.163502, 0.917275, 0.363145,
		38.474812, 36.595234, 31.462479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185265, 36.027493, 31.681913>,  <38.589260, 35.953144, 31.208277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185265, 36.027493, 31.681913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.904747, 36.298813, 31.769634>,  <38.736439, 36.461605, 31.822268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.904747, 36.298813, 31.769634>,  <39.185265, 36.027493, 31.681913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904747, 36.298813, 31.769634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291724, -0.007628, 0.956472,
		0.650453, 0.734740, -0.192528,
		-0.701290, 0.678305, 0.219303,
		38.694359, 36.502304, 31.835424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.353374, 40.409542, 24.931185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973721, 40.526924, 24.976849>,  <37.745930, 40.597355, 25.004248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973721, 40.526924, 24.976849>,  <38.353374, 40.409542, 24.931185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973721, 40.526924, 24.976849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017361, -0.313233, 0.949517,
		0.314400, 0.903199, 0.292205,
		-0.949132, 0.293456, 0.114161,
		37.688980, 40.614960, 25.011097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427635, 40.734901, 25.477121>,  <38.353374, 40.409542, 24.931185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427635, 40.734901, 25.477121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034821, 40.662354, 25.456274>,  <37.799133, 40.618824, 25.443766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034821, 40.662354, 25.456274>,  <38.427635, 40.734901, 25.477121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034821, 40.662354, 25.456274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002001, -0.286171, 0.958177,
		-0.188697, 0.940857, 0.281392,
		-0.982033, -0.181368, -0.052117,
		37.740211, 40.607944, 25.440639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232410, 40.975655, 26.026651>,  <38.427635, 40.734901, 25.477121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232410, 40.975655, 26.026651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950375, 40.710247, 25.926577>,  <37.781155, 40.551003, 25.866531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950375, 40.710247, 25.926577>,  <38.232410, 40.975655, 26.026651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950375, 40.710247, 25.926577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034626, -0.384607, 0.922431,
		-0.708274, 0.641732, 0.294156,
		-0.705088, -0.663519, -0.250186,
		37.738850, 40.511192, 25.851521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748840, 40.986259, 26.591368>,  <38.232410, 40.975655, 26.026651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748840, 40.986259, 26.591368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754635, 40.632000, 26.405718>,  <37.758110, 40.419445, 26.294327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754635, 40.632000, 26.405718>,  <37.748840, 40.986259, 26.591368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754635, 40.632000, 26.405718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068272, -0.462216, 0.884135,
		-0.997561, -0.044495, 0.053769,
		0.014487, -0.885650, -0.464127,
		37.758980, 40.366306, 26.266479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343037, 40.545380, 27.072735>,  <37.748840, 40.986259, 26.591368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343037, 40.545380, 27.072735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509121, 40.278736, 26.825113>,  <37.608772, 40.118752, 26.676540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509121, 40.278736, 26.825113>,  <37.343037, 40.545380, 27.072735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509121, 40.278736, 26.825113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315101, -0.532981, 0.785266,
		-0.853411, -0.521118, -0.011252,
		0.415213, -0.666609, -0.619056,
		37.633686, 40.078754, 26.639397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994221, 39.908840, 27.218237>,  <37.343037, 40.545380, 27.072735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994221, 39.908840, 27.218237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338127, 39.808815, 27.040125>,  <37.544472, 39.748798, 26.933258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338127, 39.808815, 27.040125>,  <36.994221, 39.908840, 27.218237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338127, 39.808815, 27.040125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260989, -0.534311, 0.803988,
		-0.438965, -0.807453, -0.394117,
		0.859764, -0.250063, -0.445280,
		37.596058, 39.733795, 26.906540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029469, 39.253147, 27.330408>,  <36.994221, 39.908840, 27.218237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029469, 39.253147, 27.330408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402153, 39.359592, 27.231541>,  <37.625763, 39.423458, 27.172220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402153, 39.359592, 27.231541>,  <37.029469, 39.253147, 27.330408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402153, 39.359592, 27.231541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361022, -0.752844, 0.550354,
		-0.039623, -0.602006, -0.797508,
		0.931715, 0.266111, -0.247167,
		37.681667, 39.439426, 27.157391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362190, 38.612385, 26.987402>,  <37.029469, 39.253147, 27.330408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362190, 38.612385, 26.987402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679291, 38.826984, 27.103138>,  <37.869549, 38.955746, 27.172581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679291, 38.826984, 27.103138>,  <37.362190, 38.612385, 26.987402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679291, 38.826984, 27.103138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285117, -0.745924, 0.601919,
		0.538755, -0.394675, -0.744295,
		0.792750, 0.536498, 0.289341,
		37.917114, 38.987934, 27.189939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914925, 38.064091, 27.063644>,  <37.362190, 38.612385, 26.987402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914925, 38.064091, 27.063644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986176, 38.390190, 27.284056>,  <38.028927, 38.585850, 27.416304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986176, 38.390190, 27.284056>,  <37.914925, 38.064091, 27.063644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986176, 38.390190, 27.284056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099442, -0.572033, 0.814180,
		0.978970, -0.090232, -0.182965,
		0.178127, 0.815253, 0.551030,
		38.039616, 38.634766, 27.449366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481422, 37.911472, 26.541410>,  <37.914925, 38.064091, 27.063644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481422, 37.911472, 26.541410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606094, 37.596680, 26.328426>,  <38.680897, 37.407803, 26.200636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606094, 37.596680, 26.328426>,  <38.481422, 37.911472, 26.541410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606094, 37.596680, 26.328426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076807, 0.537673, -0.839648,
		0.947077, 0.302601, 0.107138,
		0.311683, -0.786982, -0.532459,
		38.699600, 37.360584, 26.168688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921604, 38.217506, 26.091024>,  <38.481422, 37.911472, 26.541410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921604, 38.217506, 26.091024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849121, 37.867775, 25.910931>,  <38.805630, 37.657936, 25.802876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849121, 37.867775, 25.910931>,  <38.921604, 38.217506, 26.091024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849121, 37.867775, 25.910931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092550, 0.440619, -0.892910,
		0.979080, -0.203472, 0.001075,
		-0.181209, -0.874330, -0.450233,
		38.794758, 37.605476, 25.775862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407940, 38.049385, 25.511740>,  <38.921604, 38.217506, 26.091024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407940, 38.049385, 25.511740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138916, 37.779037, 25.391161>,  <38.977501, 37.616829, 25.318813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138916, 37.779037, 25.391161>,  <39.407940, 38.049385, 25.511740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138916, 37.779037, 25.391161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029586, 0.382453, -0.923501,
		0.739455, -0.630025, -0.237225,
		-0.672556, -0.675869, -0.301447,
		38.937149, 37.576279, 25.300728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571136, 37.759495, 24.800119>,  <39.407940, 38.049385, 25.511740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571136, 37.759495, 24.800119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177837, 37.702930, 24.846107>,  <38.941856, 37.668991, 24.873701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177837, 37.702930, 24.846107>,  <39.571136, 37.759495, 24.800119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177837, 37.702930, 24.846107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162460, 0.394152, -0.904572,
		0.082602, -0.908101, -0.410524,
		-0.983251, -0.141413, 0.114973,
		38.882862, 37.660507, 24.880600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403889, 37.573723, 24.205038>,  <39.571136, 37.759495, 24.800119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403889, 37.573723, 24.205038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057518, 37.702641, 24.358036>,  <38.849697, 37.779991, 24.449835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057518, 37.702641, 24.358036>,  <39.403889, 37.573723, 24.205038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057518, 37.702641, 24.358036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297346, 0.283221, -0.911796,
		-0.402195, -0.903280, -0.149416,
		-0.865924, 0.322291, 0.382496,
		38.797741, 37.799328, 24.472784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933636, 37.415886, 23.703167>,  <39.403889, 37.573723, 24.205038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933636, 37.415886, 23.703167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765373, 37.704708, 23.922871>,  <38.664417, 37.878002, 24.054693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765373, 37.704708, 23.922871>,  <38.933636, 37.415886, 23.703167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765373, 37.704708, 23.922871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494630, 0.324996, -0.806051,
		-0.760521, -0.610749, 0.220439,
		-0.420653, 0.722054, 0.549261,
		38.639175, 37.921326, 24.087648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204983, 37.453587, 23.493406>,  <38.933636, 37.415886, 23.703167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204983, 37.453587, 23.493406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230755, 37.796360, 23.697956>,  <38.246220, 38.002026, 23.820686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230755, 37.796360, 23.697956>,  <38.204983, 37.453587, 23.493406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230755, 37.796360, 23.697956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724434, 0.392600, -0.566622,
		-0.686327, -0.333949, 0.646091,
		0.064432, 0.856938, 0.511376,
		38.250084, 38.053440, 23.851370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453793, 37.727482, 23.638556>,  <38.204983, 37.453587, 23.493406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453793, 37.727482, 23.638556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727917, 38.017689, 23.613333>,  <37.892391, 38.191814, 23.598198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727917, 38.017689, 23.613333>,  <37.453793, 37.727482, 23.638556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727917, 38.017689, 23.613333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544297, 0.452752, -0.706227,
		-0.483830, 0.518307, 0.705171,
		0.685310, 0.725516, -0.063058,
		37.933510, 38.235344, 23.594416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030167, 38.399406, 23.704256>,  <37.453793, 37.727482, 23.638556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030167, 38.399406, 23.704256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379402, 38.513500, 23.546089>,  <37.588943, 38.581955, 23.451189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379402, 38.513500, 23.546089>,  <37.030167, 38.399406, 23.704256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379402, 38.513500, 23.546089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487510, 0.499372, -0.716213,
		-0.006829, 0.818089, 0.575052,
		0.873091, 0.285235, -0.395416,
		37.641331, 38.599072, 23.427464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039577, 39.108608, 23.638433>,  <37.030167, 38.399406, 23.704256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039577, 39.108608, 23.638433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332394, 39.007214, 23.385498>,  <37.508083, 38.946377, 23.233736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332394, 39.007214, 23.385498>,  <37.039577, 39.108608, 23.638433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332394, 39.007214, 23.385498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486902, 0.454521, -0.745880,
		0.476484, 0.853905, 0.209305,
		0.732045, -0.253488, -0.632340,
		37.552006, 38.931168, 23.195795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150925, 39.739277, 23.260950>,  <37.039577, 39.108608, 23.638433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150925, 39.739277, 23.260950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317734, 39.445145, 23.047264>,  <37.417820, 39.268665, 22.919052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317734, 39.445145, 23.047264>,  <37.150925, 39.739277, 23.260950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317734, 39.445145, 23.047264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473190, 0.326177, -0.818352,
		0.776005, 0.594057, -0.211926,
		0.417022, -0.735326, -0.534217,
		37.442841, 39.224548, 22.886999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457935, 40.020309, 22.612789>,  <37.150925, 39.739277, 23.260950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457935, 40.020309, 22.612789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392056, 39.638081, 22.515003>,  <37.352528, 39.408745, 22.456331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392056, 39.638081, 22.515003>,  <37.457935, 40.020309, 22.612789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392056, 39.638081, 22.515003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401605, 0.291345, -0.868234,
		0.900881, -0.044821, -0.431746,
		-0.164702, -0.955567, -0.244467,
		37.342644, 39.351410, 22.441664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611614, 39.998024, 21.992815>,  <37.457935, 40.020309, 22.612789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611614, 39.998024, 21.992815> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388165, 39.666851, 22.012657>,  <37.254093, 39.468147, 22.024563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388165, 39.666851, 22.012657>,  <37.611614, 39.998024, 21.992815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388165, 39.666851, 22.012657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249030, 0.110378, -0.962185,
		0.791150, -0.549857, -0.267841,
		-0.558628, -0.827933, 0.049606,
		37.220577, 39.418472, 22.027538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821709, 39.658470, 21.405880>,  <37.611614, 39.998024, 21.992815>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821709, 39.658470, 21.405880> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464211, 39.527084, 21.528074>,  <37.249710, 39.448254, 21.601391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464211, 39.527084, 21.528074>,  <37.821709, 39.658470, 21.405880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464211, 39.527084, 21.528074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312601, -0.032334, -0.949334,
		0.321703, -0.943962, -0.073781,
		-0.893749, -0.328467, 0.305485,
		37.196087, 39.428543, 21.619720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.404657, 41.232029, 25.580441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.785767, 41.310066, 25.487350>,  <31.014433, 41.356888, 25.431498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.785767, 41.310066, 25.487350>,  <30.404657, 41.232029, 25.580441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785767, 41.310066, 25.487350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297295, -0.755524, 0.583780,
		-0.061937, -0.625398, -0.777844,
		0.952774, 0.195092, -0.232723,
		31.071598, 41.368595, 25.417534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642654, 40.579216, 25.402575>,  <30.404657, 41.232029, 25.580441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642654, 40.579216, 25.402575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.961664, 40.803997, 25.490366>,  <31.153070, 40.938866, 25.543041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.961664, 40.803997, 25.490366>,  <30.642654, 40.579216, 25.402575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961664, 40.803997, 25.490366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386454, -0.755232, 0.529412,
		0.463261, -0.337399, -0.819482,
		0.797522, 0.561948, 0.219481,
		31.200920, 40.972580, 25.556210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092848, 40.196381, 25.259327>,  <30.642654, 40.579216, 25.402575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092848, 40.196381, 25.259327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.284935, 40.448982, 25.502834>,  <31.400187, 40.600544, 25.648939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.284935, 40.448982, 25.502834>,  <31.092848, 40.196381, 25.259327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284935, 40.448982, 25.502834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520380, -0.763810, 0.381837,
		0.706114, 0.133428, -0.695413,
		0.480216, 0.631500, 0.608770,
		31.428999, 40.638432, 25.685465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790699, 40.058590, 25.169645>,  <31.092848, 40.196381, 25.259327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790699, 40.058590, 25.169645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.757786, 40.243797, 25.522654>,  <31.738039, 40.354919, 25.734459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.757786, 40.243797, 25.522654>,  <31.790699, 40.058590, 25.169645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757786, 40.243797, 25.522654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553128, -0.715403, 0.426906,
		0.829023, 0.523275, -0.197242,
		-0.082282, 0.463015, 0.882523,
		31.733101, 40.382702, 25.787411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393456, 39.941441, 25.514498>,  <31.790699, 40.058590, 25.169645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393456, 39.941441, 25.514498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.169071, 40.092434, 25.809204>,  <32.034439, 40.183029, 25.986029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.169071, 40.092434, 25.809204>,  <32.393456, 39.941441, 25.514498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169071, 40.092434, 25.809204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380837, -0.672545, 0.634544,
		0.735042, 0.636542, 0.233509,
		-0.560960, 0.377488, 0.736768,
		32.000782, 40.205681, 26.030235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852810, 39.892784, 26.047184>,  <32.393456, 39.941441, 25.514498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852810, 39.892784, 26.047184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.485767, 39.924946, 26.202890>,  <32.265541, 39.944244, 26.296314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.485767, 39.924946, 26.202890>,  <32.852810, 39.892784, 26.047184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485767, 39.924946, 26.202890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227715, -0.696341, 0.680628,
		0.325789, 0.713192, 0.620660,
		-0.917610, 0.080408, 0.389265,
		32.210484, 39.949070, 26.319670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803036, 40.168903, 26.845129>,  <32.852810, 39.892784, 26.047184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803036, 40.168903, 26.845129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.502209, 39.926056, 26.742521>,  <32.321712, 39.780346, 26.680956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.502209, 39.926056, 26.742521>,  <32.803036, 40.168903, 26.845129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502209, 39.926056, 26.742521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227805, -0.604660, 0.763211,
		-0.618469, 0.515548, 0.593049,
		-0.752065, -0.607121, -0.256519,
		32.276588, 39.743919, 26.665565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620720, 39.912273, 27.479494>,  <32.803036, 40.168903, 26.845129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620720, 39.912273, 27.479494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.420200, 39.654884, 27.248098>,  <32.299889, 39.500450, 27.109261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.420200, 39.654884, 27.248098>,  <32.620720, 39.912273, 27.479494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420200, 39.654884, 27.248098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056519, -0.691483, 0.720179,
		-0.863428, 0.328327, 0.383005,
		-0.501295, -0.643470, -0.578489,
		32.269814, 39.461842, 27.074551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083542, 39.674179, 27.907753>,  <32.620720, 39.912273, 27.479494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083542, 39.674179, 27.907753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.113380, 39.397602, 27.620325>,  <32.131283, 39.231655, 27.447868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.113380, 39.397602, 27.620325>,  <32.083542, 39.674179, 27.907753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113380, 39.397602, 27.620325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073961, -0.714756, 0.695452,
		-0.994467, -0.105023, -0.002177,
		0.074595, -0.691444, -0.718569,
		32.135757, 39.190170, 27.404755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792131, 39.042217, 28.151812>,  <32.083542, 39.674179, 27.907753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792131, 39.042217, 28.151812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.025608, 38.927292, 27.848034>,  <32.165695, 38.858337, 27.665768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.025608, 38.927292, 27.848034>,  <31.792131, 39.042217, 28.151812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025608, 38.927292, 27.848034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295680, -0.795875, 0.528352,
		-0.756225, -0.532947, -0.379594,
		0.583693, -0.287314, -0.759443,
		32.200714, 38.841099, 27.620201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564133, 38.424641, 28.157923>,  <31.792131, 39.042217, 28.151812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564133, 38.424641, 28.157923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.909452, 38.431774, 27.956171>,  <32.116642, 38.436054, 27.835119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.909452, 38.431774, 27.956171>,  <31.564133, 38.424641, 28.157923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909452, 38.431774, 27.956171> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307212, -0.811468, 0.497133,
		-0.400423, -0.584125, -0.706016,
		0.863297, 0.017833, -0.504381,
		32.168442, 38.437122, 27.804857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689938, 37.736927, 27.853794>,  <31.564133, 38.424641, 28.157923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689938, 37.736927, 27.853794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.033875, 37.936661, 27.896381>,  <32.240238, 38.056499, 27.921934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.033875, 37.936661, 27.896381>,  <31.689938, 37.736927, 27.853794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033875, 37.936661, 27.896381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351596, -0.730315, 0.585679,
		0.370204, -0.466159, -0.803520,
		0.859843, 0.499335, 0.106466,
		32.291828, 38.086460, 27.928322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265331, 37.155510, 27.770676>,  <31.689938, 37.736927, 27.853794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265331, 37.155510, 27.770676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.417023, 37.471771, 27.962946>,  <32.508038, 37.661530, 28.078308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.417023, 37.471771, 27.962946>,  <32.265331, 37.155510, 27.770676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417023, 37.471771, 27.962946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465018, -0.611963, 0.639733,
		0.799965, -0.019082, -0.599744,
		0.379229, 0.790656, 0.480675,
		32.530792, 37.708969, 28.107149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939342, 36.950001, 27.920610>,  <32.265331, 37.155510, 27.770676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939342, 36.950001, 27.920610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.833588, 37.237099, 28.178274>,  <32.770134, 37.409359, 28.332872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.833588, 37.237099, 28.178274>,  <32.939342, 36.950001, 27.920610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833588, 37.237099, 28.178274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445571, -0.501459, 0.741624,
		0.855317, 0.483093, -0.187229,
		-0.264385, 0.717747, 0.644158,
		32.754272, 37.452423, 28.371521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419983, 36.653305, 27.463686>,  <32.939342, 36.950001, 27.920610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419983, 36.653305, 27.463686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.537361, 36.295540, 27.328678>,  <33.607788, 36.080883, 27.247673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.537361, 36.295540, 27.328678>,  <33.419983, 36.653305, 27.463686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537361, 36.295540, 27.328678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213162, 0.282954, -0.935147,
		0.931906, 0.346364, -0.107622,
		0.293449, -0.894410, -0.337518,
		33.625397, 36.027218, 27.227423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961792, 36.828552, 26.982702>,  <33.419983, 36.653305, 27.463686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961792, 36.828552, 26.982702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.790367, 36.472389, 26.921379>,  <33.687511, 36.258690, 26.884586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.790367, 36.472389, 26.921379>,  <33.961792, 36.828552, 26.982702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790367, 36.472389, 26.921379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219767, 0.267313, -0.938214,
		0.876375, -0.368395, -0.310244,
		-0.428566, -0.890409, -0.153306,
		33.661797, 36.205265, 26.875387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252911, 36.537510, 26.238226>,  <33.961792, 36.828552, 26.982702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252911, 36.537510, 26.238226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.914089, 36.361797, 26.357906>,  <33.710796, 36.256371, 26.429714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.914089, 36.361797, 26.357906>,  <34.252911, 36.537510, 26.238226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914089, 36.361797, 26.357906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433231, 0.244539, -0.867474,
		0.307904, -0.864423, -0.397451,
		-0.847057, -0.439287, 0.299200,
		33.659973, 36.230011, 26.447666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926598, 36.014381, 25.711910>,  <34.252911, 36.537510, 26.238226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926598, 36.014381, 25.711910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.630680, 36.159035, 25.938866>,  <33.453129, 36.245827, 26.075039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.630680, 36.159035, 25.938866>,  <33.926598, 36.014381, 25.711910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630680, 36.159035, 25.938866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447807, 0.364741, -0.816353,
		-0.502173, -0.858011, -0.107888,
		-0.739791, 0.361638, 0.567386,
		33.408741, 36.267525, 26.109081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419014, 35.989246, 25.275202>,  <33.926598, 36.014381, 25.711910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419014, 35.989246, 25.275202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.258030, 36.222149, 25.557762>,  <33.161438, 36.361889, 25.727299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.258030, 36.222149, 25.557762>,  <33.419014, 35.989246, 25.275202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258030, 36.222149, 25.557762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607233, 0.407654, -0.681973,
		-0.685050, -0.703418, 0.189500,
		-0.402462, 0.582256, 0.706401,
		33.137291, 36.396824, 25.769682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671772, 35.925426, 25.221901>,  <33.419014, 35.989246, 25.275202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671772, 35.925426, 25.221901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.728199, 36.282059, 25.394035>,  <32.762054, 36.496037, 25.497316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.728199, 36.282059, 25.394035>,  <32.671772, 35.925426, 25.221901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728199, 36.282059, 25.394035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674189, 0.404827, -0.617725,
		-0.724962, -0.202989, 0.658198,
		0.141065, 0.891577, 0.430337,
		32.770519, 36.549534, 25.523136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904306, 36.221451, 25.290052>,  <32.671772, 35.925426, 25.221901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904306, 36.221451, 25.290052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.152832, 36.528324, 25.353804>,  <32.301949, 36.712448, 25.392056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.152832, 36.528324, 25.353804>,  <31.904306, 36.221451, 25.290052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152832, 36.528324, 25.353804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625020, 0.607913, -0.489685,
		-0.472567, 0.204632, 0.857208,
		0.621314, 0.767182, 0.159380,
		32.339226, 36.758480, 25.401617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422499, 36.788593, 25.264568>,  <31.904306, 36.221451, 25.290052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422499, 36.788593, 25.264568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.795479, 36.916416, 25.197132>,  <32.019268, 36.993111, 25.156670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.795479, 36.916416, 25.197132>,  <31.422499, 36.788593, 25.264568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795479, 36.916416, 25.197132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333736, 0.583024, -0.740745,
		-0.138416, 0.746973, 0.650287,
		0.932449, 0.319555, -0.168591,
		32.075214, 37.012283, 25.146555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452446, 37.530056, 25.414297>,  <31.422499, 36.788593, 25.264568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452446, 37.530056, 25.414297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.768978, 37.471973, 25.176739>,  <31.958897, 37.437122, 25.034203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.768978, 37.471973, 25.176739>,  <31.452446, 37.530056, 25.414297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768978, 37.471973, 25.176739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242551, 0.817115, -0.522965,
		0.561220, 0.557887, 0.611386,
		0.791328, -0.145207, -0.593897,
		32.006378, 37.428410, 24.998569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750542, 38.203960, 25.293423>,  <31.452446, 37.530056, 25.414297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750542, 38.203960, 25.293423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.895338, 38.002850, 24.979435>,  <31.982216, 37.882183, 24.791042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.895338, 38.002850, 24.979435>,  <31.750542, 38.203960, 25.293423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895338, 38.002850, 24.979435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154444, 0.798093, -0.582405,
		0.919299, 0.332058, 0.211251,
		0.361990, -0.502778, -0.784970,
		32.003937, 37.852016, 24.743944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126797, 38.706276, 24.880482>,  <31.750542, 38.203960, 25.293423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126797, 38.706276, 24.880482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.052349, 38.401043, 24.632912>,  <32.007683, 38.217903, 24.484369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.052349, 38.401043, 24.632912>,  <32.126797, 38.706276, 24.880482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052349, 38.401043, 24.632912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001418, 0.629724, -0.776818,
		0.982527, -0.145455, -0.116118,
		-0.186115, -0.763080, -0.618927,
		31.996515, 38.172119, 24.447233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574673, 38.796814, 24.285454>,  <32.126797, 38.706276, 24.880482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574673, 38.796814, 24.285454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.284248, 38.557564, 24.149755>,  <32.109993, 38.414013, 24.068336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.284248, 38.557564, 24.149755>,  <32.574673, 38.796814, 24.285454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284248, 38.557564, 24.149755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057402, 0.544350, -0.836892,
		0.685233, -0.588159, -0.429564,
		-0.726058, -0.598124, -0.339245,
		32.066429, 38.378128, 24.047981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775459, 38.701614, 23.632523>,  <32.574673, 38.796814, 24.285454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775459, 38.701614, 23.632523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.388958, 38.602688, 23.603729>,  <32.157055, 38.543331, 23.586452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.388958, 38.602688, 23.603729>,  <32.775459, 38.701614, 23.632523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388958, 38.602688, 23.603729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107456, 0.641020, -0.759965,
		0.234097, -0.726586, -0.645965,
		-0.966256, -0.247319, -0.071985,
		32.099083, 38.528492, 23.582134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670979, 38.345085, 22.971706>,  <32.775459, 38.701614, 23.632523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670979, 38.345085, 22.971706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.328266, 38.510223, 23.095312>,  <32.122639, 38.609306, 23.169476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.328266, 38.510223, 23.095312>,  <32.670979, 38.345085, 22.971706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328266, 38.510223, 23.095312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159114, 0.781633, -0.603102,
		-0.490523, -0.467557, -0.735376,
		-0.856779, 0.412844, 0.309014,
		32.071232, 38.634075, 23.188017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877117, 37.816582, 22.496777>,  <32.670979, 38.345085, 22.971706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877117, 37.816582, 22.496777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.166229, 37.713028, 22.240473>,  <33.339695, 37.650898, 22.086691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.166229, 37.713028, 22.240473>,  <32.877117, 37.816582, 22.496777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166229, 37.713028, 22.240473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497751, -0.448185, 0.742546,
		-0.479410, -0.855634, -0.195081,
		0.722780, -0.258882, -0.640757,
		33.383064, 37.635365, 22.048246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105644, 37.294964, 22.839972>,  <32.877117, 37.816582, 22.496777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105644, 37.294964, 22.839972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.390762, 37.315819, 22.560198>,  <33.561832, 37.328331, 22.392334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.390762, 37.315819, 22.560198>,  <33.105644, 37.294964, 22.839972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390762, 37.315819, 22.560198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521439, -0.706332, 0.478745,
		-0.469073, -0.705958, -0.530654,
		0.712792, 0.052138, -0.699435,
		33.604599, 37.331459, 22.350367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265705, 36.620125, 22.766552>,  <33.105644, 37.294964, 22.839972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265705, 36.620125, 22.766552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.587135, 36.806625, 22.618563>,  <33.779991, 36.918526, 22.529770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.587135, 36.806625, 22.618563>,  <33.265705, 36.620125, 22.766552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587135, 36.806625, 22.618563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589513, -0.709236, 0.386599,
		-0.082142, -0.528763, -0.844785,
		0.803571, 0.466256, -0.369971,
		33.828205, 36.946503, 22.507572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667400, 36.060123, 22.476000>,  <33.265705, 36.620125, 22.766552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667400, 36.060123, 22.476000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.922001, 36.368565, 22.482506>,  <34.074760, 36.553627, 22.486410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.922001, 36.368565, 22.482506>,  <33.667400, 36.060123, 22.476000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922001, 36.368565, 22.482506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647641, -0.545810, 0.531651,
		0.418834, -0.327864, -0.846808,
		0.636505, 0.771101, 0.016265,
		34.112953, 36.599895, 22.487385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393665, 35.797260, 22.427486>,  <33.667400, 36.060123, 22.476000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393665, 35.797260, 22.427486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.430012, 36.158936, 22.594427>,  <34.451820, 36.375942, 22.694592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.430012, 36.158936, 22.594427>,  <34.393665, 35.797260, 22.427486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430012, 36.158936, 22.594427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714222, -0.351220, 0.605418,
		0.693996, 0.243071, -0.677707,
		0.090865, 0.904191, 0.417352,
		34.457272, 36.430191, 22.719633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080048, 35.935833, 22.427130>,  <34.393665, 35.797260, 22.427486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080048, 35.935833, 22.427130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.904118, 36.135422, 22.725815>,  <34.798561, 36.255177, 22.905025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.904118, 36.135422, 22.725815>,  <35.080048, 35.935833, 22.427130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904118, 36.135422, 22.725815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613572, -0.440199, 0.655557,
		0.655808, 0.746491, -0.112546,
		-0.439825, 0.498975, 0.746712,
		34.772171, 36.285114, 22.949829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581348, 36.191570, 22.800360>,  <35.080048, 35.935833, 22.427130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581348, 36.191570, 22.800360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.273479, 36.179783, 23.055466>,  <35.088760, 36.172710, 23.208529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.273479, 36.179783, 23.055466>,  <35.581348, 36.191570, 22.800360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273479, 36.179783, 23.055466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584634, -0.433928, 0.685500,
		0.256542, 0.900465, 0.351210,
		-0.769669, -0.029470, 0.637763,
		35.042580, 36.170940, 23.246794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843689, 36.373814, 23.545298>,  <35.581348, 36.191570, 22.800360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843689, 36.373814, 23.545298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.496662, 36.216019, 23.666426>,  <35.288445, 36.121342, 23.739103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.496662, 36.216019, 23.666426>,  <35.843689, 36.373814, 23.545298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496662, 36.216019, 23.666426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438281, -0.318747, 0.840422,
		-0.235015, 0.861845, 0.449433,
		-0.867570, -0.394490, 0.302820,
		35.236393, 36.097672, 23.757271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754341, 36.436401, 24.254700>,  <35.843689, 36.373814, 23.545298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754341, 36.436401, 24.254700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.460526, 36.168667, 24.210089>,  <35.284237, 36.008026, 24.183321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.460526, 36.168667, 24.210089>,  <35.754341, 36.436401, 24.254700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460526, 36.168667, 24.210089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148053, -0.318487, 0.936294,
		-0.662217, 0.671234, 0.333039,
		-0.734541, -0.669337, -0.111530,
		35.240162, 35.967865, 24.176630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284103, 36.704342, 24.711565>,  <35.754341, 36.436401, 24.254700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284103, 36.704342, 24.711565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.259338, 36.310776, 24.644529>,  <35.244480, 36.074638, 24.604309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.259338, 36.310776, 24.644529>,  <35.284103, 36.704342, 24.711565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259338, 36.310776, 24.644529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260271, -0.178016, 0.948983,
		-0.963548, 0.015140, 0.267106,
		-0.061917, -0.983911, -0.167587,
		35.240765, 36.015602, 24.594254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258427, 36.385441, 25.370512>,  <35.284103, 36.704342, 24.711565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258427, 36.385441, 25.370512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.339748, 36.058308, 25.155174>,  <35.388542, 35.862026, 25.025972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.339748, 36.058308, 25.155174>,  <35.258427, 36.385441, 25.370512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339748, 36.058308, 25.155174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573794, -0.346002, 0.742323,
		-0.793366, -0.459812, 0.398927,
		0.203300, -0.817836, -0.538344,
		35.400738, 35.812958, 24.993671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971848, 35.846630, 25.742538>,  <35.258427, 36.385441, 25.370512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971848, 35.846630, 25.742538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.259460, 35.695107, 25.509472>,  <35.432026, 35.604191, 25.369633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.259460, 35.695107, 25.509472>,  <34.971848, 35.846630, 25.742538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259460, 35.695107, 25.509472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375780, -0.493350, 0.784471,
		-0.584627, -0.783010, -0.212382,
		0.719028, -0.378814, -0.582665,
		35.475170, 35.581463, 25.334673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986946, 35.042618, 25.916630>,  <34.971848, 35.846630, 25.742538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986946, 35.042618, 25.916630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.335438, 35.101719, 25.729382>,  <35.544533, 35.137180, 25.617033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.335438, 35.101719, 25.729382>,  <34.986946, 35.042618, 25.916630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335438, 35.101719, 25.729382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466331, -0.546931, 0.695271,
		-0.153300, -0.824037, -0.545402,
		0.871226, 0.147753, -0.468118,
		35.596806, 35.146046, 25.588945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171776, 34.435631, 25.883924>,  <34.986946, 35.042618, 25.916630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171776, 34.435631, 25.883924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.507336, 34.647839, 25.835268>,  <35.708672, 34.775162, 25.806074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.507336, 34.647839, 25.835268>,  <35.171776, 34.435631, 25.883924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507336, 34.647839, 25.835268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410754, -0.470452, 0.780997,
		0.357105, -0.705145, -0.612575,
		0.838903, 0.530515, -0.121640,
		35.759007, 34.806992, 25.798777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.667057, 39.028477, 20.986866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.310593, 39.138161, 21.131443>,  <37.096714, 39.203972, 21.218189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.310593, 39.138161, 21.131443>,  <37.667057, 39.028477, 20.986866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310593, 39.138161, 21.131443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298021, 0.246868, -0.922084,
		-0.342075, -0.929443, -0.138278,
		-0.891161, 0.274212, 0.361441,
		37.043243, 39.220425, 21.239876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303207, 39.007549, 20.456110>,  <37.667057, 39.028477, 20.986866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303207, 39.007549, 20.456110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.058075, 39.232643, 20.678017>,  <36.910995, 39.367699, 20.811161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.058075, 39.232643, 20.678017>,  <37.303207, 39.007549, 20.456110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058075, 39.232643, 20.678017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456174, 0.321322, -0.829854,
		-0.645246, -0.761631, 0.059788,
		-0.612831, 0.562734, 0.554769,
		36.874226, 39.401463, 20.844448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541157, 38.908073, 20.233921>,  <37.303207, 39.007549, 20.456110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541157, 38.908073, 20.233921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.538170, 39.263889, 20.416643>,  <36.536377, 39.477379, 20.526276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.538170, 39.263889, 20.416643>,  <36.541157, 38.908073, 20.233921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538170, 39.263889, 20.416643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438080, 0.407736, -0.801147,
		-0.898905, -0.206098, 0.386644,
		-0.007466, 0.889536, 0.456804,
		36.535931, 39.530750, 20.553684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811272, 39.181919, 20.148293>,  <36.541157, 38.908073, 20.233921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811272, 39.181919, 20.148293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.026302, 39.503040, 20.251455>,  <36.155319, 39.695713, 20.313353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.026302, 39.503040, 20.251455>,  <35.811272, 39.181919, 20.148293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026302, 39.503040, 20.251455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473366, 0.540439, -0.695593,
		-0.697809, 0.251851, 0.670548,
		0.537576, 0.802806, 0.257905,
		36.187576, 39.743881, 20.328827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322792, 39.672436, 20.148111>,  <35.811272, 39.181919, 20.148293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322792, 39.672436, 20.148111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.662872, 39.880188, 20.182535>,  <35.866920, 40.004841, 20.203190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.662872, 39.880188, 20.182535>,  <35.322792, 39.672436, 20.148111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662872, 39.880188, 20.182535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445139, 0.796472, -0.409248,
		-0.281101, 0.309633, 0.908355,
		0.850196, 0.519385, 0.086059,
		35.917931, 40.036003, 20.208353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145279, 40.293999, 20.452477>,  <35.322792, 39.672436, 20.148111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145279, 40.293999, 20.452477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.489014, 40.332050, 20.251486>,  <35.695255, 40.354881, 20.130892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.489014, 40.332050, 20.251486>,  <35.145279, 40.293999, 20.452477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489014, 40.332050, 20.251486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433837, 0.655833, -0.617793,
		0.270771, 0.748889, 0.604854,
		0.859342, 0.095128, -0.502477,
		35.746815, 40.360588, 20.100742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191784, 40.937744, 20.302591>,  <35.145279, 40.293999, 20.452477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191784, 40.937744, 20.302591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.431808, 40.830193, 20.001225>,  <35.575821, 40.765659, 19.820404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.431808, 40.830193, 20.001225>,  <35.191784, 40.937744, 20.302591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431808, 40.830193, 20.001225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555780, 0.537266, -0.634392,
		0.575361, 0.799404, 0.172951,
		0.600057, -0.268882, -0.753415,
		35.611824, 40.749527, 19.775200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329166, 41.539116, 19.974199>,  <35.191784, 40.937744, 20.302591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329166, 41.539116, 19.974199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.414921, 41.269634, 19.691311>,  <35.466373, 41.107944, 19.521578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.414921, 41.269634, 19.691311>,  <35.329166, 41.539116, 19.974199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414921, 41.269634, 19.691311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375034, 0.611781, -0.696472,
		0.901880, 0.414547, -0.121505,
		0.214386, -0.673703, -0.707222,
		35.479237, 41.067524, 19.479145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648338, 41.873127, 19.416319>,  <35.329166, 41.539116, 19.974199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648338, 41.873127, 19.416319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.509720, 41.528603, 19.267698>,  <35.426548, 41.321888, 19.178526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.509720, 41.528603, 19.267698>,  <35.648338, 41.873127, 19.416319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509720, 41.528603, 19.267698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408409, 0.495122, -0.766848,
		0.844458, -0.114003, -0.523349,
		-0.346544, -0.861312, -0.371550,
		35.405758, 41.270210, 19.156233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772030, 41.880348, 18.619436>,  <35.648338, 41.873127, 19.416319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772030, 41.880348, 18.619436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.492275, 41.602547, 18.686983>,  <35.324421, 41.435867, 18.727510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.492275, 41.602547, 18.686983>,  <35.772030, 41.880348, 18.619436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492275, 41.602547, 18.686983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538431, 0.356577, -0.763508,
		0.470047, -0.624913, -0.623330,
		-0.699391, -0.694504, 0.168865,
		35.282459, 41.394196, 18.737642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369305, 41.705475, 17.956129>,  <35.772030, 41.880348, 18.619436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369305, 41.705475, 17.956129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.117874, 41.566742, 18.234583>,  <34.967018, 41.483501, 18.401655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.117874, 41.566742, 18.234583>,  <35.369305, 41.705475, 17.956129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117874, 41.566742, 18.234583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775917, 0.341057, -0.530691,
		-0.053363, -0.873722, -0.483490,
		-0.628574, -0.346829, 0.696135,
		34.929302, 41.462692, 18.443424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884789, 41.420914, 17.556587>,  <35.369305, 41.705475, 17.956129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884789, 41.420914, 17.556587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.719513, 41.483761, 17.915382>,  <34.620346, 41.521469, 18.130659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.719513, 41.483761, 17.915382>,  <34.884789, 41.420914, 17.556587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719513, 41.483761, 17.915382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790624, 0.426876, -0.438965,
		-0.451870, -0.890557, -0.052163,
		-0.413191, 0.157114, 0.896988,
		34.595554, 41.530895, 18.184479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233871, 41.138538, 17.510649>,  <34.884789, 41.420914, 17.556587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233871, 41.138538, 17.510649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.191162, 41.382942, 17.824406>,  <34.165535, 41.529583, 18.012659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.191162, 41.382942, 17.824406>,  <34.233871, 41.138538, 17.510649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191162, 41.382942, 17.824406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829032, 0.380819, -0.409491,
		-0.548913, -0.694008, 0.465884,
		-0.106772, 0.611007, 0.784391,
		34.159130, 41.566246, 18.059723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555168, 41.024628, 17.806805>,  <34.233871, 41.138538, 17.510649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555168, 41.024628, 17.806805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.689514, 41.392841, 17.886621>,  <33.770123, 41.613770, 17.934511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.689514, 41.392841, 17.886621>,  <33.555168, 41.024628, 17.806805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689514, 41.392841, 17.886621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853615, 0.387022, -0.348647,
		-0.398169, -0.053237, 0.915766,
		0.335861, 0.920532, 0.199544,
		33.790272, 41.669003, 17.946486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824154, 41.563568, 17.770803>,  <33.555168, 41.024628, 17.806805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824154, 41.563568, 17.770803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.504688, 41.323200, 17.757965>,  <32.313007, 41.178982, 17.750261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.504688, 41.323200, 17.757965>,  <32.824154, 41.563568, 17.770803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504688, 41.323200, 17.757965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384726, -0.550893, 0.740609,
		-0.462727, 0.579152, 0.671169,
		-0.798667, -0.600916, -0.032098,
		32.265087, 41.142925, 17.748335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653156, 41.404686, 18.438389>,  <32.824154, 41.563568, 17.770803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653156, 41.404686, 18.438389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.458515, 41.122547, 18.232201>,  <32.341732, 40.953266, 18.108488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.458515, 41.122547, 18.232201>,  <32.653156, 41.404686, 18.438389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458515, 41.122547, 18.232201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144078, -0.646749, 0.748970,
		-0.861661, 0.290183, 0.416335,
		-0.486603, -0.705343, -0.515469,
		32.312534, 40.910946, 18.077560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495472, 41.035736, 18.981064>,  <32.653156, 41.404686, 18.438389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495472, 41.035736, 18.981064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.404007, 40.805099, 18.667311>,  <32.349129, 40.666718, 18.479059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.404007, 40.805099, 18.667311>,  <32.495472, 41.035736, 18.981064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404007, 40.805099, 18.667311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073395, -0.793226, 0.604488,
		-0.970734, 0.195795, 0.139065,
		-0.228666, -0.576590, -0.784382,
		32.335407, 40.632122, 18.431995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950399, 40.655003, 19.118374>,  <32.495472, 41.035736, 18.981064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950399, 40.655003, 19.118374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.110691, 40.440659, 18.821115>,  <32.206867, 40.312050, 18.642761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.110691, 40.440659, 18.821115>,  <31.950399, 40.655003, 19.118374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110691, 40.440659, 18.821115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300117, -0.689594, 0.659083,
		-0.865648, -0.487144, -0.115519,
		0.400729, -0.535865, -0.743146,
		32.230911, 40.279900, 18.598171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873003, 39.926979, 19.272049>,  <31.950399, 40.655003, 19.118374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873003, 39.926979, 19.272049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.123775, 39.885860, 18.963144>,  <32.274239, 39.861191, 18.777802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.123775, 39.885860, 18.963144>,  <31.873003, 39.926979, 19.272049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123775, 39.885860, 18.963144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309761, -0.876645, 0.368160,
		-0.714844, -0.470028, -0.517756,
		0.626934, -0.102796, -0.772261,
		32.311855, 39.855022, 18.731466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778881, 39.213768, 19.023056>,  <31.873003, 39.926979, 19.272049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778881, 39.213768, 19.023056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.141209, 39.364281, 18.945183>,  <32.358604, 39.454590, 18.898458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.141209, 39.364281, 18.945183>,  <31.778881, 39.213768, 19.023056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141209, 39.364281, 18.945183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423271, -0.784021, 0.454040,
		0.018211, -0.493683, -0.869451,
		0.905820, 0.376282, -0.194684,
		32.412956, 39.477165, 18.886778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113625, 38.674793, 18.839296>,  <31.778881, 39.213768, 19.023056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113625, 38.674793, 18.839296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.383713, 38.945511, 18.956615>,  <32.545769, 39.107941, 19.027006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.383713, 38.945511, 18.956615>,  <32.113625, 38.674793, 18.839296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383713, 38.945511, 18.956615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363539, -0.651332, 0.666037,
		0.641802, -0.343101, -0.685836,
		0.675225, 0.676792, 0.293296,
		32.586281, 39.148548, 19.044605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846569, 38.347019, 19.017807>,  <32.113625, 38.674793, 18.839296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846569, 38.347019, 19.017807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.845074, 38.706409, 19.193411>,  <32.844177, 38.922043, 19.298775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.845074, 38.706409, 19.193411>,  <32.846569, 38.347019, 19.017807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845074, 38.706409, 19.193411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422472, -0.396493, 0.815053,
		0.906368, 0.188518, -0.378097,
		-0.003740, 0.898473, 0.439012,
		32.843952, 38.975952, 19.325115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613579, 38.424347, 19.284616>,  <32.846569, 38.347019, 19.017807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613579, 38.424347, 19.284616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.357906, 38.664692, 19.476618>,  <33.204502, 38.808899, 19.591818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.357906, 38.664692, 19.476618>,  <33.613579, 38.424347, 19.284616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357906, 38.664692, 19.476618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423274, -0.246249, 0.871895,
		0.642093, 0.760474, -0.096932,
		-0.639184, 0.600866, 0.480004,
		33.166149, 38.844952, 19.620619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883022, 38.494705, 19.866255>,  <33.613579, 38.424347, 19.284616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883022, 38.494705, 19.866255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.537643, 38.665543, 19.973629>,  <33.330418, 38.768044, 20.038054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.537643, 38.665543, 19.973629>,  <33.883022, 38.494705, 19.866255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537643, 38.665543, 19.973629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161515, -0.270063, 0.949199,
		0.477889, 0.862937, 0.164203,
		-0.863444, 0.427090, 0.268437,
		33.278610, 38.793671, 20.054161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059750, 38.808807, 20.482267>,  <33.883022, 38.494705, 19.866255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059750, 38.808807, 20.482267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.666248, 38.740944, 20.505754>,  <33.430149, 38.700226, 20.519846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.666248, 38.740944, 20.505754>,  <34.059750, 38.808807, 20.482267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666248, 38.740944, 20.505754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125387, -0.415207, 0.901044,
		-0.128487, 0.893767, 0.429734,
		-0.983753, -0.169655, 0.058718,
		33.371124, 38.690048, 20.523371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866169, 39.032436, 21.147787>,  <34.059750, 38.808807, 20.482267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866169, 39.032436, 21.147787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.595325, 38.758755, 21.039427>,  <33.432819, 38.594547, 20.974411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.595325, 38.758755, 21.039427>,  <33.866169, 39.032436, 21.147787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595325, 38.758755, 21.039427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082638, -0.436505, 0.895899,
		-0.731225, 0.584237, 0.352104,
		-0.677112, -0.684201, -0.270903,
		33.392193, 38.553493, 20.958157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471966, 38.924229, 21.696514>,  <33.866169, 39.032436, 21.147787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471966, 38.924229, 21.696514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.399239, 38.593445, 21.483692>,  <33.355602, 38.394974, 21.355999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.399239, 38.593445, 21.483692>,  <33.471966, 38.924229, 21.696514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399239, 38.593445, 21.483692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000874, -0.540938, 0.841062,
		-0.983332, 0.153384, 0.097628,
		-0.181817, -0.826958, -0.532056,
		33.344692, 38.345356, 21.324076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986599, 38.577892, 22.061687>,  <33.471966, 38.924229, 21.696514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986599, 38.577892, 22.061687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.130943, 38.265579, 21.857662>,  <33.217548, 38.078194, 21.735247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.130943, 38.265579, 21.857662>,  <32.986599, 38.577892, 22.061687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130943, 38.265579, 21.857662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164522, -0.591630, 0.789245,
		-0.917993, -0.200892, -0.341952,
		0.360861, -0.780779, -0.510061,
		33.239201, 38.031345, 21.704643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392002, 38.571342, 22.328369>,  <32.986599, 38.577892, 22.061687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392002, 38.571342, 22.328369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.154648, 38.772358, 22.579876>,  <32.012234, 38.892967, 22.730780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.154648, 38.772358, 22.579876>,  <32.392002, 38.571342, 22.328369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154648, 38.772358, 22.579876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210825, 0.656849, -0.723949,
		-0.776818, -0.562141, -0.283817,
		-0.593386, 0.502540, 0.628765,
		31.976631, 38.923119, 22.768505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702621, 38.680962, 21.990181>,  <32.392002, 38.571342, 22.328369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702621, 38.680962, 21.990181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.705427, 38.959663, 22.277092>,  <31.707111, 39.126884, 22.449240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.705427, 38.959663, 22.277092>,  <31.702621, 38.680962, 21.990181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705427, 38.959663, 22.277092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344515, 0.675066, -0.652376,
		-0.938755, -0.242537, 0.244776,
		0.007015, 0.696750, 0.717280,
		31.707531, 39.168690, 22.492275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.073175, 39.019844, 21.980148>,  <31.702621, 38.680962, 21.990181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.073175, 39.019844, 21.980148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.338144, 39.264652, 22.152950>,  <31.497126, 39.411537, 22.256632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.338144, 39.264652, 22.152950>,  <31.073175, 39.019844, 21.980148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338144, 39.264652, 22.152950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276906, 0.735874, -0.617910,
		-0.696073, 0.289693, 0.656932,
		0.662423, 0.612019, 0.432004,
		31.536871, 39.448257, 22.282551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674377, 39.436043, 22.232922>,  <31.073175, 39.019844, 21.980148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674377, 39.436043, 22.232922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.008738, 39.655315, 22.244041>,  <31.209352, 39.786877, 22.250713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.008738, 39.655315, 22.244041>,  <30.674377, 39.436043, 22.232922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.008738, 39.655315, 22.244041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508764, 0.792812, -0.335571,
		-0.205993, 0.266359, 0.941605,
		0.835898, 0.548180, 0.027800,
		31.259506, 39.819771, 22.252382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429749, 40.108116, 22.398832>,  <30.674377, 39.436043, 22.232922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429749, 40.108116, 22.398832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.808020, 40.155800, 22.277849>,  <31.034983, 40.184410, 22.205259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.808020, 40.155800, 22.277849>,  <30.429749, 40.108116, 22.398832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.808020, 40.155800, 22.277849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280175, 0.770740, -0.572243,
		0.164900, 0.625899, 0.762272,
		0.945680, 0.119206, -0.302456,
		31.091724, 40.191563, 22.187113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.559282, 40.877495, 22.377590>,  <30.429749, 40.108116, 22.398832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.559282, 40.877495, 22.377590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.843264, 40.721165, 22.143250>,  <31.013653, 40.627365, 22.002645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.843264, 40.721165, 22.143250>,  <30.559282, 40.877495, 22.377590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843264, 40.721165, 22.143250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155069, 0.724709, -0.671379,
		0.686963, 0.567496, 0.453906,
		0.709955, -0.390826, -0.585849,
		31.056250, 40.603916, 21.967495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016506, 41.413902, 22.175854>,  <30.559282, 40.877495, 22.377590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016506, 41.413902, 22.175854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.993427, 41.129192, 21.895840>,  <30.979580, 40.958366, 21.727831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.993427, 41.129192, 21.895840>,  <31.016506, 41.413902, 22.175854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993427, 41.129192, 21.895840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331501, 0.675078, -0.659073,
		0.941689, 0.194037, -0.274902,
		-0.057695, -0.711772, -0.700037,
		30.976118, 40.915661, 21.685829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431154, 42.000214, 22.443024>,  <31.016506, 41.413902, 22.175854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431154, 42.000214, 22.443024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.175957, 42.255749, 22.615004>,  <31.022839, 42.409069, 22.718191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.175957, 42.255749, 22.615004>,  <31.431154, 42.000214, 22.443024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175957, 42.255749, 22.615004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248893, -0.357298, 0.900217,
		0.728708, 0.681344, 0.068953,
		-0.637994, 0.638834, 0.429947,
		30.984558, 42.447399, 22.743988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667177, 42.186729, 23.074877>,  <31.431154, 42.000214, 22.443024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667177, 42.186729, 23.074877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.284428, 42.297321, 23.110538>,  <31.054777, 42.363678, 23.131935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.284428, 42.297321, 23.110538>,  <31.667177, 42.186729, 23.074877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284428, 42.297321, 23.110538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050460, -0.144035, 0.988285,
		0.286086, 0.950163, 0.123872,
		-0.956874, 0.276484, 0.089152,
		30.997366, 42.380268, 23.137283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724251, 42.732075, 23.635361>,  <31.667177, 42.186729, 23.074877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724251, 42.732075, 23.635361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.354185, 42.584373, 23.600210>,  <31.132145, 42.495750, 23.579121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.354185, 42.584373, 23.600210>,  <31.724251, 42.732075, 23.635361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354185, 42.584373, 23.600210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015698, -0.194092, 0.980858,
		-0.379243, 0.908833, 0.173770,
		-0.925164, -0.369256, -0.087875,
		31.076635, 42.473598, 23.573847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334881, 42.952374, 24.217342>,  <31.724251, 42.732075, 23.635361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334881, 42.952374, 24.217342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.102661, 42.642139, 24.118198>,  <30.963329, 42.456001, 24.058712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.102661, 42.642139, 24.118198>,  <31.334881, 42.952374, 24.217342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102661, 42.642139, 24.118198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098922, -0.369339, 0.924014,
		-0.808194, 0.511917, 0.291142,
		-0.580549, -0.775583, -0.247858,
		30.928497, 42.409466, 24.043840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841652, 42.885586, 24.728706>,  <31.334881, 42.952374, 24.217342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841652, 42.885586, 24.728706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.859898, 42.530659, 24.545147>,  <30.870846, 42.317703, 24.435011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.859898, 42.530659, 24.545147>,  <30.841652, 42.885586, 24.728706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859898, 42.530659, 24.545147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228087, -0.437994, 0.869562,
		-0.972572, -0.144334, 0.182407,
		0.045614, -0.887316, -0.458901,
		30.873583, 42.264465, 24.407476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637598, 42.516037, 25.318995>,  <30.841652, 42.885586, 24.728706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637598, 42.516037, 25.318995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.787777, 42.234844, 25.077383>,  <30.877884, 42.066128, 24.932417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.787777, 42.234844, 25.077383>,  <30.637598, 42.516037, 25.318995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787777, 42.234844, 25.077383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440384, -0.438134, 0.783645,
		-0.815537, -0.560223, 0.145087,
		0.375448, -0.702986, -0.604028,
		30.900412, 42.023949, 24.896175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416250, 41.946098, 25.722710>,  <30.637598, 42.516037, 25.318995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416250, 41.946098, 25.722710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.713158, 41.854828, 25.470686>,  <30.891302, 41.800064, 25.319471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.713158, 41.854828, 25.470686>,  <30.416250, 41.946098, 25.722710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713158, 41.854828, 25.470686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442778, -0.538737, 0.716736,
		-0.502980, -0.810986, -0.298854,
		0.742266, -0.228178, -0.630061,
		30.935837, 41.786377, 25.281668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.570122, 43.210663, 20.164053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.688278, 42.870117, 19.990654>,  <33.759171, 42.665791, 19.886614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.688278, 42.870117, 19.990654>,  <33.570122, 43.210663, 20.164053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688278, 42.870117, 19.990654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769586, -0.056830, 0.636009,
		-0.566112, -0.521484, 0.638413,
		0.295387, -0.851367, -0.433499,
		33.776894, 42.614708, 19.860603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626472, 42.631138, 20.728689>,  <33.570122, 43.210663, 20.164053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626472, 42.631138, 20.728689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.857670, 42.556301, 20.410967>,  <33.996387, 42.511398, 20.220333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.857670, 42.556301, 20.410967>,  <33.626472, 42.631138, 20.728689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857670, 42.556301, 20.410967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799881, -0.062880, 0.596856,
		-0.161611, -0.980329, 0.113304,
		0.577991, -0.187088, -0.794308,
		34.031067, 42.500175, 20.172674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918461, 41.965237, 20.889011>,  <33.626472, 42.631138, 20.728689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918461, 41.965237, 20.889011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.139439, 42.186783, 20.639841>,  <34.272026, 42.319710, 20.490339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.139439, 42.186783, 20.639841>,  <33.918461, 41.965237, 20.889011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139439, 42.186783, 20.639841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751989, -0.008756, 0.659118,
		0.359608, -0.832560, -0.421339,
		0.552444, 0.553866, -0.622927,
		34.305172, 42.352943, 20.452963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560932, 41.655399, 20.900364>,  <33.918461, 41.965237, 20.889011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560932, 41.655399, 20.900364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.633503, 42.019924, 20.752529>,  <34.677048, 42.238640, 20.663828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.633503, 42.019924, 20.752529>,  <34.560932, 41.655399, 20.900364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633503, 42.019924, 20.752529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873346, 0.023445, 0.486536,
		0.452051, -0.411048, -0.791637,
		0.181430, 0.911312, -0.369585,
		34.687931, 42.293320, 20.641653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250488, 41.706268, 20.687347>,  <34.560932, 41.655399, 20.900364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250488, 41.706268, 20.687347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.164787, 42.091141, 20.754648>,  <35.113365, 42.322063, 20.795029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.164787, 42.091141, 20.754648>,  <35.250488, 41.706268, 20.687347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164787, 42.091141, 20.754648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790666, 0.069698, 0.608267,
		0.573534, 0.263358, -0.775694,
		-0.214257, 0.962177, 0.168254,
		35.100510, 42.379795, 20.805124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889206, 41.945297, 20.657339>,  <35.250488, 41.706268, 20.687347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889206, 41.945297, 20.657339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.664055, 42.208755, 20.857082>,  <35.528965, 42.366829, 20.976929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.664055, 42.208755, 20.857082>,  <35.889206, 41.945297, 20.657339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664055, 42.208755, 20.857082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694874, 0.049942, 0.717395,
		0.447569, 0.750795, -0.485786,
		-0.562878, 0.658644, 0.499356,
		35.495190, 42.406349, 21.006889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485008, 42.109879, 20.996902>,  <35.889206, 41.945297, 20.657339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485008, 42.109879, 20.996902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.186047, 42.316647, 21.163841>,  <36.006668, 42.440708, 21.264004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.186047, 42.316647, 21.163841>,  <36.485008, 42.109879, 20.996902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186047, 42.316647, 21.163841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423741, -0.112916, 0.898717,
		0.511692, 0.848552, -0.134647,
		-0.747405, 0.516922, 0.417345,
		35.961826, 42.471722, 21.289045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826202, 42.779686, 21.344021>,  <36.485008, 42.109879, 20.996902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826202, 42.779686, 21.344021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.481709, 42.666592, 21.512943>,  <36.275013, 42.598736, 21.614296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.481709, 42.666592, 21.512943>,  <36.826202, 42.779686, 21.344021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481709, 42.666592, 21.512943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470273, -0.128328, 0.873141,
		-0.192676, 0.950575, 0.243483,
		-0.861231, -0.282737, 0.422304,
		36.223339, 42.581772, 21.639635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876358, 43.036602, 21.990961>,  <36.826202, 42.779686, 21.344021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876358, 43.036602, 21.990961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.582012, 42.770107, 22.039339>,  <36.405403, 42.610210, 22.068365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.582012, 42.770107, 22.039339>,  <36.876358, 43.036602, 21.990961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582012, 42.770107, 22.039339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207126, -0.051423, 0.976962,
		-0.644666, 0.743967, 0.175836,
		-0.735869, -0.666235, 0.120944,
		36.361252, 42.570236, 22.075623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538452, 43.192802, 22.658375>,  <36.876358, 43.036602, 21.990961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538452, 43.192802, 22.658375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.478466, 42.804157, 22.585186>,  <36.442474, 42.570969, 22.541273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.478466, 42.804157, 22.585186>,  <36.538452, 43.192802, 22.658375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478466, 42.804157, 22.585186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208455, -0.211976, 0.954784,
		-0.966466, 0.105041, 0.234326,
		-0.149963, -0.971613, -0.182971,
		36.433475, 42.512672, 22.530294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294857, 42.964630, 23.287197>,  <36.538452, 43.192802, 22.658375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294857, 42.964630, 23.287197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.384167, 42.617687, 23.109280>,  <36.437752, 42.409523, 23.002529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.384167, 42.617687, 23.109280>,  <36.294857, 42.964630, 23.287197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384167, 42.617687, 23.109280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371334, -0.346220, 0.861535,
		-0.901254, -0.357529, 0.244776,
		0.223277, -0.867355, -0.444795,
		36.451149, 42.357479, 22.975842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199440, 42.467201, 23.808777>,  <36.294857, 42.964630, 23.287197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199440, 42.467201, 23.808777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.395470, 42.227478, 23.555588>,  <36.513088, 42.083645, 23.403675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.395470, 42.227478, 23.555588>,  <36.199440, 42.467201, 23.808777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395470, 42.227478, 23.555588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463515, -0.435808, 0.771508,
		-0.738226, -0.671490, 0.064210,
		0.490077, -0.599310, -0.632971,
		36.542492, 42.047684, 23.365696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417038, 42.125298, 23.763235>,  <36.199440, 42.467201, 23.808777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417038, 42.125298, 23.763235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.107700, 42.261562, 23.977106>,  <34.922096, 42.343323, 24.105429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.107700, 42.261562, 23.977106>,  <35.417038, 42.125298, 23.763235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107700, 42.261562, 23.977106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349578, 0.474432, -0.807904,
		-0.528895, -0.811702, -0.247811,
		-0.773347, 0.340667, 0.534678,
		34.875698, 42.363762, 24.137510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865726, 42.124821, 23.302320>,  <35.417038, 42.125298, 23.763235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865726, 42.124821, 23.302320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.740005, 42.372463, 23.590189>,  <34.664574, 42.521049, 23.762909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.740005, 42.372463, 23.590189>,  <34.865726, 42.124821, 23.302320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740005, 42.372463, 23.590189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568689, 0.484222, -0.664922,
		-0.760136, -0.618254, 0.199886,
		-0.314302, 0.619105, 0.719669,
		34.645714, 42.558193, 23.806089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288597, 42.277454, 23.084669>,  <34.865726, 42.124821, 23.302320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288597, 42.277454, 23.084669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.315723, 42.567486, 23.358797>,  <34.332001, 42.741505, 23.523273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.315723, 42.567486, 23.358797>,  <34.288597, 42.277454, 23.084669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315723, 42.567486, 23.358797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567908, 0.592816, -0.571007,
		-0.820293, -0.350476, 0.451979,
		0.067816, 0.725076, 0.685322,
		34.336067, 42.785007, 23.564394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627819, 42.542572, 23.083160>,  <34.288597, 42.277454, 23.084669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627819, 42.542572, 23.083160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.880913, 42.800320, 23.254944>,  <34.032768, 42.954967, 23.358015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.880913, 42.800320, 23.254944>,  <33.627819, 42.542572, 23.083160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880913, 42.800320, 23.254944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556435, 0.764033, -0.326549,
		-0.538539, -0.032348, 0.841980,
		0.632737, 0.644366, 0.429461,
		34.070732, 42.993629, 23.383781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189693, 43.051235, 23.445868>,  <33.627819, 42.542572, 23.083160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189693, 43.051235, 23.445868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.546783, 43.221165, 23.385778>,  <33.761040, 43.323120, 23.349726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.546783, 43.221165, 23.385778>,  <33.189693, 43.051235, 23.445868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546783, 43.221165, 23.385778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445501, 0.782135, -0.435653,
		-0.067579, 0.455844, 0.887490,
		0.892727, 0.424819, -0.150223,
		33.814602, 43.348610, 23.340712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000896, 43.677498, 23.419426>,  <33.189693, 43.051235, 23.445868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000896, 43.677498, 23.419426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.377960, 43.700745, 23.287958>,  <33.604198, 43.714691, 23.209078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.377960, 43.700745, 23.287958>,  <33.000896, 43.677498, 23.419426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377960, 43.700745, 23.287958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199776, 0.887093, -0.416120,
		0.267377, 0.457918, 0.847833,
		0.942655, 0.058115, -0.328669,
		33.660755, 43.718178, 23.189358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227596, 44.390938, 23.580008>,  <33.000896, 43.677498, 23.419426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227596, 44.390938, 23.580008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.418175, 44.251038, 23.257351>,  <33.532520, 44.167095, 23.063757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.418175, 44.251038, 23.257351>,  <33.227596, 44.390938, 23.580008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418175, 44.251038, 23.257351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374865, 0.749086, -0.546211,
		0.795284, 0.562622, 0.225788,
		0.476445, -0.349753, -0.806643,
		33.561108, 44.146111, 23.015358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459206, 44.990566, 23.244659>,  <33.227596, 44.390938, 23.580008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459206, 44.990566, 23.244659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.542599, 44.729412, 22.953377>,  <33.592632, 44.572720, 22.778608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.542599, 44.729412, 22.953377>,  <33.459206, 44.990566, 23.244659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542599, 44.729412, 22.953377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228023, 0.691600, -0.685343,
		0.951074, 0.308927, -0.004688,
		0.208479, -0.652881, -0.728205,
		33.605141, 44.533546, 22.734915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875088, 45.368805, 22.687220>,  <33.459206, 44.990566, 23.244659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875088, 45.368805, 22.687220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.727673, 45.040310, 22.512983>,  <33.639221, 44.843212, 22.408442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.727673, 45.040310, 22.512983>,  <33.875088, 45.368805, 22.687220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727673, 45.040310, 22.512983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281090, 0.545085, -0.789855,
		0.886096, -0.168653, -0.431729,
		-0.368540, -0.821242, -0.435591,
		33.617111, 44.793938, 22.382305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246227, 45.292923, 21.966597>,  <33.875088, 45.368805, 22.687220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246227, 45.292923, 21.966597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.917557, 45.065060, 21.973997>,  <33.720356, 44.928341, 21.978437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.917557, 45.065060, 21.973997>,  <34.246227, 45.292923, 21.966597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917557, 45.065060, 21.973997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403818, 0.558944, -0.724232,
		0.402223, -0.602554, -0.689308,
		-0.821673, -0.569658, 0.018502,
		33.671055, 44.894161, 21.979548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084839, 45.143536, 21.320919>,  <34.246227, 45.292923, 21.966597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084839, 45.143536, 21.320919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.740845, 45.105740, 21.521517>,  <33.534447, 45.083061, 21.641876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.740845, 45.105740, 21.521517>,  <34.084839, 45.143536, 21.320919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740845, 45.105740, 21.521517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475529, 0.504997, -0.720312,
		-0.185192, -0.857934, -0.479222,
		-0.859986, -0.094488, 0.501494,
		33.482849, 45.077393, 21.671965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655579, 45.178223, 20.856281>,  <34.084839, 45.143536, 21.320919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655579, 45.178223, 20.856281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.407669, 45.239948, 21.164064>,  <33.258923, 45.276985, 21.348734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.407669, 45.239948, 21.164064>,  <33.655579, 45.178223, 20.856281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407669, 45.239948, 21.164064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652386, 0.443661, -0.614457,
		-0.436200, -0.882808, -0.174296,
		-0.619776, 0.154318, 0.769457,
		33.221737, 45.286243, 21.394901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917473, 45.012562, 20.595943>,  <33.655579, 45.178223, 20.856281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917473, 45.012562, 20.595943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.888798, 45.253304, 20.914097>,  <32.871593, 45.397747, 21.104988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.888798, 45.253304, 20.914097>,  <32.917473, 45.012562, 20.595943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888798, 45.253304, 20.914097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635464, 0.587087, -0.501512,
		-0.768796, -0.541388, 0.340370,
		-0.071685, 0.601853, 0.795383,
		32.867290, 45.433861, 21.152712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185871, 44.730064, 20.572052>,  <32.917473, 45.012562, 20.595943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185871, 44.730064, 20.572052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.811546, 44.674843, 20.442322>,  <31.586950, 44.641708, 20.364483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.811546, 44.674843, 20.442322>,  <32.185871, 44.730064, 20.572052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811546, 44.674843, 20.442322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135956, -0.707540, 0.693471,
		-0.325213, 0.693056, 0.643358,
		-0.935816, -0.138058, -0.324327,
		31.530802, 44.633427, 20.345024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761368, 44.901833, 21.141949>,  <32.185871, 44.730064, 20.572052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761368, 44.901833, 21.141949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.515543, 44.681335, 20.916225>,  <31.368048, 44.549038, 20.780792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.515543, 44.681335, 20.916225>,  <31.761368, 44.901833, 21.141949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515543, 44.681335, 20.916225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304561, -0.494079, 0.814327,
		-0.727705, 0.672321, 0.135755,
		-0.614563, -0.551244, -0.564307,
		31.331175, 44.515961, 20.746933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.142273, 44.818459, 21.592522>,  <31.761368, 44.901833, 21.141949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.142273, 44.818459, 21.592522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.125032, 44.521366, 21.325241>,  <31.114689, 44.343109, 21.164873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.125032, 44.521366, 21.325241>,  <31.142273, 44.818459, 21.592522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.125032, 44.521366, 21.325241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241229, -0.641297, 0.728386,
		-0.969510, 0.192584, -0.151528,
		-0.043101, -0.742731, -0.668201,
		31.112103, 44.298546, 21.124781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539972, 44.547844, 21.633574>,  <31.142273, 44.818459, 21.592522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539972, 44.547844, 21.633574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.762749, 44.257408, 21.472273>,  <30.896414, 44.083145, 21.375492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.762749, 44.257408, 21.472273>,  <30.539972, 44.547844, 21.633574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762749, 44.257408, 21.472273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244439, -0.607312, 0.755924,
		-0.793769, -0.322434, -0.515721,
		0.556939, -0.726091, -0.403250,
		30.929831, 44.039581, 21.351297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060555, 44.037445, 21.571354>,  <30.539972, 44.547844, 21.633574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060555, 44.037445, 21.571354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.419189, 43.861450, 21.551195>,  <30.634371, 43.755856, 21.539099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.419189, 43.861450, 21.551195>,  <30.060555, 44.037445, 21.571354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.419189, 43.861450, 21.551195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305498, -0.696864, 0.648884,
		-0.320620, -0.566387, -0.759216,
		0.896590, -0.439985, -0.050398,
		30.688166, 43.729454, 21.536076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997850, 43.318573, 21.523148>,  <30.060555, 44.037445, 21.571354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.997850, 43.318573, 21.523148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.376076, 43.337093, 21.652000>,  <30.603010, 43.348206, 21.729313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.376076, 43.337093, 21.652000>,  <29.997850, 43.318573, 21.523148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.376076, 43.337093, 21.652000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193428, -0.716063, 0.670701,
		0.261722, -0.696498, -0.668126,
		0.945562, 0.046303, 0.322132,
		30.659744, 43.350983, 21.748640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.198492, 42.710972, 21.557045>,  <29.997850, 43.318573, 21.523148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.198492, 42.710972, 21.557045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.460041, 42.874977, 21.811396>,  <30.616970, 42.973381, 21.964006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.460041, 42.874977, 21.811396>,  <30.198492, 42.710972, 21.557045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.460041, 42.874977, 21.811396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145507, -0.756603, 0.637479,
		0.742481, -0.509355, -0.435062,
		0.653873, 0.410011, 0.635878,
		30.656202, 42.997982, 22.002159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778416, 42.155701, 21.823973>,  <30.198492, 42.710972, 21.557045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778416, 42.155701, 21.823973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.742559, 42.446205, 22.096594>,  <30.721046, 42.620506, 22.260166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.742559, 42.446205, 22.096594>,  <30.778416, 42.155701, 21.823973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742559, 42.446205, 22.096594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070690, -0.687220, 0.723002,
		0.993462, 0.016631, 0.112943,
		-0.089641, 0.726259, 0.681551,
		30.715668, 42.664082, 22.301060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394936, 41.718651, 21.629681>,  <30.778416, 42.155701, 21.823973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394936, 41.718651, 21.629681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.289129, 41.393219, 21.422560>,  <31.225645, 41.197960, 21.298288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.289129, 41.393219, 21.422560>,  <31.394936, 41.718651, 21.629681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289129, 41.393219, 21.422560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093176, 0.555973, -0.825961,
		0.959870, -0.170233, -0.222870,
		-0.264516, -0.813582, -0.517800,
		31.209774, 41.149143, 21.267220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783913, 41.778999, 21.058905>,  <31.394936, 41.718651, 21.629681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783913, 41.778999, 21.058905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.475914, 41.538647, 20.973070>,  <31.291115, 41.394436, 20.921570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.475914, 41.538647, 20.973070>,  <31.783913, 41.778999, 21.058905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475914, 41.538647, 20.973070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191517, 0.538472, -0.820590,
		0.608626, -0.590755, -0.529701,
		-0.769997, -0.600879, -0.214589,
		31.244915, 41.358383, 20.908693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867245, 41.642750, 20.418020>,  <31.783913, 41.778999, 21.058905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867245, 41.642750, 20.418020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.477999, 41.580677, 20.486095>,  <31.244452, 41.543434, 20.526939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.477999, 41.580677, 20.486095>,  <31.867245, 41.642750, 20.418020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477999, 41.580677, 20.486095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213886, 0.334850, -0.917675,
		0.085416, -0.929406, -0.359038,
		-0.973117, -0.155178, 0.170186,
		31.186064, 41.534122, 20.537151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653120, 41.299938, 19.836960>,  <31.867245, 41.642750, 20.418020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653120, 41.299938, 19.836960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.310745, 41.441349, 19.987900>,  <31.105320, 41.526196, 20.078463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.310745, 41.441349, 19.987900>,  <31.653120, 41.299938, 19.836960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.310745, 41.441349, 19.987900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291764, 0.272296, -0.916913,
		-0.426901, -0.894917, -0.129922,
		-0.855938, 0.353525, 0.377348,
		31.053965, 41.547405, 20.101105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.135544, 40.914276, 19.461845>,  <31.653120, 41.299938, 19.836960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.135544, 40.914276, 19.461845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.991625, 41.258434, 19.606218>,  <30.905273, 41.464928, 19.692842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.991625, 41.258434, 19.606218>,  <31.135544, 40.914276, 19.461845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991625, 41.258434, 19.606218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292127, 0.263510, -0.919361,
		-0.886120, -0.436221, 0.156533,
		-0.359797, 0.860392, 0.360934,
		30.883686, 41.516552, 19.714499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428453, 40.953976, 19.222946>,  <31.135544, 40.914276, 19.461845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.428453, 40.953976, 19.222946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.516598, 41.325943, 19.340717>,  <30.569485, 41.549126, 19.411381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.516598, 41.325943, 19.340717>,  <30.428453, 40.953976, 19.222946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516598, 41.325943, 19.340717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334687, 0.355608, -0.872655,
		-0.916201, 0.093758, 0.389595,
		0.220361, 0.929921, 0.294429,
		30.582706, 41.604919, 19.429047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835207, 41.388741, 18.977343>,  <30.428453, 40.953976, 19.222946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835207, 41.388741, 18.977343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.124222, 41.657623, 19.041939>,  <30.297630, 41.818954, 19.080696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.124222, 41.657623, 19.041939>,  <29.835207, 41.388741, 18.977343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124222, 41.657623, 19.041939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320065, 0.532306, -0.783714,
		-0.612780, 0.514575, 0.599761,
		0.722536, 0.672207, 0.161489,
		30.340982, 41.859287, 19.090385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.534670, 42.017456, 19.105192>,  <29.835207, 41.388741, 18.977343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.534670, 42.017456, 19.105192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.899033, 42.110329, 18.968760>,  <30.117651, 42.166050, 18.886900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.899033, 42.110329, 18.968760>,  <29.534670, 42.017456, 19.105192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899033, 42.110329, 18.968760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412479, 0.491767, -0.766829,
		-0.010309, 0.839201, 0.543724,
		0.910909, 0.232179, -0.341083,
		30.172306, 42.179981, 18.866434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565256, 42.757015, 19.068874>,  <29.534670, 42.017456, 19.105192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565256, 42.757015, 19.068874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.827814, 42.603291, 18.809196>,  <29.985350, 42.511055, 18.653391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.827814, 42.603291, 18.809196>,  <29.565256, 42.757015, 19.068874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.827814, 42.603291, 18.809196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324331, 0.633190, -0.702765,
		0.681142, 0.671846, 0.290980,
		0.656396, -0.384309, -0.649193,
		30.024733, 42.487999, 18.614439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.073429, 34.224667, 31.267904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.304905, 34.147587, 30.950924>,  <36.443790, 34.101337, 30.760736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.304905, 34.147587, 30.950924>,  <36.073429, 34.224667, 31.267904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304905, 34.147587, 30.950924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621090, 0.525602, -0.581369,
		0.528546, 0.828618, 0.184477,
		0.578694, -0.192703, -0.792451,
		36.478512, 34.089775, 30.713188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958012, 34.758930, 30.885683>,  <36.073429, 34.224667, 31.267904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958012, 34.758930, 30.885683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.121349, 34.500725, 30.627516>,  <36.219353, 34.345802, 30.472616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.121349, 34.500725, 30.627516>,  <35.958012, 34.758930, 30.885683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121349, 34.500725, 30.627516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425676, 0.490810, -0.760201,
		0.807500, 0.585162, -0.074362,
		0.408343, -0.645516, -0.645419,
		36.243851, 34.307072, 30.433889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345966, 35.201015, 30.299038>,  <35.958012, 34.758930, 30.885683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345966, 35.201015, 30.299038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.269417, 34.826466, 30.181339>,  <36.223488, 34.601734, 30.110720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.269417, 34.826466, 30.181339>,  <36.345966, 35.201015, 30.299038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269417, 34.826466, 30.181339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547463, 0.350653, -0.759820,
		0.814654, 0.015680, -0.579736,
		-0.191372, -0.936374, -0.294245,
		36.212006, 34.545555, 30.093065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362492, 35.180119, 29.555801>,  <36.345966, 35.201015, 30.299038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362492, 35.180119, 29.555801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.140827, 34.862389, 29.655361>,  <36.007828, 34.671749, 29.715097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.140827, 34.862389, 29.655361>,  <36.362492, 35.180119, 29.555801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140827, 34.862389, 29.655361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665335, 0.242982, -0.705896,
		0.500232, -0.556785, -0.663143,
		-0.554164, -0.794324, 0.248901,
		35.974579, 34.624092, 29.730032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188404, 34.810715, 28.950304>,  <36.362492, 35.180119, 29.555801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188404, 34.810715, 28.950304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.916813, 34.704693, 29.224163>,  <35.753860, 34.641079, 29.388477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.916813, 34.704693, 29.224163>,  <36.188404, 34.810715, 28.950304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916813, 34.704693, 29.224163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731813, 0.318876, -0.602302,
		-0.058676, -0.909981, -0.410477,
		-0.678975, -0.265052, 0.684647,
		35.713120, 34.625175, 29.429558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705742, 34.465305, 28.516037>,  <36.188404, 34.810715, 28.950304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705742, 34.465305, 28.516037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.511250, 34.535233, 28.858501>,  <35.394554, 34.577190, 29.063980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.511250, 34.535233, 28.858501>,  <35.705742, 34.465305, 28.516037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511250, 34.535233, 28.858501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829873, 0.214451, -0.515093,
		-0.273654, -0.960962, 0.040806,
		-0.486234, 0.174821, 0.856162,
		35.365379, 34.587677, 29.115351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120888, 34.084122, 28.416101>,  <35.705742, 34.465305, 28.516037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120888, 34.084122, 28.416101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.023476, 34.370693, 28.677612>,  <34.965027, 34.542637, 28.834518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.023476, 34.370693, 28.677612>,  <35.120888, 34.084122, 28.416101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023476, 34.370693, 28.677612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739433, 0.299061, -0.603160,
		-0.627639, -0.630313, 0.456919,
		-0.243533, 0.716428, 0.653776,
		34.950417, 34.585621, 28.873745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403290, 34.109192, 28.329868>,  <35.120888, 34.084122, 28.416101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403290, 34.109192, 28.329868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.441418, 34.460495, 28.517307>,  <34.464294, 34.671276, 28.629770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.441418, 34.460495, 28.517307>,  <34.403290, 34.109192, 28.329868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441418, 34.460495, 28.517307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840494, 0.323231, -0.434846,
		-0.533370, -0.352404, 0.768978,
		0.095316, 0.878256, 0.468596,
		34.470013, 34.723972, 28.657887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746937, 34.383335, 28.512625>,  <34.403290, 34.109192, 28.329868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746937, 34.383335, 28.512625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.972900, 34.712833, 28.493326>,  <34.108479, 34.910530, 28.481747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.972900, 34.712833, 28.493326>,  <33.746937, 34.383335, 28.512625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972900, 34.712833, 28.493326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690302, 0.439746, -0.574549,
		-0.452065, 0.357871, 0.817047,
		0.564907, 0.823743, -0.048245,
		34.142372, 34.959957, 28.478853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277370, 35.011299, 28.591469>,  <33.746937, 34.383335, 28.512625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277370, 35.011299, 28.591469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.608849, 35.160778, 28.424799>,  <33.807735, 35.250465, 28.324797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.608849, 35.160778, 28.424799>,  <33.277370, 35.011299, 28.591469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608849, 35.160778, 28.424799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558644, 0.506405, -0.656865,
		-0.034466, 0.777111, 0.628420,
		0.828691, 0.373702, -0.416674,
		33.857456, 35.272888, 28.299797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125660, 35.723827, 28.314905>,  <33.277370, 35.011299, 28.591469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125660, 35.723827, 28.314905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.461002, 35.655945, 28.107693>,  <33.662209, 35.615215, 27.983364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.461002, 35.655945, 28.107693>,  <33.125660, 35.723827, 28.314905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461002, 35.655945, 28.107693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342327, 0.575653, -0.742588,
		0.424232, 0.799889, 0.424506,
		0.838355, -0.169710, -0.518033,
		33.712509, 35.605030, 27.952282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466904, 36.301239, 28.135790>,  <33.125660, 35.723827, 28.314905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466904, 36.301239, 28.135790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.590393, 36.045856, 27.853779>,  <33.664486, 35.892628, 27.684572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.590393, 36.045856, 27.853779>,  <33.466904, 36.301239, 28.135790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590393, 36.045856, 27.853779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358488, 0.608469, -0.707991,
		0.881010, 0.471315, -0.041033,
		0.308720, -0.638457, -0.705028,
		33.683010, 35.854321, 27.642271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460991, 36.966774, 28.421425>,  <33.466904, 36.301239, 28.135790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460991, 36.966774, 28.421425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.163174, 37.158405, 28.607388>,  <32.984482, 37.273384, 28.718966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.163174, 37.158405, 28.607388>,  <33.460991, 36.966774, 28.421425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163174, 37.158405, 28.607388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411274, -0.219376, 0.884719,
		0.525836, 0.849918, -0.033695,
		-0.744547, 0.479075, 0.464905,
		32.939808, 37.302128, 28.746859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772362, 37.358265, 28.895313>,  <33.460991, 36.966774, 28.421425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772362, 37.358265, 28.895313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.402508, 37.282467, 29.027456>,  <33.180595, 37.236988, 29.106743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.402508, 37.282467, 29.027456>,  <33.772362, 37.358265, 28.895313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402508, 37.282467, 29.027456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363971, -0.184322, 0.912990,
		-0.112114, 0.964426, 0.239402,
		-0.924638, -0.189495, 0.330358,
		33.125118, 37.225620, 29.126564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730938, 37.687191, 29.464703>,  <33.772362, 37.358265, 28.895313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730938, 37.687191, 29.464703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.435104, 37.423840, 29.520636>,  <33.257603, 37.265827, 29.554195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.435104, 37.423840, 29.520636>,  <33.730938, 37.687191, 29.464703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435104, 37.423840, 29.520636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412547, -0.279271, 0.867071,
		-0.531810, 0.698960, 0.478156,
		-0.739583, -0.658379, 0.139835,
		33.213230, 37.226326, 29.562586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391094, 37.852966, 30.137297>,  <33.730938, 37.687191, 29.464703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391094, 37.852966, 30.137297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.327072, 37.461155, 30.088465>,  <33.288658, 37.226067, 30.059166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.327072, 37.461155, 30.088465>,  <33.391094, 37.852966, 30.137297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327072, 37.461155, 30.088465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239326, -0.158491, 0.957916,
		-0.957656, 0.124102, 0.259795,
		-0.160055, -0.979530, -0.122079,
		33.279057, 37.167297, 30.051842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275814, 37.626926, 30.789999>,  <33.391094, 37.852966, 30.137297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275814, 37.626926, 30.789999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.294682, 37.271763, 30.606960>,  <33.306004, 37.058666, 30.497137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.294682, 37.271763, 30.606960>,  <33.275814, 37.626926, 30.789999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294682, 37.271763, 30.606960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217225, -0.438024, 0.872324,
		-0.974981, -0.140551, 0.172213,
		0.047172, -0.887908, -0.457596,
		33.308834, 37.005390, 30.469681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909935, 37.088257, 31.324150>,  <33.275814, 37.626926, 30.789999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909935, 37.088257, 31.324150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.145378, 36.890358, 31.068411>,  <33.286644, 36.771618, 30.914967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.145378, 36.890358, 31.068411>,  <32.909935, 37.088257, 31.324150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145378, 36.890358, 31.068411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327533, -0.577103, 0.748114,
		-0.739095, -0.649755, -0.177642,
		0.588609, -0.494744, -0.639350,
		33.321960, 36.741936, 30.876606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971466, 36.557617, 31.641748>,  <32.909935, 37.088257, 31.324150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971466, 36.557617, 31.641748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.279194, 36.512531, 31.390211>,  <33.463829, 36.485481, 31.239288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.279194, 36.512531, 31.390211>,  <32.971466, 36.557617, 31.641748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279194, 36.512531, 31.390211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554844, -0.370060, 0.745120,
		-0.316696, -0.922145, -0.222155,
		0.769319, -0.112715, -0.628843,
		33.509991, 36.478718, 31.201559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216412, 35.862682, 31.734770>,  <32.971466, 36.557617, 31.641748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216412, 35.862682, 31.734770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.521183, 36.072163, 31.582352>,  <33.704048, 36.197849, 31.490900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.521183, 36.072163, 31.582352>,  <33.216412, 35.862682, 31.734770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521183, 36.072163, 31.582352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598057, -0.343116, 0.724293,
		0.248569, -0.779750, -0.574633,
		0.761933, 0.523700, -0.381047,
		33.749763, 36.229271, 31.468039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753334, 35.382713, 31.875654>,  <33.216412, 35.862682, 31.734770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753334, 35.382713, 31.875654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.923046, 35.739498, 31.813190>,  <34.024872, 35.953571, 31.775713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.923046, 35.739498, 31.813190>,  <33.753334, 35.382713, 31.875654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923046, 35.739498, 31.813190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703905, -0.216381, 0.676533,
		0.569654, -0.396961, -0.719664,
		0.424279, 0.891965, -0.156160,
		34.050331, 36.007088, 31.766342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477882, 35.306915, 31.842726>,  <33.753334, 35.382713, 31.875654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477882, 35.306915, 31.842726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.459755, 35.701015, 31.908731>,  <34.448879, 35.937477, 31.948336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.459755, 35.701015, 31.908731>,  <34.477882, 35.306915, 31.842726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459755, 35.701015, 31.908731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779278, -0.068488, 0.622925,
		0.625038, 0.156821, -0.764679,
		-0.045316, 0.985250, 0.165015,
		34.446159, 35.996590, 31.958237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137547, 35.554680, 31.951139>,  <34.477882, 35.306915, 31.842726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137547, 35.554680, 31.951139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.936287, 35.868896, 32.095230>,  <34.815533, 36.057426, 32.181683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.936287, 35.868896, 32.095230>,  <35.137547, 35.554680, 31.951139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936287, 35.868896, 32.095230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650824, 0.070194, 0.755977,
		0.568567, 0.614813, -0.546569,
		-0.503150, 0.785543, 0.360225,
		34.785343, 36.104561, 32.203297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636147, 35.953751, 32.188934>,  <35.137547, 35.554680, 31.951139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636147, 35.953751, 32.188934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.325542, 36.099472, 32.394581>,  <35.139179, 36.186905, 32.517967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.325542, 36.099472, 32.394581>,  <35.636147, 35.953751, 32.188934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325542, 36.099472, 32.394581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579834, 0.093777, 0.809319,
		0.246622, 0.926548, -0.284052,
		-0.776511, 0.364299, 0.514117,
		35.092590, 36.208763, 32.548817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934040, 36.557259, 32.519543>,  <35.636147, 35.953751, 32.188934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934040, 36.557259, 32.519543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.604904, 36.440155, 32.714363>,  <35.407421, 36.369892, 32.831257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.604904, 36.440155, 32.714363>,  <35.934040, 36.557259, 32.519543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604904, 36.440155, 32.714363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486860, 0.078856, 0.869913,
		-0.293084, 0.952929, 0.077648,
		-0.822842, -0.292761, 0.487054,
		35.358051, 36.352325, 32.860481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713421, 37.021282, 33.085083>,  <35.934040, 36.557259, 32.519543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713421, 37.021282, 33.085083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.584084, 36.651134, 33.164219>,  <35.506481, 36.429047, 33.211700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.584084, 36.651134, 33.164219>,  <35.713421, 37.021282, 33.085083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584084, 36.651134, 33.164219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222134, 0.129006, 0.966444,
		-0.919838, 0.356445, 0.163842,
		-0.323347, -0.925367, 0.197843,
		35.487080, 36.373524, 33.223572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146210, 37.096146, 33.478760>,  <35.713421, 37.021282, 33.085083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146210, 37.096146, 33.478760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.337219, 36.751884, 33.549461>,  <35.451824, 36.545326, 33.591881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.337219, 36.751884, 33.549461>,  <35.146210, 37.096146, 33.478760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337219, 36.751884, 33.549461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137760, 0.272028, 0.952378,
		-0.867750, -0.430436, 0.248464,
		0.477527, -0.860655, 0.176755,
		35.480476, 36.493687, 33.602489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808834, 37.359554, 33.723713>,  <35.146210, 37.096146, 33.478760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808834, 37.359554, 33.723713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.175701, 37.516479, 33.695736>,  <36.395821, 37.610634, 33.678947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.175701, 37.516479, 33.695736>,  <35.808834, 37.359554, 33.723713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175701, 37.516479, 33.695736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277691, 0.503314, -0.818268,
		-0.285812, 0.769913, 0.570566,
		0.917169, 0.392311, -0.069945,
		36.450851, 37.634174, 33.674751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740360, 38.120468, 33.689194>,  <35.808834, 37.359554, 33.723713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740360, 38.120468, 33.689194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.069832, 38.002316, 33.495579>,  <36.267517, 37.931423, 33.379410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.069832, 38.002316, 33.495579>,  <35.740360, 38.120468, 33.689194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069832, 38.002316, 33.495579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264223, 0.555351, -0.788525,
		0.501730, 0.777389, 0.379386,
		0.823683, -0.295384, -0.484040,
		36.316936, 37.913700, 33.350368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900963, 38.737400, 33.293411>,  <35.740360, 38.120468, 33.689194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900963, 38.737400, 33.293411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.101124, 38.451012, 33.098690>,  <36.221222, 38.279179, 32.981857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.101124, 38.451012, 33.098690>,  <35.900963, 38.737400, 33.293411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101124, 38.451012, 33.098690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044215, 0.540397, -0.840248,
		0.864663, 0.441986, 0.238759,
		0.500403, -0.715975, -0.486803,
		36.251244, 38.236217, 32.952648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441101, 39.127796, 32.852287>,  <35.900963, 38.737400, 33.293411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441101, 39.127796, 32.852287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.378471, 38.759670, 32.708897>,  <36.340893, 38.538795, 32.622864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.378471, 38.759670, 32.708897>,  <36.441101, 39.127796, 32.852287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378471, 38.759670, 32.708897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052626, 0.354663, -0.933512,
		0.986263, -0.165027, -0.007098,
		-0.156572, -0.920315, -0.358476,
		36.331501, 38.483574, 32.601353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905380, 39.031235, 32.236713>,  <36.441101, 39.127796, 32.852287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905380, 39.031235, 32.236713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.613098, 38.761154, 32.196381>,  <36.437729, 38.599106, 32.172180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.613098, 38.761154, 32.196381>,  <36.905380, 39.031235, 32.236713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613098, 38.761154, 32.196381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048981, 0.199166, -0.978741,
		0.680931, -0.710235, -0.178605,
		-0.730708, -0.675203, -0.100830,
		36.393887, 38.558594, 32.166130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178635, 38.587128, 31.710592>,  <36.905380, 39.031235, 32.236713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178635, 38.587128, 31.710592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.787567, 38.503330, 31.717367>,  <36.552929, 38.453053, 31.721432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.787567, 38.503330, 31.717367>,  <37.178635, 38.587128, 31.710592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787567, 38.503330, 31.717367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060092, 0.201399, -0.977664,
		0.201399, -0.956845, -0.209490,
		0.977664, 0.209490, -0.016937,
		36.494267, 38.440483, 31.722448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020947, 38.476040, 30.955784>,  <37.178635, 38.587128, 31.710592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020947, 38.476040, 30.955784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.660801, 38.516109, 31.125164>,  <36.444714, 38.540150, 31.226793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.660801, 38.516109, 31.125164>,  <37.020947, 38.476040, 30.955784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660801, 38.516109, 31.125164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373862, 0.319853, -0.870587,
		-0.222649, -0.942157, -0.250534,
		-0.900364, 0.100171, 0.423452,
		36.390694, 38.546162, 31.252199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490322, 38.136276, 30.499577>,  <37.020947, 38.476040, 30.955784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490322, 38.136276, 30.499577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.309174, 38.398037, 30.741791>,  <36.200485, 38.555092, 30.887119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.309174, 38.398037, 30.741791>,  <36.490322, 38.136276, 30.499577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309174, 38.398037, 30.741791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375603, 0.475930, -0.795244,
		-0.808600, -0.587579, 0.030262,
		-0.452867, 0.654401, 0.605534,
		36.173313, 38.594357, 30.923450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828152, 38.136837, 30.289499>,  <36.490322, 38.136276, 30.499577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828152, 38.136837, 30.289499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.846958, 38.496311, 30.463924>,  <35.858242, 38.711994, 30.568581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.846958, 38.496311, 30.463924>,  <35.828152, 38.136837, 30.289499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846958, 38.496311, 30.463924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411238, 0.415248, -0.811451,
		-0.910315, -0.141179, 0.389095,
		0.047012, 0.898687, 0.436065,
		35.861061, 38.765919, 30.594744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185841, 38.533451, 30.191841>,  <35.828152, 38.136837, 30.289499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185841, 38.533451, 30.191841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.479420, 38.791874, 30.275684>,  <35.655567, 38.946926, 30.325991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.479420, 38.791874, 30.275684>,  <35.185841, 38.533451, 30.191841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479420, 38.791874, 30.275684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285961, 0.573846, -0.767416,
		-0.616076, 0.503302, 0.605918,
		0.733946, 0.646055, 0.209608,
		35.699604, 38.985691, 30.338566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796810, 39.075649, 30.062729>,  <35.185841, 38.533451, 30.191841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796810, 39.075649, 30.062729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.172199, 39.210159, 30.094189>,  <35.397434, 39.290863, 30.113064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.172199, 39.210159, 30.094189>,  <34.796810, 39.075649, 30.062729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172199, 39.210159, 30.094189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169522, 0.646980, -0.743424,
		-0.300875, 0.684353, 0.664180,
		0.938476, 0.336271, 0.078647,
		35.453743, 39.311039, 30.117783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762218, 39.761784, 29.883913>,  <34.796810, 39.075649, 30.062729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762218, 39.761784, 29.883913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.154865, 39.696388, 29.844507>,  <35.390453, 39.657150, 29.820864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.154865, 39.696388, 29.844507>,  <34.762218, 39.761784, 29.883913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154865, 39.696388, 29.844507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000158, 0.515437, -0.856928,
		0.190872, 0.841188, 0.505934,
		0.981615, -0.163484, -0.098515,
		35.449348, 39.647343, 29.814953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118095, 40.468483, 29.718435>,  <34.762218, 39.761784, 29.883913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118095, 40.468483, 29.718435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.378540, 40.190536, 29.596313>,  <35.534809, 40.023769, 29.523041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.378540, 40.190536, 29.596313>,  <35.118095, 40.468483, 29.718435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378540, 40.190536, 29.596313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123776, 0.494089, -0.860555,
		0.748819, 0.522530, 0.407716,
		0.651114, -0.694866, -0.305307,
		35.573875, 39.982079, 29.504721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606098, 40.806553, 29.509243>,  <35.118095, 40.468483, 29.718435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606098, 40.806553, 29.509243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.680447, 40.451225, 29.341269>,  <35.725056, 40.238029, 29.240484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.680447, 40.451225, 29.341269>,  <35.606098, 40.806553, 29.509243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680447, 40.451225, 29.341269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067462, 0.414839, -0.907390,
		0.980255, 0.196991, 0.017180,
		0.185875, -0.888315, -0.419938,
		35.736210, 40.184731, 29.215286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175716, 40.778053, 29.119410>,  <35.606098, 40.806553, 29.509243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175716, 40.778053, 29.119410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.932098, 40.505203, 28.957539>,  <35.785927, 40.341492, 28.860416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.932098, 40.505203, 28.957539>,  <36.175716, 40.778053, 29.119410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932098, 40.505203, 28.957539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050550, 0.475804, -0.878098,
		0.791521, -0.555260, -0.255306,
		-0.609048, -0.682127, -0.404677,
		35.749382, 40.300564, 28.836136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298653, 40.860027, 28.454571>,  <36.175716, 40.778053, 29.119410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298653, 40.860027, 28.454571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.982773, 40.619823, 28.404346>,  <35.793247, 40.475700, 28.374212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.982773, 40.619823, 28.404346>,  <36.298653, 40.860027, 28.454571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982773, 40.619823, 28.404346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212789, 0.460066, -0.862009,
		0.575413, -0.654008, -0.491095,
		-0.789697, -0.600511, -0.125562,
		35.745865, 40.439671, 28.366678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364521, 40.635010, 27.796495>,  <36.298653, 40.860027, 28.454571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364521, 40.635010, 27.796495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.984570, 40.553722, 27.891510>,  <35.756599, 40.504951, 27.948519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.984570, 40.553722, 27.891510>,  <36.364521, 40.635010, 27.796495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984570, 40.553722, 27.891510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308743, 0.490781, -0.814746,
		0.048993, -0.847252, -0.528927,
		-0.949883, -0.203220, 0.237538,
		35.699604, 40.492756, 27.962770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089367, 40.272343, 27.129087>,  <36.364521, 40.635010, 27.796495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089367, 40.272343, 27.129087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.784206, 40.410091, 27.347956>,  <35.601112, 40.492741, 27.479277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.784206, 40.410091, 27.347956>,  <36.089367, 40.272343, 27.129087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784206, 40.410091, 27.347956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405324, 0.404596, -0.819765,
		-0.503687, -0.847178, -0.169082,
		-0.762897, 0.344372, 0.547171,
		35.555336, 40.513405, 27.512108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421539, 40.003071, 26.888887>,  <36.089367, 40.272343, 27.129087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421539, 40.003071, 26.888887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.344227, 40.353443, 27.065699>,  <35.297840, 40.563667, 27.171785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.344227, 40.353443, 27.065699>,  <35.421539, 40.003071, 26.888887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344227, 40.353443, 27.065699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394776, 0.343015, -0.852345,
		-0.898216, -0.339247, 0.279497,
		-0.193284, 0.875929, 0.442029,
		35.286243, 40.616222, 27.198307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766399, 40.135098, 26.548054>,  <35.421539, 40.003071, 26.888887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766399, 40.135098, 26.548054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.906330, 40.470886, 26.714380>,  <34.990288, 40.672359, 26.814177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.906330, 40.470886, 26.714380>,  <34.766399, 40.135098, 26.548054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906330, 40.470886, 26.714380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405188, 0.535781, -0.740784,
		-0.844656, 0.090663, 0.527576,
		0.349827, 0.839475, 0.415815,
		35.011276, 40.722729, 26.839125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190590, 40.586185, 26.627804>,  <34.766399, 40.135098, 26.548054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190590, 40.586185, 26.627804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.524399, 40.806538, 26.631971>,  <34.724686, 40.938747, 26.634472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.524399, 40.806538, 26.631971>,  <34.190590, 40.586185, 26.627804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524399, 40.806538, 26.631971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362577, 0.563308, -0.742443,
		-0.414863, 0.615807, 0.669829,
		0.834522, 0.550877, 0.010418,
		34.774754, 40.971802, 26.635098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964233, 41.306496, 26.680368>,  <34.190590, 40.586185, 26.627804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964233, 41.306496, 26.680368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.341270, 41.297302, 26.547112>,  <34.567493, 41.291786, 26.467157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.341270, 41.297302, 26.547112>,  <33.964233, 41.306496, 26.680368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341270, 41.297302, 26.547112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264352, 0.558194, -0.786471,
		0.204037, 0.829392, 0.520075,
		0.942596, -0.022986, -0.333144,
		34.624050, 41.290405, 26.447168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023514, 42.068001, 26.323402>,  <33.964233, 41.306496, 26.680368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023514, 42.068001, 26.323402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.327415, 41.834118, 26.209637>,  <34.509758, 41.693790, 26.141378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.327415, 41.834118, 26.209637>,  <34.023514, 42.068001, 26.323402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327415, 41.834118, 26.209637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035766, 0.399174, -0.916177,
		0.649224, 0.706243, 0.282362,
		0.759756, -0.584705, -0.284413,
		34.555344, 41.658707, 26.124313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500896, 42.521847, 26.082144>,  <34.023514, 42.068001, 26.323402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500896, 42.521847, 26.082144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.595356, 42.171822, 25.913149>,  <34.652031, 41.961807, 25.811752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.595356, 42.171822, 25.913149>,  <34.500896, 42.521847, 26.082144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595356, 42.171822, 25.913149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177630, 0.466332, -0.866592,
		0.955342, 0.129603, 0.265563,
		0.236153, -0.875064, -0.422485,
		34.666203, 41.909302, 25.786404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141468, 42.593750, 25.759089>,  <34.500896, 42.521847, 26.082144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141468, 42.593750, 25.759089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.002174, 42.264854, 25.579021>,  <34.918598, 42.067516, 25.470982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.002174, 42.264854, 25.579021>,  <35.141468, 42.593750, 25.759089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002174, 42.264854, 25.579021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116525, 0.438533, -0.891129,
		0.930135, -0.362781, -0.056903,
		-0.348238, -0.822240, -0.450169,
		34.897701, 42.018181, 25.443972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569645, 42.413151, 25.238892>,  <35.141468, 42.593750, 25.759089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569645, 42.413151, 25.238892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.244312, 42.228481, 25.097271>,  <35.049114, 42.117680, 25.012299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.244312, 42.228481, 25.097271>,  <35.569645, 42.413151, 25.238892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244312, 42.228481, 25.097271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111827, 0.473142, -0.873860,
		0.570956, -0.750328, -0.333192,
		-0.813329, -0.461676, -0.354050,
		35.000313, 42.089977, 24.991056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687199, 42.324078, 24.567471>,  <35.569645, 42.413151, 25.238892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687199, 42.324078, 24.567471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.289345, 42.283428, 24.575233>,  <35.050632, 42.259037, 24.579891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.289345, 42.283428, 24.575233>,  <35.687199, 42.324078, 24.567471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289345, 42.283428, 24.575233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066693, 0.486365, -0.871206,
		0.079099, -0.867825, -0.490533,
		-0.994633, -0.101627, 0.019407,
		34.990955, 42.252941, 24.581055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065590, 41.764660, 24.008120>,  <35.687199, 42.324078, 24.567471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065590, 41.764660, 24.008120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.395725, 41.752693, 23.782581>,  <36.593807, 41.745514, 23.647259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.395725, 41.752693, 23.782581>,  <36.065590, 41.764660, 24.008120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395725, 41.752693, 23.782581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473600, -0.507055, 0.720138,
		-0.307442, -0.861395, -0.404325,
		0.825338, -0.029912, -0.563846,
		36.643326, 41.743721, 23.613428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244400, 41.082954, 23.978067>,  <36.065590, 41.764660, 24.008120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244400, 41.082954, 23.978067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.574753, 41.286098, 23.880087>,  <36.772964, 41.407986, 23.821299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.574753, 41.286098, 23.880087>,  <36.244400, 41.082954, 23.978067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574753, 41.286098, 23.880087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518254, -0.512589, 0.684591,
		0.222117, -0.692337, -0.686538,
		0.825879, 0.507860, -0.244952,
		36.822517, 41.438457, 23.806601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653278, 40.500366, 23.789024>,  <36.244400, 41.082954, 23.978067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653278, 40.500366, 23.789024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.824589, 40.838757, 23.916086>,  <36.927376, 41.041790, 23.992323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.824589, 40.838757, 23.916086>,  <36.653278, 40.500366, 23.789024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824589, 40.838757, 23.916086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421966, -0.498072, 0.757541,
		0.799076, -0.190397, -0.570285,
		0.428277, 0.845974, 0.317657,
		36.953072, 41.092548, 24.011383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332191, 40.279053, 23.950840>,  <36.653278, 40.500366, 23.789024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332191, 40.279053, 23.950840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.285625, 40.639393, 24.118130>,  <37.257687, 40.855598, 24.218504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.285625, 40.639393, 24.118130>,  <37.332191, 40.279053, 23.950840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285625, 40.639393, 24.118130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434879, -0.332341, 0.836917,
		0.892932, 0.279309, -0.353071,
		-0.116419, 0.900853, 0.418224,
		37.250698, 40.909649, 24.243597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975170, 40.307552, 24.232944>,  <37.332191, 40.279053, 23.950840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975170, 40.307552, 24.232944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.736294, 40.572365, 24.414087>,  <37.592968, 40.731251, 24.522774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.736294, 40.572365, 24.414087>,  <37.975170, 40.307552, 24.232944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736294, 40.572365, 24.414087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294634, -0.344064, 0.891522,
		0.746025, 0.665837, 0.010417,
		-0.597192, 0.662028, 0.452858,
		37.557137, 40.770973, 24.549944>
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
