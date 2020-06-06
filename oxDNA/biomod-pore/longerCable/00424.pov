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
	<24.033373, 34.792278, 35.278370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.241795, 34.774097, 34.937447>,  <24.366848, 34.763187, 34.732891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.241795, 34.774097, 34.937447>,  <24.033373, 34.792278, 35.278370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.241795, 34.774097, 34.937447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361338, -0.892934, 0.268521,
		-0.773263, -0.447887, -0.448846,
		0.521056, -0.045452, -0.852311,
		24.398111, 34.760460, 34.681755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.888395, 34.158329, 34.888893>,  <24.033373, 34.792278, 35.278370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.888395, 34.158329, 34.888893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.249336, 34.312489, 34.811710>,  <24.465900, 34.404984, 34.765400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.249336, 34.312489, 34.811710>,  <23.888395, 34.158329, 34.888893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.249336, 34.312489, 34.811710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420296, -0.885998, 0.195855,
		-0.095475, -0.257828, -0.961462,
		0.902350, 0.385400, -0.192954,
		24.520041, 34.428108, 34.753822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.183558, 33.735634, 34.475155>,  <23.888395, 34.158329, 34.888893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.183558, 33.735634, 34.475155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.493458, 33.934761, 34.631073>,  <24.679398, 34.054237, 34.724625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.493458, 33.934761, 34.631073>,  <24.183558, 33.735634, 34.475155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.493458, 33.934761, 34.631073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422370, -0.866261, 0.266824,
		0.470492, -0.042086, -0.881400,
		0.774752, 0.497816, 0.389793,
		24.725883, 34.084106, 34.748013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.799574, 33.437809, 34.120518>,  <24.183558, 33.735634, 34.475155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.799574, 33.437809, 34.120518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.892756, 33.607136, 34.470726>,  <24.948666, 33.708733, 34.680851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.892756, 33.607136, 34.470726>,  <24.799574, 33.437809, 34.120518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.892756, 33.607136, 34.470726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364893, -0.872559, 0.324797,
		0.901435, 0.243808, -0.357733,
		0.232956, 0.423318, 0.875519,
		24.962643, 33.734131, 34.733383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.579178, 33.448521, 34.175312>,  <24.799574, 33.437809, 34.120518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.579178, 33.448521, 34.175312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.381458, 33.369442, 34.513916>,  <25.262827, 33.321995, 34.717079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.381458, 33.369442, 34.513916>,  <25.579178, 33.448521, 34.175312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.381458, 33.369442, 34.513916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571043, -0.808061, 0.144733,
		0.655422, 0.554936, 0.512317,
		-0.494300, -0.197694, 0.846513,
		25.233168, 33.310135, 34.767868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.129576, 33.250938, 34.669529>,  <25.579178, 33.448521, 34.175312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.129576, 33.250938, 34.669529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.783886, 33.084785, 34.783073>,  <25.576473, 32.985092, 34.851200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.783886, 33.084785, 34.783073>,  <26.129576, 33.250938, 34.669529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.783886, 33.084785, 34.783073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475115, -0.859410, 0.188892,
		0.165486, 0.298110, 0.940077,
		-0.864222, -0.415385, 0.283857,
		25.524620, 32.960171, 34.868229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.043396, 33.155350, 35.468788>,  <26.129576, 33.250938, 34.669529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.043396, 33.155350, 35.468788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.850588, 32.889481, 35.240452>,  <25.734903, 32.729958, 35.103451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.850588, 32.889481, 35.240452>,  <26.043396, 33.155350, 35.468788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.850588, 32.889481, 35.240452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710965, -0.677489, 0.188511,
		-0.512038, -0.314983, 0.799126,
		-0.482021, -0.664676, -0.570842,
		25.705982, 32.690079, 35.069199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.108366, 32.621758, 35.903030>,  <26.043396, 33.155350, 35.468788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.108366, 32.621758, 35.903030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.149857, 32.424660, 35.557442>,  <26.174751, 32.306400, 35.350090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.149857, 32.424660, 35.557442>,  <26.108366, 32.621758, 35.903030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.149857, 32.424660, 35.557442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708950, -0.572621, 0.411698,
		-0.697590, -0.655213, 0.289940,
		0.103725, -0.492749, -0.863967,
		26.180973, 32.276836, 35.298252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.066181, 31.956312, 36.111294>,  <26.108366, 32.621758, 35.903030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.066181, 31.956312, 36.111294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.257477, 31.966082, 35.760136>,  <26.372253, 31.971943, 35.549442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.257477, 31.966082, 35.760136>,  <26.066181, 31.956312, 36.111294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.257477, 31.966082, 35.760136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758318, -0.515706, 0.398750,
		-0.442994, -0.856418, -0.265151,
		0.478237, 0.024424, -0.877891,
		26.400948, 31.973410, 35.496769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.387470, 31.225958, 36.032803>,  <26.066181, 31.956312, 36.111294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.387470, 31.225958, 36.032803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561583, 31.485420, 35.783073>,  <26.666050, 31.641098, 35.633236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561583, 31.485420, 35.783073>,  <26.387470, 31.225958, 36.032803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.561583, 31.485420, 35.783073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900285, -0.316888, 0.298445,
		-0.004251, -0.691972, -0.721912,
		0.435281, 0.648657, -0.624319,
		26.692167, 31.680017, 35.595779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.931850, 30.835592, 35.818867>,  <26.387470, 31.225958, 36.032803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.931850, 30.835592, 35.818867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.060213, 31.198526, 35.710232>,  <27.137230, 31.416286, 35.645050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.060213, 31.198526, 35.710232>,  <26.931850, 30.835592, 35.818867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.060213, 31.198526, 35.710232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799993, -0.106176, 0.590541,
		0.506982, -0.406779, -0.759934,
		0.320906, 0.907335, -0.271591,
		27.156485, 31.470726, 35.628754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650452, 30.759022, 35.559254>,  <26.931850, 30.835592, 35.818867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650452, 30.759022, 35.559254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645006, 31.135633, 35.693920>,  <27.641739, 31.361601, 35.774719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645006, 31.135633, 35.693920>,  <27.650452, 30.759022, 35.559254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.645006, 31.135633, 35.693920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818073, -0.183114, 0.545184,
		0.574953, 0.282836, -0.767745,
		-0.013613, 0.941527, 0.336663,
		27.640923, 31.418091, 35.794918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.370810, 30.853186, 35.600494>,  <27.650452, 30.759022, 35.559254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.370810, 30.853186, 35.600494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.090837, 31.024380, 35.371784>,  <27.922855, 31.127096, 35.234558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.090837, 31.024380, 35.371784>,  <28.370810, 30.853186, 35.600494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.090837, 31.024380, 35.371784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639763, 0.731589, -0.235545,
		0.317497, -0.530667, -0.785868,
		-0.699928, 0.427984, -0.571778,
		27.880859, 31.152775, 35.200253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.073776, 31.195448, 36.200974>,  <28.370810, 30.853186, 35.600494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.073776, 31.195448, 36.200974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.271242, 31.490789, 36.017178>,  <28.389723, 31.667994, 35.906902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.271242, 31.490789, 36.017178>,  <28.073776, 31.195448, 36.200974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.271242, 31.490789, 36.017178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841751, 0.272927, -0.465796,
		-0.218516, 0.616720, 0.756245,
		0.493666, 0.738354, -0.459486,
		28.419342, 31.712296, 35.879333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.750917, 31.869032, 36.461781>,  <28.073776, 31.195448, 36.200974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.750917, 31.869032, 36.461781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.920322, 31.868309, 36.099426>,  <28.021965, 31.867876, 35.882011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.920322, 31.868309, 36.099426>,  <27.750917, 31.869032, 36.461781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.920322, 31.868309, 36.099426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901686, 0.095399, -0.421737,
		0.087182, 0.995438, 0.038775,
		0.423511, -0.001805, -0.905889,
		28.047377, 31.867767, 35.827660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.535704, 32.508408, 36.093754>,  <27.750917, 31.869032, 36.461781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.535704, 32.508408, 36.093754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611490, 32.186085, 35.869335>,  <27.656961, 31.992691, 35.734684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611490, 32.186085, 35.869335>,  <27.535704, 32.508408, 36.093754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.611490, 32.186085, 35.869335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936226, 0.023964, -0.350581,
		0.295946, 0.591689, -0.749880,
		0.189464, -0.805810, -0.561047,
		27.668329, 31.944342, 35.701019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.550613, 32.664272, 35.298542>,  <27.535704, 32.508408, 36.093754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.550613, 32.664272, 35.298542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.439011, 32.292976, 35.396946>,  <27.372049, 32.070198, 35.455986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.439011, 32.292976, 35.396946>,  <27.550613, 32.664272, 35.298542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.439011, 32.292976, 35.396946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871057, 0.136796, -0.471749,
		0.404245, -0.345907, -0.846720,
		-0.279009, -0.928243, 0.246005,
		27.355309, 32.014503, 35.470749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274288, 32.516350, 34.728008>,  <27.550613, 32.664272, 35.298542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.274288, 32.516350, 34.728008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.095457, 32.268253, 34.985821>,  <26.988159, 32.119396, 35.140511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.095457, 32.268253, 34.985821>,  <27.274288, 32.516350, 34.728008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.095457, 32.268253, 34.985821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858188, 0.094207, -0.504618,
		0.252265, -0.778733, -0.574401,
		-0.447075, -0.620241, 0.644534,
		26.961334, 32.082180, 35.179180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946516, 32.038929, 34.275005>,  <27.274288, 32.516350, 34.728008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.946516, 32.038929, 34.275005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.787788, 32.020782, 34.641716>,  <26.692553, 32.009895, 34.861744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.787788, 32.020782, 34.641716>,  <26.946516, 32.038929, 34.275005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.787788, 32.020782, 34.641716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917849, 0.009392, -0.396818,
		0.009392, -0.998926, -0.045368,
		0.396818, 0.045368, -0.916775,
		26.668743, 32.007172, 34.916748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.328880, 31.591322, 34.206440>,  <26.946516, 32.038929, 34.275005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.328880, 31.591322, 34.206440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.286585, 31.807705, 34.540192>,  <26.261208, 31.937534, 34.740440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.286585, 31.807705, 34.540192>,  <26.328880, 31.591322, 34.206440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.286585, 31.807705, 34.540192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928456, 0.246749, -0.277640,
		-0.356073, -0.804040, 0.476163,
		-0.105741, 0.540957, 0.834377,
		26.254862, 31.969992, 34.790504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.565903, 31.772266, 34.065662>,  <26.328880, 31.591322, 34.206440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.565903, 31.772266, 34.065662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618868, 31.915451, 34.435383>,  <25.650646, 32.001362, 34.657215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618868, 31.915451, 34.435383>,  <25.565903, 31.772266, 34.065662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.618868, 31.915451, 34.435383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715182, 0.680153, -0.160953,
		-0.686281, -0.639731, 0.346069,
		0.132413, 0.357962, 0.924300,
		25.658592, 32.022839, 34.712673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.937542, 31.870443, 34.470432>,  <25.565903, 31.772266, 34.065662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.937542, 31.870443, 34.470432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178301, 32.136303, 34.647503>,  <25.322756, 32.295818, 34.753746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178301, 32.136303, 34.647503>,  <24.937542, 31.870443, 34.470432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.178301, 32.136303, 34.647503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682963, 0.715715, -0.145994,
		-0.413864, -0.214457, 0.884717,
		0.601896, 0.664651, 0.442675,
		25.358870, 32.335697, 34.780304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.501722, 32.180641, 34.902115>,  <24.937542, 31.870443, 34.470432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.501722, 32.180641, 34.902115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.811558, 32.432007, 34.873531>,  <24.997459, 32.582825, 34.856380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.811558, 32.432007, 34.873531>,  <24.501722, 32.180641, 34.902115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.811558, 32.432007, 34.873531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632459, 0.769239, -0.090918,
		-0.002162, 0.115622, 0.993291,
		0.774591, 0.628413, -0.071463,
		25.043936, 32.620529, 34.852093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.532198, 32.723682, 35.477173>,  <24.501722, 32.180641, 34.902115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.532198, 32.723682, 35.477173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.728931, 32.878181, 35.165043>,  <24.846972, 32.970882, 34.977764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.728931, 32.878181, 35.165043>,  <24.532198, 32.723682, 35.477173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.728931, 32.878181, 35.165043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510563, 0.853904, 0.100865,
		0.705284, 0.348797, 0.617183,
		0.491833, 0.386249, -0.780328,
		24.876482, 32.994057, 34.930946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.833311, 33.240887, 36.019547>,  <24.532198, 32.723682, 35.477173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.833311, 33.240887, 36.019547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.960087, 33.238583, 35.640175>,  <25.036152, 33.237202, 35.412552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.960087, 33.238583, 35.640175>,  <24.833311, 33.240887, 36.019547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.960087, 33.238583, 35.640175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129713, 0.990322, -0.049359,
		0.939534, 0.138667, 0.313124,
		0.316939, -0.005759, -0.948429,
		25.055168, 33.236855, 35.355648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.526363, 33.560516, 35.898018>,  <24.833311, 33.240887, 36.019547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.526363, 33.560516, 35.898018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.301170, 33.596592, 35.569405>,  <25.166056, 33.618237, 35.372238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.301170, 33.596592, 35.569405>,  <25.526363, 33.560516, 35.898018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.301170, 33.596592, 35.569405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161058, 0.986943, -0.002020,
		0.810624, -0.133452, -0.570156,
		-0.562981, 0.090191, -0.821534,
		25.132277, 33.623650, 35.322945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.542637, 34.258099, 35.810600>,  <25.526363, 33.560516, 35.898018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.542637, 34.258099, 35.810600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.347361, 34.115501, 35.491955>,  <25.230194, 34.029945, 35.300770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.347361, 34.115501, 35.491955>,  <25.542637, 34.258099, 35.810600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.347361, 34.115501, 35.491955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163830, 0.933977, -0.317562,
		0.857222, -0.024522, -0.514363,
		-0.488190, -0.356489, -0.796609,
		25.200903, 34.008556, 35.252972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.690195, 34.794186, 35.313274>,  <25.542637, 34.258099, 35.810600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.690195, 34.794186, 35.313274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.413933, 34.576458, 35.122814>,  <25.248175, 34.445824, 35.008537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.413933, 34.576458, 35.122814>,  <25.690195, 34.794186, 35.313274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.413933, 34.576458, 35.122814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306904, 0.816781, -0.488549,
		0.654832, -0.191288, -0.731167,
		-0.690656, -0.544315, -0.476147,
		25.206736, 34.413162, 34.979969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.738268, 34.975475, 34.675934>,  <25.690195, 34.794186, 35.313274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.738268, 34.975475, 34.675934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.367117, 34.826454, 34.682281>,  <25.144426, 34.737041, 34.686089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.367117, 34.826454, 34.682281>,  <25.738268, 34.975475, 34.675934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.367117, 34.826454, 34.682281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348546, 0.851390, -0.391983,
		0.132526, -0.369242, -0.919835,
		-0.927875, -0.372553, 0.015866,
		25.088755, 34.714687, 34.687042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.555882, 35.026627, 33.887566>,  <25.738268, 34.975475, 34.675934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.555882, 35.026627, 33.887566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.273905, 35.038731, 34.171013>,  <25.104719, 35.045994, 34.341080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.273905, 35.038731, 34.171013>,  <25.555882, 35.026627, 33.887566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.273905, 35.038731, 34.171013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199111, 0.950469, -0.238670,
		-0.680742, -0.309343, -0.664001,
		-0.704944, 0.030263, 0.708617,
		25.062422, 35.047810, 34.383598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205149, 34.600964, 33.943462>,  <25.555882, 35.026627, 33.887566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.205149, 34.600964, 33.943462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.603922, 34.603390, 33.974659>,  <26.843185, 34.604847, 33.993378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.603922, 34.603390, 33.974659>,  <26.205149, 34.600964, 33.943462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.603922, 34.603390, 33.974659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031196, 0.883446, -0.467492,
		-0.071743, 0.468493, 0.880550,
		0.996935, 0.006069, 0.077996,
		26.903002, 34.605209, 33.998058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.282942, 35.199207, 34.283035>,  <26.205149, 34.600964, 33.943462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.282942, 35.199207, 34.283035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.575911, 35.066540, 34.045193>,  <26.751692, 34.986938, 33.902489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.575911, 35.066540, 34.045193>,  <26.282942, 35.199207, 34.283035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.575911, 35.066540, 34.045193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073876, 0.829453, -0.553669,
		0.676832, 0.449446, 0.583006,
		0.732421, -0.331671, -0.594604,
		26.795637, 34.967037, 33.866810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.853287, 35.676796, 34.269829>,  <26.282942, 35.199207, 34.283035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.853287, 35.676796, 34.269829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.879274, 35.474426, 33.925777>,  <26.894867, 35.353004, 33.719349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.879274, 35.474426, 33.925777>,  <26.853287, 35.676796, 34.269829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.879274, 35.474426, 33.925777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370152, 0.812672, -0.450057,
		0.926696, -0.289137, 0.240070,
		0.064970, -0.505928, -0.860125,
		26.898766, 35.322647, 33.667740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.417892, 36.030922, 33.950855>,  <26.853287, 35.676796, 34.269829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.417892, 36.030922, 33.950855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258646, 35.827877, 33.645218>,  <27.163099, 35.706051, 33.461838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258646, 35.827877, 33.645218>,  <27.417892, 36.030922, 33.950855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258646, 35.827877, 33.645218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095173, 0.805594, -0.584774,
		0.912385, -0.305528, -0.272407,
		-0.398114, -0.507613, -0.764090,
		27.139212, 35.675594, 33.415993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682453, 36.422401, 33.272778>,  <27.417892, 36.030922, 33.950855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682453, 36.422401, 33.272778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367243, 36.189541, 33.192661>,  <27.178116, 36.049824, 33.144592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367243, 36.189541, 33.192661>,  <27.682453, 36.422401, 33.272778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.367243, 36.189541, 33.192661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235061, 0.585202, -0.776070,
		0.569003, -0.564480, -0.597994,
		-0.788024, -0.582152, -0.200294,
		27.130835, 36.014896, 33.132576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192644, 35.996723, 33.178196>,  <27.682453, 36.422401, 33.272778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.192644, 35.996723, 33.178196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.878004, 35.756168, 33.122204>,  <27.689220, 35.611835, 33.088608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.878004, 35.756168, 33.122204>,  <28.192644, 35.996723, 33.178196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.878004, 35.756168, 33.122204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252325, 0.519991, -0.816052,
		0.563550, -0.606587, -0.560770,
		-0.786602, -0.601383, -0.139984,
		27.642023, 35.575752, 33.080208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.286594, 35.798512, 32.529964>,  <28.192644, 35.996723, 33.178196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.286594, 35.798512, 32.529964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899397, 35.749054, 32.617325>,  <27.667078, 35.719379, 32.669743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899397, 35.749054, 32.617325>,  <28.286594, 35.798512, 32.529964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.899397, 35.749054, 32.617325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244399, 0.266478, -0.932340,
		0.057077, -0.955878, -0.288167,
		-0.967994, -0.123643, 0.218405,
		27.608999, 35.711960, 32.682846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919733, 35.565704, 31.966789>,  <28.286594, 35.798512, 32.529964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919733, 35.565704, 31.966789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633520, 35.750713, 32.176205>,  <27.461792, 35.861717, 32.301853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633520, 35.750713, 32.176205>,  <27.919733, 35.565704, 31.966789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.633520, 35.750713, 32.176205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266895, 0.511584, -0.816731,
		-0.645586, -0.724126, -0.242610,
		-0.715531, 0.462519, 0.523537,
		27.418861, 35.889469, 32.333267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.402107, 35.590054, 31.518692>,  <27.919733, 35.565704, 31.966789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.402107, 35.590054, 31.518692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324682, 35.864933, 31.798777>,  <27.278227, 36.029861, 31.966827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324682, 35.864933, 31.798777>,  <27.402107, 35.590054, 31.518692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.324682, 35.864933, 31.798777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020740, 0.710684, -0.703206,
		-0.980869, -0.150637, -0.123310,
		-0.193563, 0.687195, 0.700211,
		27.266613, 36.071091, 32.008839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.898952, 36.034046, 31.261072>,  <27.402107, 35.590054, 31.518692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.898952, 36.034046, 31.261072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.100107, 36.249950, 31.531113>,  <27.220800, 36.379494, 31.693136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.100107, 36.249950, 31.531113>,  <26.898952, 36.034046, 31.261072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.100107, 36.249950, 31.531113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144083, 0.717773, -0.681206,
		-0.852257, 0.439842, 0.283190,
		0.502889, 0.539760, 0.675101,
		27.250975, 36.411877, 31.733643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.575516, 36.630405, 31.638187>,  <26.898952, 36.034046, 31.261072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.575516, 36.630405, 31.638187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963474, 36.676746, 31.552513>,  <27.196249, 36.704552, 31.501108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963474, 36.676746, 31.552513>,  <26.575516, 36.630405, 31.638187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963474, 36.676746, 31.552513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210426, 0.841416, -0.497735,
		0.122553, 0.527822, 0.840467,
		0.969898, 0.115857, -0.214185,
		27.254444, 36.711502, 31.488258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.977167, 37.227760, 31.914316>,  <26.575516, 36.630405, 31.638187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.977167, 37.227760, 31.914316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.092363, 37.125507, 31.545162>,  <27.161480, 37.064156, 31.323669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.092363, 37.125507, 31.545162>,  <26.977167, 37.227760, 31.914316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.092363, 37.125507, 31.545162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293649, 0.893712, -0.339189,
		0.911500, 0.368687, 0.182313,
		0.287990, -0.255635, -0.922883,
		27.178761, 37.048817, 31.268297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.462116, 37.030933, 32.497108>,  <26.977167, 37.227760, 31.914316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.462116, 37.030933, 32.497108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.230204, 36.802685, 32.264473>,  <27.091057, 36.665737, 32.124893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.230204, 36.802685, 32.264473>,  <27.462116, 37.030933, 32.497108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.230204, 36.802685, 32.264473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010308, -0.718888, 0.695050,
		-0.814706, 0.396982, 0.422680,
		-0.579782, -0.570619, -0.581590,
		27.056269, 36.631500, 32.089996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.856409, 36.912506, 32.879833>,  <27.462116, 37.030933, 32.497108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.856409, 36.912506, 32.879833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.965219, 36.638470, 32.609528>,  <27.030506, 36.474049, 32.447346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.965219, 36.638470, 32.609528>,  <26.856409, 36.912506, 32.879833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.965219, 36.638470, 32.609528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099970, -0.718565, 0.688237,
		-0.957083, -0.119663, -0.263957,
		0.272027, -0.685088, -0.675764,
		27.046827, 36.432945, 32.406799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.455389, 36.471722, 32.980190>,  <26.856409, 36.912506, 32.879833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.455389, 36.471722, 32.980190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750027, 36.284813, 32.784603>,  <26.926809, 36.172668, 32.667252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750027, 36.284813, 32.784603>,  <26.455389, 36.471722, 32.980190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.750027, 36.284813, 32.784603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000521, -0.723354, 0.690477,
		-0.676333, -0.508348, -0.533063,
		0.736596, -0.467270, -0.488964,
		26.971004, 36.144630, 32.637913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.286352, 35.658630, 32.881084>,  <26.455389, 36.471722, 32.980190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.286352, 35.658630, 32.881084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683826, 35.673973, 32.838909>,  <26.922312, 35.683178, 32.813606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683826, 35.673973, 32.838909>,  <26.286352, 35.658630, 32.881084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.683826, 35.673973, 32.838909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100532, -0.721599, 0.684973,
		-0.049808, -0.691248, -0.720900,
		0.993686, 0.038356, -0.105434,
		26.981932, 35.685478, 32.807278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.531502, 35.042072, 32.517418>,  <26.286352, 35.658630, 32.881084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.531502, 35.042072, 32.517418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769518, 35.225487, 32.781441>,  <26.912327, 35.335533, 32.939854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769518, 35.225487, 32.781441>,  <26.531502, 35.042072, 32.517418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769518, 35.225487, 32.781441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092748, -0.854968, 0.510321,
		0.798326, -0.242443, -0.551268,
		0.595040, 0.458531, 0.660057,
		26.948030, 35.363045, 32.979458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014444, 34.567921, 32.672508>,  <26.531502, 35.042072, 32.517418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014444, 34.567921, 32.672508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.020338, 34.817974, 32.984661>,  <27.023874, 34.968006, 33.171951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.020338, 34.817974, 32.984661>,  <27.014444, 34.567921, 32.672508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.020338, 34.817974, 32.984661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131173, -0.774927, 0.618289,
		0.991250, 0.093255, -0.093417,
		0.014733, 0.625133, 0.780379,
		27.024757, 35.005512, 33.218773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.704239, 34.530361, 33.052525>,  <27.014444, 34.567921, 32.672508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.704239, 34.530361, 33.052525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.399057, 34.649384, 33.282085>,  <27.215948, 34.720798, 33.419823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.399057, 34.649384, 33.282085>,  <27.704239, 34.530361, 33.052525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.399057, 34.649384, 33.282085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072338, -0.842896, 0.533192,
		0.642395, 0.448315, 0.621565,
		-0.762952, 0.297557, 0.573903,
		27.170172, 34.738651, 33.454258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.892403, 34.653931, 33.747257>,  <27.704239, 34.530361, 33.052525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.892403, 34.653931, 33.747257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.511309, 34.533234, 33.733150>,  <27.282652, 34.460815, 33.724686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.511309, 34.533234, 33.733150>,  <27.892403, 34.653931, 33.747257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.511309, 34.533234, 33.733150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201747, -0.715204, 0.669164,
		-0.227139, 0.630422, 0.742277,
		-0.952736, -0.301746, -0.035265,
		27.225489, 34.442711, 33.722572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.037163, 33.945847, 33.738968>,  <27.892403, 34.653931, 33.747257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.037163, 33.945847, 33.738968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.132944, 34.241261, 33.486866>,  <28.190413, 34.418510, 33.335606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.132944, 34.241261, 33.486866>,  <28.037163, 33.945847, 33.738968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.132944, 34.241261, 33.486866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950839, 0.047078, -0.306087,
		-0.196385, 0.672567, 0.713503,
		0.239454, 0.738537, -0.630258,
		28.204781, 34.462822, 33.297791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.449625, 33.339096, 33.735058>,  <28.037163, 33.945847, 33.738968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.449625, 33.339096, 33.735058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.546684, 33.244118, 33.358814>,  <27.604919, 33.187130, 33.133068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.546684, 33.244118, 33.358814>,  <27.449625, 33.339096, 33.735058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.546684, 33.244118, 33.358814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938588, 0.302632, 0.165730,
		0.245305, -0.923055, 0.296302,
		0.242648, -0.237451, -0.940606,
		27.619478, 33.172882, 33.076633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.006577, 32.936821, 33.753654>,  <27.449625, 33.339096, 33.735058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.006577, 32.936821, 33.753654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.014864, 33.114746, 33.395500>,  <28.019836, 33.221500, 33.180607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.014864, 33.114746, 33.395500>,  <28.006577, 32.936821, 33.753654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.014864, 33.114746, 33.395500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928183, 0.324264, 0.182564,
		0.371547, -0.834862, -0.406150,
		0.020716, 0.444813, -0.895384,
		28.021078, 33.248188, 33.126884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.602457, 32.653507, 33.383392>,  <28.006577, 32.936821, 33.753654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.602457, 32.653507, 33.383392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.503460, 33.019440, 33.255749>,  <28.444061, 33.238998, 33.179161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.503460, 33.019440, 33.255749>,  <28.602457, 32.653507, 33.383392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.503460, 33.019440, 33.255749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931279, 0.315487, 0.182172,
		0.267332, -0.252096, -0.930044,
		-0.247492, 0.914831, -0.319111,
		28.429213, 33.293888, 33.160015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993221, 32.705502, 32.858707>,  <28.602457, 32.653507, 33.383392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993221, 32.705502, 32.858707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.886566, 33.041981, 33.046871>,  <28.822573, 33.243870, 33.159771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.886566, 33.041981, 33.046871>,  <28.993221, 32.705502, 32.858707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.886566, 33.041981, 33.046871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963767, 0.236616, 0.123155,
		-0.007710, 0.486207, -0.873810,
		-0.266636, 0.841199, 0.470414,
		28.806576, 33.294342, 33.187996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.314350, 33.266548, 32.626900>,  <28.993221, 32.705502, 32.858707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.314350, 33.266548, 32.626900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.223764, 33.401295, 32.992462>,  <29.169413, 33.482143, 33.211800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.223764, 33.401295, 32.992462>,  <29.314350, 33.266548, 32.626900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223764, 33.401295, 32.992462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972026, 0.138166, 0.189938,
		-0.062287, 0.931359, -0.358735,
		-0.226465, 0.336869, 0.913911,
		29.155825, 33.502354, 33.266636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739594, 33.959358, 32.794701>,  <29.314350, 33.266548, 32.626900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739594, 33.959358, 32.794701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674509, 33.734177, 33.118824>,  <29.635458, 33.599068, 33.313297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674509, 33.734177, 33.118824>,  <29.739594, 33.959358, 32.794701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674509, 33.734177, 33.118824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979017, 0.009998, 0.203534,
		-0.122682, 0.826425, 0.549519,
		-0.162712, -0.562958, 0.810310,
		29.625696, 33.565289, 33.361916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121347, 34.261028, 33.324589>,  <29.739594, 33.959358, 32.794701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.121347, 34.261028, 33.324589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066162, 33.869568, 33.385521>,  <30.033051, 33.634689, 33.422081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066162, 33.869568, 33.385521>,  <30.121347, 34.261028, 33.324589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066162, 33.869568, 33.385521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971795, -0.104055, 0.211628,
		-0.191260, 0.177228, 0.965407,
		-0.137962, -0.978654, 0.152327,
		30.024775, 33.575974, 33.431221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277197, 34.157112, 33.993050>,  <30.121347, 34.261028, 33.324589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277197, 34.157112, 33.993050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334522, 33.867119, 33.723572>,  <30.368917, 33.693123, 33.561886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334522, 33.867119, 33.723572>,  <30.277197, 34.157112, 33.993050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334522, 33.867119, 33.723572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970766, -0.029460, 0.238214,
		-0.192548, -0.688135, 0.699568,
		0.143313, -0.724985, -0.673690,
		30.377516, 33.649624, 33.521465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.514711, 33.542332, 34.154682>,  <30.277197, 34.157112, 33.993050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.514711, 33.542332, 34.154682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651617, 33.517757, 33.779644>,  <30.733761, 33.503014, 33.554623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651617, 33.517757, 33.779644>,  <30.514711, 33.542332, 34.154682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651617, 33.517757, 33.779644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912417, -0.216574, 0.347263,
		-0.224396, -0.974331, -0.018061,
		0.342261, -0.061445, -0.937594,
		30.754295, 33.499325, 33.498367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.775707, 32.751266, 33.804226>,  <30.514711, 33.542332, 34.154682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.775707, 32.751266, 33.804226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.958345, 33.086964, 33.686108>,  <31.067928, 33.288380, 33.615238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.958345, 33.086964, 33.686108>,  <30.775707, 32.751266, 33.804226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958345, 33.086964, 33.686108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851052, -0.315277, 0.419894,
		0.259292, -0.443033, -0.858190,
		0.456595, 0.839239, -0.295295,
		31.095324, 33.338734, 33.597519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375046, 32.551529, 33.342255>,  <30.775707, 32.751266, 33.804226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375046, 32.551529, 33.342255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453911, 32.890316, 33.539749>,  <31.501230, 33.093590, 33.658245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453911, 32.890316, 33.539749>,  <31.375046, 32.551529, 33.342255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453911, 32.890316, 33.539749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888498, -0.367232, 0.275158,
		0.414365, 0.384434, -0.824932,
		0.197161, 0.846966, 0.493737,
		31.513060, 33.144405, 33.687870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021725, 32.822319, 33.071583>,  <31.375046, 32.551529, 33.342255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021725, 32.822319, 33.071583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973852, 32.954597, 33.446030>,  <31.945127, 33.033966, 33.670696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973852, 32.954597, 33.446030>,  <32.021725, 32.822319, 33.071583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973852, 32.954597, 33.446030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906775, -0.347533, 0.238705,
		0.404271, 0.877416, -0.258275,
		-0.119685, 0.330699, 0.936116,
		31.937946, 33.053806, 33.726864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581844, 33.324963, 33.167271>,  <32.021725, 32.822319, 33.071583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581844, 33.324963, 33.167271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425655, 33.107895, 33.464741>,  <32.331944, 32.977654, 33.643223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425655, 33.107895, 33.464741>,  <32.581844, 33.324963, 33.167271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425655, 33.107895, 33.464741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860285, -0.502699, 0.084871,
		0.327787, 0.672910, 0.663135,
		-0.390468, -0.542666, 0.743673,
		32.308514, 32.945095, 33.687843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962605, 33.475468, 33.856632>,  <32.581844, 33.324963, 33.167271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962605, 33.475468, 33.856632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801346, 33.119030, 33.773277>,  <32.704590, 32.905167, 33.723263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801346, 33.119030, 33.773277>,  <32.962605, 33.475468, 33.856632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801346, 33.119030, 33.773277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913704, -0.379199, -0.146123,
		0.051189, -0.249312, 0.967069,
		-0.403142, -0.891096, -0.208386,
		32.680405, 32.851700, 33.710762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311115, 32.979050, 34.253944>,  <32.962605, 33.475468, 33.856632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311115, 32.979050, 34.253944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139320, 32.776859, 33.954601>,  <33.036243, 32.655544, 33.774994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139320, 32.776859, 33.954601>,  <33.311115, 32.979050, 34.253944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139320, 32.776859, 33.954601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850362, -0.505334, -0.146702,
		-0.304016, -0.699380, 0.646871,
		-0.429486, -0.505475, -0.748356,
		33.010475, 32.625217, 33.730095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500374, 32.301472, 34.264286>,  <33.311115, 32.979050, 34.253944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500374, 32.301472, 34.264286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384907, 32.399204, 33.893993>,  <33.315628, 32.457844, 33.671818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384907, 32.399204, 33.893993>,  <33.500374, 32.301472, 34.264286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384907, 32.399204, 33.893993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723073, -0.578131, -0.378061,
		-0.627565, -0.778502, -0.009785,
		-0.288664, 0.244333, -0.925729,
		33.298306, 32.472504, 33.616276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607502, 31.652487, 33.835373>,  <33.500374, 32.301472, 34.264286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607502, 31.652487, 33.835373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655384, 31.987061, 33.621441>,  <33.684113, 32.187805, 33.493080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655384, 31.987061, 33.621441>,  <33.607502, 31.652487, 33.835373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655384, 31.987061, 33.621441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859144, -0.357241, -0.366403,
		-0.497537, -0.415639, -0.761382,
		0.119706, 0.836435, -0.534834,
		33.691296, 32.237991, 33.460991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952560, 31.426254, 33.325642>,  <33.607502, 31.652487, 33.835373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952560, 31.426254, 33.325642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011288, 31.818850, 33.276455>,  <34.046524, 32.054405, 33.246941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011288, 31.818850, 33.276455>,  <33.952560, 31.426254, 33.325642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011288, 31.818850, 33.276455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849898, -0.188776, -0.491973,
		-0.506080, -0.032278, -0.861883,
		0.146823, 0.981490, -0.122969,
		34.055336, 32.113297, 33.239563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005417, 31.634958, 32.497299>,  <33.952560, 31.426254, 33.325642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005417, 31.634958, 32.497299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185131, 31.933418, 32.693832>,  <34.292957, 32.112495, 32.811752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185131, 31.933418, 32.693832>,  <34.005417, 31.634958, 32.497299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185131, 31.933418, 32.693832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726868, 0.014464, -0.686625,
		-0.519432, 0.665620, -0.535854,
		0.449281, 0.746150, 0.491331,
		34.319916, 32.157265, 32.841232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268269, 32.074585, 31.941999>,  <34.005417, 31.634958, 32.497299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268269, 32.074585, 31.941999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464588, 32.139286, 32.284451>,  <34.582378, 32.178108, 32.489922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464588, 32.139286, 32.284451>,  <34.268269, 32.074585, 31.941999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464588, 32.139286, 32.284451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868933, -0.162875, -0.467362,
		0.063844, 0.973297, -0.220492,
		0.490795, 0.161755, 0.856128,
		34.611828, 32.187813, 32.541290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816074, 32.545456, 31.752056>,  <34.268269, 32.074585, 31.941999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816074, 32.545456, 31.752056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906990, 32.379650, 32.104538>,  <34.961540, 32.280167, 32.316029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906990, 32.379650, 32.104538>,  <34.816074, 32.545456, 31.752056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906990, 32.379650, 32.104538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930284, -0.175141, -0.322332,
		0.287945, 0.893032, 0.345806,
		0.227288, -0.414511, 0.881204,
		34.975178, 32.255299, 32.368900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369648, 32.924934, 32.005524>,  <34.816074, 32.545456, 31.752056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369648, 32.924934, 32.005524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359921, 32.552364, 32.150768>,  <35.354084, 32.328823, 32.237915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359921, 32.552364, 32.150768>,  <35.369648, 32.924934, 32.005524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359921, 32.552364, 32.150768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877325, -0.194025, -0.438926,
		0.479281, 0.307895, 0.821882,
		-0.024323, -0.931426, 0.363116,
		35.352623, 32.272938, 32.259705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014919, 32.845032, 32.197834>,  <35.369648, 32.924934, 32.005524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014919, 32.845032, 32.197834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883427, 32.467621, 32.181339>,  <35.804531, 32.241177, 32.171444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883427, 32.467621, 32.181339>,  <36.014919, 32.845032, 32.197834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883427, 32.467621, 32.181339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894402, -0.296998, -0.334420,
		0.303286, -0.146816, 0.941522,
		-0.328728, -0.943524, -0.041237,
		35.784809, 32.184563, 32.168968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512321, 32.402092, 32.607838>,  <36.014919, 32.845032, 32.197834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512321, 32.402092, 32.607838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311264, 32.196983, 32.329437>,  <36.190632, 32.073917, 32.162395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311264, 32.196983, 32.329437>,  <36.512321, 32.402092, 32.607838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311264, 32.196983, 32.329437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857658, -0.396840, -0.327019,
		-0.108517, -0.761305, 0.639248,
		-0.502640, -0.512769, -0.696003,
		36.160473, 32.043152, 32.120636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032562, 31.940109, 32.291111>,  <36.512321, 32.402092, 32.607838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032562, 31.940109, 32.291111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716263, 31.867876, 32.057152>,  <36.526482, 31.824537, 31.916777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716263, 31.867876, 32.057152>,  <37.032562, 31.940109, 32.291111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716263, 31.867876, 32.057152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580418, -0.524780, -0.622673,
		-0.194498, -0.831863, 0.519783,
		-0.790750, -0.180582, -0.584897,
		36.479038, 31.813702, 31.881683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158314, 31.229473, 32.095596>,  <37.032562, 31.940109, 32.291111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158314, 31.229473, 32.095596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899727, 31.382172, 31.831371>,  <36.744576, 31.473791, 31.672836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899727, 31.382172, 31.831371>,  <37.158314, 31.229473, 32.095596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899727, 31.382172, 31.831371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357351, -0.613459, -0.704250,
		-0.674075, -0.691330, 0.260166,
		-0.646470, 0.381747, -0.660564,
		36.705784, 31.496696, 31.633202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743698, 30.655478, 31.735413>,  <37.158314, 31.229473, 32.095596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743698, 30.655478, 31.735413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719402, 30.976240, 31.497671>,  <36.704823, 31.168697, 31.355026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719402, 30.976240, 31.497671>,  <36.743698, 30.655478, 31.735413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719402, 30.976240, 31.497671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242739, -0.565710, -0.788067,
		-0.968188, -0.192143, -0.160291,
		-0.060743, 0.801906, -0.594355,
		36.701180, 31.216812, 31.319365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464664, 30.422043, 31.135790>,  <36.743698, 30.655478, 31.735413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464664, 30.422043, 31.135790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610249, 30.768475, 30.998713>,  <36.697601, 30.976334, 30.916466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610249, 30.768475, 30.998713>,  <36.464664, 30.422043, 31.135790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610249, 30.768475, 30.998713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084532, -0.397125, -0.913864,
		-0.927570, 0.303644, -0.217750,
		0.363963, 0.866079, -0.342693,
		36.719437, 31.028297, 30.895905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209171, 30.478699, 30.466969>,  <36.464664, 30.422043, 31.135790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209171, 30.478699, 30.466969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532936, 30.713459, 30.474941>,  <36.727196, 30.854315, 30.479725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532936, 30.713459, 30.474941>,  <36.209171, 30.478699, 30.466969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532936, 30.713459, 30.474941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223399, -0.276350, -0.934732,
		-0.543086, 0.761038, -0.354794,
		0.809414, 0.586900, 0.019933,
		36.775761, 30.889528, 30.480921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241058, 30.891085, 29.896885>,  <36.209171, 30.478699, 30.466969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241058, 30.891085, 29.896885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619198, 30.870234, 30.025637>,  <36.846081, 30.857723, 30.102888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619198, 30.870234, 30.025637>,  <36.241058, 30.891085, 29.896885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619198, 30.870234, 30.025637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294493, -0.287327, -0.911437,
		0.139995, 0.956413, -0.256272,
		0.945344, -0.052127, 0.321881,
		36.902802, 30.854595, 30.122202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575596, 31.289293, 29.448524>,  <36.241058, 30.891085, 29.896885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575596, 31.289293, 29.448524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855667, 31.048368, 29.601870>,  <37.023712, 30.903814, 29.693876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855667, 31.048368, 29.601870>,  <36.575596, 31.289293, 29.448524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855667, 31.048368, 29.601870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341220, -0.189359, -0.920713,
		0.627150, 0.775476, 0.072935,
		0.700180, -0.602312, 0.383365,
		37.065720, 30.867676, 29.716879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019714, 31.332825, 28.886082>,  <36.575596, 31.289293, 29.448524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019714, 31.332825, 28.886082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.182095, 31.042358, 29.108032>,  <37.279522, 30.868078, 29.241203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.182095, 31.042358, 29.108032>,  <37.019714, 31.332825, 28.886082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182095, 31.042358, 29.108032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416852, -0.393187, -0.819535,
		0.813287, 0.563995, 0.143087,
		0.405954, -0.726164, 0.554876,
		37.303883, 30.824509, 29.274494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770752, 31.341209, 28.746475>,  <37.019714, 31.332825, 28.886082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770752, 31.341209, 28.746475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.630600, 30.985191, 28.863132>,  <37.546509, 30.771582, 28.933126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.630600, 30.985191, 28.863132>,  <37.770752, 31.341209, 28.746475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630600, 30.985191, 28.863132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350824, -0.413429, -0.840237,
		0.868421, -0.192088, 0.457107,
		-0.350381, -0.890044, 0.291641,
		37.525486, 30.718178, 28.950624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349289, 30.880795, 28.540255>,  <37.770752, 31.341209, 28.746475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349289, 30.880795, 28.540255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016529, 30.664619, 28.590654>,  <37.816875, 30.534914, 28.620893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016529, 30.664619, 28.590654>,  <38.349289, 30.880795, 28.540255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016529, 30.664619, 28.590654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255049, -0.574012, -0.778113,
		0.492846, -0.615174, 0.615357,
		-0.831897, -0.540436, 0.126000,
		37.766960, 30.502489, 28.628454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583031, 30.158463, 28.503473>,  <38.349289, 30.880795, 28.540255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583031, 30.158463, 28.503473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190296, 30.147732, 28.428349>,  <37.954655, 30.141293, 28.383274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190296, 30.147732, 28.428349>,  <38.583031, 30.158463, 28.503473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190296, 30.147732, 28.428349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163141, -0.624712, -0.763623,
		-0.096842, -0.780394, 0.617743,
		-0.981839, -0.026829, -0.187813,
		37.895744, 30.139683, 28.372005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446121, 29.477793, 28.212572>,  <38.583031, 30.158463, 28.503473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446121, 29.477793, 28.212572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111908, 29.670952, 28.107737>,  <37.911381, 29.786848, 28.044836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111908, 29.670952, 28.107737>,  <38.446121, 29.477793, 28.212572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111908, 29.670952, 28.107737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076479, -0.370151, -0.925818,
		-0.544088, -0.793598, 0.272342,
		-0.835535, 0.482899, -0.262088,
		37.861248, 29.815821, 28.029110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069298, 28.955805, 27.968151>,  <38.446121, 29.477793, 28.212572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069298, 28.955805, 27.968151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899063, 29.286741, 27.821518>,  <37.796925, 29.485304, 27.733538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899063, 29.286741, 27.821518>,  <38.069298, 28.955805, 27.968151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899063, 29.286741, 27.821518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057772, -0.429114, -0.901401,
		-0.903073, -0.362444, 0.230421,
		-0.425584, 0.827343, -0.366582,
		37.771389, 29.534945, 27.711544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559826, 28.737370, 27.471823>,  <38.069298, 28.955805, 27.968151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559826, 28.737370, 27.471823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655006, 29.114218, 27.377350>,  <37.712116, 29.340326, 27.320665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655006, 29.114218, 27.377350>,  <37.559826, 28.737370, 27.471823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655006, 29.114218, 27.377350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100185, -0.265679, -0.958842,
		-0.966096, 0.204499, -0.157606,
		0.237955, 0.942123, -0.236183,
		37.726395, 29.396854, 27.306496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367088, 28.749016, 26.804934>,  <37.559826, 28.737370, 27.471823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367088, 28.749016, 26.804934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595821, 29.075226, 26.840544>,  <37.733063, 29.270952, 26.861910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595821, 29.075226, 26.840544>,  <37.367088, 28.749016, 26.804934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595821, 29.075226, 26.840544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232559, -0.057081, -0.970906,
		-0.786715, 0.575901, -0.222299,
		0.571835, 0.815524, 0.089025,
		37.767372, 29.319883, 26.867250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195633, 29.207203, 26.194176>,  <37.367088, 28.749016, 26.804934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195633, 29.207203, 26.194176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554840, 29.296656, 26.345732>,  <37.770363, 29.350327, 26.436665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554840, 29.296656, 26.345732>,  <37.195633, 29.207203, 26.194176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554840, 29.296656, 26.345732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409553, -0.110285, -0.905596,
		-0.160734, 0.968414, -0.190626,
		0.898015, 0.223632, 0.378891,
		37.824245, 29.363745, 26.459398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518066, 29.795071, 25.761864>,  <37.195633, 29.207203, 26.194176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518066, 29.795071, 25.761864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.824188, 29.602320, 25.932560>,  <38.007862, 29.486668, 26.034977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.824188, 29.602320, 25.932560>,  <37.518066, 29.795071, 25.761864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824188, 29.602320, 25.932560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515047, 0.060811, -0.855002,
		0.386058, 0.874125, 0.294729,
		0.765301, -0.481880, 0.426739,
		38.053780, 29.457756, 26.060581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008400, 30.073572, 25.386078>,  <37.518066, 29.795071, 25.761864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008400, 30.073572, 25.386078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182415, 29.755445, 25.554941>,  <38.286823, 29.564569, 25.656260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182415, 29.755445, 25.554941>,  <38.008400, 30.073572, 25.386078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182415, 29.755445, 25.554941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603016, -0.090837, -0.792541,
		0.668669, 0.599349, 0.440072,
		0.435034, -0.795318, 0.422156,
		38.312923, 29.516850, 25.681587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652386, 30.115952, 24.996471>,  <38.008400, 30.073572, 25.386078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652386, 30.115952, 24.996471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616917, 29.741827, 25.133486>,  <38.595634, 29.517353, 25.215694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616917, 29.741827, 25.133486>,  <38.652386, 30.115952, 24.996471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616917, 29.741827, 25.133486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621019, -0.320783, -0.715146,
		0.778763, 0.149305, 0.609291,
		-0.088675, -0.935311, 0.342535,
		38.590313, 29.461233, 25.236246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283253, 29.907948, 25.030729>,  <38.652386, 30.115952, 24.996471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283253, 29.907948, 25.030729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078041, 29.565332, 25.008287>,  <38.954914, 29.359764, 24.994822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078041, 29.565332, 25.008287>,  <39.283253, 29.907948, 25.030729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078041, 29.565332, 25.008287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598989, -0.310416, -0.738142,
		0.614832, -0.412291, 0.672308,
		-0.513025, -0.856538, -0.056104,
		38.924133, 29.308371, 24.991457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798244, 29.423735, 25.096912>,  <39.283253, 29.907948, 25.030729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798244, 29.423735, 25.096912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483418, 29.261576, 24.910933>,  <39.294521, 29.164280, 24.799345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483418, 29.261576, 24.910933>,  <39.798244, 29.423735, 25.096912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483418, 29.261576, 24.910933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607677, -0.379938, -0.697406,
		0.106075, -0.831445, 0.545388,
		-0.787068, -0.405397, -0.464948,
		39.247295, 29.139957, 24.771448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078274, 28.992540, 24.571516>,  <39.798244, 29.423735, 25.096912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078274, 28.992540, 24.571516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704327, 29.004541, 24.430023>,  <39.479958, 29.011742, 24.345127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704327, 29.004541, 24.430023>,  <40.078274, 28.992540, 24.571516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704327, 29.004541, 24.430023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344779, -0.160677, -0.924830,
		-0.084582, -0.986551, 0.139868,
		-0.934866, 0.030000, -0.353732,
		39.423866, 29.013542, 24.323904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979713, 28.326132, 24.290689>,  <40.078274, 28.992540, 24.571516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979713, 28.326132, 24.290689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736889, 28.595224, 24.121500>,  <39.591194, 28.756680, 24.019987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736889, 28.595224, 24.121500>,  <39.979713, 28.326132, 24.290689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736889, 28.595224, 24.121500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358474, -0.243205, -0.901304,
		-0.709206, -0.698771, -0.093517,
		-0.607061, 0.672733, -0.422974,
		39.554771, 28.797045, 23.994608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829990, 28.097656, 23.699776>,  <39.979713, 28.326132, 24.290689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829990, 28.097656, 23.699776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730465, 28.480085, 23.637785>,  <39.670750, 28.709543, 23.600590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730465, 28.480085, 23.637785>,  <39.829990, 28.097656, 23.699776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730465, 28.480085, 23.637785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342811, -0.062724, -0.937308,
		-0.905856, -0.286339, -0.312146,
		-0.248809, 0.956073, -0.154979,
		39.655823, 28.766907, 23.591291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416626, 27.997341, 23.169416>,  <39.829990, 28.097656, 23.699776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416626, 27.997341, 23.169416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.539639, 28.377855, 23.178158>,  <39.613445, 28.606165, 23.183403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.539639, 28.377855, 23.178158>,  <39.416626, 27.997341, 23.169416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539639, 28.377855, 23.178158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366315, -0.097162, -0.925404,
		-0.878201, 0.292596, -0.378351,
		0.307532, 0.951287, 0.021854,
		39.631897, 28.663242, 23.184713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228378, 28.238297, 22.512657>,  <39.416626, 27.997341, 23.169416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228378, 28.238297, 22.512657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508286, 28.480190, 22.664776>,  <39.676228, 28.625326, 22.756048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508286, 28.480190, 22.664776>,  <39.228378, 28.238297, 22.512657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508286, 28.480190, 22.664776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537529, -0.095090, -0.837867,
		-0.470524, 0.790730, -0.391602,
		0.699764, 0.604734, 0.380299,
		39.718216, 28.661610, 22.778866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387009, 28.622366, 21.934792>,  <39.228378, 28.238297, 22.512657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387009, 28.622366, 21.934792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687767, 28.692770, 22.188932>,  <39.868221, 28.735012, 22.341417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687767, 28.692770, 22.188932>,  <39.387009, 28.622366, 21.934792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687767, 28.692770, 22.188932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624728, 0.117677, -0.771924,
		-0.210634, 0.977329, -0.021479,
		0.751897, 0.176012, 0.635351,
		39.913338, 28.745573, 22.379538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723759, 29.282444, 21.837831>,  <39.387009, 28.622366, 21.934792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723759, 29.282444, 21.837831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995945, 29.045300, 22.010107>,  <40.159256, 28.903013, 22.113472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995945, 29.045300, 22.010107>,  <39.723759, 29.282444, 21.837831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995945, 29.045300, 22.010107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612038, 0.136607, -0.778941,
		0.402967, 0.793635, 0.455807,
		0.680461, -0.592859, 0.430687,
		40.200085, 28.867441, 22.139313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282158, 29.606270, 21.630341>,  <39.723759, 29.282444, 21.837831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282158, 29.606270, 21.630341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430161, 29.254017, 21.748718>,  <40.518963, 29.042665, 21.819744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430161, 29.254017, 21.748718>,  <40.282158, 29.606270, 21.630341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430161, 29.254017, 21.748718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579326, -0.030322, -0.814532,
		0.726277, 0.472829, 0.498954,
		0.370005, -0.880632, 0.295944,
		40.541161, 28.989826, 21.837502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035465, 29.603146, 21.551245>,  <40.282158, 29.606270, 21.630341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035465, 29.603146, 21.551245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.971653, 29.209396, 21.581076>,  <40.933365, 28.973146, 21.598974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.971653, 29.209396, 21.581076>,  <41.035465, 29.603146, 21.551245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.971653, 29.209396, 21.581076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544249, -0.150729, -0.825272,
		0.823615, -0.091071, 0.559789,
		-0.159535, -0.984371, 0.074577,
		40.923794, 28.914085, 21.603449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631592, 29.278946, 21.276119>,  <41.035465, 29.603146, 21.551245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631592, 29.278946, 21.276119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358322, 28.989412, 21.237455>,  <41.194363, 28.815693, 21.214256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358322, 28.989412, 21.237455>,  <41.631592, 29.278946, 21.276119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358322, 28.989412, 21.237455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350494, -0.208885, -0.912974,
		0.640650, -0.657595, 0.396403,
		-0.683170, -0.723834, -0.096661,
		41.153370, 28.772263, 21.208456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.970093, 28.685875, 21.031689>,  <41.631592, 29.278946, 21.276119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.970093, 28.685875, 21.031689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.584137, 28.668507, 20.928078>,  <41.352562, 28.658085, 20.865911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.584137, 28.668507, 20.928078>,  <41.970093, 28.685875, 21.031689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.584137, 28.668507, 20.928078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262255, -0.105740, -0.959188,
		0.014260, -0.993445, 0.113415,
		-0.964893, -0.043422, -0.259029,
		41.294670, 28.655479, 20.850368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.970146, 28.227495, 20.489525>,  <41.970093, 28.685875, 21.031689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.970146, 28.227495, 20.489525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.636299, 28.441183, 20.435823>,  <41.435989, 28.569395, 20.403603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.636299, 28.441183, 20.435823>,  <41.970146, 28.227495, 20.489525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.636299, 28.441183, 20.435823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182052, 0.037499, -0.982574,
		-0.519874, -0.844514, -0.128553,
		-0.834618, 0.534218, -0.134251,
		41.385914, 28.601448, 20.395548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.711178, 27.869587, 19.853546>,  <41.970146, 28.227495, 20.489525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.711178, 27.869587, 19.853546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.529568, 28.225878, 19.862139>,  <41.420601, 28.439651, 19.867294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.529568, 28.225878, 19.862139>,  <41.711178, 27.869587, 19.853546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.529568, 28.225878, 19.862139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042552, 0.045757, -0.998046,
		-0.889970, -0.452228, -0.058677,
		-0.454029, 0.890728, 0.021479,
		41.393360, 28.493095, 19.868582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081039, 27.817198, 19.467772>,  <41.711178, 27.869587, 19.853546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081039, 27.817198, 19.467772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162094, 28.208763, 19.478144>,  <41.210728, 28.443703, 19.484367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162094, 28.208763, 19.478144>,  <41.081039, 27.817198, 19.467772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162094, 28.208763, 19.478144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039942, 0.034721, -0.998599,
		-0.978440, 0.201313, 0.046135,
		0.202633, 0.978911, 0.025932,
		41.222885, 28.502436, 19.485924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678123, 28.188366, 19.020668>,  <41.081039, 27.817198, 19.467772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678123, 28.188366, 19.020668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986118, 28.441441, 19.053705>,  <41.170918, 28.593287, 19.073528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986118, 28.441441, 19.053705>,  <40.678123, 28.188366, 19.020668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986118, 28.441441, 19.053705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118580, -0.014704, -0.992836,
		-0.626941, 0.774267, -0.086347,
		0.769990, 0.632688, 0.082594,
		41.217113, 28.631247, 19.078484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651436, 28.798021, 18.512646>,  <40.678123, 28.188366, 19.020668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.651436, 28.798021, 18.512646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026134, 28.716284, 18.626310>,  <41.250954, 28.667240, 18.694510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026134, 28.716284, 18.626310>,  <40.651436, 28.798021, 18.512646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026134, 28.716284, 18.626310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286189, -0.020204, -0.957960,
		0.201496, 0.978690, 0.039556,
		0.936747, -0.204346, 0.284161,
		41.307159, 28.654980, 18.711559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301521, 29.317059, 18.217667>,  <40.651436, 28.798021, 18.512646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301521, 29.317059, 18.217667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.430229, 28.947948, 18.302473>,  <41.507454, 28.726482, 18.353357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.430229, 28.947948, 18.302473>,  <41.301521, 29.317059, 18.217667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.430229, 28.947948, 18.302473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366453, -0.085099, -0.926537,
		0.873028, 0.375821, 0.310773,
		0.321766, -0.922776, 0.212015,
		41.526760, 28.671116, 18.366077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675282, 28.803577, 17.745348>,  <41.301521, 29.317059, 18.217667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675282, 28.803577, 17.745348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.616177, 28.928450, 17.369963>,  <41.580715, 29.003372, 17.144732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.616177, 28.928450, 17.369963>,  <41.675282, 28.803577, 17.745348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.616177, 28.928450, 17.369963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466300, 0.814807, 0.344463,
		0.872199, 0.488502, 0.025174,
		-0.147759, 0.312179, -0.938462,
		41.571850, 29.022102, 17.088425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911465, 29.517149, 17.640825>,  <41.675282, 28.803577, 17.745348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911465, 29.517149, 17.640825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610931, 29.415112, 17.397377>,  <41.430611, 29.353889, 17.251308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610931, 29.415112, 17.397377>,  <41.911465, 29.517149, 17.640825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610931, 29.415112, 17.397377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450494, 0.872205, 0.190560,
		0.482231, 0.417355, -0.770239,
		-0.751337, -0.255094, -0.608620,
		41.385529, 29.338583, 17.214790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745613, 30.102848, 17.140383>,  <41.911465, 29.517149, 17.640825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745613, 30.102848, 17.140383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452740, 29.860882, 17.265589>,  <41.277016, 29.715702, 17.340714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452740, 29.860882, 17.265589>,  <41.745613, 30.102848, 17.140383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452740, 29.860882, 17.265589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540475, 0.795684, 0.273449,
		-0.414476, 0.031038, -0.909531,
		-0.732186, -0.604917, 0.313017,
		41.233086, 29.679407, 17.359493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993374, 30.379120, 16.996260>,  <41.745613, 30.102848, 17.140383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993374, 30.379120, 16.996260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998909, 30.150049, 17.324125>,  <41.002228, 30.012608, 17.520845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998909, 30.150049, 17.324125>,  <40.993374, 30.379120, 16.996260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998909, 30.150049, 17.324125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597907, 0.652305, 0.465838,
		-0.801446, -0.496528, -0.333384,
		0.013834, -0.572677, 0.819664,
		41.003059, 29.978247, 17.570024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856354, 30.584677, 17.737505>,  <40.993374, 30.379120, 16.996260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856354, 30.584677, 17.737505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.660793, 30.347874, 17.993786>,  <40.543457, 30.205791, 18.147554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.660793, 30.347874, 17.993786>,  <40.856354, 30.584677, 17.737505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660793, 30.347874, 17.993786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253011, 0.799128, 0.545326,
		-0.834842, 0.104506, -0.540479,
		-0.488902, -0.592008, 0.640704,
		40.514122, 30.170271, 18.185997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656658, 31.157825, 18.111240>,  <40.856354, 30.584677, 17.737505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656658, 31.157825, 18.111240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.575890, 30.806578, 18.284739>,  <40.527428, 30.595829, 18.388838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.575890, 30.806578, 18.284739>,  <40.656658, 31.157825, 18.111240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575890, 30.806578, 18.284739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050740, 0.451653, 0.890749,
		-0.978087, 0.157851, -0.135753,
		-0.201919, -0.878119, 0.433747,
		40.515312, 30.543142, 18.414862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139988, 31.451876, 18.656105>,  <40.656658, 31.157825, 18.111240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139988, 31.451876, 18.656105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276127, 31.087469, 18.749241>,  <40.357811, 30.868826, 18.805122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276127, 31.087469, 18.749241>,  <40.139988, 31.451876, 18.656105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276127, 31.087469, 18.749241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090932, 0.214573, 0.972466,
		-0.935893, -0.352149, -0.009811,
		0.340348, -0.911016, 0.232839,
		40.378231, 30.814165, 18.819092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645817, 31.093277, 19.187786>,  <40.139988, 31.451876, 18.656105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645817, 31.093277, 19.187786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013191, 30.939762, 19.226114>,  <40.233616, 30.847654, 19.249111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013191, 30.939762, 19.226114>,  <39.645817, 31.093277, 19.187786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013191, 30.939762, 19.226114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064299, 0.094169, 0.993478,
		-0.390306, -0.918608, 0.061811,
		0.918437, -0.383786, 0.095820,
		40.288723, 30.824627, 19.254860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625759, 30.605766, 19.820354>,  <39.645817, 31.093277, 19.187786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625759, 30.605766, 19.820354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015617, 30.682590, 19.774427>,  <40.249531, 30.728685, 19.746870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015617, 30.682590, 19.774427>,  <39.625759, 30.605766, 19.820354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015617, 30.682590, 19.774427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073148, 0.211471, 0.974643,
		0.211471, -0.958328, 0.192060,
		-0.974643, -0.192060, 0.114820,
		40.308010, 30.740208, 19.739981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990604, 30.298468, 20.373642>,  <39.625759, 30.605766, 19.820354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990604, 30.298468, 20.373642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214493, 30.606127, 20.250273>,  <40.348827, 30.790722, 20.176252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214493, 30.606127, 20.250273>,  <39.990604, 30.298468, 20.373642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214493, 30.606127, 20.250273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082449, 0.318649, 0.944280,
		0.824568, -0.553964, 0.114939,
		0.559722, 0.769147, -0.308422,
		40.382408, 30.836870, 20.157745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501221, 30.265568, 20.808165>,  <39.990604, 30.298468, 20.373642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501221, 30.265568, 20.808165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.482449, 30.643011, 20.677078>,  <40.471184, 30.869478, 20.598427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.482449, 30.643011, 20.677078>,  <40.501221, 30.265568, 20.808165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482449, 30.643011, 20.677078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228684, 0.309212, 0.923088,
		0.972369, 0.118268, 0.201276,
		-0.046935, 0.943610, -0.327714,
		40.468369, 30.926094, 20.578764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839382, 30.550243, 21.278679>,  <40.501221, 30.265568, 20.808165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.839382, 30.550243, 21.278679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663338, 30.859529, 21.096056>,  <40.557713, 31.045101, 20.986483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663338, 30.859529, 21.096056>,  <40.839382, 30.550243, 21.278679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663338, 30.859529, 21.096056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120634, 0.452924, 0.883350,
		0.889805, 0.443846, -0.106060,
		-0.440108, 0.773214, -0.456557,
		40.531303, 31.091494, 20.959089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022919, 31.134083, 21.684801>,  <40.839382, 30.550243, 21.278679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.022919, 31.134083, 21.684801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723076, 31.283140, 21.465996>,  <40.543171, 31.372576, 21.334713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723076, 31.283140, 21.465996>,  <41.022919, 31.134083, 21.684801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723076, 31.283140, 21.465996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240461, 0.616657, 0.749608,
		0.616657, 0.693448, -0.372645,
		-0.749608, 0.372645, -0.547013,
		40.498192, 31.394934, 21.301891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997868, 31.809299, 21.869263>,  <41.022919, 31.134083, 21.684801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997868, 31.809299, 21.869263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.633240, 31.726532, 21.727150>,  <40.414463, 31.676870, 21.641882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.633240, 31.726532, 21.727150>,  <40.997868, 31.809299, 21.869263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633240, 31.726532, 21.727150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402620, 0.624327, 0.669412,
		0.083298, 0.753259, -0.652428,
		-0.911569, -0.206920, -0.355283,
		40.359768, 31.664455, 21.620565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749813, 32.419914, 21.656317>,  <40.997868, 31.809299, 21.869263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749813, 32.419914, 21.656317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438370, 32.176838, 21.718912>,  <40.251503, 32.030994, 21.756470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438370, 32.176838, 21.718912>,  <40.749813, 32.419914, 21.656317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438370, 32.176838, 21.718912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333630, 0.612095, 0.716959,
		-0.531472, 0.506020, -0.679324,
		-0.778607, -0.607687, 0.156488,
		40.204788, 31.994532, 21.765858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288685, 32.860737, 21.695976>,  <40.749813, 32.419914, 21.656317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288685, 32.860737, 21.695976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152992, 32.527542, 21.870815>,  <40.071579, 32.327625, 21.975719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152992, 32.527542, 21.870815>,  <40.288685, 32.860737, 21.695976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152992, 32.527542, 21.870815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513734, 0.553287, 0.655706,
		-0.788036, -0.002118, -0.615626,
		-0.339229, -0.832988, 0.437098,
		40.051224, 32.277645, 22.001945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541740, 32.985302, 21.858181>,  <40.288685, 32.860737, 21.695976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541740, 32.985302, 21.858181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667702, 32.683647, 22.088697>,  <39.743279, 32.502655, 22.227007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667702, 32.683647, 22.088697>,  <39.541740, 32.985302, 21.858181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667702, 32.683647, 22.088697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501568, 0.383250, 0.775596,
		-0.805770, -0.533288, -0.257564,
		0.314905, -0.754138, 0.576291,
		39.762173, 32.457405, 22.261585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880543, 32.779617, 22.269348>,  <39.541740, 32.985302, 21.858181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880543, 32.779617, 22.269348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206261, 32.622337, 22.440144>,  <39.401691, 32.527969, 22.542622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206261, 32.622337, 22.440144>,  <38.880543, 32.779617, 22.269348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206261, 32.622337, 22.440144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314647, 0.319155, 0.893945,
		-0.487773, -0.862285, 0.136167,
		0.814294, -0.393197, 0.426991,
		39.450550, 32.504379, 22.568241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757343, 32.222149, 22.831078>,  <38.880543, 32.779617, 22.269348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757343, 32.222149, 22.831078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110580, 32.381992, 22.929432>,  <39.322521, 32.477898, 22.988445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110580, 32.381992, 22.929432>,  <38.757343, 32.222149, 22.831078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110580, 32.381992, 22.929432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367812, 0.264222, 0.891572,
		0.291314, -0.877780, 0.380314,
		0.883092, 0.399611, 0.245886,
		39.375507, 32.501873, 23.003199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859772, 31.921854, 23.513086>,  <38.757343, 32.222149, 22.831078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859772, 31.921854, 23.513086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129234, 32.215424, 23.478336>,  <39.290913, 32.391563, 23.457485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129234, 32.215424, 23.478336>,  <38.859772, 31.921854, 23.513086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129234, 32.215424, 23.478336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260367, 0.345698, 0.901500,
		0.691666, -0.584677, 0.423970,
		0.673652, 0.733924, -0.086877,
		39.331329, 32.435600, 23.452272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220768, 31.888517, 24.114500>,  <38.859772, 31.921854, 23.513086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220768, 31.888517, 24.114500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347321, 32.254097, 24.012831>,  <39.423252, 32.473446, 23.951830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347321, 32.254097, 24.012831>,  <39.220768, 31.888517, 24.114500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347321, 32.254097, 24.012831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086934, 0.294742, 0.951614,
		0.944642, -0.278973, 0.172703,
		0.316377, 0.913948, -0.254173,
		39.442234, 32.528282, 23.936579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869701, 32.151981, 24.562487>,  <39.220768, 31.888517, 24.114500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869701, 32.151981, 24.562487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680252, 32.485722, 24.449678>,  <39.566582, 32.685966, 24.381994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680252, 32.485722, 24.449678>,  <39.869701, 32.151981, 24.562487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680252, 32.485722, 24.449678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044494, 0.342471, 0.938474,
		0.879603, 0.431935, -0.199326,
		-0.473623, 0.834354, -0.282020,
		39.538166, 32.736027, 24.365072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088676, 32.632195, 25.038548>,  <39.869701, 32.151981, 24.562487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.088676, 32.632195, 25.038548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753201, 32.794224, 24.892939>,  <39.551914, 32.891441, 24.805573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753201, 32.794224, 24.892939>,  <40.088676, 32.632195, 25.038548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753201, 32.794224, 24.892939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215446, 0.367107, 0.904884,
		0.500183, 0.837344, -0.220617,
		-0.838690, 0.405076, -0.364023,
		39.501595, 32.915749, 24.783731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114765, 33.154068, 25.362848>,  <40.088676, 32.632195, 25.038548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114765, 33.154068, 25.362848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737343, 33.131767, 25.232250>,  <39.510891, 33.118385, 25.153893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737343, 33.131767, 25.232250>,  <40.114765, 33.154068, 25.362848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737343, 33.131767, 25.232250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326678, 0.319317, 0.889561,
		0.054661, 0.946007, -0.319505,
		-0.943554, -0.055750, -0.326493,
		39.454277, 33.115044, 25.134302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762627, 33.791370, 25.627205>,  <40.114765, 33.154068, 25.362848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762627, 33.791370, 25.627205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.484966, 33.509663, 25.567677>,  <39.318371, 33.340637, 25.531960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.484966, 33.509663, 25.567677>,  <39.762627, 33.791370, 25.627205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484966, 33.509663, 25.567677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282293, 0.076159, 0.956300,
		-0.662162, 0.705833, -0.251677,
		-0.694156, -0.704273, -0.148822,
		39.276718, 33.298382, 25.523029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211510, 34.017754, 26.064785>,  <39.762627, 33.791370, 25.627205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211510, 34.017754, 26.064785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081207, 33.650925, 25.972811>,  <39.003025, 33.430828, 25.917627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081207, 33.650925, 25.972811>,  <39.211510, 34.017754, 26.064785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081207, 33.650925, 25.972811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454887, -0.061177, 0.888445,
		-0.828833, 0.394007, -0.397234,
		-0.325752, -0.917069, -0.229935,
		38.983482, 33.375805, 25.903830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454044, 34.057598, 26.115484>,  <39.211510, 34.017754, 26.064785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454044, 34.057598, 26.115484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.560760, 33.674793, 26.160995>,  <38.624790, 33.445110, 26.188301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.560760, 33.674793, 26.160995>,  <38.454044, 34.057598, 26.115484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560760, 33.674793, 26.160995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637773, -0.086807, 0.765317,
		-0.722544, -0.276741, -0.633517,
		0.266788, -0.957016, 0.113776,
		38.640797, 33.387688, 26.195127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825085, 33.694134, 26.051317>,  <38.454044, 34.057598, 26.115484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825085, 33.694134, 26.051317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095581, 33.469074, 26.241526>,  <38.257881, 33.334038, 26.355650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095581, 33.469074, 26.241526>,  <37.825085, 33.694134, 26.051317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095581, 33.469074, 26.241526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664195, -0.186464, 0.723931,
		-0.318652, -0.805392, -0.499804,
		0.676243, -0.562650, 0.475520,
		38.298454, 33.300278, 26.384182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504486, 33.045879, 26.076336>,  <37.825085, 33.694134, 26.051317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504486, 33.045879, 26.076336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783585, 33.040779, 26.362829>,  <37.951042, 33.037720, 26.534725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783585, 33.040779, 26.362829>,  <37.504486, 33.045879, 26.076336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783585, 33.040779, 26.362829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705413, -0.186253, 0.683887,
		0.124678, -0.982419, -0.138954,
		0.697745, -0.012754, 0.716233,
		37.992908, 33.036953, 26.577700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464508, 32.419331, 26.557617>,  <37.504486, 33.045879, 26.076336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464508, 32.419331, 26.557617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663364, 32.687077, 26.778452>,  <37.782677, 32.847725, 26.910952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663364, 32.687077, 26.778452>,  <37.464508, 32.419331, 26.557617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663364, 32.687077, 26.778452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627208, -0.162431, 0.761726,
		0.599550, -0.724958, 0.339081,
		0.497142, 0.669367, 0.552085,
		37.812508, 32.887886, 26.944077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399731, 32.146168, 27.273188>,  <37.464508, 32.419331, 26.557617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399731, 32.146168, 27.273188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545227, 32.516457, 27.314625>,  <37.632523, 32.738628, 27.339487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545227, 32.516457, 27.314625>,  <37.399731, 32.146168, 27.273188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545227, 32.516457, 27.314625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534357, 0.116270, 0.837224,
		0.762993, -0.359885, 0.536958,
		0.363736, 0.925724, 0.103594,
		37.654346, 32.794174, 27.345703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643494, 32.196213, 27.905445>,  <37.399731, 32.146168, 27.273188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643494, 32.196213, 27.905445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547768, 32.565384, 27.784821>,  <37.490334, 32.786884, 27.712446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547768, 32.565384, 27.784821>,  <37.643494, 32.196213, 27.905445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547768, 32.565384, 27.784821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679044, 0.062904, 0.731398,
		0.693995, 0.379806, 0.611652,
		-0.239314, 0.922925, -0.301560,
		37.475975, 32.842262, 27.694353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473022, 32.554955, 28.554625>,  <37.643494, 32.196213, 27.905445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473022, 32.554955, 28.554625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323616, 32.767216, 28.250282>,  <37.233974, 32.894573, 28.067677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323616, 32.767216, 28.250282>,  <37.473022, 32.554955, 28.554625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323616, 32.767216, 28.250282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745056, 0.317011, 0.586852,
		0.552612, 0.786076, 0.276956,
		-0.373512, 0.530649, -0.760855,
		37.211563, 32.926411, 28.022026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377220, 33.229427, 28.726471>,  <37.473022, 32.554955, 28.554625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377220, 33.229427, 28.726471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116623, 33.214939, 28.423355>,  <36.960262, 33.206245, 28.241486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116623, 33.214939, 28.423355>,  <37.377220, 33.229427, 28.726471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116623, 33.214939, 28.423355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689504, 0.444911, 0.571523,
		0.316448, 0.894842, -0.314831,
		-0.651495, -0.036219, -0.757788,
		36.921173, 33.204075, 28.196018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071602, 33.912220, 28.660954>,  <37.377220, 33.229427, 28.726471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071602, 33.912220, 28.660954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828369, 33.669827, 28.455812>,  <36.682430, 33.524391, 28.332727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828369, 33.669827, 28.455812>,  <37.071602, 33.912220, 28.660954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828369, 33.669827, 28.455812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793379, 0.441149, 0.419448,
		-0.027935, 0.661946, -0.749031,
		-0.608086, -0.605983, -0.512851,
		36.645943, 33.488033, 28.301956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546818, 34.313107, 28.644733>,  <37.071602, 33.912220, 28.660954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546818, 34.313107, 28.644733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390717, 33.956047, 28.554512>,  <36.297054, 33.741810, 28.500380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390717, 33.956047, 28.554512>,  <36.546818, 34.313107, 28.644733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390717, 33.956047, 28.554512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859775, 0.265683, 0.436119,
		-0.329377, 0.364124, -0.871163,
		-0.390254, -0.892651, -0.225555,
		36.273640, 33.688251, 28.486845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904293, 34.405979, 28.335150>,  <36.546818, 34.313107, 28.644733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904293, 34.405979, 28.335150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861137, 34.030277, 28.465477>,  <35.835243, 33.804855, 28.543674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861137, 34.030277, 28.465477>,  <35.904293, 34.405979, 28.335150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861137, 34.030277, 28.465477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858284, 0.253389, 0.446254,
		-0.501706, -0.231500, -0.833486,
		-0.107889, -0.939256, 0.325819,
		35.828770, 33.748501, 28.563223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154110, 34.233807, 28.161951>,  <35.904293, 34.405979, 28.335150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154110, 34.233807, 28.161951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305058, 34.004398, 28.452789>,  <35.395626, 33.866753, 28.627293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305058, 34.004398, 28.452789>,  <35.154110, 34.233807, 28.161951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305058, 34.004398, 28.452789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743348, 0.280651, 0.607181,
		-0.552290, -0.769618, -0.320413,
		0.377373, -0.573518, 0.727094,
		35.418270, 33.832344, 28.670918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585831, 34.116283, 28.550924>,  <35.154110, 34.233807, 28.161951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585831, 34.116283, 28.550924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846928, 33.973484, 28.818199>,  <35.003586, 33.887802, 28.978563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846928, 33.973484, 28.818199>,  <34.585831, 34.116283, 28.550924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846928, 33.973484, 28.818199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676013, 0.123627, 0.726445,
		-0.341947, -0.925887, -0.160640,
		0.652747, -0.357001, 0.668186,
		35.042751, 33.866383, 29.018656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324638, 33.610165, 28.911230>,  <34.585831, 34.116283, 28.550924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324638, 33.610165, 28.911230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.612545, 33.755802, 29.147663>,  <34.785290, 33.843185, 29.289522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.612545, 33.755802, 29.147663>,  <34.324638, 33.610165, 28.911230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612545, 33.755802, 29.147663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661049, 0.099416, 0.743728,
		0.212023, -0.926042, 0.312238,
		0.719765, 0.364092, 0.591081,
		34.828476, 33.865028, 29.324987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394852, 33.152496, 29.580141>,  <34.324638, 33.610165, 28.911230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394852, 33.152496, 29.580141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497787, 33.533154, 29.647259>,  <34.559547, 33.761547, 29.687531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497787, 33.533154, 29.647259>,  <34.394852, 33.152496, 29.580141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497787, 33.533154, 29.647259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559980, 0.005345, 0.828489,
		0.787528, -0.307162, 0.534276,
		0.257336, 0.951642, 0.167796,
		34.574989, 33.818645, 29.697598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732563, 33.083450, 30.163063>,  <34.394852, 33.152496, 29.580141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732563, 33.083450, 30.163063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666008, 33.477554, 30.147173>,  <34.626076, 33.714016, 30.137640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666008, 33.477554, 30.147173>,  <34.732563, 33.083450, 30.163063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666008, 33.477554, 30.147173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339843, -0.019481, 0.940281,
		0.925646, 0.169953, 0.338075,
		-0.166390, 0.985259, -0.039724,
		34.616093, 33.773132, 30.135256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933723, 33.364132, 30.818245>,  <34.732563, 33.083450, 30.163063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933723, 33.364132, 30.818245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671158, 33.617661, 30.654593>,  <34.513618, 33.769779, 30.556400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671158, 33.617661, 30.654593>,  <34.933723, 33.364132, 30.818245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671158, 33.617661, 30.654593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254704, 0.324285, 0.911024,
		0.710105, 0.702215, -0.051428,
		-0.656412, 0.633824, -0.409133,
		34.474236, 33.807808, 30.531853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983116, 33.922569, 31.311537>,  <34.933723, 33.364132, 30.818245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983116, 33.922569, 31.311537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670563, 34.005894, 31.076231>,  <34.483032, 34.055889, 30.935047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670563, 34.005894, 31.076231>,  <34.983116, 33.922569, 31.311537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670563, 34.005894, 31.076231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547105, 0.224801, 0.806313,
		0.300205, 0.951878, -0.061688,
		-0.781379, 0.208309, -0.588264,
		34.436150, 34.068386, 30.899752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852016, 34.592377, 31.481388>,  <34.983116, 33.922569, 31.311537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852016, 34.592377, 31.481388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518314, 34.448174, 31.314508>,  <34.318092, 34.361652, 31.214380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518314, 34.448174, 31.314508>,  <34.852016, 34.592377, 31.481388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518314, 34.448174, 31.314508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535245, 0.347787, 0.769778,
		-0.132418, 0.865492, -0.483104,
		-0.834253, -0.360511, -0.417197,
		34.268040, 34.340019, 31.189350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373943, 35.052639, 31.684551>,  <34.852016, 34.592377, 31.481388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373943, 35.052639, 31.684551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179905, 34.718658, 31.580605>,  <34.063480, 34.518269, 31.518236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179905, 34.718658, 31.580605>,  <34.373943, 35.052639, 31.684551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179905, 34.718658, 31.580605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486356, 0.010643, 0.873696,
		-0.726731, 0.550215, -0.411249,
		-0.485098, -0.834955, -0.259866,
		34.034374, 34.468170, 31.502645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812870, 35.623837, 31.514200>,  <34.373943, 35.052639, 31.684551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812870, 35.623837, 31.514200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011974, 35.912220, 31.707050>,  <35.131439, 36.085251, 31.822762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011974, 35.912220, 31.707050>,  <34.812870, 35.623837, 31.514200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011974, 35.912220, 31.707050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589758, 0.126234, -0.797653,
		-0.635938, 0.681381, -0.362357,
		0.497764, 0.720961, 0.482127,
		35.161304, 36.128510, 31.851688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738647, 36.325142, 31.181429>,  <34.812870, 35.623837, 31.514200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738647, 36.325142, 31.181429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080463, 36.291027, 31.386364>,  <35.285553, 36.270557, 31.509325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080463, 36.291027, 31.386364>,  <34.738647, 36.325142, 31.181429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080463, 36.291027, 31.386364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506744, -0.079406, -0.858432,
		0.113892, 0.993188, -0.024639,
		0.854540, -0.085283, 0.512335,
		35.336826, 36.265442, 31.540064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198978, 36.883728, 30.972878>,  <34.738647, 36.325142, 31.181429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198978, 36.883728, 30.972878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453926, 36.611492, 31.117405>,  <35.606895, 36.448151, 31.204123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453926, 36.611492, 31.117405>,  <35.198978, 36.883728, 30.972878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453926, 36.611492, 31.117405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488013, -0.006346, -0.872814,
		0.596322, 0.732636, 0.328092,
		0.637373, -0.680591, 0.361320,
		35.645138, 36.407314, 31.225801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801624, 37.135094, 30.707785>,  <35.198978, 36.883728, 30.972878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801624, 37.135094, 30.707785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862598, 36.750221, 30.798092>,  <35.899181, 36.519299, 30.852276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862598, 36.750221, 30.798092>,  <35.801624, 37.135094, 30.707785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862598, 36.750221, 30.798092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647267, -0.075436, -0.758521,
		0.746866, 0.261755, 0.611290,
		0.152433, -0.962182, 0.225766,
		35.908329, 36.461567, 30.865822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533009, 37.065289, 30.581141>,  <35.801624, 37.135094, 30.707785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533009, 37.065289, 30.581141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450645, 36.675293, 30.614616>,  <36.401226, 36.441296, 30.634703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450645, 36.675293, 30.614616>,  <36.533009, 37.065289, 30.581141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450645, 36.675293, 30.614616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810908, -0.217874, -0.543101,
		0.547750, -0.043962, 0.835486,
		-0.205906, -0.974986, 0.083691,
		36.388874, 36.382797, 30.639723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139973, 36.697941, 30.827162>,  <36.533009, 37.065289, 30.581141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139973, 36.697941, 30.827162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917278, 36.438473, 30.619595>,  <36.783661, 36.282791, 30.495054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917278, 36.438473, 30.619595>,  <37.139973, 36.697941, 30.827162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917278, 36.438473, 30.619595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788795, -0.216930, -0.575104,
		0.260485, -0.729497, 0.632441,
		-0.556732, -0.648673, -0.518916,
		36.750259, 36.243870, 30.463921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545116, 36.223598, 30.779661>,  <37.139973, 36.697941, 30.827162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545116, 36.223598, 30.779661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281460, 36.163433, 30.484932>,  <37.123264, 36.127335, 30.308094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281460, 36.163433, 30.484932>,  <37.545116, 36.223598, 30.779661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281460, 36.163433, 30.484932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745864, -0.255848, -0.615003,
		-0.096008, -0.954944, 0.280830,
		-0.659143, -0.150416, -0.736822,
		37.083717, 36.118309, 30.263885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800949, 35.658413, 30.425793>,  <37.545116, 36.223598, 30.779661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800949, 35.658413, 30.425793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544491, 35.825108, 30.168028>,  <37.390617, 35.925125, 30.013369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544491, 35.825108, 30.168028>,  <37.800949, 35.658413, 30.425793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544491, 35.825108, 30.168028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533431, -0.361674, -0.764619,
		-0.551709, -0.833982, 0.009588,
		-0.641146, 0.416732, -0.644411,
		37.352146, 35.950127, 29.974705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751358, 35.102489, 30.019091>,  <37.800949, 35.658413, 30.425793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751358, 35.102489, 30.019091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640507, 35.440556, 29.836267>,  <37.573997, 35.643394, 29.726574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640507, 35.440556, 29.836267>,  <37.751358, 35.102489, 30.019091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640507, 35.440556, 29.836267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594356, -0.222969, -0.772675,
		-0.754944, -0.485785, -0.440537,
		-0.277128, 0.845162, -0.457058,
		37.557369, 35.694103, 29.699150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700405, 34.908867, 29.237404>,  <37.751358, 35.102489, 30.019091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700405, 34.908867, 29.237404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755363, 35.303085, 29.277039>,  <37.788338, 35.539616, 29.300819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755363, 35.303085, 29.277039>,  <37.700405, 34.908867, 29.237404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755363, 35.303085, 29.277039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752618, -0.038834, -0.657311,
		-0.643964, 0.164884, -0.747077,
		0.137392, 0.985548, 0.099088,
		37.796581, 35.598751, 29.306765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716434, 35.086464, 28.566854>,  <37.700405, 34.908867, 29.237404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716434, 35.086464, 28.566854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848457, 35.416199, 28.750822>,  <37.927670, 35.614040, 28.861202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848457, 35.416199, 28.750822>,  <37.716434, 35.086464, 28.566854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848457, 35.416199, 28.750822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651401, 0.153720, -0.742998,
		-0.683183, 0.544822, -0.486241,
		0.330057, 0.824342, 0.459917,
		37.947475, 35.663502, 28.888798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686886, 35.620068, 28.095966>,  <37.716434, 35.086464, 28.566854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686886, 35.620068, 28.095966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969402, 35.696171, 28.368717>,  <38.138912, 35.741833, 28.532368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969402, 35.696171, 28.368717>,  <37.686886, 35.620068, 28.095966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969402, 35.696171, 28.368717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666960, 0.144070, -0.731032,
		-0.237325, 0.971105, -0.025141,
		0.706287, 0.190260, 0.681880,
		38.181290, 35.753250, 28.573280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911968, 36.355484, 28.159201>,  <37.686886, 35.620068, 28.095966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911968, 36.355484, 28.159201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237812, 36.154594, 28.275259>,  <38.433319, 36.034061, 28.344894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237812, 36.154594, 28.275259>,  <37.911968, 36.355484, 28.159201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237812, 36.154594, 28.275259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468881, 0.275745, -0.839116,
		0.341418, 0.819594, 0.460107,
		0.814607, -0.502224, 0.290148,
		38.482193, 36.003925, 28.362303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457886, 36.712265, 27.845798>,  <37.911968, 36.355484, 28.159201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457886, 36.712265, 27.845798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619919, 36.364536, 27.959063>,  <38.717140, 36.155899, 28.027021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619919, 36.364536, 27.959063>,  <38.457886, 36.712265, 27.845798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619919, 36.364536, 27.959063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551267, -0.014839, -0.834197,
		0.729390, 0.494018, 0.473219,
		0.405086, -0.869325, 0.283159,
		38.741444, 36.103737, 28.044010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201065, 36.849297, 27.877136>,  <38.457886, 36.712265, 27.845798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201065, 36.849297, 27.877136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132092, 36.456642, 27.844513>,  <39.090706, 36.221050, 27.824940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132092, 36.456642, 27.844513>,  <39.201065, 36.849297, 27.877136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132092, 36.456642, 27.844513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558816, -0.029304, -0.828774,
		0.811167, -0.188483, 0.553609,
		-0.172433, -0.981639, -0.081557,
		39.080360, 36.162151, 27.820045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815777, 36.561771, 27.645641>,  <39.201065, 36.849297, 27.877136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815777, 36.561771, 27.645641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563190, 36.264355, 27.557648>,  <39.411636, 36.085903, 27.504852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563190, 36.264355, 27.557648>,  <39.815777, 36.561771, 27.645641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563190, 36.264355, 27.557648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562189, -0.243634, -0.790307,
		0.534032, -0.622726, 0.571859,
		-0.631469, -0.743542, -0.219982,
		39.373749, 36.041294, 27.491653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178764, 36.051540, 27.487514>,  <39.815777, 36.561771, 27.645641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178764, 36.051540, 27.487514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829063, 35.963284, 27.314543>,  <39.619244, 35.910328, 27.210760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829063, 35.963284, 27.314543>,  <40.178764, 36.051540, 27.487514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829063, 35.963284, 27.314543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461246, -0.099663, -0.881657,
		0.151438, -0.970249, 0.188903,
		-0.874253, -0.220647, -0.432431,
		39.566788, 35.897091, 27.184814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309498, 35.485382, 27.032888>,  <40.178764, 36.051540, 27.487514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309498, 35.485382, 27.032888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964355, 35.619205, 26.881340>,  <39.757271, 35.699501, 26.790411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964355, 35.619205, 26.881340>,  <40.309498, 35.485382, 27.032888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964355, 35.619205, 26.881340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265109, -0.338629, -0.902800,
		-0.430337, -0.879432, 0.203495,
		-0.862860, 0.334560, -0.378869,
		39.705498, 35.719574, 26.767679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954494, 34.858089, 26.547632>,  <40.309498, 35.485382, 27.032888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954494, 34.858089, 26.547632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.833797, 35.227219, 26.451847>,  <39.761379, 35.448696, 26.394377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.833797, 35.227219, 26.451847>,  <39.954494, 34.858089, 26.547632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833797, 35.227219, 26.451847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129892, -0.209034, -0.969243,
		-0.944499, -0.323567, -0.056793,
		-0.301743, 0.922827, -0.239461,
		39.743275, 35.504066, 26.380009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664566, 34.720078, 25.947824>,  <39.954494, 34.858089, 26.547632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664566, 34.720078, 25.947824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680122, 35.118092, 25.911180>,  <39.689457, 35.356899, 25.889194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680122, 35.118092, 25.911180>,  <39.664566, 34.720078, 25.947824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680122, 35.118092, 25.911180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380784, -0.099518, -0.919293,
		-0.923846, 0.000869, -0.382764,
		0.038891, 0.995035, -0.091609,
		39.691788, 35.416603, 25.883698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344242, 34.874924, 25.349657>,  <39.664566, 34.720078, 25.947824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344242, 34.874924, 25.349657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570683, 35.198563, 25.412762>,  <39.706547, 35.392746, 25.450624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570683, 35.198563, 25.412762>,  <39.344242, 34.874924, 25.349657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570683, 35.198563, 25.412762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479969, -0.167923, -0.861064,
		-0.670196, 0.563167, -0.483404,
		0.566098, 0.809101, 0.157761,
		39.740513, 35.441292, 25.460091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208961, 35.268822, 24.773073>,  <39.344242, 34.874924, 25.349657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208961, 35.268822, 24.773073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570423, 35.340199, 24.928802>,  <39.787300, 35.383026, 25.022240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570423, 35.340199, 24.928802>,  <39.208961, 35.268822, 24.773073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570423, 35.340199, 24.928802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427609, -0.325388, -0.843370,
		-0.023815, 0.928590, -0.370342,
		0.903650, 0.178446, 0.389324,
		39.841518, 35.393734, 25.045599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626450, 35.504650, 24.221663>,  <39.208961, 35.268822, 24.773073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626450, 35.504650, 24.221663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.904034, 35.402950, 24.491114>,  <40.070583, 35.341930, 24.652784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.904034, 35.402950, 24.491114>,  <39.626450, 35.504650, 24.221663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904034, 35.402950, 24.491114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588012, -0.339804, -0.734013,
		0.415525, 0.905478, -0.086308,
		0.693960, -0.254251, 0.673629,
		40.112221, 35.326675, 24.693203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313362, 35.898491, 23.973473>,  <39.626450, 35.504650, 24.221663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313362, 35.898491, 23.973473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405827, 35.577393, 24.193350>,  <40.461304, 35.384731, 24.325275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405827, 35.577393, 24.193350>,  <40.313362, 35.898491, 23.973473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405827, 35.577393, 24.193350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760029, -0.203731, -0.617131,
		0.607390, 0.560437, 0.563017,
		0.231159, -0.802748, 0.549692,
		40.475174, 35.336567, 24.358257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999771, 35.808060, 23.892509>,  <40.313362, 35.898491, 23.973473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.999771, 35.808060, 23.892509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920658, 35.457569, 24.068285>,  <40.873188, 35.247276, 24.173750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920658, 35.457569, 24.068285>,  <40.999771, 35.808060, 23.892509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920658, 35.457569, 24.068285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712398, -0.436420, -0.549569,
		0.673327, 0.204359, 0.710540,
		-0.197785, -0.876228, 0.439438,
		40.861324, 35.194702, 24.200117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.662231, 35.485771, 24.066301>,  <40.999771, 35.808060, 23.892509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.662231, 35.485771, 24.066301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394352, 35.188808, 24.073629>,  <41.233624, 35.010632, 24.078026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394352, 35.188808, 24.073629>,  <41.662231, 35.485771, 24.066301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394352, 35.188808, 24.073629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635417, -0.585610, -0.503295,
		0.384378, -0.325416, 0.863920,
		-0.669700, -0.742406, 0.018320,
		41.193443, 34.966087, 24.079126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.109238, 34.921368, 24.183664>,  <41.662231, 35.485771, 24.066301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.109238, 34.921368, 24.183664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769882, 34.763432, 24.042618>,  <41.566269, 34.668671, 23.957989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769882, 34.763432, 24.042618>,  <42.109238, 34.921368, 24.183664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769882, 34.763432, 24.042618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528479, -0.670447, -0.520779,
		-0.030787, -0.628174, 0.777464,
		-0.848388, -0.394840, -0.352618,
		41.515366, 34.644981, 23.936832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314793, 34.340759, 23.874403>,  <42.109238, 34.921368, 24.183664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314793, 34.340759, 23.874403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931232, 34.307274, 23.765961>,  <41.701096, 34.287182, 23.700895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931232, 34.307274, 23.765961>,  <42.314793, 34.340759, 23.874403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931232, 34.307274, 23.765961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236291, -0.764567, -0.599670,
		-0.157077, -0.639085, 0.752926,
		-0.958902, -0.083715, -0.271106,
		41.643562, 34.282158, 23.684629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.049114, 33.707367, 23.979671>,  <42.314793, 34.340759, 23.874403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.049114, 33.707367, 23.979671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.839645, 33.857964, 23.673988>,  <41.713963, 33.948322, 23.490578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.839645, 33.857964, 23.673988>,  <42.049114, 33.707367, 23.979671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.839645, 33.857964, 23.673988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300602, -0.757685, -0.579269,
		-0.797124, -0.533070, 0.283602,
		-0.523672, 0.376498, -0.764211,
		41.682545, 33.970913, 23.444725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.808926, 33.107014, 23.470152>,  <42.049114, 33.707367, 23.979671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.808926, 33.107014, 23.470152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778572, 33.417896, 23.220291>,  <41.760361, 33.604427, 23.070375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778572, 33.417896, 23.220291>,  <41.808926, 33.107014, 23.470152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778572, 33.417896, 23.220291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338380, -0.569208, -0.749334,
		-0.937945, -0.268230, -0.219800,
		-0.075882, 0.777210, -0.624650,
		41.755806, 33.651058, 23.032896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461372, 32.884434, 22.837450>,  <41.808926, 33.107014, 23.470152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.461372, 32.884434, 22.837450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.673801, 33.215576, 22.765202>,  <41.801258, 33.414261, 22.721853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.673801, 33.215576, 22.765202>,  <41.461372, 32.884434, 22.837450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.673801, 33.215576, 22.765202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314765, -0.390658, -0.865049,
		-0.786693, 0.402550, -0.468046,
		0.531071, 0.827853, -0.180620,
		41.833122, 33.463932, 22.711016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455669, 32.887741, 22.120443>,  <41.461372, 32.884434, 22.837450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.455669, 32.887741, 22.120443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.743122, 33.149483, 22.214590>,  <41.915592, 33.306526, 22.271078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.743122, 33.149483, 22.214590>,  <41.455669, 32.887741, 22.120443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743122, 33.149483, 22.214590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557436, -0.339710, -0.757537,
		-0.415738, 0.675590, -0.608884,
		0.718628, 0.654351, 0.235369,
		41.958710, 33.345787, 22.285200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.710007, 33.107628, 21.459782>,  <41.455669, 32.887741, 22.120443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.710007, 33.107628, 21.459782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982960, 33.189320, 21.740536>,  <42.146732, 33.238335, 21.908989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982960, 33.189320, 21.740536>,  <41.710007, 33.107628, 21.459782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982960, 33.189320, 21.740536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702359, -0.449299, -0.552108,
		0.202600, 0.869725, -0.450036,
		0.682382, 0.204230, 0.701887,
		42.187675, 33.250587, 21.951101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.239693, 33.295246, 21.091688>,  <41.710007, 33.107628, 21.459782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.239693, 33.295246, 21.091688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374573, 33.189526, 21.453117>,  <42.455502, 33.126095, 21.669975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374573, 33.189526, 21.453117>,  <42.239693, 33.295246, 21.091688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.374573, 33.189526, 21.453117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669330, -0.607636, -0.427523,
		0.662038, 0.748948, -0.027989,
		0.337199, -0.264303, 0.903571,
		42.475731, 33.110233, 21.724188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.973461, 33.287151, 20.994461>,  <42.239693, 33.295246, 21.091688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.973461, 33.287151, 20.994461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.921207, 33.075485, 21.329821>,  <42.889854, 32.948486, 21.531036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.921207, 33.075485, 21.329821>,  <42.973461, 33.287151, 20.994461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.921207, 33.075485, 21.329821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659338, -0.677907, -0.325139,
		0.740411, 0.510315, 0.437459,
		-0.130633, -0.529169, 0.838400,
		42.882019, 32.916733, 21.581341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.665073, 33.064697, 21.129070>,  <42.973461, 33.287151, 20.994461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.665073, 33.064697, 21.129070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.415165, 32.827412, 21.332151>,  <43.265221, 32.685040, 21.454000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.415165, 32.827412, 21.332151>,  <43.665073, 33.064697, 21.129070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.415165, 32.827412, 21.332151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624666, -0.769858, -0.130809,
		0.468455, 0.235417, 0.851545,
		-0.624774, -0.593209, 0.507701,
		43.227734, 32.649448, 21.484461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.063950, 32.753994, 21.572590>,  <43.665073, 33.064697, 21.129070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.063950, 32.753994, 21.572590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.744831, 32.513878, 21.550072>,  <43.553360, 32.369808, 21.536560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.744831, 32.513878, 21.550072>,  <44.063950, 32.753994, 21.572590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.744831, 32.513878, 21.550072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599137, -0.799771, 0.037423,
		-0.067488, -0.003872, 0.997713,
		-0.797797, -0.600293, -0.056295,
		43.505493, 32.333790, 21.533182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.308422, 32.265507, 22.009365>,  <44.063950, 32.753994, 21.572590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.308422, 32.265507, 22.009365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.004112, 32.132046, 21.786692>,  <43.821526, 32.051968, 21.653088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.004112, 32.132046, 21.786692>,  <44.308422, 32.265507, 22.009365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.004112, 32.132046, 21.786692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577749, -0.738935, -0.346671,
		-0.295683, -0.585361, 0.754933,
		-0.760774, -0.333656, -0.556683,
		43.775879, 32.031948, 21.619686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.388412, 31.612110, 22.076357>,  <44.308422, 32.265507, 22.009365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.388412, 31.612110, 22.076357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.179340, 31.626081, 21.735630>,  <44.053898, 31.634464, 21.531195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.179340, 31.626081, 21.735630>,  <44.388412, 31.612110, 22.076357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.179340, 31.626081, 21.735630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506848, -0.790673, -0.343426,
		-0.685503, -0.611242, 0.395562,
		-0.522676, 0.034930, -0.851815,
		44.022537, 31.636560, 21.480085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.862694, 31.107855, 21.816160>,  <44.388412, 31.612110, 22.076357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.862694, 31.107855, 21.816160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.186886, 31.212633, 22.025736>,  <45.381401, 31.275499, 22.151482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.186886, 31.212633, 22.025736>,  <44.862694, 31.107855, 21.816160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.186886, 31.212633, 22.025736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487962, -0.192925, 0.851277,
		0.324068, -0.945603, -0.028543,
		0.810477, 0.261944, 0.523939,
		45.430031, 31.291216, 22.182917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.719955, 30.686319, 22.377747>,  <44.862694, 31.107855, 21.816160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.719955, 30.686319, 22.377747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.960567, 30.980850, 22.501675>,  <45.104935, 31.157568, 22.576031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.960567, 30.980850, 22.501675>,  <44.719955, 30.686319, 22.377747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.960567, 30.980850, 22.501675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595652, 0.154981, 0.788149,
		0.532319, -0.658638, 0.531820,
		0.601527, 0.736327, 0.309819,
		45.141026, 31.201748, 22.594620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.701569, 30.625921, 23.111540>,  <44.719955, 30.686319, 22.377747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.701569, 30.625921, 23.111540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.865433, 30.989729, 23.083378>,  <44.963749, 31.208014, 23.066481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.865433, 30.989729, 23.083378>,  <44.701569, 30.625921, 23.111540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.865433, 30.989729, 23.083378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453290, 0.269924, 0.849511,
		0.791650, -0.316094, 0.522852,
		0.409656, 0.909519, -0.070403,
		44.988331, 31.262585, 23.062258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.870289, 30.659693, 23.718008>,  <44.701569, 30.625921, 23.111540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.870289, 30.659693, 23.718008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.851810, 31.035261, 23.581600>,  <44.840725, 31.260601, 23.499756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.851810, 31.035261, 23.581600>,  <44.870289, 30.659693, 23.718008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.851810, 31.035261, 23.581600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470839, 0.280620, 0.836399,
		0.881009, 0.199204, 0.429117,
		-0.046195, 0.938920, -0.341022,
		44.837952, 31.316936, 23.479294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.057327, 31.152893, 24.285643>,  <44.870289, 30.659693, 23.718008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.057327, 31.152893, 24.285643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.867371, 31.407198, 24.042238>,  <44.753399, 31.559780, 23.896194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.867371, 31.407198, 24.042238>,  <45.057327, 31.152893, 24.285643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.867371, 31.407198, 24.042238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541761, 0.333711, 0.771448,
		0.693525, 0.696020, 0.185955,
		-0.474888, 0.635762, -0.608513,
		44.724903, 31.597927, 23.859684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.144039, 31.842850, 24.564823>,  <45.057327, 31.152893, 24.285643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.144039, 31.842850, 24.564823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.824276, 31.877523, 24.327023>,  <44.632416, 31.898327, 24.184343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.824276, 31.877523, 24.327023>,  <45.144039, 31.842850, 24.564823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.824276, 31.877523, 24.327023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464034, 0.539429, 0.702630,
		0.381596, 0.837557, -0.391002,
		-0.799410, 0.086682, -0.594499,
		44.584454, 31.903528, 24.148672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.877460, 32.541702, 24.789675>,  <45.144039, 31.842850, 24.564823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.877460, 32.541702, 24.789675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.579224, 32.366177, 24.589064>,  <44.400280, 32.260860, 24.468697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.579224, 32.366177, 24.589064>,  <44.877460, 32.541702, 24.789675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.579224, 32.366177, 24.589064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666298, 0.477898, 0.572416,
		-0.011503, 0.760959, -0.648698,
		-0.745597, -0.438811, -0.501528,
		44.355545, 32.234535, 24.438604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.479275, 33.083160, 24.353752>,  <44.877460, 32.541702, 24.789675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.479275, 33.083160, 24.353752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.278732, 32.753193, 24.458174>,  <44.158405, 32.555214, 24.520826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.278732, 32.753193, 24.458174>,  <44.479275, 33.083160, 24.353752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.278732, 32.753193, 24.458174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594562, 0.547654, 0.588704,
		-0.628600, 0.139937, -0.765035,
		-0.501356, -0.824920, 0.261054,
		44.128326, 32.505718, 24.536489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.839741, 33.301628, 24.567348>,  <44.479275, 33.083160, 24.353752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.839741, 33.301628, 24.567348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.751366, 32.923443, 24.663082>,  <43.698341, 32.696529, 24.720522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.751366, 32.923443, 24.663082>,  <43.839741, 33.301628, 24.567348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.751366, 32.923443, 24.663082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689900, 0.324966, 0.646866,
		-0.689364, -0.022198, -0.724074,
		-0.220941, -0.945465, 0.239334,
		43.685085, 32.639805, 24.734882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.061726, 33.235733, 24.570877>,  <43.839741, 33.301628, 24.567348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.061726, 33.235733, 24.570877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213451, 32.933701, 24.784782>,  <43.304485, 32.752480, 24.913126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213451, 32.933701, 24.784782>,  <43.061726, 33.235733, 24.570877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213451, 32.933701, 24.784782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745890, 0.092462, 0.659621,
		-0.547515, -0.649074, -0.528138,
		0.379310, -0.755085, 0.534762,
		43.327244, 32.707176, 24.945211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402523, 32.804684, 24.704601>,  <43.061726, 33.235733, 24.570877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402523, 32.804684, 24.704601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.694515, 32.717075, 24.963572>,  <42.869709, 32.664509, 25.118954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.694515, 32.717075, 24.963572>,  <42.402523, 32.804684, 24.704601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.694515, 32.717075, 24.963572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666166, -0.016189, 0.745628,
		-0.152827, -0.975586, -0.157722,
		0.729977, -0.219021, 0.647428,
		42.913509, 32.651371, 25.157801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.098148, 32.276867, 25.127726>,  <42.402523, 32.804684, 24.704601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.098148, 32.276867, 25.127726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.394413, 32.458927, 25.325417>,  <42.572170, 32.568165, 25.444031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.394413, 32.458927, 25.325417>,  <42.098148, 32.276867, 25.127726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.394413, 32.458927, 25.325417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583765, 0.071776, 0.808744,
		0.332628, -0.887516, 0.318864,
		0.740659, 0.455152, 0.494227,
		42.616611, 32.595474, 25.473684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024868, 32.003338, 25.862398>,  <42.098148, 32.276867, 25.127726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024868, 32.003338, 25.862398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.233315, 32.344563, 25.851599>,  <42.358383, 32.549297, 25.845119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.233315, 32.344563, 25.851599>,  <42.024868, 32.003338, 25.862398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233315, 32.344563, 25.851599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490160, 0.325025, 0.808766,
		0.698701, -0.408226, 0.587511,
		0.521115, 0.853059, -0.026999,
		42.389648, 32.600479, 25.843498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465305, 32.037426, 26.475008>,  <42.024868, 32.003338, 25.862398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465305, 32.037426, 26.475008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.420876, 32.418594, 26.362150>,  <42.394218, 32.647293, 26.294436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.420876, 32.418594, 26.362150>,  <42.465305, 32.037426, 26.475008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.420876, 32.418594, 26.362150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354447, 0.227246, 0.907043,
		0.928455, 0.200760, 0.312517,
		-0.111079, 0.952919, -0.282146,
		42.387550, 32.704472, 26.277506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.619915, 32.453217, 27.017155>,  <42.465305, 32.037426, 26.475008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.619915, 32.453217, 27.017155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387230, 32.675861, 26.779905>,  <42.247620, 32.809448, 26.637556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387230, 32.675861, 26.779905>,  <42.619915, 32.453217, 27.017155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387230, 32.675861, 26.779905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515499, 0.311769, 0.798161,
		0.629180, 0.770057, 0.105570,
		-0.581716, 0.556608, -0.593122,
		42.212715, 32.842842, 26.601969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244381, 32.885532, 27.540285>,  <42.619915, 32.453217, 27.017155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244381, 32.885532, 27.540285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070389, 33.032433, 27.211426>,  <41.965996, 33.120571, 27.014111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070389, 33.032433, 27.211426>,  <42.244381, 32.885532, 27.540285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070389, 33.032433, 27.211426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468227, 0.687646, 0.554893,
		0.769128, 0.626317, -0.127157,
		-0.434978, 0.367246, -0.822146,
		41.939896, 33.142605, 26.964783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.430202, 33.681061, 27.395060>,  <42.244381, 32.885532, 27.540285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.430202, 33.681061, 27.395060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.074558, 33.556801, 27.260609>,  <41.861172, 33.482243, 27.179939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.074558, 33.556801, 27.260609>,  <42.430202, 33.681061, 27.395060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.074558, 33.556801, 27.260609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454159, 0.507677, 0.732123,
		-0.056793, 0.803591, -0.592466,
		-0.889108, -0.310653, -0.336126,
		41.807827, 33.463604, 27.159771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.075443, 34.279343, 27.248894>,  <42.430202, 33.681061, 27.395060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.075443, 34.279343, 27.248894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.817692, 33.976978, 27.295151>,  <41.663040, 33.795559, 27.322905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.817692, 33.976978, 27.295151>,  <42.075443, 34.279343, 27.248894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.817692, 33.976978, 27.295151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538543, 0.555948, 0.633161,
		-0.542905, 0.345717, -0.765332,
		-0.644380, -0.755911, 0.115644,
		41.624378, 33.750206, 27.329844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.447304, 34.631172, 27.224215>,  <42.075443, 34.279343, 27.248894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.447304, 34.631172, 27.224215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354748, 34.291779, 27.414597>,  <41.299213, 34.088142, 27.528826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354748, 34.291779, 27.414597>,  <41.447304, 34.631172, 27.224215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354748, 34.291779, 27.414597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610460, 0.507563, 0.608045,
		-0.757494, -0.149856, -0.635411,
		-0.231392, -0.848483, 0.475957,
		41.285332, 34.037235, 27.557384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756756, 34.652508, 27.334814>,  <41.447304, 34.631172, 27.224215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756756, 34.652508, 27.334814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.873505, 34.398003, 27.620466>,  <40.943554, 34.245300, 27.791857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.873505, 34.398003, 27.620466>,  <40.756756, 34.652508, 27.334814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.873505, 34.398003, 27.620466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522090, 0.519606, 0.676337,
		-0.801392, -0.570246, -0.180525,
		0.291876, -0.636261, 0.714128,
		40.961067, 34.207123, 27.834705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161472, 34.562038, 27.742195>,  <40.756756, 34.652508, 27.334814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161472, 34.562038, 27.742195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450920, 34.434528, 27.987062>,  <40.624588, 34.358021, 28.133984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450920, 34.434528, 27.987062>,  <40.161472, 34.562038, 27.742195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450920, 34.434528, 27.987062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502102, 0.365428, 0.783808,
		-0.473564, -0.874553, 0.104373,
		0.723623, -0.318777, 0.612169,
		40.668007, 34.338894, 28.170713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786213, 34.378159, 28.298038>,  <40.161472, 34.562038, 27.742195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786213, 34.378159, 28.298038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160789, 34.432678, 28.427349>,  <40.385536, 34.465389, 28.504936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160789, 34.432678, 28.427349>,  <39.786213, 34.378159, 28.298038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160789, 34.432678, 28.427349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349133, 0.271408, 0.896908,
		0.034506, -0.952765, 0.301743,
		0.936437, 0.136297, 0.323277,
		40.441719, 34.473568, 28.524332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744934, 34.169079, 28.919937>,  <39.786213, 34.378159, 28.298038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744934, 34.169079, 28.919937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089531, 34.371773, 28.932875>,  <40.296291, 34.493389, 28.940638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089531, 34.371773, 28.932875>,  <39.744934, 34.169079, 28.919937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089531, 34.371773, 28.932875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273383, 0.409213, 0.870521,
		0.427899, -0.758785, 0.491068,
		0.861490, 0.506744, 0.032337,
		40.347980, 34.523792, 28.942577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947330, 34.160751, 29.603756>,  <39.744934, 34.169079, 28.919937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947330, 34.160751, 29.603756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154320, 34.465012, 29.446972>,  <40.278511, 34.647568, 29.352901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154320, 34.465012, 29.446972>,  <39.947330, 34.160751, 29.603756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154320, 34.465012, 29.446972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094691, 0.506148, 0.857232,
		0.850446, -0.406477, 0.333943,
		0.517470, 0.760651, -0.391962,
		40.309563, 34.693207, 29.329384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574207, 34.297924, 30.084578>,  <39.947330, 34.160751, 29.603756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574207, 34.297924, 30.084578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493763, 34.628399, 29.874065>,  <40.445496, 34.826683, 29.747757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493763, 34.628399, 29.874065>,  <40.574207, 34.297924, 30.084578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493763, 34.628399, 29.874065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135480, 0.508636, 0.850255,
		0.970154, 0.242298, 0.009639,
		-0.201113, 0.826184, -0.526282,
		40.433430, 34.876255, 29.716181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087986, 34.864555, 30.338789>,  <40.574207, 34.297924, 30.084578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.087986, 34.864555, 30.338789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768223, 35.053421, 30.190189>,  <40.576366, 35.166740, 30.101030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768223, 35.053421, 30.190189>,  <41.087986, 34.864555, 30.338789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768223, 35.053421, 30.190189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108931, 0.494193, 0.862501,
		0.590831, 0.729958, -0.343629,
		-0.799408, 0.472160, -0.371499,
		40.528400, 35.195068, 30.078739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184902, 35.568413, 30.478142>,  <41.087986, 34.864555, 30.338789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184902, 35.568413, 30.478142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790730, 35.515827, 30.434984>,  <40.554226, 35.484276, 30.409090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790730, 35.515827, 30.434984>,  <41.184902, 35.568413, 30.478142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790730, 35.515827, 30.434984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147074, 0.340166, 0.928793,
		-0.085401, 0.931131, -0.354546,
		-0.985432, -0.131465, -0.107894,
		40.495098, 35.476387, 30.402617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910786, 36.187725, 30.796329>,  <41.184902, 35.568413, 30.478142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910786, 36.187725, 30.796329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.609352, 35.925076, 30.783913>,  <40.428493, 35.767487, 30.776463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.609352, 35.925076, 30.783913>,  <40.910786, 36.187725, 30.796329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609352, 35.925076, 30.783913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319775, 0.324917, 0.890041,
		-0.574332, 0.680646, -0.454823,
		-0.753583, -0.656620, -0.031043,
		40.383278, 35.728088, 30.774599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419212, 36.612888, 31.080936>,  <40.910786, 36.187725, 30.796329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419212, 36.612888, 31.080936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264851, 36.249756, 31.146559>,  <40.172234, 36.031876, 31.185932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264851, 36.249756, 31.146559>,  <40.419212, 36.612888, 31.080936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264851, 36.249756, 31.146559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339394, 0.305064, 0.889802,
		-0.857841, 0.287698, -0.425839,
		-0.385903, -0.907836, 0.164054,
		40.149078, 35.977406, 31.195774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812279, 36.706280, 31.475365>,  <40.419212, 36.612888, 31.080936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812279, 36.706280, 31.475365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886856, 36.316689, 31.526897>,  <39.931602, 36.082932, 31.557817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886856, 36.316689, 31.526897>,  <39.812279, 36.706280, 31.475365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886856, 36.316689, 31.526897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414334, 0.040950, 0.909203,
		-0.890824, -0.222891, -0.395919,
		0.186440, -0.973983, 0.128831,
		39.942787, 36.024494, 31.565546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232449, 36.429485, 31.838652>,  <39.812279, 36.706280, 31.475365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232449, 36.429485, 31.838652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517578, 36.151672, 31.877668>,  <39.688656, 35.984985, 31.901079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517578, 36.151672, 31.877668>,  <39.232449, 36.429485, 31.838652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517578, 36.151672, 31.877668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272923, -0.146575, 0.950804,
		-0.646066, -0.704373, -0.294035,
		0.712820, -0.694532, 0.097542,
		39.731422, 35.943314, 31.906931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972404, 35.729591, 32.151371>,  <39.232449, 36.429485, 31.838652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972404, 35.729591, 32.151371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360439, 35.787788, 32.229099>,  <39.593262, 35.822704, 32.275734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360439, 35.787788, 32.229099>,  <38.972404, 35.729591, 32.151371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360439, 35.787788, 32.229099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120867, -0.404714, 0.906421,
		0.210518, -0.902795, -0.375023,
		0.970089, 0.145490, 0.194318,
		39.651466, 35.831436, 32.287395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151211, 35.119221, 32.374119>,  <38.972404, 35.729591, 32.151371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151211, 35.119221, 32.374119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438869, 35.354553, 32.522011>,  <39.611465, 35.495750, 32.610744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438869, 35.354553, 32.522011>,  <39.151211, 35.119221, 32.374119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438869, 35.354553, 32.522011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069780, -0.468252, 0.880835,
		0.691345, -0.659249, -0.295689,
		0.719147, 0.588328, 0.369726,
		39.654613, 35.531052, 32.632927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525425, 34.546009, 32.775867>,  <39.151211, 35.119221, 32.374119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525425, 34.546009, 32.775867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665306, 34.901459, 32.894569>,  <39.749233, 35.114727, 32.965790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665306, 34.901459, 32.894569>,  <39.525425, 34.546009, 32.775867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665306, 34.901459, 32.894569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070423, -0.340790, 0.937498,
		0.934211, -0.306946, -0.181754,
		0.349701, 0.888620, 0.296754,
		39.770218, 35.168045, 32.983597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035351, 34.400242, 33.288754>,  <39.525425, 34.546009, 32.775867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035351, 34.400242, 33.288754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.933701, 34.779510, 33.365055>,  <39.872711, 35.007072, 33.410835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.933701, 34.779510, 33.365055>,  <40.035351, 34.400242, 33.288754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933701, 34.779510, 33.365055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061898, -0.180882, 0.981555,
		0.965189, 0.261244, -0.012724,
		-0.254124, 0.948174, 0.190756,
		39.857464, 35.063961, 33.422283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553299, 34.623547, 33.775513>,  <40.035351, 34.400242, 33.288754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553299, 34.623547, 33.775513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.238834, 34.868313, 33.810173>,  <40.050156, 35.015175, 33.830971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.238834, 34.868313, 33.810173>,  <40.553299, 34.623547, 33.775513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.238834, 34.868313, 33.810173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147746, -0.322229, 0.935062,
		0.600104, 0.722304, 0.343732,
		-0.786159, 0.611920, 0.086653,
		40.002987, 35.051888, 33.836170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661774, 34.920284, 34.375290>,  <40.553299, 34.623547, 33.775513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661774, 34.920284, 34.375290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268650, 34.963032, 34.315079>,  <40.032776, 34.988682, 34.278954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268650, 34.963032, 34.315079>,  <40.661774, 34.920284, 34.375290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268650, 34.963032, 34.315079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154472, -0.029607, 0.987554,
		0.101081, 0.993833, 0.045606,
		-0.982813, 0.106868, -0.150527,
		39.973804, 34.995090, 34.269920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554447, 35.383060, 34.778584>,  <40.661774, 34.920284, 34.375290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554447, 35.383060, 34.778584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181290, 35.250103, 34.723110>,  <39.957397, 35.170330, 34.689827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181290, 35.250103, 34.723110>,  <40.554447, 35.383060, 34.778584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181290, 35.250103, 34.723110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122841, -0.068336, 0.990071,
		-0.338566, 0.940663, 0.022920,
		-0.932890, -0.332389, -0.138688,
		39.901424, 35.150387, 34.681503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114258, 35.843330, 35.095589>,  <40.554447, 35.383060, 34.778584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114258, 35.843330, 35.095589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924370, 35.492519, 35.066002>,  <39.810436, 35.282032, 35.048252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924370, 35.492519, 35.066002>,  <40.114258, 35.843330, 35.095589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924370, 35.492519, 35.066002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090027, -0.035211, 0.995317,
		-0.875522, 0.479153, -0.062241,
		-0.474717, -0.877025, -0.073965,
		39.781956, 35.229412, 35.043812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495953, 35.861916, 35.209496>,  <40.114258, 35.843330, 35.095589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495953, 35.861916, 35.209496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562195, 35.486809, 35.331593>,  <39.601940, 35.261745, 35.404850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562195, 35.486809, 35.331593>,  <39.495953, 35.861916, 35.209496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562195, 35.486809, 35.331593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388544, 0.222435, 0.894179,
		-0.906426, -0.266681, -0.327527,
		0.165607, -0.937765, 0.305239,
		39.611877, 35.205479, 35.423164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836143, 35.534946, 35.367725>,  <39.495953, 35.861916, 35.209496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836143, 35.534946, 35.367725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157875, 35.393688, 35.558865>,  <39.350914, 35.308933, 35.673550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157875, 35.393688, 35.558865>,  <38.836143, 35.534946, 35.367725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157875, 35.393688, 35.558865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340447, 0.385207, 0.857736,
		-0.486980, -0.852585, 0.189604,
		0.804330, -0.353150, 0.477848,
		39.399174, 35.287743, 35.702217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521851, 35.305141, 35.941673>,  <38.836143, 35.534946, 35.367725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521851, 35.305141, 35.941673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904228, 35.301884, 36.059048>,  <39.133656, 35.299931, 36.129471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904228, 35.301884, 36.059048>,  <38.521851, 35.305141, 35.941673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904228, 35.301884, 36.059048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270724, 0.362001, 0.892000,
		-0.113487, -0.932142, 0.343849,
		0.955944, -0.008143, 0.293436,
		39.191013, 35.299442, 36.147079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453537, 35.131596, 36.651882>,  <38.521851, 35.305141, 35.941673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453537, 35.131596, 36.651882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831944, 35.260227, 36.635632>,  <39.058987, 35.337406, 36.625881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831944, 35.260227, 36.635632>,  <38.453537, 35.131596, 36.651882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831944, 35.260227, 36.635632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077152, 0.345138, 0.935376,
		0.314810, -0.881744, 0.351315,
		0.946014, 0.321570, -0.040624,
		39.115746, 35.356701, 36.623444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725681, 34.862473, 37.225620>,  <38.453537, 35.131596, 36.651882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725681, 34.862473, 37.225620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952538, 35.174850, 37.120945>,  <39.088650, 35.362278, 37.058140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952538, 35.174850, 37.120945>,  <38.725681, 34.862473, 37.225620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952538, 35.174850, 37.120945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083446, 0.261606, 0.961561,
		0.819385, -0.567173, 0.083200,
		0.567137, 0.780946, -0.261685,
		39.122681, 35.409134, 37.042439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265663, 34.917473, 37.626835>,  <38.725681, 34.862473, 37.225620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265663, 34.917473, 37.626835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297379, 35.291492, 37.488617>,  <39.316410, 35.515903, 37.405685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297379, 35.291492, 37.488617>,  <39.265663, 34.917473, 37.626835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297379, 35.291492, 37.488617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052870, 0.342206, 0.938136,
		0.995448, -0.092656, -0.022301,
		0.079293, 0.935045, -0.345547,
		39.321167, 35.572006, 37.384953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881165, 35.176987, 37.984833>,  <39.265663, 34.917473, 37.626835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881165, 35.176987, 37.984833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663483, 35.484894, 37.851387>,  <39.532871, 35.669636, 37.771320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663483, 35.484894, 37.851387>,  <39.881165, 35.176987, 37.984833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663483, 35.484894, 37.851387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115752, 0.462745, 0.878902,
		0.830926, 0.439690, -0.340932,
		-0.544209, 0.769766, -0.333611,
		39.500221, 35.715824, 37.751305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213348, 35.749557, 38.161057>,  <39.881165, 35.176987, 37.984833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213348, 35.749557, 38.161057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834717, 35.871571, 38.119198>,  <39.607540, 35.944778, 38.094082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834717, 35.871571, 38.119198>,  <40.213348, 35.749557, 38.161057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834717, 35.871571, 38.119198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047876, 0.453822, 0.889805,
		0.318911, 0.837257, -0.444180,
		-0.946575, 0.305034, -0.104644,
		39.550743, 35.963081, 38.087803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190491, 36.369953, 38.562931>,  <40.213348, 35.749557, 38.161057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190491, 36.369953, 38.562931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809540, 36.316437, 38.453327>,  <39.580971, 36.284328, 38.387566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809540, 36.316437, 38.453327>,  <40.190491, 36.369953, 38.562931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809540, 36.316437, 38.453327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280432, 0.737190, 0.614744,
		0.119751, 0.662308, -0.739600,
		-0.952375, -0.133791, -0.274011,
		39.523827, 36.276299, 38.371124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824432, 37.037170, 38.309441>,  <40.190491, 36.369953, 38.562931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824432, 37.037170, 38.309441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521164, 36.805717, 38.429680>,  <39.339203, 36.666843, 38.501823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521164, 36.805717, 38.429680>,  <39.824432, 37.037170, 38.309441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521164, 36.805717, 38.429680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294513, 0.715181, 0.633860,
		-0.581755, 0.392044, -0.712645,
		-0.758171, -0.578635, 0.300598,
		39.293713, 36.632126, 38.519859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175514, 37.472527, 38.395702>,  <39.824432, 37.037170, 38.309441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175514, 37.472527, 38.395702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164696, 37.147110, 38.628052>,  <39.158203, 36.951859, 38.767460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164696, 37.147110, 38.628052>,  <39.175514, 37.472527, 38.395702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164696, 37.147110, 38.628052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405551, 0.540046, 0.737481,
		-0.913672, -0.215628, -0.344540,
		-0.027046, -0.813545, 0.580873,
		39.156582, 36.903046, 38.802315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637569, 37.599007, 38.738342>,  <39.175514, 37.472527, 38.395702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637569, 37.599007, 38.738342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819580, 37.306824, 38.942059>,  <38.928787, 37.131512, 39.064289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819580, 37.306824, 38.942059>,  <38.637569, 37.599007, 38.738342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819580, 37.306824, 38.942059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243741, 0.447921, 0.860207,
		-0.856470, -0.515553, 0.025773,
		0.455027, -0.730460, 0.509292,
		38.956089, 37.087685, 39.094845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108116, 37.317558, 39.188236>,  <38.637569, 37.599007, 38.738342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108116, 37.317558, 39.188236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484020, 37.274181, 39.317905>,  <38.709564, 37.248154, 39.395706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484020, 37.274181, 39.317905>,  <38.108116, 37.317558, 39.188236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484020, 37.274181, 39.317905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228942, 0.504563, 0.832467,
		-0.253843, -0.856537, 0.449342,
		0.939760, -0.108443, 0.324177,
		38.765949, 37.241650, 39.415157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039989, 37.134895, 39.845692>,  <38.108116, 37.317558, 39.188236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039989, 37.134895, 39.845692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423512, 37.247658, 39.859703>,  <38.653625, 37.315315, 39.868111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423512, 37.247658, 39.859703>,  <38.039989, 37.134895, 39.845692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423512, 37.247658, 39.859703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196438, 0.568884, 0.798613,
		0.205204, -0.772594, 0.600824,
		0.958803, 0.281903, 0.035030,
		38.711151, 37.332230, 39.870213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410843, 36.999870, 40.565838>,  <38.039989, 37.134895, 39.845692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410843, 36.999870, 40.565838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.581455, 37.335754, 40.431400>,  <38.683823, 37.537285, 40.350739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.581455, 37.335754, 40.431400>,  <38.410843, 36.999870, 40.565838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581455, 37.335754, 40.431400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370121, 0.501096, 0.782248,
		0.825278, -0.209256, 0.524527,
		0.426529, 0.839711, -0.336094,
		38.709415, 37.587669, 40.330574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791790, 37.354557, 41.081818>,  <38.410843, 36.999870, 40.565838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791790, 37.354557, 41.081818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679081, 37.626965, 40.811462>,  <38.611454, 37.790409, 40.649250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679081, 37.626965, 40.811462>,  <38.791790, 37.354557, 41.081818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679081, 37.626965, 40.811462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263369, 0.622472, 0.736998,
		0.922627, 0.385672, 0.003964,
		-0.281772, 0.681018, -0.675883,
		38.594551, 37.831268, 40.608696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970928, 37.788715, 41.490494>,  <38.791790, 37.354557, 41.081818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970928, 37.788715, 41.490494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751068, 37.974094, 41.212471>,  <38.619152, 38.085323, 41.045658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751068, 37.974094, 41.212471>,  <38.970928, 37.788715, 41.490494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751068, 37.974094, 41.212471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390609, 0.592882, 0.704213,
		0.738451, 0.658565, -0.144850,
		-0.549649, 0.463447, -0.695056,
		38.586174, 38.113129, 41.003956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144482, 38.564854, 41.582600>,  <38.970928, 37.788715, 41.490494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144482, 38.564854, 41.582600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789837, 38.504780, 41.407619>,  <38.577049, 38.468735, 41.302631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789837, 38.504780, 41.407619>,  <39.144482, 38.564854, 41.582600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789837, 38.504780, 41.407619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448121, 0.513040, 0.732105,
		0.114474, 0.845123, -0.522170,
		-0.886613, -0.150189, -0.437447,
		38.523853, 38.459724, 41.276386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752560, 39.125015, 41.812626>,  <39.144482, 38.564854, 41.582600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752560, 39.125015, 41.812626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456783, 38.900242, 41.664326>,  <38.279320, 38.765377, 41.575344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456783, 38.900242, 41.664326>,  <38.752560, 39.125015, 41.812626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456783, 38.900242, 41.664326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655933, 0.477335, 0.584724,
		-0.151604, 0.675557, -0.721552,
		-0.739437, -0.561937, -0.370754,
		38.234951, 38.731659, 41.553101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086952, 39.589653, 41.627769>,  <38.752560, 39.125015, 41.812626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086952, 39.589653, 41.627769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972019, 39.213417, 41.700130>,  <37.903061, 38.987675, 41.743549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972019, 39.213417, 41.700130>,  <38.086952, 39.589653, 41.627769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972019, 39.213417, 41.700130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733993, 0.337565, 0.589324,
		-0.615381, 0.036550, -0.787382,
		-0.287332, -0.940592, 0.180904,
		37.885818, 38.931240, 41.754402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058952, 39.586636, 42.369083>,  <38.086952, 39.589653, 41.627769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058952, 39.586636, 42.369083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947407, 39.723171, 42.728130>,  <37.880482, 39.805092, 42.943558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947407, 39.723171, 42.728130>,  <38.058952, 39.586636, 42.369083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947407, 39.723171, 42.728130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900927, -0.416627, -0.121457,
		0.332515, -0.842562, 0.423702,
		-0.278861, 0.341339, 0.897622,
		37.863747, 39.825573, 42.997417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833206, 39.021927, 42.691696>,  <38.058952, 39.586636, 42.369083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833206, 39.021927, 42.691696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640213, 39.354824, 42.800934>,  <37.524418, 39.554562, 42.866478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640213, 39.354824, 42.800934>,  <37.833206, 39.021927, 42.691696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640213, 39.354824, 42.800934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875417, -0.468607, -0.118543,
		0.029316, -0.296265, 0.954656,
		-0.482479, 0.832247, 0.273093,
		37.495468, 39.604500, 42.882862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446640, 38.710724, 42.173733>,  <37.833206, 39.021927, 42.691696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446640, 38.710724, 42.173733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.438522, 38.560928, 42.544537>,  <37.433651, 38.471050, 42.767017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.438522, 38.560928, 42.544537>,  <37.446640, 38.710724, 42.173733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438522, 38.560928, 42.544537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711381, -0.646096, -0.276580,
		0.702513, -0.665071, -0.253290,
		-0.020296, -0.374486, 0.927010,
		37.432434, 38.448582, 42.822639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705315, 38.037365, 42.232361>,  <37.446640, 38.710724, 42.173733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705315, 38.037365, 42.232361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432632, 38.113075, 42.515049>,  <37.269024, 38.158501, 42.684662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432632, 38.113075, 42.515049>,  <37.705315, 38.037365, 42.232361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432632, 38.113075, 42.515049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600803, -0.696057, -0.393116,
		0.417515, -0.692590, 0.588218,
		-0.681702, 0.189271, 0.706724,
		37.228123, 38.169857, 42.727066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501217, 37.480354, 42.588837>,  <37.705315, 38.037365, 42.232361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501217, 37.480354, 42.588837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195953, 37.736263, 42.552429>,  <37.012794, 37.889809, 42.530582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195953, 37.736263, 42.552429>,  <37.501217, 37.480354, 42.588837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195953, 37.736263, 42.552429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545371, -0.713200, -0.440359,
		-0.346646, -0.286422, 0.893196,
		-0.763156, 0.639772, -0.091022,
		36.967007, 37.928196, 42.525124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266979, 37.457420, 41.941998>,  <37.501217, 37.480354, 42.588837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266979, 37.457420, 41.941998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158291, 37.103176, 41.791336>,  <37.093079, 36.890629, 41.700939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158291, 37.103176, 41.791336>,  <37.266979, 37.457420, 41.941998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158291, 37.103176, 41.791336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783792, -0.430744, 0.447359,
		-0.558427, -0.173666, 0.811171,
		-0.271716, -0.885607, -0.376658,
		37.076775, 36.837494, 41.678337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243210, 37.948757, 41.292667>,  <37.266979, 37.457420, 41.941998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243210, 37.948757, 41.292667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527821, 38.226433, 41.336174>,  <37.698586, 38.393040, 41.362278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527821, 38.226433, 41.336174>,  <37.243210, 37.948757, 41.292667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527821, 38.226433, 41.336174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588733, -0.504470, -0.631588,
		-0.383573, 0.513426, -0.767636,
		0.711523, 0.694193, 0.108769,
		37.741276, 38.434692, 41.368805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413101, 38.228481, 40.641609>,  <37.243210, 37.948757, 41.292667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413101, 38.228481, 40.641609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754471, 38.272915, 40.845306>,  <37.959293, 38.299576, 40.967525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754471, 38.272915, 40.845306>,  <37.413101, 38.228481, 40.641609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754471, 38.272915, 40.845306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518879, -0.273462, -0.809928,
		0.049286, 0.955447, -0.291020,
		0.853426, 0.111086, 0.509239,
		38.010498, 38.306240, 40.998077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779446, 38.623230, 40.133007>,  <37.413101, 38.228481, 40.641609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779446, 38.623230, 40.133007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028976, 38.450684, 40.393703>,  <38.178696, 38.347157, 40.550121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028976, 38.450684, 40.393703>,  <37.779446, 38.623230, 40.133007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028976, 38.450684, 40.393703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602952, -0.264956, -0.752493,
		0.497283, 0.862393, 0.094807,
		0.623825, -0.431367, 0.651740,
		38.216125, 38.321274, 40.589226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531696, 38.955929, 40.105774>,  <37.779446, 38.623230, 40.133007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531696, 38.955929, 40.105774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553432, 38.581501, 40.244812>,  <38.566475, 38.356846, 40.328236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553432, 38.581501, 40.244812>,  <38.531696, 38.955929, 40.105774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553432, 38.581501, 40.244812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729032, -0.200681, -0.654400,
		0.682319, 0.288973, 0.671518,
		0.054343, -0.936067, 0.347599,
		38.569736, 38.300682, 40.349091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221848, 38.732281, 39.856785>,  <38.531696, 38.955929, 40.105774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221848, 38.732281, 39.856785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077934, 38.392952, 40.012169>,  <38.991585, 38.189354, 40.105400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077934, 38.392952, 40.012169>,  <39.221848, 38.732281, 39.856785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077934, 38.392952, 40.012169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585993, -0.529431, -0.613445,
		0.726062, 0.006925, 0.687594,
		-0.359786, -0.848325, 0.388457,
		38.969997, 38.138454, 40.128708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850849, 38.313332, 39.895809>,  <39.221848, 38.732281, 39.856785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850849, 38.313332, 39.895809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523808, 38.084225, 39.919365>,  <39.327583, 37.946762, 39.933498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523808, 38.084225, 39.919365>,  <39.850849, 38.313332, 39.895809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523808, 38.084225, 39.919365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422641, -0.666453, -0.614178,
		0.391031, -0.477261, 0.786967,
		-0.817600, -0.572767, 0.058894,
		39.278526, 37.912395, 39.937035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866219, 37.723461, 39.492252>,  <39.850849, 38.313332, 39.895809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866219, 37.723461, 39.492252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532936, 37.588341, 39.667366>,  <39.332966, 37.507267, 39.772434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532936, 37.588341, 39.667366>,  <39.866219, 37.723461, 39.492252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532936, 37.588341, 39.667366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056780, -0.735257, -0.675406,
		0.550039, -0.587611, 0.593440,
		-0.833207, -0.337804, 0.437784,
		39.282974, 37.487000, 39.798702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968269, 37.054649, 39.770023>,  <39.866219, 37.723461, 39.492252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968269, 37.054649, 39.770023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580090, 37.096436, 39.683010>,  <39.347183, 37.121506, 39.630802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580090, 37.096436, 39.683010>,  <39.968269, 37.054649, 39.770023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580090, 37.096436, 39.683010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045559, -0.805922, -0.590266,
		-0.236973, -0.582733, 0.777346,
		-0.970448, 0.104462, -0.217530,
		39.288956, 37.127773, 39.617752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596016, 36.400860, 39.942886>,  <39.968269, 37.054649, 39.770023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596016, 36.400860, 39.942886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408974, 36.594490, 39.647045>,  <39.296749, 36.710670, 39.469540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408974, 36.594490, 39.647045>,  <39.596016, 36.400860, 39.942886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408974, 36.594490, 39.647045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097588, -0.803327, -0.587488,
		-0.878533, -0.346889, 0.328401,
		-0.467607, 0.484079, -0.739602,
		39.268692, 36.739716, 39.425163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116810, 35.897858, 39.637138>,  <39.596016, 36.400860, 39.942886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116810, 35.897858, 39.637138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144226, 36.191566, 39.366982>,  <39.160675, 36.367790, 39.204887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144226, 36.191566, 39.366982>,  <39.116810, 35.897858, 39.637138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144226, 36.191566, 39.366982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142266, -0.662867, -0.735097,
		-0.987453, 0.146470, 0.059027,
		0.068542, 0.734271, -0.675388,
		39.164787, 36.411846, 39.164364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588135, 35.820431, 39.104778>,  <39.116810, 35.897858, 39.637138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588135, 35.820431, 39.104778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885891, 36.041039, 38.954197>,  <39.064545, 36.173401, 38.863846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885891, 36.041039, 38.954197>,  <38.588135, 35.820431, 39.104778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885891, 36.041039, 38.954197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202660, -0.350585, -0.914340,
		-0.636253, 0.756915, -0.149201,
		0.744386, 0.551515, -0.376458,
		39.109207, 36.206493, 38.841259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328499, 36.132381, 38.546165>,  <38.588135, 35.820431, 39.104778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328499, 36.132381, 38.546165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725105, 36.164482, 38.505280>,  <38.963070, 36.183743, 38.480747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725105, 36.164482, 38.505280>,  <38.328499, 36.132381, 38.546165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725105, 36.164482, 38.505280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090960, -0.133204, -0.986906,
		-0.092818, 0.987834, -0.124774,
		0.991519, 0.080254, -0.102217,
		39.022560, 36.188557, 38.474613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415955, 36.411530, 37.870586>,  <38.328499, 36.132381, 38.546165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415955, 36.411530, 37.870586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784283, 36.286041, 37.963261>,  <39.005280, 36.210751, 38.018864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784283, 36.286041, 37.963261>,  <38.415955, 36.411530, 37.870586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784283, 36.286041, 37.963261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185627, -0.169893, -0.967822,
		0.342983, 0.934194, -0.098206,
		0.920818, -0.313717, 0.231682,
		39.060528, 36.191925, 38.032764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703899, 36.631363, 37.301334>,  <38.415955, 36.411530, 37.870586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703899, 36.631363, 37.301334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987839, 36.393757, 37.452732>,  <39.158203, 36.251194, 37.543571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987839, 36.393757, 37.452732>,  <38.703899, 36.631363, 37.301334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987839, 36.393757, 37.452732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256042, -0.282982, -0.924318,
		0.656169, 0.753036, -0.048781,
		0.709848, -0.594018, 0.378493,
		39.200794, 36.215549, 37.566280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315678, 36.755203, 36.896893>,  <38.703899, 36.631363, 37.301334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315678, 36.755203, 36.896893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360149, 36.389915, 37.053696>,  <39.386833, 36.170742, 37.147778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360149, 36.389915, 37.053696>,  <39.315678, 36.755203, 36.896893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360149, 36.389915, 37.053696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141618, -0.375871, -0.915787,
		0.983659, 0.157329, 0.087540,
		0.111176, -0.913219, 0.392009,
		39.393501, 36.115952, 37.171299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806709, 36.450287, 36.545029>,  <39.315678, 36.755203, 36.896893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806709, 36.450287, 36.545029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610855, 36.141598, 36.707367>,  <39.493343, 35.956387, 36.804768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610855, 36.141598, 36.707367>,  <39.806709, 36.450287, 36.545029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610855, 36.141598, 36.707367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298647, -0.585731, -0.753478,
		0.819188, -0.247726, 0.517266,
		-0.489634, -0.771720, 0.405841,
		39.463966, 35.910080, 36.829121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303146, 35.907677, 36.719414>,  <39.806709, 36.450287, 36.545029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303146, 35.907677, 36.719414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939610, 35.764214, 36.634209>,  <39.721489, 35.678135, 36.583084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939610, 35.764214, 36.634209>,  <40.303146, 35.907677, 36.719414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939610, 35.764214, 36.634209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390944, -0.554199, -0.734865,
		0.145518, -0.751149, 0.643895,
		-0.908839, -0.358662, -0.213011,
		39.666958, 35.656616, 36.570305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520233, 35.199028, 36.460297>,  <40.303146, 35.907677, 36.719414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520233, 35.199028, 36.460297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135334, 35.252193, 36.365299>,  <39.904392, 35.284092, 36.308300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135334, 35.252193, 36.365299>,  <40.520233, 35.199028, 36.460297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135334, 35.252193, 36.365299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140896, -0.503316, -0.852538,
		-0.232852, -0.853819, 0.465589,
		-0.962252, 0.132915, -0.237498,
		39.846657, 35.292068, 36.294048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251770, 34.618805, 36.416008>,  <40.520233, 35.199028, 36.460297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251770, 34.618805, 36.416008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005184, 34.838318, 36.190155>,  <39.857235, 34.970024, 36.054642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005184, 34.838318, 36.190155>,  <40.251770, 34.618805, 36.416008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005184, 34.838318, 36.190155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233971, -0.557037, -0.796848,
		-0.751819, -0.623334, 0.214993,
		-0.616461, 0.548784, -0.564634,
		39.820244, 35.002953, 36.020763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104527, 34.132652, 35.941235>,  <40.251770, 34.618805, 36.416008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104527, 34.132652, 35.941235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945236, 34.461891, 35.779278>,  <39.849663, 34.659435, 35.682106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945236, 34.461891, 35.779278>,  <40.104527, 34.132652, 35.941235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945236, 34.461891, 35.779278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103129, -0.398424, -0.911385,
		-0.911472, -0.404692, 0.073777,
		-0.398225, 0.823094, -0.404888,
		39.825768, 34.708820, 35.657810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842018, 34.368622, 36.127476>,  <40.104527, 34.132652, 35.941235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842018, 34.368622, 36.127476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.617527, 34.118168, 36.343990>,  <40.482834, 33.967896, 36.473900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.617527, 34.118168, 36.343990>,  <40.842018, 34.368622, 36.127476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617527, 34.118168, 36.343990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666371, -0.729716, -0.153182,
		0.490894, 0.274725, 0.826770,
		-0.561225, -0.626131, 0.541282,
		40.449162, 33.930328, 36.506374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185829, 34.057331, 36.697178>,  <40.842018, 34.368622, 36.127476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.185829, 34.057331, 36.697178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900150, 33.807953, 36.569912>,  <40.728741, 33.658325, 36.493553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900150, 33.807953, 36.569912>,  <41.185829, 34.057331, 36.697178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900150, 33.807953, 36.569912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697985, -0.668326, -0.257209,
		-0.052284, -0.405776, 0.912476,
		-0.714200, -0.623447, -0.318169,
		40.685890, 33.620918, 36.474461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191795, 33.391491, 37.029720>,  <41.185829, 34.057331, 36.697178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191795, 33.391491, 37.029720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.077797, 33.366669, 36.647114>,  <41.009399, 33.351776, 36.417549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.077797, 33.366669, 36.647114>,  <41.191795, 33.391491, 37.029720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077797, 33.366669, 36.647114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910808, -0.328479, -0.250062,
		-0.298678, -0.942470, 0.150136,
		-0.284992, -0.062057, -0.956519,
		40.992298, 33.348053, 36.360157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488522, 32.784351, 36.786732>,  <41.191795, 33.391491, 37.029720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488522, 32.784351, 36.786732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438007, 33.014420, 36.463440>,  <41.407700, 33.152462, 36.269466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438007, 33.014420, 36.463440>,  <41.488522, 32.784351, 36.786732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438007, 33.014420, 36.463440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836205, -0.376601, -0.398665,
		-0.533679, -0.726189, -0.433401,
		-0.126286, 0.575171, -0.808226,
		41.400120, 33.186970, 36.220970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495804, 32.372627, 36.172855>,  <41.488522, 32.784351, 36.786732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495804, 32.372627, 36.172855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.713757, 32.697487, 36.089409>,  <41.844528, 32.892403, 36.039341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.713757, 32.697487, 36.089409>,  <41.495804, 32.372627, 36.172855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.713757, 32.697487, 36.089409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827561, -0.560934, -0.022255,
		-0.135095, -0.160517, -0.977744,
		0.544877, 0.812150, -0.208617,
		41.877220, 32.941132, 36.026825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101494, 32.282452, 35.670902>,  <41.495804, 32.372627, 36.172855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101494, 32.282452, 35.670902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232391, 32.573956, 35.911510>,  <42.310928, 32.748856, 36.055874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232391, 32.573956, 35.911510>,  <42.101494, 32.282452, 35.670902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232391, 32.573956, 35.911510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763793, -0.578789, 0.285698,
		0.556357, 0.365944, -0.746024,
		0.327241, 0.728758, 0.601519,
		42.330563, 32.792583, 36.091965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.780148, 32.608803, 35.697445>,  <42.101494, 32.282452, 35.670902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.780148, 32.608803, 35.697445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.141453, 32.484917, 35.578659>,  <43.358238, 32.410583, 35.507389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.141453, 32.484917, 35.578659>,  <42.780148, 32.608803, 35.697445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.141453, 32.484917, 35.578659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210838, -0.282403, 0.935840,
		-0.373712, -0.907922, -0.189783,
		0.903264, -0.309721, -0.296962,
		43.412434, 32.392002, 35.489571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.879520, 31.906937, 35.810917>,  <42.780148, 32.608803, 35.697445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.879520, 31.906937, 35.810917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.199768, 32.145222, 35.836632>,  <43.391918, 32.288193, 35.852062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.199768, 32.145222, 35.836632>,  <42.879520, 31.906937, 35.810917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.199768, 32.145222, 35.836632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131527, -0.279408, 0.951121,
		0.584558, -0.753032, -0.302052,
		0.800620, 0.595713, 0.064286,
		43.439953, 32.323936, 35.855919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.386841, 31.581873, 36.071907>,  <42.879520, 31.906937, 35.810917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.386841, 31.581873, 36.071907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.405174, 31.961222, 36.197441>,  <43.416176, 32.188831, 36.272762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.405174, 31.961222, 36.197441>,  <43.386841, 31.581873, 36.071907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.405174, 31.961222, 36.197441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074249, -0.310058, 0.947814,
		0.996186, -0.066745, 0.056204,
		0.045836, 0.948372, 0.313831,
		43.418926, 32.245735, 36.291592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.934551, 31.606024, 35.628223>,  <43.386841, 31.581873, 36.071907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.934551, 31.606024, 35.628223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.313061, 31.734339, 35.611893>,  <44.540165, 31.811327, 35.602093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.313061, 31.734339, 35.611893>,  <43.934551, 31.606024, 35.628223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.313061, 31.734339, 35.611893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237116, -0.774151, -0.586912,
		-0.219880, 0.545697, -0.808621,
		0.946271, 0.320787, -0.040827,
		44.596943, 31.830574, 35.599644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.128246, 31.802950, 34.884903>,  <43.934551, 31.606024, 35.628223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.128246, 31.802950, 34.884903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.380527, 31.652966, 35.156673>,  <44.531898, 31.562975, 35.319736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.380527, 31.652966, 35.156673>,  <44.128246, 31.802950, 34.884903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.380527, 31.652966, 35.156673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181871, -0.779714, -0.599140,
		0.754410, 0.501448, -0.423575,
		0.630705, -0.374961, 0.679423,
		44.569740, 31.540478, 35.360500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.927597, 31.781925, 34.656773>,  <44.128246, 31.802950, 34.884903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.927597, 31.781925, 34.656773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.786335, 31.479073, 34.876602>,  <44.701576, 31.297361, 35.008499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.786335, 31.479073, 34.876602>,  <44.927597, 31.781925, 34.656773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.786335, 31.479073, 34.876602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264612, -0.644274, -0.717559,
		0.897362, -0.107990, 0.427878,
		-0.353159, -0.757132, 0.549572,
		44.680386, 31.251932, 35.041473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.660168, 32.138252, 34.823380>,  <44.927597, 31.781925, 34.656773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.660168, 32.138252, 34.823380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.633209, 31.762777, 34.958630>,  <45.617035, 31.537493, 35.039780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.633209, 31.762777, 34.958630>,  <45.660168, 32.138252, 34.823380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.633209, 31.762777, 34.958630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500180, 0.261448, 0.825508,
		-0.863295, 0.224758, 0.451892,
		-0.067393, -0.938685, 0.338126,
		45.612991, 31.481173, 35.060066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.055645, 32.718060, 34.579079>,  <45.660168, 32.138252, 34.823380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.055645, 32.718060, 34.579079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.963028, 32.981514, 34.865459>,  <45.907455, 33.139587, 35.037289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.963028, 32.981514, 34.865459>,  <46.055645, 32.718060, 34.579079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.963028, 32.981514, 34.865459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860550, 0.481898, -0.165009,
		-0.453696, 0.577906, -0.678368,
		-0.231544, 0.658634, 0.715953,
		45.893566, 33.179104, 35.080246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.182789, 33.410728, 34.507416>,  <46.055645, 32.718060, 34.579079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.182789, 33.410728, 34.507416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.217800, 33.361443, 34.902821>,  <46.238808, 33.331871, 35.140064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.217800, 33.361443, 34.902821>,  <46.182789, 33.410728, 34.507416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.217800, 33.361443, 34.902821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886104, 0.463021, -0.020751,
		-0.455146, 0.877742, 0.149706,
		0.087531, -0.123210, 0.988513,
		46.244061, 33.324478, 35.199375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.281845, 34.146439, 34.798534>,  <46.182789, 33.410728, 34.507416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.281845, 34.146439, 34.798534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.441944, 33.837093, 34.995193>,  <46.538006, 33.651485, 35.113190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.441944, 33.837093, 34.995193>,  <46.281845, 34.146439, 34.798534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.441944, 33.837093, 34.995193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914166, 0.374438, -0.155233,
		-0.064039, 0.511576, 0.856848,
		0.400250, -0.773360, 0.491644,
		46.562019, 33.605083, 35.142685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.865185, 34.356583, 35.235275>,  <46.281845, 34.146439, 34.798534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.865185, 34.356583, 35.235275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.910919, 33.970982, 35.139252>,  <46.938358, 33.739620, 35.081638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.910919, 33.970982, 35.139252>,  <46.865185, 34.356583, 35.235275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.910919, 33.970982, 35.139252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930146, 0.188753, -0.314963,
		0.348936, -0.187273, 0.918244,
		0.114337, -0.964003, -0.240054,
		46.945221, 33.681782, 35.067234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.412769, 33.906433, 35.698425>,  <46.865185, 34.356583, 35.235275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.412769, 33.906433, 35.698425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.386440, 33.820805, 35.308586>,  <47.370644, 33.769428, 35.074684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.386440, 33.820805, 35.308586>,  <47.412769, 33.906433, 35.698425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.386440, 33.820805, 35.308586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974662, 0.195461, -0.108759,
		0.213778, -0.957063, 0.195780,
		-0.065822, -0.214070, -0.974598,
		47.366695, 33.756584, 35.016205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.996967, 34.164181, 35.427135>,  <47.412769, 33.906433, 35.698425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.996967, 34.164181, 35.427135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.830330, 34.014820, 35.095589>,  <47.730347, 33.925205, 34.896660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.830330, 34.014820, 35.095589>,  <47.996967, 34.164181, 35.427135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.830330, 34.014820, 35.095589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862108, 0.127063, -0.490535,
		0.288483, -0.918928, 0.268976,
		-0.416590, -0.373398, -0.828871,
		47.705353, 33.902802, 34.846928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.553524, 34.754303, 35.714931>,  <47.996967, 34.164181, 35.427135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.553524, 34.754303, 35.714931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.465183, 35.073505, 35.490643>,  <47.412178, 35.265026, 35.356068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.465183, 35.073505, 35.490643>,  <47.553524, 34.754303, 35.714931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.465183, 35.073505, 35.490643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969868, 0.119057, -0.212558,
		-0.102865, -0.590771, -0.800255,
		-0.220849, 0.798007, -0.560724,
		47.398930, 35.312908, 35.322426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.769199, 34.765652, 35.025337>,  <47.553524, 34.754303, 35.714931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.769199, 34.765652, 35.025337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.794590, 35.140743, 35.161942>,  <47.809822, 35.365799, 35.243904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.794590, 35.140743, 35.161942>,  <47.769199, 34.765652, 35.025337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.794590, 35.140743, 35.161942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994827, -0.032257, -0.096324,
		-0.079310, 0.345860, -0.934928,
		0.063473, 0.937732, 0.341512,
		47.813633, 35.422062, 35.264397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.068737, 27.578264, 28.448994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.837662, 27.815599, 28.224771>,  <40.699017, 27.958000, 28.090239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.837662, 27.815599, 28.224771>,  <41.068737, 27.578264, 28.448994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837662, 27.815599, 28.224771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361911, 0.429361, 0.827448,
		0.731638, 0.680879, -0.033302,
		-0.577690, 0.593340, -0.560555,
		40.664356, 27.993601, 28.056604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708820, 28.039024, 28.944920>,  <41.068737, 27.578264, 28.448994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708820, 28.039024, 28.944920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.507500, 28.164564, 28.622881>,  <40.386707, 28.239887, 28.429657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.507500, 28.164564, 28.622881>,  <40.708820, 28.039024, 28.944920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507500, 28.164564, 28.622881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716598, 0.369056, 0.591848,
		0.482877, 0.874812, 0.039155,
		-0.503306, 0.313849, -0.805098,
		40.356506, 28.258718, 28.381351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658794, 28.871784, 28.945395>,  <40.708820, 28.039024, 28.944920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658794, 28.871784, 28.945395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.363369, 28.675398, 28.760584>,  <40.186111, 28.557566, 28.649696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.363369, 28.675398, 28.760584>,  <40.658794, 28.871784, 28.945395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363369, 28.675398, 28.760584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649228, 0.333231, 0.683710,
		-0.181718, 0.804928, -0.564863,
		-0.738567, -0.490967, -0.462028,
		40.141800, 28.528109, 28.621975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094715, 29.386772, 28.686125>,  <40.658794, 28.871784, 28.945395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094715, 29.386772, 28.686125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.959713, 29.017452, 28.759455>,  <39.878712, 28.795860, 28.803453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.959713, 29.017452, 28.759455>,  <40.094715, 29.386772, 28.686125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959713, 29.017452, 28.759455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677225, 0.373430, 0.633968,
		-0.653802, 0.089815, -0.751316,
		-0.337503, -0.923300, 0.183324,
		39.858463, 28.740461, 28.814451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532936, 29.591093, 29.023447>,  <40.094715, 29.386772, 28.686125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532936, 29.591093, 29.023447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.493126, 29.194826, 29.060688>,  <39.469238, 28.957066, 29.083033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.493126, 29.194826, 29.060688>,  <39.532936, 29.591093, 29.023447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493126, 29.194826, 29.060688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752180, 0.136161, 0.644736,
		-0.651398, -0.005862, -0.758714,
		-0.099528, -0.990669, 0.093104,
		39.463268, 28.897625, 29.088619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793144, 29.413788, 28.964920>,  <39.532936, 29.591093, 29.023447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793144, 29.413788, 28.964920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.984039, 29.126465, 29.167416>,  <39.098576, 28.954071, 29.288914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.984039, 29.126465, 29.167416>,  <38.793144, 29.413788, 28.964920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984039, 29.126465, 29.167416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693876, 0.045480, 0.718656,
		-0.539239, -0.694239, -0.476711,
		0.477239, -0.718306, 0.506240,
		39.127213, 28.910973, 29.319288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239906, 29.004694, 29.189978>,  <38.793144, 29.413788, 28.964920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239906, 29.004694, 29.189978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.569443, 28.951283, 29.410324>,  <38.767166, 28.919235, 29.542532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.569443, 28.951283, 29.410324>,  <38.239906, 29.004694, 29.189978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569443, 28.951283, 29.410324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502279, 0.278399, 0.818664,
		-0.262677, -0.951138, 0.162287,
		0.823843, -0.133531, 0.550866,
		38.816597, 28.911224, 29.575584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976196, 28.683680, 29.906136>,  <38.239906, 29.004694, 29.189978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976196, 28.683680, 29.906136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.341713, 28.833265, 29.969549>,  <38.561024, 28.923018, 30.007597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.341713, 28.833265, 29.969549>,  <37.976196, 28.683680, 29.906136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341713, 28.833265, 29.969549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288692, 0.323400, 0.901149,
		0.285721, -0.869234, 0.403480,
		0.913794, 0.373958, 0.158538,
		38.615852, 28.945456, 30.017109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051201, 28.478842, 30.538040>,  <37.976196, 28.683680, 29.906136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051201, 28.478842, 30.538040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.320820, 28.770809, 30.492653>,  <38.482590, 28.945990, 30.465422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.320820, 28.770809, 30.492653>,  <38.051201, 28.478842, 30.538040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320820, 28.770809, 30.492653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242627, 0.363852, 0.899302,
		0.697704, -0.578642, 0.422352,
		0.674048, 0.729921, -0.113467,
		38.523033, 28.989786, 30.458612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308422, 28.465223, 31.155745>,  <38.051201, 28.478842, 30.538040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308422, 28.465223, 31.155745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.391663, 28.817844, 30.986250>,  <38.441608, 29.029417, 30.884552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.391663, 28.817844, 30.986250>,  <38.308422, 28.465223, 31.155745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391663, 28.817844, 30.986250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034239, 0.439524, 0.897578,
		0.977507, -0.172282, 0.121650,
		0.208105, 0.881554, -0.423739,
		38.454094, 29.082312, 30.859129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963169, 28.863674, 31.330269>,  <38.308422, 28.465223, 31.155745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963169, 28.863674, 31.330269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.670040, 29.118383, 31.234362>,  <38.494164, 29.271208, 31.176817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.670040, 29.118383, 31.234362>,  <38.963169, 28.863674, 31.330269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670040, 29.118383, 31.234362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024848, 0.377197, 0.925800,
		0.679963, 0.672491, -0.292242,
		-0.732825, 0.636772, -0.239770,
		38.450191, 29.309416, 31.162430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232037, 29.571732, 31.559599>,  <38.963169, 28.863674, 31.330269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232037, 29.571732, 31.559599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.832542, 29.551781, 31.557232>,  <38.592846, 29.539810, 31.555813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.832542, 29.551781, 31.557232>,  <39.232037, 29.571732, 31.559599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832542, 29.551781, 31.557232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023508, 0.360110, 0.932613,
		-0.044385, 0.931576, -0.360828,
		-0.998738, -0.049876, -0.005916,
		38.532921, 29.536818, 31.555456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054985, 30.058382, 31.907949>,  <39.232037, 29.571732, 31.559599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054985, 30.058382, 31.907949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.687000, 29.901657, 31.912930>,  <38.466209, 29.807623, 31.915918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.687000, 29.901657, 31.912930>,  <39.054985, 30.058382, 31.907949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687000, 29.901657, 31.912930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192698, 0.479656, 0.856036,
		-0.341378, 0.785121, -0.516766,
		-0.919961, -0.391812, 0.012452,
		38.411011, 29.784113, 31.916666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666019, 30.632969, 32.215355>,  <39.054985, 30.058382, 31.907949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666019, 30.632969, 32.215355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.435867, 30.308195, 32.254738>,  <38.297775, 30.113331, 32.278366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.435867, 30.308195, 32.254738>,  <38.666019, 30.632969, 32.215355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435867, 30.308195, 32.254738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368376, 0.364747, 0.855137,
		-0.730228, 0.455763, -0.508967,
		-0.575384, -0.811936, 0.098456,
		38.263252, 30.064615, 32.284275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826828, 30.809082, 32.177067>,  <38.666019, 30.632969, 32.215355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826828, 30.809082, 32.177067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.864220, 30.457186, 32.363537>,  <37.886654, 30.246048, 32.475418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.864220, 30.457186, 32.363537>,  <37.826828, 30.809082, 32.177067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864220, 30.457186, 32.363537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478950, 0.370757, 0.795705,
		-0.872851, -0.297654, -0.386694,
		0.093476, -0.879739, 0.466177,
		37.892262, 30.193264, 32.503391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089256, 30.525036, 32.386642>,  <37.826828, 30.809082, 32.177067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089256, 30.525036, 32.386642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.357674, 30.348381, 32.624855>,  <37.518723, 30.242388, 32.767784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.357674, 30.348381, 32.624855>,  <37.089256, 30.525036, 32.386642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357674, 30.348381, 32.624855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395356, 0.466361, 0.791329,
		-0.627215, -0.766461, 0.138342,
		0.671040, -0.441639, 0.595533,
		37.558987, 30.215889, 32.803516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656868, 30.364700, 33.035942>,  <37.089256, 30.525036, 32.386642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656868, 30.364700, 33.035942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.047646, 30.375454, 33.120667>,  <37.282112, 30.381907, 33.171501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.047646, 30.375454, 33.120667>,  <36.656868, 30.364700, 33.035942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047646, 30.375454, 33.120667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196276, 0.503538, 0.841383,
		-0.084037, -0.863555, 0.497204,
		0.976941, 0.026882, 0.211810,
		37.340729, 30.383518, 33.184208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795921, 30.223585, 33.803310>,  <36.656868, 30.364700, 33.035942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795921, 30.223585, 33.803310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.101711, 30.430311, 33.649174>,  <37.285183, 30.554346, 33.556694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.101711, 30.430311, 33.649174>,  <36.795921, 30.223585, 33.803310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101711, 30.430311, 33.649174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072824, 0.524684, 0.848177,
		0.640532, -0.676468, 0.363469,
		0.764470, 0.516816, -0.385340,
		37.331051, 30.585356, 33.533573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120888, 30.168524, 34.373299>,  <36.795921, 30.223585, 33.803310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120888, 30.168524, 34.373299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.301720, 30.449503, 34.153408>,  <37.410217, 30.618090, 34.021473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.301720, 30.449503, 34.153408>,  <37.120888, 30.168524, 34.373299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301720, 30.449503, 34.153408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259345, 0.486158, 0.834501,
		0.853444, -0.519827, 0.037605,
		0.452078, 0.702446, -0.549723,
		37.437344, 30.660236, 33.988491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752090, 30.362114, 34.654896>,  <37.120888, 30.168524, 34.373299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752090, 30.362114, 34.654896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.667389, 30.675669, 34.421425>,  <37.616570, 30.863802, 34.281342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.667389, 30.675669, 34.421425>,  <37.752090, 30.362114, 34.654896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667389, 30.675669, 34.421425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164905, 0.617314, 0.769239,
		0.963310, 0.066639, -0.259986,
		-0.211755, 0.783889, -0.583676,
		37.603863, 30.910835, 34.246323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375965, 30.907845, 34.684753>,  <37.752090, 30.362114, 34.654896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375965, 30.907845, 34.684753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.040813, 31.087105, 34.560093>,  <37.839722, 31.194660, 34.485298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.040813, 31.087105, 34.560093>,  <38.375965, 30.907845, 34.684753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040813, 31.087105, 34.560093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102051, 0.689469, 0.717090,
		0.536234, 0.569029, -0.623425,
		-0.837877, 0.448150, -0.311647,
		37.789452, 31.221550, 34.466599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420238, 31.701248, 34.588501>,  <38.375965, 30.907845, 34.684753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420238, 31.701248, 34.588501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.037319, 31.625486, 34.675869>,  <37.807568, 31.580030, 34.728291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.037319, 31.625486, 34.675869>,  <38.420238, 31.701248, 34.588501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037319, 31.625486, 34.675869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041248, 0.658301, 0.751623,
		-0.286146, 0.728537, -0.622378,
		-0.957298, -0.189402, 0.218420,
		37.750130, 31.568666, 34.741394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748039, 32.257893, 34.171230>,  <38.420238, 31.701248, 34.588501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748039, 32.257893, 34.171230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.095695, 32.411251, 34.296192>,  <39.304291, 32.503265, 34.371170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.095695, 32.411251, 34.296192>,  <38.748039, 32.257893, 34.171230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095695, 32.411251, 34.296192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455988, -0.376667, -0.806348,
		-0.191479, 0.843284, -0.502202,
		0.869144, 0.383397, 0.312403,
		39.356438, 32.526272, 34.389912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021145, 32.343315, 33.588924>,  <38.748039, 32.257893, 34.171230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021145, 32.343315, 33.588924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.338226, 32.359676, 33.832218>,  <39.528473, 32.369495, 33.978195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.338226, 32.359676, 33.832218>,  <39.021145, 32.343315, 33.588924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338226, 32.359676, 33.832218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565462, -0.422133, -0.708559,
		0.227773, 0.905611, -0.357755,
		0.792699, 0.040907, 0.608239,
		39.576035, 32.371948, 34.014690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635372, 32.486382, 33.151077>,  <39.021145, 32.343315, 33.588924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635372, 32.486382, 33.151077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.777344, 32.321777, 33.486858>,  <39.862526, 32.223015, 33.688328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.777344, 32.321777, 33.486858>,  <39.635372, 32.486382, 33.151077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777344, 32.321777, 33.486858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549239, -0.634840, -0.543428,
		0.756547, 0.653938, 0.000697,
		0.354926, -0.411512, 0.839455,
		39.883823, 32.198322, 33.738693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410198, 32.497589, 33.069817>,  <39.635372, 32.486382, 33.151077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410198, 32.497589, 33.069817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.304852, 32.217770, 33.335533>,  <40.241646, 32.049877, 33.494961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.304852, 32.217770, 33.335533>,  <40.410198, 32.497589, 33.069817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304852, 32.217770, 33.335533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559428, -0.671739, -0.485599,
		0.785926, 0.243731, 0.568257,
		-0.263365, -0.699544, 0.664287,
		40.225842, 32.007908, 33.534821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994465, 32.137249, 33.279240>,  <40.410198, 32.497589, 33.069817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994465, 32.137249, 33.279240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.724289, 31.867414, 33.398384>,  <40.562183, 31.705515, 33.469872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.724289, 31.867414, 33.398384>,  <40.994465, 32.137249, 33.279240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724289, 31.867414, 33.398384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536130, -0.726560, -0.429739,
		0.506306, -0.130573, 0.852411,
		-0.675440, -0.674583, 0.297857,
		40.521656, 31.665039, 33.487740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342503, 31.601536, 33.743095>,  <40.994465, 32.137249, 33.279240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342503, 31.601536, 33.743095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.009563, 31.473257, 33.562275>,  <40.809799, 31.396290, 33.453781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.009563, 31.473257, 33.562275>,  <41.342503, 31.601536, 33.743095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.009563, 31.473257, 33.562275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487315, -0.811997, -0.321224,
		-0.264050, -0.487662, 0.832144,
		-0.832347, -0.320697, -0.452053,
		40.759861, 31.377048, 33.426659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409573, 30.897461, 33.777191>,  <41.342503, 31.601536, 33.743095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.409573, 30.897461, 33.777191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.127026, 30.954903, 33.499943>,  <40.957497, 30.989368, 33.333591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.127026, 30.954903, 33.499943>,  <41.409573, 30.897461, 33.777191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.127026, 30.954903, 33.499943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390407, -0.737760, -0.550720,
		-0.590445, -0.659612, 0.465066,
		-0.706369, 0.143604, -0.693124,
		40.915115, 30.997984, 33.292004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344341, 30.212502, 33.592064>,  <41.409573, 30.897461, 33.777191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344341, 30.212502, 33.592064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.179310, 30.433886, 33.302662>,  <41.080292, 30.566715, 33.129021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.179310, 30.433886, 33.302662>,  <41.344341, 30.212502, 33.592064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179310, 30.433886, 33.302662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147232, -0.743297, -0.652558,
		-0.898944, -0.375755, 0.225182,
		-0.412579, 0.553459, -0.723506,
		41.055534, 30.599924, 33.085609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936031, 29.781046, 33.200066>,  <41.344341, 30.212502, 33.592064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936031, 29.781046, 33.200066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.992840, 30.084969, 32.946285>,  <41.026924, 30.267323, 32.794018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.992840, 30.084969, 32.946285>,  <40.936031, 29.781046, 33.200066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992840, 30.084969, 32.946285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217870, -0.649220, -0.728729,
		-0.965590, -0.034734, -0.257741,
		0.142019, 0.759807, -0.634448,
		41.035446, 30.312910, 32.755951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675446, 29.593456, 32.645432>,  <40.936031, 29.781046, 33.200066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675446, 29.593456, 32.645432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.900326, 29.894850, 32.509083>,  <41.035252, 30.075686, 32.427273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.900326, 29.894850, 32.509083>,  <40.675446, 29.593456, 32.645432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900326, 29.894850, 32.509083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323728, -0.579795, -0.747688,
		-0.761009, 0.309998, -0.569883,
		0.562198, 0.753484, -0.340874,
		41.068985, 30.120895, 32.406822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548893, 29.634403, 31.966600>,  <40.675446, 29.593456, 32.645432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548893, 29.634403, 31.966600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.892166, 29.839201, 31.981514>,  <41.098129, 29.962080, 31.990461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.892166, 29.839201, 31.981514>,  <40.548893, 29.634403, 31.966600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892166, 29.839201, 31.981514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327302, -0.489762, -0.808088,
		-0.395479, 0.705687, -0.587880,
		0.858178, 0.511996, 0.037282,
		41.149620, 29.992800, 31.992699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659386, 29.935028, 31.311634>,  <40.548893, 29.634403, 31.966600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659386, 29.935028, 31.311634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.016792, 29.901484, 31.488083>,  <41.231236, 29.881357, 31.593952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.016792, 29.901484, 31.488083>,  <40.659386, 29.935028, 31.311634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016792, 29.901484, 31.488083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378674, -0.387203, -0.840642,
		0.241301, 0.918173, -0.314218,
		0.893521, -0.083861, 0.441121,
		41.284847, 29.876326, 31.620419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156845, 30.092609, 30.717648>,  <40.659386, 29.935028, 31.311634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156845, 30.092609, 30.717648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.368626, 29.911852, 31.004833>,  <41.495693, 29.803396, 31.177145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.368626, 29.911852, 31.004833>,  <41.156845, 30.092609, 30.717648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368626, 29.911852, 31.004833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549600, -0.461979, -0.696072,
		0.646235, 0.763129, 0.003765,
		0.529453, -0.451895, 0.717962,
		41.527462, 29.776283, 31.220222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.762016, 30.158697, 30.546448>,  <41.156845, 30.092609, 30.717648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.762016, 30.158697, 30.546448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.792912, 29.832987, 30.776573>,  <41.811447, 29.637560, 30.914648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.792912, 29.832987, 30.776573>,  <41.762016, 30.158697, 30.546448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.792912, 29.832987, 30.776573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380614, -0.509256, -0.771875,
		0.921503, 0.278588, 0.270593,
		0.077234, -0.814277, 0.575316,
		41.816082, 29.588703, 30.949167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461037, 29.923384, 30.632633>,  <41.762016, 30.158697, 30.546448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461037, 29.923384, 30.632633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.247139, 29.597954, 30.723976>,  <42.118801, 29.402695, 30.778782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.247139, 29.597954, 30.723976>,  <42.461037, 29.923384, 30.632633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247139, 29.597954, 30.723976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492930, -0.519825, -0.697712,
		0.686348, -0.260530, 0.679007,
		-0.534740, -0.813576, 0.228358,
		42.086716, 29.353882, 30.792484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.931973, 29.398521, 30.609253>,  <42.461037, 29.923384, 30.632633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.931973, 29.398521, 30.609253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.570812, 29.232979, 30.562799>,  <42.354115, 29.133654, 30.534927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.570812, 29.232979, 30.562799>,  <42.931973, 29.398521, 30.609253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.570812, 29.232979, 30.562799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353359, -0.560811, -0.748751,
		0.244748, -0.717087, 0.652599,
		-0.902904, -0.413857, -0.116132,
		42.299942, 29.108822, 30.527960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.022121, 28.738316, 30.436502>,  <42.931973, 29.398521, 30.609253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.022121, 28.738316, 30.436502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.645210, 28.772755, 30.307068>,  <42.419064, 28.793417, 30.229406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.645210, 28.772755, 30.307068>,  <43.022121, 28.738316, 30.436502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.645210, 28.772755, 30.307068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227521, -0.544397, -0.807382,
		-0.245672, -0.834398, 0.493382,
		-0.942274, 0.086096, -0.323586,
		42.362530, 28.798584, 30.209991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.813938, 28.105703, 30.214508>,  <43.022121, 28.738316, 30.436502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.813938, 28.105703, 30.214508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.618538, 28.393778, 30.017450>,  <42.501297, 28.566622, 29.899216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.618538, 28.393778, 30.017450>,  <42.813938, 28.105703, 30.214508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618538, 28.393778, 30.017450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189321, -0.463663, -0.865549,
		-0.851776, -0.516091, 0.090155,
		-0.488504, 0.720185, -0.492643,
		42.471989, 28.609833, 29.869658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<42.886208, 27.886389, 29.536987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.712040, 28.244713, 29.501371>,  <42.607540, 28.459707, 29.480001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.712040, 28.244713, 29.501371>,  <42.886208, 27.886389, 29.536987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.712040, 28.244713, 29.501371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235995, 0.018137, -0.971585,
		-0.868743, -0.444062, -0.219305,
		-0.435421, 0.895812, -0.089040,
		42.581413, 28.513456, 29.474659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465656, 27.745262, 29.006615>,  <42.886208, 27.886389, 29.536987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465656, 27.745262, 29.006615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.497677, 28.143791, 29.018866>,  <42.516888, 28.382908, 29.026217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.497677, 28.143791, 29.018866>,  <42.465656, 27.745262, 29.006615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.497677, 28.143791, 29.018866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247668, 0.009883, -0.968794,
		-0.965532, 0.085135, -0.245966,
		0.080048, 0.996320, 0.030628,
		42.521690, 28.442688, 29.028053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031349, 28.022606, 28.441439>,  <42.465656, 27.745262, 29.006615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031349, 28.022606, 28.441439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.287132, 28.310236, 28.550264>,  <42.440601, 28.482815, 28.615559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.287132, 28.310236, 28.550264>,  <42.031349, 28.022606, 28.441439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.287132, 28.310236, 28.550264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483583, -0.101087, -0.869442,
		-0.597693, 0.687539, -0.412375,
		0.639461, 0.719077, 0.272063,
		42.478970, 28.525959, 28.631884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996712, 28.541281, 27.956276>,  <42.031349, 28.022606, 28.441439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996712, 28.541281, 27.956276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.358898, 28.600714, 28.115301>,  <42.576210, 28.636374, 28.210716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.358898, 28.600714, 28.115301>,  <41.996712, 28.541281, 27.956276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.358898, 28.600714, 28.115301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408292, -0.049173, -0.911526,
		-0.115888, 0.987677, -0.105189,
		0.905465, 0.148583, 0.397562,
		42.630539, 28.645288, 28.234570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.283585, 29.067883, 27.569681>,  <41.996712, 28.541281, 27.956276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.283585, 29.067883, 27.569681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.594479, 28.869347, 27.724369>,  <42.781013, 28.750225, 27.817183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.594479, 28.869347, 27.724369>,  <42.283585, 29.067883, 27.569681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.594479, 28.869347, 27.724369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508978, 0.134599, -0.850191,
		0.369932, 0.857630, 0.357241,
		0.777234, -0.496340, 0.386722,
		42.827648, 28.720444, 27.840385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.827316, 29.517122, 27.445580>,  <42.283585, 29.067883, 27.569681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.827316, 29.517122, 27.445580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.017162, 29.173670, 27.523033>,  <43.131069, 28.967598, 27.569506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.017162, 29.173670, 27.523033>,  <42.827316, 29.517122, 27.445580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.017162, 29.173670, 27.523033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533010, 0.105301, -0.839531,
		0.700456, 0.501665, 0.507636,
		0.474618, -0.858629, 0.193634,
		43.159546, 28.916080, 27.581123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.488438, 29.583269, 27.293734>,  <42.827316, 29.517122, 27.445580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.488438, 29.583269, 27.293734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.434456, 29.189520, 27.248489>,  <43.402069, 28.953270, 27.221342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.434456, 29.189520, 27.248489>,  <43.488438, 29.583269, 27.293734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.434456, 29.189520, 27.248489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435327, 0.043645, -0.899213,
		0.890100, -0.170591, 0.422635,
		-0.134952, -0.984375, -0.113112,
		43.393970, 28.894207, 27.214556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.091942, 29.445673, 26.929815>,  <43.488438, 29.583269, 27.293734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.091942, 29.445673, 26.929815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.871639, 29.112684, 26.905605>,  <43.739460, 28.912891, 26.891079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.871639, 29.112684, 26.905605>,  <44.091942, 29.445673, 26.929815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.871639, 29.112684, 26.905605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380807, -0.186085, -0.905737,
		0.742737, -0.521886, 0.419497,
		-0.550753, -0.832471, -0.060526,
		43.706413, 28.862944, 26.887447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.548195, 28.955910, 26.710112>,  <44.091942, 29.445673, 26.929815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.548195, 28.955910, 26.710112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.183685, 28.835983, 26.597189>,  <43.964981, 28.764029, 26.529436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.183685, 28.835983, 26.597189>,  <44.548195, 28.955910, 26.710112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.183685, 28.835983, 26.597189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353182, -0.216464, -0.910168,
		0.211773, -0.929115, 0.303147,
		-0.911271, -0.299815, -0.282305,
		43.910305, 28.746038, 26.512497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.653851, 28.373102, 26.409271>,  <44.548195, 28.955910, 26.710112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.653851, 28.373102, 26.409271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.300892, 28.506859, 26.276876>,  <44.089115, 28.587112, 26.197439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.300892, 28.506859, 26.276876>,  <44.653851, 28.373102, 26.409271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.300892, 28.506859, 26.276876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309924, -0.116199, -0.943634,
		-0.354003, -0.935244, -0.001102,
		-0.882400, 0.334390, -0.330989,
		44.036171, 28.607176, 26.177580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.591328, 27.904690, 25.844553>,  <44.653851, 28.373102, 26.409271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.591328, 27.904690, 25.844553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.332043, 28.203009, 25.783100>,  <44.176472, 28.382000, 25.746229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.332043, 28.203009, 25.783100>,  <44.591328, 27.904690, 25.844553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.332043, 28.203009, 25.783100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065230, -0.146629, -0.987038,
		-0.758659, -0.649834, 0.046399,
		-0.648214, 0.745799, -0.153630,
		44.137577, 28.426748, 25.737011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.311188, 27.669735, 25.209394>,  <44.591328, 27.904690, 25.844553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.311188, 27.669735, 25.209394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.186260, 28.047764, 25.247952>,  <44.111301, 28.274582, 25.271086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.186260, 28.047764, 25.247952>,  <44.311188, 27.669735, 25.209394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.186260, 28.047764, 25.247952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001766, 0.100889, -0.994896,
		-0.949975, -0.310897, -0.029841,
		-0.312321, 0.945074, 0.096391,
		44.092564, 28.331285, 25.276869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.935989, 27.739208, 24.607426>,  <44.311188, 27.669735, 25.209394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.935989, 27.739208, 24.607426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.031239, 28.109283, 24.725626>,  <44.088390, 28.331329, 24.796547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.031239, 28.109283, 24.725626>,  <43.935989, 27.739208, 24.607426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.031239, 28.109283, 24.725626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258071, 0.233043, -0.937598,
		-0.936320, 0.299527, -0.183270,
		0.238126, 0.925189, 0.295502,
		44.102676, 28.386841, 24.814276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.590950, 28.128727, 24.118114>,  <43.935989, 27.739208, 24.607426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.590950, 28.128727, 24.118114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.886414, 28.339167, 24.286686>,  <44.063690, 28.465431, 24.387829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.886414, 28.339167, 24.286686>,  <43.590950, 28.128727, 24.118114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.886414, 28.339167, 24.286686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297247, 0.306906, -0.904131,
		-0.605002, 0.793113, 0.070318,
		0.738659, 0.526099, 0.421430,
		44.108009, 28.496996, 24.413115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.495426, 28.805824, 23.771702>,  <43.590950, 28.128727, 24.118114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.495426, 28.805824, 23.771702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.873268, 28.794369, 23.902481>,  <44.099976, 28.787495, 23.980949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.873268, 28.794369, 23.902481>,  <43.495426, 28.805824, 23.771702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.873268, 28.794369, 23.902481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315404, 0.354689, -0.880179,
		-0.090759, 0.934546, 0.344075,
		0.944607, -0.028639, 0.326950,
		44.156651, 28.785778, 24.000566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.701038, 29.233749, 23.381348>,  <43.495426, 28.805824, 23.771702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.701038, 29.233749, 23.381348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.052895, 29.117657, 23.532076>,  <44.264008, 29.048000, 23.622513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.052895, 29.117657, 23.532076>,  <43.701038, 29.233749, 23.381348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.052895, 29.117657, 23.532076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463031, 0.341368, -0.817968,
		0.108768, 0.893998, 0.434669,
		0.879643, -0.290234, 0.376819,
		44.316788, 29.030586, 23.645121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.188118, 29.739859, 23.260824>,  <43.701038, 29.233749, 23.381348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.188118, 29.739859, 23.260824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.392921, 29.398642, 23.301157>,  <44.515804, 29.193911, 23.325356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.392921, 29.398642, 23.301157>,  <44.188118, 29.739859, 23.260824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.392921, 29.398642, 23.301157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576532, 0.254257, -0.776507,
		0.636757, 0.455709, 0.621988,
		0.512007, -0.853043, 0.100831,
		44.546524, 29.142729, 23.331406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.873726, 29.944836, 23.034477>,  <44.188118, 29.739859, 23.260824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.873726, 29.944836, 23.034477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.886967, 29.545101, 23.028376>,  <44.894913, 29.305260, 23.024715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.886967, 29.545101, 23.028376>,  <44.873726, 29.944836, 23.034477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.886967, 29.545101, 23.028376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658193, 0.033283, -0.752113,
		0.752121, 0.014856, 0.658858,
		0.033103, -0.999336, -0.015255,
		44.896896, 29.245300, 23.023800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.605953, 29.684004, 23.135162>,  <44.873726, 29.944836, 23.034477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.605953, 29.684004, 23.135162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.391209, 29.416086, 22.929966>,  <45.262363, 29.255335, 22.806849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.391209, 29.416086, 22.929966>,  <45.605953, 29.684004, 23.135162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.391209, 29.416086, 22.929966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700497, -0.015004, -0.713497,
		0.470199, -0.742396, 0.477244,
		-0.536858, -0.669794, -0.512991,
		45.230152, 29.215149, 22.776068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.005638, 29.172289, 23.040035>,  <45.605953, 29.684004, 23.135162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.005638, 29.172289, 23.040035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.728050, 29.131090, 22.754995>,  <45.561497, 29.106371, 22.583971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.728050, 29.131090, 22.754995>,  <46.005638, 29.172289, 23.040035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.728050, 29.131090, 22.754995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719828, -0.121059, -0.683515,
		-0.015866, -0.987288, 0.158152,
		-0.693971, -0.102998, -0.712598,
		45.519859, 29.100191, 22.541216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.130688, 28.563667, 22.662909>,  <46.005638, 29.172289, 23.040035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.130688, 28.563667, 22.662909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.902588, 28.773876, 22.410357>,  <45.765728, 28.900002, 22.258825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.902588, 28.773876, 22.410357>,  <46.130688, 28.563667, 22.662909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.902588, 28.773876, 22.410357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563188, -0.309429, -0.766207,
		-0.598026, -0.792516, -0.119516,
		-0.570249, 0.525521, -0.631382,
		45.731514, 28.931532, 22.220942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.212887, 28.281773, 22.038527>,  <46.130688, 28.563667, 22.662909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.212887, 28.281773, 22.038527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.047192, 28.625433, 21.918348>,  <45.947773, 28.831629, 21.846241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.047192, 28.625433, 21.918348>,  <46.212887, 28.281773, 22.038527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.047192, 28.625433, 21.918348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674809, 0.068393, -0.734817,
		-0.610770, -0.507131, -0.608094,
		-0.414238, 0.859151, -0.300444,
		45.922920, 28.883179, 21.828215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.002151, 28.099344, 21.350697>,  <46.212887, 28.281773, 22.038527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.002151, 28.099344, 21.350697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.059277, 28.487576, 21.428240>,  <46.093552, 28.720514, 21.474766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.059277, 28.487576, 21.428240>,  <46.002151, 28.099344, 21.350697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.059277, 28.487576, 21.428240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399753, 0.122614, -0.908385,
		-0.905429, 0.207223, -0.370482,
		0.142812, 0.970579, 0.193856,
		46.102119, 28.778749, 21.486397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.292534, 27.964615, 21.119862>,  <46.002151, 28.099344, 21.350697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.292534, 27.964615, 21.119862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.208828, 28.229557, 21.407610>,  <45.158604, 28.388523, 21.580259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.208828, 28.229557, 21.407610>,  <45.292534, 27.964615, 21.119862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.208828, 28.229557, 21.407610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745469, 0.368033, -0.555723,
		-0.632838, -0.652562, 0.416748,
		-0.209267, 0.662355, 0.719370,
		45.146049, 28.428263, 21.623421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.528790, 27.863380, 20.959864>,  <45.292534, 27.964615, 21.119862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.528790, 27.863380, 20.959864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.248295, 27.627193, 20.800055>,  <44.079998, 27.485481, 20.704168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.248295, 27.627193, 20.800055>,  <44.528790, 27.863380, 20.959864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.248295, 27.627193, 20.800055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708452, 0.514402, 0.483205,
		-0.079802, 0.621882, -0.779034,
		-0.701233, -0.590469, -0.399523,
		44.037926, 27.450052, 20.680199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.966812, 28.341331, 20.901478>,  <44.528790, 27.863380, 20.959864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.966812, 28.341331, 20.901478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.810574, 27.973209, 20.892794>,  <43.716831, 27.752337, 20.887583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.810574, 27.973209, 20.892794>,  <43.966812, 28.341331, 20.901478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.810574, 27.973209, 20.892794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696153, 0.279866, 0.661095,
		-0.602334, 0.273333, -0.749988,
		-0.390595, -0.920307, -0.021709,
		43.693394, 27.697117, 20.886282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230587, 28.418550, 20.891088>,  <43.966812, 28.341331, 20.901478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.230587, 28.418550, 20.891088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.261520, 28.042095, 21.022711>,  <43.280083, 27.816221, 21.101685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.261520, 28.042095, 21.022711>,  <43.230587, 28.418550, 20.891088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.261520, 28.042095, 21.022711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600118, 0.219619, 0.769173,
		-0.796165, -0.256958, -0.547809,
		0.077336, -0.941138, 0.329058,
		43.284721, 27.759754, 21.121428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.560486, 28.256985, 21.157063>,  <43.230587, 28.418550, 20.891088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.560486, 28.256985, 21.157063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.788223, 27.984221, 21.340733>,  <42.924866, 27.820562, 21.450935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.788223, 27.984221, 21.340733>,  <42.560486, 28.256985, 21.157063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788223, 27.984221, 21.340733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518317, 0.135791, 0.844339,
		-0.638115, -0.718721, -0.276134,
		0.569347, -0.681910, 0.459175,
		42.959026, 27.779648, 21.478485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.129490, 27.898790, 21.527351>,  <42.560486, 28.256985, 21.157063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.129490, 27.898790, 21.527351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.476810, 27.804113, 21.701717>,  <42.685204, 27.747307, 21.806337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.476810, 27.804113, 21.701717>,  <42.129490, 27.898790, 21.527351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.476810, 27.804113, 21.701717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463189, -0.072450, 0.883293,
		-0.177491, -0.968878, -0.172544,
		0.868305, -0.236698, 0.435915,
		42.737301, 27.733105, 21.832493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.853291, 27.404707, 22.006737>,  <42.129490, 27.898790, 21.527351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.853291, 27.404707, 22.006737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.226395, 27.477581, 22.131166>,  <42.450256, 27.521305, 22.205824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.226395, 27.477581, 22.131166>,  <41.853291, 27.404707, 22.006737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.226395, 27.477581, 22.131166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249758, -0.295671, 0.922063,
		0.259964, -0.937756, -0.230287,
		0.932759, 0.182187, 0.311076,
		42.506222, 27.532236, 22.224489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038303, 26.758564, 22.392721>,  <41.853291, 27.404707, 22.006737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.038303, 26.758564, 22.392721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.271862, 27.064123, 22.502651>,  <42.411995, 27.247459, 22.568609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.271862, 27.064123, 22.502651>,  <42.038303, 26.758564, 22.392721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.271862, 27.064123, 22.502651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265396, -0.140314, 0.953875,
		0.767224, -0.629899, 0.120807,
		0.583894, 0.763897, 0.274825,
		42.447029, 27.293293, 22.585098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.237545, 26.526617, 22.969084>,  <42.038303, 26.758564, 22.392721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.237545, 26.526617, 22.969084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.261700, 26.925299, 22.990742>,  <42.276192, 27.164509, 23.003736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.261700, 26.925299, 22.990742>,  <42.237545, 26.526617, 22.969084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261700, 26.925299, 22.990742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219529, -0.039654, 0.974800,
		0.973735, -0.070755, 0.216411,
		0.060390, 0.996705, 0.054145,
		42.279816, 27.224310, 23.006985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254215, 26.555437, 23.669973>,  <42.237545, 26.526617, 22.969084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254215, 26.555437, 23.669973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.231335, 26.943014, 23.573746>,  <42.217606, 27.175560, 23.516008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.231335, 26.943014, 23.573746>,  <42.254215, 26.555437, 23.669973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.231335, 26.943014, 23.573746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215260, 0.223328, 0.950678,
		0.974880, 0.106165, 0.195800,
		-0.057201, 0.968945, -0.240571,
		42.214172, 27.233698, 23.501574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.737041, 26.974895, 24.080847>,  <42.254215, 26.555437, 23.669973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.737041, 26.974895, 24.080847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.440006, 27.222464, 23.978477>,  <42.261784, 27.371004, 23.917055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.440006, 27.222464, 23.978477>,  <42.737041, 26.974895, 24.080847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440006, 27.222464, 23.978477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062292, 0.316642, 0.946498,
		0.666842, 0.718803, -0.196581,
		-0.742591, 0.618919, -0.255925,
		42.217228, 27.408140, 23.901699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.936913, 27.586779, 24.339907>,  <42.737041, 26.974895, 24.080847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.936913, 27.586779, 24.339907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.540092, 27.588943, 24.289606>,  <42.302002, 27.590242, 24.259426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.540092, 27.588943, 24.289606>,  <42.936913, 27.586779, 24.339907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.540092, 27.588943, 24.289606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113351, 0.395928, 0.911259,
		0.054720, 0.918266, -0.392166,
		-0.992047, 0.005412, -0.125752,
		42.242477, 27.590567, 24.251881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.739609, 28.165417, 24.743450>,  <42.936913, 27.586779, 24.339907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.739609, 28.165417, 24.743450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.388920, 27.985723, 24.674694>,  <42.178505, 27.877907, 24.633440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.388920, 27.985723, 24.674694>,  <42.739609, 28.165417, 24.743450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.388920, 27.985723, 24.674694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348626, 0.347274, 0.870552,
		-0.331388, 0.823158, -0.461078,
		-0.876722, -0.449234, -0.171892,
		42.125904, 27.850954, 24.623127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214191, 28.668285, 24.928856>,  <42.739609, 28.165417, 24.743450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.214191, 28.668285, 24.928856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.034252, 28.311045, 24.929548>,  <41.926289, 28.096701, 24.929964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.034252, 28.311045, 24.929548>,  <42.214191, 28.668285, 24.928856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.034252, 28.311045, 24.929548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382231, 0.194279, 0.903413,
		-0.807177, 0.405738, -0.428768,
		-0.449850, -0.893103, 0.001732,
		41.899296, 28.043114, 24.930067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.459518, 28.832472, 25.009510>,  <42.214191, 28.668285, 24.928856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.459518, 28.832472, 25.009510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.522533, 28.462282, 25.147310>,  <41.560345, 28.240170, 25.229990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.522533, 28.462282, 25.147310>,  <41.459518, 28.832472, 25.009510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.522533, 28.462282, 25.147310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300011, 0.287515, 0.909576,
		-0.940837, -0.246651, -0.232356,
		0.157542, -0.925472, 0.344503,
		41.569798, 28.184641, 25.250662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.036915, 28.845909, 25.568220>,  <41.459518, 28.832472, 25.009510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.036915, 28.845909, 25.568220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.224346, 28.496336, 25.619879>,  <41.336803, 28.286592, 25.650873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.224346, 28.496336, 25.619879>,  <41.036915, 28.845909, 25.568220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224346, 28.496336, 25.619879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251207, 0.008340, 0.967898,
		-0.846953, -0.485977, -0.215629,
		0.468578, -0.873932, 0.129144,
		41.364918, 28.234156, 25.658623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593254, 28.343182, 25.748627>,  <41.036915, 28.845909, 25.568220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593254, 28.343182, 25.748627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.951355, 28.224760, 25.881819>,  <41.166214, 28.153708, 25.961735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.951355, 28.224760, 25.881819>,  <40.593254, 28.343182, 25.748627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951355, 28.224760, 25.881819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397324, -0.192250, 0.897315,
		-0.201666, -0.935614, -0.289752,
		0.895245, -0.296084, 0.332972,
		41.219929, 28.135944, 25.981712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412281, 27.865980, 26.140154>,  <40.593254, 28.343182, 25.748627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412281, 27.865980, 26.140154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.783543, 27.911011, 26.282061>,  <41.006298, 27.938028, 26.367205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.783543, 27.911011, 26.282061>,  <40.412281, 27.865980, 26.140154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783543, 27.911011, 26.282061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348735, -0.070037, 0.934601,
		0.130061, -0.991171, -0.025746,
		0.928153, 0.112576, 0.354765,
		41.061989, 27.944784, 26.388491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506927, 27.326494, 26.557201>,  <40.412281, 27.865980, 26.140154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506927, 27.326494, 26.557201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.797142, 27.567026, 26.691065>,  <40.971272, 27.711346, 26.771383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.797142, 27.567026, 26.691065>,  <40.506927, 27.326494, 26.557201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.797142, 27.567026, 26.691065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390142, -0.041188, 0.919833,
		0.566906, -0.797939, 0.204721,
		0.725538, 0.601329, 0.334659,
		41.014805, 27.747425, 26.791462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541077, 27.118589, 27.147215>,  <40.506927, 27.326494, 26.557201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541077, 27.118589, 27.147215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.700027, 27.484585, 27.175177>,  <40.795399, 27.704182, 27.191954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.700027, 27.484585, 27.175177>,  <40.541077, 27.118589, 27.147215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700027, 27.484585, 27.175177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460550, 0.132968, 0.877618,
		0.793714, -0.380944, 0.474236,
		0.397381, 0.914987, 0.069905,
		40.819241, 27.759081, 27.196148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850952, 27.174431, 27.806993>,  <40.541077, 27.118589, 27.147215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850952, 27.174431, 27.806993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.769894, 27.549627, 27.694489>,  <40.721260, 27.774744, 27.626986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.769894, 27.549627, 27.694489>,  <40.850952, 27.174431, 27.806993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769894, 27.549627, 27.694489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343704, 0.200822, 0.917354,
		0.916953, 0.282568, 0.281695,
		-0.202645, 0.937990, -0.281264,
		40.709099, 27.831024, 27.610109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.434010, 29.773748, 32.170513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.076153, 29.818787, 31.997566>,  <41.861439, 29.845810, 31.893797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.076153, 29.818787, 31.997566>,  <42.434010, 29.773748, 32.170513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.076153, 29.818787, 31.997566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246431, 0.682863, 0.687728,
		0.372684, 0.721818, -0.583169,
		-0.894639, 0.112594, -0.432371,
		41.807762, 29.852566, 31.867855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.273174, 30.577412, 32.093658>,  <42.434010, 29.773748, 32.170513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.273174, 30.577412, 32.093658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.931534, 30.371161, 32.066437>,  <41.726547, 30.247410, 32.050102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.931534, 30.371161, 32.066437>,  <42.273174, 30.577412, 32.093658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931534, 30.371161, 32.066437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414129, 0.595070, 0.688759,
		-0.314645, 0.616457, -0.721789,
		-0.854105, -0.515628, -0.068057,
		41.675301, 30.216473, 32.046021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807423, 31.145477, 32.057606>,  <42.273174, 30.577412, 32.093658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.807423, 31.145477, 32.057606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.579357, 30.827608, 32.140945>,  <41.442520, 30.636887, 32.190948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.579357, 30.827608, 32.140945>,  <41.807423, 31.145477, 32.057606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.579357, 30.827608, 32.140945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596902, 0.574972, 0.559567,
		-0.564468, 0.194680, -0.802169,
		-0.570162, -0.794674, 0.208349,
		41.408310, 30.589207, 32.203449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162254, 31.303724, 31.937401>,  <41.807423, 31.145477, 32.057606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162254, 31.303724, 31.937401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.115967, 30.985765, 32.175644>,  <41.088196, 30.794991, 32.318588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.115967, 30.985765, 32.175644>,  <41.162254, 31.303724, 31.937401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115967, 30.985765, 32.175644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448428, 0.576856, 0.682751,
		-0.886297, -0.188082, -0.423205,
		-0.115716, -0.794898, 0.595607,
		41.081253, 30.747295, 32.354324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451065, 31.364845, 32.219395>,  <41.162254, 31.303724, 31.937401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451065, 31.364845, 32.219395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.600414, 31.081850, 32.459412>,  <40.690025, 30.912054, 32.603424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.600414, 31.081850, 32.459412>,  <40.451065, 31.364845, 32.219395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600414, 31.081850, 32.459412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509520, 0.384133, 0.769956,
		-0.775231, -0.593216, -0.217054,
		0.373372, -0.707487, 0.600047,
		40.712425, 30.869604, 32.639427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827480, 31.054249, 32.600811>,  <40.451065, 31.364845, 32.219395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827480, 31.054249, 32.600811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.183525, 31.034935, 32.782082>,  <40.397152, 31.023346, 32.890842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.183525, 31.034935, 32.782082>,  <39.827480, 31.054249, 32.600811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183525, 31.034935, 32.782082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398453, 0.400204, 0.825271,
		-0.221211, -0.915153, 0.336987,
		0.890113, -0.048285, 0.453175,
		40.450558, 31.020449, 32.918034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614979, 30.765839, 33.194000>,  <39.827480, 31.054249, 32.600811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614979, 30.765839, 33.194000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.957108, 30.966263, 33.246716>,  <40.162384, 31.086517, 33.278347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.957108, 30.966263, 33.246716>,  <39.614979, 30.765839, 33.194000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957108, 30.966263, 33.246716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437039, 0.561145, 0.702932,
		0.278255, -0.658830, 0.698940,
		0.855319, 0.501058, 0.131793,
		40.213703, 31.116581, 33.286255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644203, 30.863422, 33.868244>,  <39.614979, 30.765839, 33.194000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644203, 30.863422, 33.868244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.907021, 31.132996, 33.733124>,  <40.064709, 31.294741, 33.652050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.907021, 31.132996, 33.733124>,  <39.644203, 30.863422, 33.868244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907021, 31.132996, 33.733124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281545, 0.635049, 0.719337,
		0.699310, -0.377524, 0.606994,
		0.657037, 0.673935, -0.337806,
		40.104134, 31.335176, 33.631783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914814, 31.145914, 34.432621>,  <39.644203, 30.863422, 33.868244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914814, 31.145914, 34.432621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.007217, 31.420576, 34.156898>,  <40.062660, 31.585373, 33.991467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.007217, 31.420576, 34.156898>,  <39.914814, 31.145914, 34.432621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007217, 31.420576, 34.156898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246622, 0.726656, 0.641209,
		0.941176, 0.021873, 0.337207,
		0.231009, 0.686653, -0.689305,
		40.076519, 31.626572, 33.950108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395569, 31.689259, 34.771069>,  <39.914814, 31.145914, 34.432621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395569, 31.689259, 34.771069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.218964, 31.864494, 34.457855>,  <40.113003, 31.969635, 34.269928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.218964, 31.864494, 34.457855>,  <40.395569, 31.689259, 34.771069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218964, 31.864494, 34.457855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244223, 0.781076, 0.574696,
		0.863380, 0.444969, -0.237861,
		-0.441510, 0.438090, -0.783037,
		40.086510, 31.995922, 34.222942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528690, 32.370747, 34.907440>,  <40.395569, 31.689259, 34.771069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528690, 32.370747, 34.907440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.239483, 32.386185, 34.631538>,  <40.065960, 32.395447, 34.466000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.239483, 32.386185, 34.631538>,  <40.528690, 32.370747, 34.907440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239483, 32.386185, 34.631538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459469, 0.718722, 0.521849,
		0.515881, 0.694225, -0.501915,
		-0.723018, 0.038597, -0.689750,
		40.022579, 32.397762, 34.424614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377609, 33.110027, 34.721920>,  <40.528690, 32.370747, 34.907440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377609, 33.110027, 34.721920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.060219, 32.877258, 34.650631>,  <39.869785, 32.737598, 34.607857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.060219, 32.877258, 34.650631>,  <40.377609, 33.110027, 34.721920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060219, 32.877258, 34.650631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571153, 0.610874, 0.548286,
		-0.210188, 0.536843, -0.817080,
		-0.793477, -0.581921, -0.178221,
		39.822174, 32.702682, 34.597164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762707, 33.512234, 34.478329>,  <40.377609, 33.110027, 34.721920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762707, 33.512234, 34.478329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.647892, 33.181786, 34.672295>,  <39.579002, 32.983517, 34.788673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.647892, 33.181786, 34.672295>,  <39.762707, 33.512234, 34.478329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647892, 33.181786, 34.672295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450346, 0.563162, 0.692847,
		-0.845458, -0.019509, -0.533686,
		-0.287035, -0.826116, 0.484915,
		39.561783, 32.933952, 34.817768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799423, 33.926956, 35.152843>,  <39.762707, 33.512234, 34.478329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799423, 33.926956, 35.152843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.666973, 34.292595, 35.246460>,  <39.587502, 34.511978, 35.302631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.666973, 34.292595, 35.246460>,  <39.799423, 33.926956, 35.152843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666973, 34.292595, 35.246460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206974, 0.171635, -0.963173,
		-0.920606, -0.367375, 0.132362,
		-0.331128, 0.914099, 0.234045,
		39.567635, 34.566826, 35.316673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171688, 34.074364, 34.848843>,  <39.799423, 33.926956, 35.152843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171688, 34.074364, 34.848843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.336060, 34.434044, 34.908936>,  <39.434681, 34.649853, 34.944992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.336060, 34.434044, 34.908936>,  <39.171688, 34.074364, 34.848843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336060, 34.434044, 34.908936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126088, 0.219264, -0.967484,
		-0.902907, 0.378623, 0.203480,
		0.410927, 0.899204, 0.150235,
		39.459339, 34.703804, 34.954006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731010, 34.558277, 34.508415>,  <39.171688, 34.074364, 34.848843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731010, 34.558277, 34.508415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.079700, 34.749569, 34.551090>,  <39.288914, 34.864346, 34.576694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.079700, 34.749569, 34.551090>,  <38.731010, 34.558277, 34.508415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079700, 34.749569, 34.551090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092944, 0.375175, -0.922283,
		-0.481092, 0.794065, 0.371500,
		0.871730, 0.478231, 0.106689,
		39.341221, 34.893040, 34.583096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660213, 35.223408, 34.089260>,  <38.731010, 34.558277, 34.508415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660213, 35.223408, 34.089260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.048550, 35.142403, 34.140583>,  <39.281551, 35.093800, 34.171379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.048550, 35.142403, 34.140583>,  <38.660213, 35.223408, 34.089260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048550, 35.142403, 34.140583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185616, 0.296214, -0.936912,
		0.151727, 0.933406, 0.325165,
		0.970838, -0.202511, 0.128311,
		39.339802, 35.081650, 34.179077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951366, 35.882683, 33.856712>,  <38.660213, 35.223408, 34.089260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951366, 35.882683, 33.856712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.265316, 35.635357, 33.840370>,  <39.453686, 35.486961, 33.830566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.265316, 35.635357, 33.840370>,  <38.951366, 35.882683, 33.856712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265316, 35.635357, 33.840370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175136, 0.284590, -0.942516,
		0.594394, 0.732598, 0.331655,
		0.784871, -0.618311, -0.040854,
		39.500778, 35.449863, 33.828114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467247, 36.247314, 33.563492>,  <38.951366, 35.882683, 33.856712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467247, 36.247314, 33.563492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.603443, 35.872158, 33.536900>,  <39.685162, 35.647064, 33.520947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.603443, 35.872158, 33.536900>,  <39.467247, 36.247314, 33.563492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603443, 35.872158, 33.536900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248583, 0.157981, -0.955641,
		0.906793, 0.308860, 0.286935,
		0.340489, -0.937896, -0.066479,
		39.705589, 35.590790, 33.516956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121014, 36.369686, 33.453033>,  <39.467247, 36.247314, 33.563492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121014, 36.369686, 33.453033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.051250, 36.009605, 33.293423>,  <40.009392, 35.793556, 33.197655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.051250, 36.009605, 33.293423>,  <40.121014, 36.369686, 33.453033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051250, 36.009605, 33.293423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162122, 0.373456, -0.913371,
		0.971235, -0.223991, 0.080808,
		-0.174409, -0.900199, -0.399028,
		39.998928, 35.739544, 33.173714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652760, 36.233082, 32.990852>,  <40.121014, 36.369686, 33.453033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652760, 36.233082, 32.990852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.336952, 36.011097, 32.886021>,  <40.147469, 35.877907, 32.823124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.336952, 36.011097, 32.886021>,  <40.652760, 36.233082, 32.990852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336952, 36.011097, 32.886021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193578, 0.180048, -0.964422,
		0.582401, -0.812160, -0.034723,
		-0.789517, -0.554959, -0.262076,
		40.100098, 35.844608, 32.807400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965179, 35.809311, 32.392502>,  <40.652760, 36.233082, 32.990852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965179, 35.809311, 32.392502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.566845, 35.778927, 32.372314>,  <40.327847, 35.760696, 32.360203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.566845, 35.778927, 32.372314>,  <40.965179, 35.809311, 32.392502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566845, 35.778927, 32.372314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060037, -0.129525, -0.989757,
		0.068649, -0.988662, 0.133546,
		-0.995833, -0.075964, -0.050464,
		40.268097, 35.756138, 32.357174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757576, 35.159752, 31.976681>,  <40.965179, 35.809311, 32.392502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757576, 35.159752, 31.976681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.440224, 35.402802, 31.962090>,  <40.249813, 35.548634, 31.953335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.440224, 35.402802, 31.962090>,  <40.757576, 35.159752, 31.976681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440224, 35.402802, 31.962090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029046, -0.097649, -0.994797,
		-0.608028, -0.788196, 0.095122,
		-0.793384, 0.607628, -0.036479,
		40.202209, 35.585091, 31.951145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236637, 34.763508, 31.635319>,  <40.757576, 35.159752, 31.976681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236637, 34.763508, 31.635319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.140308, 35.150204, 31.600883>,  <40.082512, 35.382221, 31.580221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.140308, 35.150204, 31.600883>,  <40.236637, 34.763508, 31.635319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140308, 35.150204, 31.600883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058574, -0.074063, -0.995532,
		-0.968801, -0.244787, -0.038791,
		-0.240820, 0.966744, -0.086090,
		40.068062, 35.440228, 31.575056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639225, 34.713306, 31.241756>,  <40.236637, 34.763508, 31.635319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639225, 34.713306, 31.241756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.805954, 35.076038, 31.216732>,  <39.905991, 35.293678, 31.201717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.805954, 35.076038, 31.216732>,  <39.639225, 34.713306, 31.241756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805954, 35.076038, 31.216732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098516, -0.113487, -0.988643,
		-0.903633, 0.405927, -0.136642,
		0.416824, 0.906832, -0.062560,
		39.931000, 35.348087, 31.197964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211929, 35.081810, 30.815273>,  <39.639225, 34.713306, 31.241756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211929, 35.081810, 30.815273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.569962, 35.259525, 30.800121>,  <39.784782, 35.366154, 30.791029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.569962, 35.259525, 30.800121>,  <39.211929, 35.081810, 30.815273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569962, 35.259525, 30.800121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007078, -0.099103, -0.995052,
		-0.445842, 0.890386, -0.091850,
		0.895084, 0.444286, -0.037882,
		39.838486, 35.392811, 30.788757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243927, 35.332130, 30.134892>,  <39.211929, 35.081810, 30.815273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243927, 35.332130, 30.134892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.626770, 35.415886, 30.214993>,  <39.856476, 35.466141, 30.263054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.626770, 35.415886, 30.214993>,  <39.243927, 35.332130, 30.134892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626770, 35.415886, 30.214993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197637, 0.033563, -0.979700,
		-0.211862, 0.977256, -0.009261,
		0.957107, 0.209392, 0.200253,
		39.913902, 35.478703, 30.275068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500904, 35.786819, 29.537970>,  <39.243927, 35.332130, 30.134892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500904, 35.786819, 29.537970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.804001, 35.587269, 29.706236>,  <39.985859, 35.467541, 29.807196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.804001, 35.587269, 29.706236>,  <39.500904, 35.786819, 29.537970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804001, 35.587269, 29.706236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262481, -0.357186, -0.896394,
		0.597442, 0.789649, -0.139709,
		0.757738, -0.498872, 0.420666,
		40.031322, 35.437607, 29.832436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938293, 36.188549, 29.477325>,  <39.500904, 35.786819, 29.537970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938293, 36.188549, 29.477325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.685902, 36.100094, 29.179880>,  <38.534466, 36.047020, 29.001413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.685902, 36.100094, 29.179880>,  <38.938293, 36.188549, 29.477325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685902, 36.100094, 29.179880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773181, 0.100536, 0.626166,
		-0.063710, 0.970046, -0.234418,
		-0.630978, -0.221141, -0.743616,
		38.496609, 36.033752, 28.956795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465767, 36.654648, 29.605619>,  <38.938293, 36.188549, 29.477325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465767, 36.654648, 29.605619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.306465, 36.360405, 29.386429>,  <38.210884, 36.183861, 29.254913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.306465, 36.360405, 29.386429>,  <38.465767, 36.654648, 29.605619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306465, 36.360405, 29.386429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842868, 0.057779, 0.535009,
		-0.361893, 0.674943, -0.643028,
		-0.398255, -0.735604, -0.547978,
		38.186989, 36.139725, 29.222036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798237, 36.928299, 29.331766>,  <38.465767, 36.654648, 29.605619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798237, 36.928299, 29.331766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.789608, 36.528446, 29.338232>,  <37.784431, 36.288532, 29.342112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.789608, 36.528446, 29.338232>,  <37.798237, 36.928299, 29.331766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789608, 36.528446, 29.338232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868713, 0.026745, 0.494594,
		-0.494847, -0.003374, -0.868974,
		-0.021572, -0.999637, 0.016166,
		37.783138, 36.228554, 29.343082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182766, 36.632721, 28.930901>,  <37.798237, 36.928299, 29.331766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182766, 36.632721, 28.930901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.289265, 36.396713, 29.235792>,  <37.353165, 36.255108, 29.418728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.289265, 36.396713, 29.235792>,  <37.182766, 36.632721, 28.930901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289265, 36.396713, 29.235792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881281, 0.171323, 0.440446,
		-0.390458, -0.789005, -0.474356,
		0.266247, -0.590017, 0.762229,
		37.369137, 36.219707, 29.464460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548962, 36.549397, 29.152367>,  <37.182766, 36.632721, 28.930901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548962, 36.549397, 29.152367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.776108, 36.351051, 29.415165>,  <36.912395, 36.232044, 29.572844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.776108, 36.351051, 29.415165>,  <36.548962, 36.549397, 29.152367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776108, 36.351051, 29.415165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737620, 0.047666, 0.673531,
		-0.365298, -0.867090, -0.338693,
		0.567868, -0.495866, 0.656995,
		36.946468, 36.202293, 29.612263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196842, 35.935951, 29.329563>,  <36.548962, 36.549397, 29.152367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196842, 35.935951, 29.329563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.470520, 36.012444, 29.611076>,  <36.634727, 36.058338, 29.779985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.470520, 36.012444, 29.611076>,  <36.196842, 35.935951, 29.329563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470520, 36.012444, 29.611076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718621, 0.012223, 0.695295,
		0.124358, -0.981469, 0.145784,
		0.684192, 0.191229, 0.703784,
		36.675777, 36.069813, 29.822212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024277, 35.343529, 29.822760>,  <36.196842, 35.935951, 29.329563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024277, 35.343529, 29.822760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.231522, 35.613426, 30.033009>,  <36.355869, 35.775364, 30.159159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.231522, 35.613426, 30.033009>,  <36.024277, 35.343529, 29.822760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231522, 35.613426, 30.033009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662211, -0.072492, 0.745803,
		0.541331, -0.734481, 0.409266,
		0.518109, 0.674746, 0.525623,
		36.386955, 35.815849, 30.190695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006386, 35.161449, 30.498617>,  <36.024277, 35.343529, 29.822760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006386, 35.161449, 30.498617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.111748, 35.545670, 30.534328>,  <36.174965, 35.776199, 30.555756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.111748, 35.545670, 30.534328>,  <36.006386, 35.161449, 30.498617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111748, 35.545670, 30.534328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468485, 0.046468, 0.882248,
		0.843292, -0.274209, 0.462242,
		0.263400, 0.960547, 0.089277,
		36.190769, 35.833832, 30.561111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153595, 35.215290, 31.190083>,  <36.006386, 35.161449, 30.498617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153595, 35.215290, 31.190083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.129814, 35.609623, 31.127337>,  <36.115547, 35.846222, 31.089689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.129814, 35.609623, 31.127337>,  <36.153595, 35.215290, 31.190083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129814, 35.609623, 31.127337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428899, 0.116671, 0.895787,
		0.901394, 0.120535, 0.415885,
		-0.059452, 0.985829, -0.156864,
		36.111977, 35.905373, 31.080276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455032, 35.604198, 31.781937>,  <36.153595, 35.215290, 31.190083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455032, 35.604198, 31.781937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.224224, 35.874710, 31.598770>,  <36.085739, 36.037018, 31.488871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.224224, 35.874710, 31.598770>,  <36.455032, 35.604198, 31.781937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224224, 35.874710, 31.598770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483413, 0.169112, 0.858902,
		0.658300, 0.716968, 0.229343,
		-0.577021, 0.676283, -0.457918,
		36.051117, 36.077595, 31.461395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462360, 36.215057, 32.204262>,  <36.455032, 35.604198, 31.781937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462360, 36.215057, 32.204262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.121792, 36.225533, 31.994730>,  <35.917450, 36.231815, 31.869011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.121792, 36.225533, 31.994730>,  <36.462360, 36.215057, 32.204262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121792, 36.225533, 31.994730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496993, 0.278834, 0.821736,
		0.167578, 0.959982, -0.224391,
		-0.851420, 0.026184, -0.523831,
		35.866367, 36.233387, 31.837582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349453, 36.927349, 32.097004>,  <36.462360, 36.215057, 32.204262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349453, 36.927349, 32.097004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.599911, 37.196697, 31.939772>,  <36.750187, 37.358307, 31.845432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.599911, 37.196697, 31.939772>,  <36.349453, 36.927349, 32.097004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599911, 37.196697, 31.939772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679433, 0.718530, 0.148615,
		0.382511, 0.174015, 0.907416,
		0.626144, 0.673375, -0.393077,
		36.787754, 37.398708, 31.821848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.545460, 36.400925, 25.650240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281460, 36.106419, 25.590481>,  <40.123058, 35.929714, 25.554626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281460, 36.106419, 25.590481>,  <40.545460, 36.400925, 25.650240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281460, 36.106419, 25.590481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503325, 0.285719, 0.815493,
		-0.557730, 0.613421, -0.559153,
		-0.660001, -0.736261, -0.149396,
		40.083458, 35.885540, 25.545662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936672, 36.696236, 25.785208>,  <40.545460, 36.400925, 25.650240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936672, 36.696236, 25.785208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853485, 36.305984, 25.813221>,  <39.803574, 36.071835, 25.830029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853485, 36.305984, 25.813221>,  <39.936672, 36.696236, 25.785208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853485, 36.305984, 25.813221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599742, 0.183747, 0.778811,
		-0.772697, 0.119963, -0.623336,
		-0.207964, -0.975626, 0.070034,
		39.791096, 36.013298, 25.834230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278431, 36.668224, 26.036856>,  <39.936672, 36.696236, 25.785208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278431, 36.668224, 26.036856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434952, 36.320534, 26.157736>,  <39.528862, 36.111919, 26.230263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434952, 36.320534, 26.157736>,  <39.278431, 36.668224, 26.036856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434952, 36.320534, 26.157736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554489, 0.039385, 0.831259,
		-0.734457, -0.492837, -0.466567,
		0.391299, -0.869230, 0.302199,
		39.552341, 36.059765, 26.248396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649639, 36.291981, 26.260172>,  <39.278431, 36.668224, 26.036856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649639, 36.291981, 26.260172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972309, 36.124096, 26.426603>,  <39.165909, 36.023365, 26.526463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972309, 36.124096, 26.426603>,  <38.649639, 36.291981, 26.260172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972309, 36.124096, 26.426603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462287, -0.009501, 0.886680,
		-0.368200, -0.907606, -0.201693,
		0.806672, -0.419715, 0.416076,
		39.214310, 35.998180, 26.551426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412025, 35.554066, 26.609451>,  <38.649639, 36.291981, 26.260172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412025, 35.554066, 26.609451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767479, 35.662601, 26.757343>,  <38.980751, 35.727722, 26.846079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767479, 35.662601, 26.757343>,  <38.412025, 35.554066, 26.609451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767479, 35.662601, 26.757343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366356, -0.064970, 0.928204,
		0.275878, -0.960289, 0.041672,
		0.888636, 0.271338, 0.369732,
		39.034069, 35.744003, 26.868263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647858, 35.037270, 27.040318>,  <38.412025, 35.554066, 26.609451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647858, 35.037270, 27.040318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847301, 35.354980, 27.179178>,  <38.966969, 35.545605, 27.262495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847301, 35.354980, 27.179178>,  <38.647858, 35.037270, 27.040318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847301, 35.354980, 27.179178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327124, -0.198458, 0.923907,
		0.802732, -0.574231, 0.160874,
		0.498609, 0.794275, 0.347153,
		38.996883, 35.593262, 27.283323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962082, 34.862194, 27.585459>,  <38.647858, 35.037270, 27.040318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962082, 34.862194, 27.585459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930550, 35.256809, 27.642778>,  <38.911633, 35.493576, 27.677170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930550, 35.256809, 27.642778>,  <38.962082, 34.862194, 27.585459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930550, 35.256809, 27.642778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176590, -0.155289, 0.971957,
		0.981123, 0.051312, 0.186454,
		-0.078827, 0.986536, 0.143297,
		38.906902, 35.552769, 27.685768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256897, 34.961903, 28.325832>,  <38.962082, 34.862194, 27.585459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256897, 34.961903, 28.325832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099136, 35.320667, 28.245842>,  <39.004478, 35.535927, 28.197847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099136, 35.320667, 28.245842>,  <39.256897, 34.961903, 28.325832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099136, 35.320667, 28.245842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342631, 0.058392, 0.937653,
		0.852671, 0.438333, 0.284280,
		-0.394405, 0.896914, -0.199976,
		38.980816, 35.589741, 28.185848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567471, 35.382004, 28.803381>,  <39.256897, 34.961903, 28.325832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567471, 35.382004, 28.803381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208546, 35.528500, 28.704828>,  <38.993191, 35.616398, 28.645697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208546, 35.528500, 28.704828>,  <39.567471, 35.382004, 28.803381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208546, 35.528500, 28.704828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208291, 0.140794, 0.967880,
		0.389167, 0.919807, -0.050050,
		-0.897309, 0.366242, -0.246380,
		38.939354, 35.638371, 28.630915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085186, 35.896858, 29.001228>,  <39.567471, 35.382004, 28.803381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085186, 35.896858, 29.001228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184696, 35.585468, 29.231739>,  <40.244404, 35.398636, 29.370045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184696, 35.585468, 29.231739>,  <40.085186, 35.896858, 29.001228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184696, 35.585468, 29.231739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511810, -0.399471, -0.760575,
		0.822291, 0.484155, 0.299051,
		0.248774, -0.778471, 0.576277,
		40.259327, 35.351929, 29.404621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816891, 35.788891, 28.965534>,  <40.085186, 35.896858, 29.001228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816891, 35.788891, 28.965534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684258, 35.441761, 29.113558>,  <40.604679, 35.233482, 29.202372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684258, 35.441761, 29.113558>,  <40.816891, 35.788891, 28.965534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684258, 35.441761, 29.113558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642389, -0.494952, -0.585115,
		0.690935, 0.043708, 0.721594,
		-0.331580, -0.867820, 0.370057,
		40.584782, 35.181416, 29.224575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359837, 35.248611, 29.133131>,  <40.816891, 35.788891, 28.965534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359837, 35.248611, 29.133131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053738, 35.019020, 29.016548>,  <40.870079, 34.881264, 28.946598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053738, 35.019020, 29.016548>,  <41.359837, 35.248611, 29.133131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053738, 35.019020, 29.016548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605479, -0.488004, -0.628687,
		0.218623, -0.657570, 0.720976,
		-0.765245, -0.573981, -0.291456,
		40.824165, 34.846825, 28.929111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613846, 34.556534, 28.979998>,  <41.359837, 35.248611, 29.133131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.613846, 34.556534, 28.979998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238781, 34.531376, 28.843273>,  <41.013741, 34.516281, 28.761238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238781, 34.531376, 28.843273>,  <41.613846, 34.556534, 28.979998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.238781, 34.531376, 28.843273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296552, -0.657663, -0.692485,
		-0.181239, -0.750681, 0.635319,
		-0.937662, -0.062900, -0.341810,
		40.957481, 34.512505, 28.740730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472134, 33.885479, 29.067879>,  <41.613846, 34.556534, 28.979998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472134, 33.885479, 29.067879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243549, 34.029049, 28.772690>,  <41.106400, 34.115192, 28.595577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243549, 34.029049, 28.772690>,  <41.472134, 33.885479, 29.067879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243549, 34.029049, 28.772690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328552, -0.723988, -0.606543,
		-0.751988, -0.589078, 0.295806,
		-0.571461, 0.358926, -0.737973,
		41.072109, 34.136726, 28.551298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.090775, 33.270020, 28.779037>,  <41.472134, 33.885479, 29.067879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.090775, 33.270020, 28.779037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064697, 33.557228, 28.501854>,  <41.049053, 33.729553, 28.335545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064697, 33.557228, 28.501854>,  <41.090775, 33.270020, 28.779037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064697, 33.557228, 28.501854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367270, -0.628423, -0.685709,
		-0.927827, -0.299204, -0.222743,
		-0.065190, 0.718026, -0.692957,
		41.045139, 33.772636, 28.293966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032242, 32.906448, 28.132532>,  <41.090775, 33.270020, 28.779037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032242, 32.906448, 28.132532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069920, 33.253395, 27.937059>,  <41.092525, 33.461563, 27.819777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069920, 33.253395, 27.937059>,  <41.032242, 32.906448, 28.132532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069920, 33.253395, 27.937059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219825, -0.496868, -0.839523,
		-0.970981, -0.028348, -0.237470,
		0.094193, 0.867363, -0.488681,
		41.098179, 33.513603, 27.790455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656158, 32.870029, 27.407719>,  <41.032242, 32.906448, 28.132532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656158, 32.870029, 27.407719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961052, 33.128899, 27.412855>,  <41.143986, 33.284222, 27.415937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961052, 33.128899, 27.412855>,  <40.656158, 32.870029, 27.407719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961052, 33.128899, 27.412855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341820, -0.385586, -0.857019,
		-0.549693, 0.657636, -0.515124,
		0.762231, 0.647177, 0.012839,
		41.189720, 33.323051, 27.416706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741646, 32.919441, 26.622770>,  <40.656158, 32.870029, 27.407719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741646, 32.919441, 26.622770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053181, 33.096397, 26.800629>,  <41.240101, 33.202572, 26.907343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053181, 33.096397, 26.800629>,  <40.741646, 32.919441, 26.622770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053181, 33.096397, 26.800629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610098, -0.369765, -0.700753,
		-0.145592, 0.817047, -0.557887,
		0.778835, 0.442390, 0.444644,
		41.286831, 33.229115, 26.934021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121090, 33.255466, 25.979692>,  <40.741646, 32.919441, 26.622770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121090, 33.255466, 25.979692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394390, 33.253139, 26.271755>,  <41.558372, 33.251743, 26.446993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394390, 33.253139, 26.271755>,  <41.121090, 33.255466, 25.979692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394390, 33.253139, 26.271755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727876, -0.073975, -0.681707,
		0.057980, 0.997243, -0.046308,
		0.683254, -0.005818, 0.730158,
		41.599365, 33.251392, 26.490803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644493, 33.754589, 25.819685>,  <41.121090, 33.255466, 25.979692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644493, 33.754589, 25.819685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794083, 33.468231, 26.055531>,  <41.883835, 33.296417, 26.197037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794083, 33.468231, 26.055531>,  <41.644493, 33.754589, 25.819685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794083, 33.468231, 26.055531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773201, -0.110409, -0.624476,
		0.512156, 0.689427, 0.512237,
		0.373975, -0.715891, 0.589612,
		41.906277, 33.253464, 26.232414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.332973, 33.985634, 26.042095>,  <41.644493, 33.754589, 25.819685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.332973, 33.985634, 26.042095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327515, 33.587708, 26.082413>,  <42.324238, 33.348953, 26.106604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327515, 33.587708, 26.082413>,  <42.332973, 33.985634, 26.042095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.327515, 33.587708, 26.082413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714550, -0.080215, -0.694970,
		0.699451, 0.062538, 0.711939,
		-0.013646, -0.994814, 0.100793,
		42.323421, 33.289265, 26.112650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066830, 33.710629, 25.888891>,  <42.332973, 33.985634, 26.042095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.066830, 33.710629, 25.888891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857006, 33.370079, 25.889095>,  <42.731113, 33.165749, 25.889217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857006, 33.370079, 25.889095>,  <43.066830, 33.710629, 25.888891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857006, 33.370079, 25.889095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662452, -0.408534, -0.627900,
		0.534786, -0.329033, 0.778294,
		-0.524559, -0.851374, 0.000510,
		42.699638, 33.114666, 25.889248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.485378, 33.254456, 26.126110>,  <43.066830, 33.710629, 25.888891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.485378, 33.254456, 26.126110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.223427, 33.033215, 25.920116>,  <43.066257, 32.900471, 25.796520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.223427, 33.033215, 25.920116>,  <43.485378, 33.254456, 26.126110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.223427, 33.033215, 25.920116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755582, -0.465591, -0.460782,
		0.015090, -0.690868, 0.722824,
		-0.654880, -0.553106, -0.514982,
		43.026962, 32.867283, 25.765621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.279503, 28.196877, 24.989155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.488884, 28.536993, 25.011089>,  <38.614513, 28.741062, 25.024250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.488884, 28.536993, 25.011089>,  <38.279503, 28.196877, 24.989155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488884, 28.536993, 25.011089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412294, 0.196440, 0.889620,
		0.745663, -0.488281, 0.453396,
		0.523450, 0.850290, 0.054837,
		38.645920, 28.792080, 25.027540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349163, 28.244087, 25.644258>,  <38.279503, 28.196877, 24.989155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349163, 28.244087, 25.644258> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.489243, 28.610823, 25.567560>,  <38.573292, 28.830864, 25.521542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.489243, 28.610823, 25.567560>,  <38.349163, 28.244087, 25.644258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489243, 28.610823, 25.567560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256981, 0.290899, 0.921596,
		0.900734, -0.273466, 0.337483,
		0.350198, 0.916839, -0.191747,
		38.594303, 28.885874, 25.510036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889244, 28.461502, 26.205984>,  <38.349163, 28.244087, 25.644258>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889244, 28.461502, 26.205984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.683266, 28.768469, 26.053198>,  <38.559677, 28.952648, 25.961525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.683266, 28.768469, 26.053198>,  <38.889244, 28.461502, 26.205984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683266, 28.768469, 26.053198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240413, 0.298414, 0.923662,
		0.822818, 0.567469, 0.030829,
		-0.514949, 0.767417, -0.381967,
		38.528782, 28.998693, 25.938608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082211, 28.934397, 26.693811>,  <38.889244, 28.461502, 26.205984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082211, 28.934397, 26.693811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.765415, 29.084089, 26.500851>,  <38.575340, 29.173904, 26.385075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.765415, 29.084089, 26.500851>,  <39.082211, 28.934397, 26.693811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765415, 29.084089, 26.500851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307573, 0.437986, 0.844729,
		0.527408, 0.817387, -0.231775,
		-0.791985, 0.374229, -0.482403,
		38.527821, 29.196358, 26.356131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048573, 29.599594, 26.920610>,  <39.082211, 28.934397, 26.693811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048573, 29.599594, 26.920610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.681282, 29.526693, 26.779961>,  <38.460907, 29.482954, 26.695572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.681282, 29.526693, 26.779961>,  <39.048573, 29.599594, 26.920610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681282, 29.526693, 26.779961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393160, 0.312451, 0.864754,
		-0.047736, 0.932287, -0.358555,
		-0.918230, -0.182250, -0.351623,
		38.405811, 29.472019, 26.674475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678303, 30.201298, 26.992113>,  <39.048573, 29.599594, 26.920610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678303, 30.201298, 26.992113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.380192, 29.936373, 26.961384>,  <38.201324, 29.777418, 26.942945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.380192, 29.936373, 26.961384>,  <38.678303, 30.201298, 26.992113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380192, 29.936373, 26.961384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348409, 0.288611, 0.891804,
		-0.568481, 0.691409, -0.445852,
		-0.745279, -0.662312, -0.076823,
		38.156609, 29.737679, 26.938337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098957, 30.582212, 27.092863>,  <38.678303, 30.201298, 26.992113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098957, 30.582212, 27.092863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.969227, 30.208881, 27.154459>,  <37.891388, 29.984882, 27.191416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.969227, 30.208881, 27.154459>,  <38.098957, 30.582212, 27.092863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969227, 30.208881, 27.154459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455260, 0.296704, 0.839467,
		-0.829186, 0.202159, -0.521135,
		-0.324328, -0.933327, 0.153988,
		37.871929, 29.928883, 27.200655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411972, 30.698250, 27.179785>,  <38.098957, 30.582212, 27.092863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411972, 30.698250, 27.179785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.538986, 30.351107, 27.332623>,  <37.615196, 30.142820, 27.424326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.538986, 30.351107, 27.332623>,  <37.411972, 30.698250, 27.179785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538986, 30.351107, 27.332623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405576, 0.239933, 0.882009,
		-0.857135, -0.435038, -0.275794,
		0.317535, -0.867856, 0.382096,
		37.634247, 30.090750, 27.447252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755165, 30.403582, 27.607552>,  <37.411972, 30.698250, 27.179785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755165, 30.403582, 27.607552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.098633, 30.236973, 27.727016>,  <37.304714, 30.137007, 27.798695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.098633, 30.236973, 27.727016>,  <36.755165, 30.403582, 27.607552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098633, 30.236973, 27.727016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165130, 0.326819, 0.930549,
		-0.485204, -0.848350, 0.211848,
		0.858667, -0.416523, 0.298662,
		37.356232, 30.112017, 27.816614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610367, 29.960861, 28.197754>,  <36.755165, 30.403582, 27.607552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610367, 29.960861, 28.197754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.997295, 30.049768, 28.246571>,  <37.229450, 30.103113, 28.275862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.997295, 30.049768, 28.246571>,  <36.610367, 29.960861, 28.197754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997295, 30.049768, 28.246571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192147, 0.328455, 0.924769,
		0.165460, -0.917995, 0.360428,
		0.967317, 0.222268, 0.122043,
		37.287491, 30.116449, 28.283184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681145, 29.776995, 28.805620>,  <36.610367, 29.960861, 28.197754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681145, 29.776995, 28.805620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.005371, 30.001759, 28.739599>,  <37.199905, 30.136618, 28.699986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.005371, 30.001759, 28.739599>,  <36.681145, 29.776995, 28.805620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005371, 30.001759, 28.739599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057784, 0.357189, 0.932243,
		0.582793, -0.746104, 0.321994,
		0.810563, 0.561911, -0.165055,
		37.248539, 30.170332, 28.690083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078503, 29.539286, 29.428514>,  <36.681145, 29.776995, 28.805620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078503, 29.539286, 29.428514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.232227, 29.876835, 29.278748>,  <37.324463, 30.079365, 29.188887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.232227, 29.876835, 29.278748>,  <37.078503, 29.539286, 29.428514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232227, 29.876835, 29.278748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122482, 0.448582, 0.885309,
		0.915043, -0.294374, 0.275753,
		0.384310, 0.843871, -0.374417,
		37.347519, 30.129995, 29.166422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584576, 29.712557, 29.841824>,  <37.078503, 29.539286, 29.428514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584576, 29.712557, 29.841824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.496750, 30.052301, 29.649834>,  <37.444054, 30.256149, 29.534639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.496750, 30.052301, 29.649834>,  <37.584576, 29.712557, 29.841824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496750, 30.052301, 29.649834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240472, 0.429686, 0.870370,
		0.945498, 0.306519, 0.109906,
		-0.219560, 0.849362, -0.479976,
		37.430882, 30.307110, 29.505840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104027, 30.205372, 30.110613>,  <37.584576, 29.712557, 29.841824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104027, 30.205372, 30.110613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.798290, 30.433001, 29.989326>,  <37.614849, 30.569578, 29.916555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.798290, 30.433001, 29.989326>,  <38.104027, 30.205372, 30.110613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798290, 30.433001, 29.989326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083078, 0.379408, 0.921492,
		0.639436, 0.729526, -0.242720,
		-0.764342, 0.569071, -0.303215,
		37.568989, 30.603722, 29.898361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752056, 30.247612, 30.422625>,  <38.104027, 30.205372, 30.110613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752056, 30.247612, 30.422625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.662121, 29.886343, 30.568901>,  <38.608158, 29.669582, 30.656666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.662121, 29.886343, 30.568901>,  <38.752056, 30.247612, 30.422625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662121, 29.886343, 30.568901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481804, -0.429257, -0.763940,
		0.846943, 0.004428, 0.531665,
		-0.224838, -0.903172, 0.365689,
		38.594669, 29.615391, 30.678608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365475, 29.922802, 30.288942>,  <38.752056, 30.247612, 30.422625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365475, 29.922802, 30.288942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.094456, 29.634525, 30.347647>,  <38.931847, 29.461559, 30.382870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.094456, 29.634525, 30.347647>,  <39.365475, 29.922802, 30.288942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094456, 29.634525, 30.347647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348782, -0.490523, -0.798585,
		0.647521, -0.489891, 0.583715,
		-0.677546, -0.720690, 0.146759,
		38.891193, 29.418318, 30.391674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769432, 29.310118, 30.416113>,  <39.365475, 29.922802, 30.288942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769432, 29.310118, 30.416113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.407063, 29.200027, 30.287390>,  <39.189640, 29.133972, 30.210155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.407063, 29.200027, 30.287390>,  <39.769432, 29.310118, 30.416113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407063, 29.200027, 30.287390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419415, -0.478532, -0.771426,
		0.058322, -0.833821, 0.548946,
		-0.905919, -0.275227, -0.321808,
		39.135288, 29.117460, 30.190847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863678, 28.643122, 30.305710>,  <39.769432, 29.310118, 30.416113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863678, 28.643122, 30.305710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.532345, 28.704556, 30.090200>,  <39.333546, 28.741415, 29.960896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.532345, 28.704556, 30.090200>,  <39.863678, 28.643122, 30.305710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532345, 28.704556, 30.090200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438694, -0.420315, -0.794282,
		-0.348444, -0.894286, 0.280783,
		-0.828332, 0.153585, -0.538774,
		39.283844, 28.750631, 29.928568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785385, 27.952806, 29.902409>,  <39.863678, 28.643122, 30.305710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785385, 27.952806, 29.902409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.555016, 28.230604, 29.729900>,  <39.416794, 28.397282, 29.626396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.555016, 28.230604, 29.729900>,  <39.785385, 27.952806, 29.902409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555016, 28.230604, 29.729900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346429, -0.270502, -0.898229,
		-0.740473, -0.666714, -0.084804,
		-0.575922, 0.694493, -0.431269,
		39.382240, 28.438951, 29.600519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462105, 27.563089, 29.490160>,  <39.785385, 27.952806, 29.902409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462105, 27.563089, 29.490160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.463459, 27.937214, 29.348637>,  <39.464272, 28.161688, 29.263723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.463459, 27.937214, 29.348637>,  <39.462105, 27.563089, 29.490160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463459, 27.937214, 29.348637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516907, -0.304512, -0.800050,
		-0.856035, -0.180179, -0.484500,
		0.003384, 0.935312, -0.353808,
		39.464474, 28.217808, 29.242495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228195, 27.565376, 28.743811>,  <39.462105, 27.563089, 29.490160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228195, 27.565376, 28.743811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.452202, 27.890831, 28.806265>,  <39.586605, 28.086103, 28.843739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.452202, 27.890831, 28.806265>,  <39.228195, 27.565376, 28.743811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452202, 27.890831, 28.806265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478929, -0.164151, -0.862369,
		-0.676026, 0.557718, -0.481601,
		0.560014, 0.813637, 0.156137,
		39.620205, 28.134922, 28.853106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245823, 27.822466, 27.997742>,  <39.228195, 27.565376, 28.743811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245823, 27.822466, 27.997742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.504910, 28.054832, 28.194920>,  <39.660362, 28.194252, 28.313227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.504910, 28.054832, 28.194920>,  <39.245823, 27.822466, 27.997742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504910, 28.054832, 28.194920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637457, -0.058867, -0.768234,
		-0.417263, 0.811830, -0.408440,
		0.647720, 0.580918, 0.492943,
		39.699226, 28.229109, 28.342802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389008, 28.370049, 27.536491>,  <39.245823, 27.822466, 27.997742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389008, 28.370049, 27.536491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.704567, 28.324282, 27.778000>,  <39.893902, 28.296822, 27.922905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.704567, 28.324282, 27.778000>,  <39.389008, 28.370049, 27.536491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704567, 28.324282, 27.778000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614420, 0.164441, -0.771652,
		-0.010996, 0.979729, 0.200027,
		0.788902, -0.114416, 0.603774,
		39.941238, 28.289957, 27.959131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932579, 28.774282, 27.270821>,  <39.389008, 28.370049, 27.536491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932579, 28.774282, 27.270821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.137733, 28.526871, 27.508936>,  <40.260826, 28.378424, 27.651804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.137733, 28.526871, 27.508936>,  <39.932579, 28.774282, 27.270821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137733, 28.526871, 27.508936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682842, -0.126308, -0.719565,
		0.520262, 0.775543, 0.357576,
		0.512889, -0.618530, 0.595286,
		40.291599, 28.341312, 27.687521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615685, 29.060394, 27.276503>,  <39.932579, 28.774282, 27.270821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615685, 29.060394, 27.276503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.634266, 28.672796, 27.373571>,  <40.645416, 28.440237, 27.431812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.634266, 28.672796, 27.373571>,  <40.615685, 29.060394, 27.276503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634266, 28.672796, 27.373571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581300, -0.171342, -0.795445,
		0.812362, 0.178015, 0.555318,
		0.046452, -0.968996, 0.242672,
		40.648201, 28.382097, 27.446373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296055, 29.004677, 27.284372>,  <40.615685, 29.060394, 27.276503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296055, 29.004677, 27.284372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.161533, 28.631220, 27.235033>,  <41.080822, 28.407146, 27.205429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.161533, 28.631220, 27.235033>,  <41.296055, 29.004677, 27.284372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161533, 28.631220, 27.235033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678516, -0.149385, -0.719235,
		0.653081, -0.325576, 0.683729,
		-0.336304, -0.933641, -0.123348,
		41.060642, 28.351128, 27.198029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.903461, 28.690205, 27.090681>,  <41.296055, 29.004677, 27.284372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.903461, 28.690205, 27.090681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.631508, 28.406467, 27.016291>,  <41.468334, 28.236225, 26.971657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.631508, 28.406467, 27.016291>,  <41.903461, 28.690205, 27.090681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631508, 28.406467, 27.016291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560229, -0.338787, -0.755888,
		0.473180, -0.618105, 0.627732,
		-0.679885, -0.709345, -0.185973,
		41.427544, 28.193665, 26.960499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.248280, 28.116385, 26.959085>,  <41.903461, 28.690205, 27.090681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.248280, 28.116385, 26.959085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.892902, 28.062889, 26.783459>,  <41.679676, 28.030792, 26.678083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.892902, 28.062889, 26.783459>,  <42.248280, 28.116385, 26.959085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.892902, 28.062889, 26.783459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458980, -0.261965, -0.848947,
		-0.001483, -0.955766, 0.294125,
		-0.888445, -0.133738, -0.439066,
		41.626369, 28.022768, 26.651739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.936481, 27.802582, 26.702692>,  <42.248280, 28.116385, 26.959085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.936481, 27.802582, 26.702692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.174469, 28.120241, 26.752239>,  <43.317261, 28.310837, 26.781967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.174469, 28.120241, 26.752239>,  <42.936481, 27.802582, 26.702692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.174469, 28.120241, 26.752239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208329, 0.003523, 0.978052,
		0.776283, -0.607713, 0.167540,
		0.594966, 0.794149, 0.123869,
		43.352959, 28.358486, 26.789400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.201057, 27.623539, 27.239569>,  <42.936481, 27.802582, 26.702692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.201057, 27.623539, 27.239569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.284637, 28.014708, 27.240683>,  <43.334785, 28.249409, 27.241350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.284637, 28.014708, 27.240683>,  <43.201057, 27.623539, 27.239569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.284637, 28.014708, 27.240683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194804, 0.038834, 0.980073,
		0.958327, -0.205331, 0.198617,
		0.208952, 0.977922, 0.002784,
		43.347324, 28.308084, 27.241518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.680416, 27.763718, 27.744473>,  <43.201057, 27.623539, 27.239569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.680416, 27.763718, 27.744473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.515141, 28.122940, 27.684116>,  <43.415974, 28.338474, 27.647902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.515141, 28.122940, 27.684116>,  <43.680416, 27.763718, 27.744473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.515141, 28.122940, 27.684116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314150, 0.014956, 0.949256,
		0.854741, 0.439628, 0.275945,
		-0.413192, 0.898056, -0.150893,
		43.391182, 28.392357, 27.638849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.922577, 28.212545, 28.339113>,  <43.680416, 27.763718, 27.744473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.922577, 28.212545, 28.339113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.583832, 28.369665, 28.195713>,  <43.380585, 28.463938, 28.109673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.583832, 28.369665, 28.195713>,  <43.922577, 28.212545, 28.339113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.583832, 28.369665, 28.195713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347971, 0.100498, 0.932103,
		0.402160, 0.914116, 0.051575,
		-0.846867, 0.392801, -0.358502,
		43.329773, 28.487505, 28.088163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.777946, 28.853191, 28.733335>,  <43.922577, 28.212545, 28.339113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.777946, 28.853191, 28.733335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.410938, 28.789154, 28.587717>,  <43.190735, 28.750732, 28.500345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.410938, 28.789154, 28.587717>,  <43.777946, 28.853191, 28.733335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.410938, 28.789154, 28.587717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388383, 0.163783, 0.906826,
		-0.085550, 0.973420, -0.212451,
		-0.917518, -0.160092, -0.364048,
		43.135681, 28.741127, 28.478502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.396877, 29.360014, 29.005701>,  <43.777946, 28.853191, 28.733335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.396877, 29.360014, 29.005701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.112820, 29.100014, 28.897486>,  <42.942383, 28.944014, 28.832558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.112820, 29.100014, 28.897486>,  <43.396877, 29.360014, 29.005701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.112820, 29.100014, 28.897486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509385, 0.209088, 0.834751,
		-0.486025, 0.730602, -0.479585,
		-0.710146, -0.650003, -0.270536,
		42.899776, 28.905012, 28.816324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.776199, 29.767111, 29.099934>,  <43.396877, 29.360014, 29.005701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.776199, 29.767111, 29.099934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.692951, 29.376837, 29.072435>,  <42.643002, 29.142673, 29.055937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.692951, 29.376837, 29.072435>,  <42.776199, 29.767111, 29.099934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.692951, 29.376837, 29.072435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592763, 0.069908, 0.802337,
		-0.778021, 0.207735, -0.592899,
		-0.208121, -0.975684, -0.068748,
		42.630516, 29.084131, 29.051811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089622, 29.664976, 29.207769>,  <42.776199, 29.767111, 29.099934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089622, 29.664976, 29.207769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.236946, 29.302828, 29.292292>,  <42.325340, 29.085539, 29.343006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.236946, 29.302828, 29.292292>,  <42.089622, 29.664976, 29.207769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.236946, 29.302828, 29.292292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550768, -0.029373, 0.834142,
		-0.749001, -0.423604, -0.509467,
		0.368311, -0.905371, 0.211307,
		42.347439, 29.031216, 29.355684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529598, 29.238451, 29.287271>,  <42.089622, 29.664976, 29.207769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529598, 29.238451, 29.287271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.830780, 29.061834, 29.482452>,  <42.011490, 28.955864, 29.599562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.830780, 29.061834, 29.482452>,  <41.529598, 29.238451, 29.287271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.830780, 29.061834, 29.482452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479396, 0.139929, 0.866371,
		-0.450818, -0.886262, -0.106313,
		0.752955, -0.441542, 0.487953,
		42.056667, 28.929371, 29.628838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136387, 28.966290, 29.819788>,  <41.529598, 29.238451, 29.287271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136387, 28.966290, 29.819788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.509613, 28.910431, 29.952387>,  <41.733547, 28.876917, 30.031946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.509613, 28.910431, 29.952387>,  <41.136387, 28.966290, 29.819788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.509613, 28.910431, 29.952387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260675, 0.372545, 0.890651,
		-0.247873, -0.917447, 0.311206,
		0.933064, -0.139645, 0.331499,
		41.789532, 28.868538, 30.051836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060230, 28.654367, 30.480476>,  <41.136387, 28.966290, 29.819788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060230, 28.654367, 30.480476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.437843, 28.785604, 30.494139>,  <41.664410, 28.864347, 30.502337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.437843, 28.785604, 30.494139>,  <41.060230, 28.654367, 30.480476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437843, 28.785604, 30.494139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116446, 0.234575, 0.965099,
		0.308631, -0.915057, 0.259650,
		0.944027, 0.328094, 0.034157,
		41.721050, 28.884031, 30.504387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333961, 28.307285, 31.118595>,  <41.060230, 28.654367, 30.480476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333961, 28.307285, 31.118595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.555748, 28.625175, 31.019817>,  <41.688820, 28.815910, 30.960550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.555748, 28.625175, 31.019817>,  <41.333961, 28.307285, 31.118595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.555748, 28.625175, 31.019817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080901, 0.346802, 0.934443,
		0.828268, -0.498135, 0.256582,
		0.554462, 0.794727, -0.246945,
		41.722088, 28.863594, 30.945734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.734234, 28.496582, 31.704966>,  <41.333961, 28.307285, 31.118595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.734234, 28.496582, 31.704966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.770344, 28.827127, 31.482624>,  <41.792011, 29.025455, 31.349218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.770344, 28.827127, 31.482624>,  <41.734234, 28.496582, 31.704966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.770344, 28.827127, 31.482624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158874, 0.562935, 0.811088,
		0.983163, 0.015088, 0.182108,
		0.090277, 0.826363, -0.555854,
		41.797428, 29.075037, 31.315868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205925, 29.062372, 32.117020>,  <41.734234, 28.496582, 31.704966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205925, 29.062372, 32.117020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.983673, 29.270174, 31.857359>,  <41.850323, 29.394855, 31.701563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.983673, 29.270174, 31.857359>,  <42.205925, 29.062372, 32.117020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983673, 29.270174, 31.857359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149973, 0.705333, 0.692829,
		0.817795, 0.482309, -0.313990,
		-0.555625, 0.519502, -0.649151,
		41.816986, 29.426025, 31.662613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.860065, 32.458004, 26.108089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.574982, 32.511444, 25.832642>,  <43.403931, 32.543507, 25.667374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.574982, 32.511444, 25.832642>,  <43.860065, 32.458004, 26.108089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.574982, 32.511444, 25.832642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641206, -0.273975, -0.716793,
		-0.284440, -0.952410, 0.109588,
		-0.712706, 0.133616, -0.688620,
		43.361168, 32.551525, 25.626057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.800247, 31.838837, 25.764578>,  <43.860065, 32.458004, 26.108089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.800247, 31.838837, 25.764578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.659927, 32.113258, 25.509619>,  <43.575737, 32.277912, 25.356644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.659927, 32.113258, 25.509619>,  <43.800247, 31.838837, 25.764578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.659927, 32.113258, 25.509619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565807, -0.387084, -0.728030,
		-0.746193, -0.616034, -0.252385,
		-0.350797, 0.686052, -0.637396,
		43.554688, 32.319073, 25.318399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.675644, 31.418392, 25.223415>,  <43.800247, 31.838837, 25.764578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.675644, 31.418392, 25.223415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.676456, 31.793394, 25.084229>,  <43.676945, 32.018394, 25.000717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.676456, 31.793394, 25.084229>,  <43.675644, 31.418392, 25.223415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.676456, 31.793394, 25.084229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536238, -0.294730, -0.790939,
		-0.844065, -0.184985, -0.503325,
		0.002033, 0.937505, -0.347967,
		43.677067, 32.074646, 24.979839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.392891, 31.407555, 24.651997>,  <43.675644, 31.418392, 25.223415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.392891, 31.407555, 24.651997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.637993, 31.723389, 24.638771>,  <43.785053, 31.912889, 24.630836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.637993, 31.723389, 24.638771>,  <43.392891, 31.407555, 24.651997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.637993, 31.723389, 24.638771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319600, -0.285851, -0.903408,
		-0.722768, 0.542997, -0.427506,
		0.612750, 0.789585, -0.033062,
		43.821819, 31.960264, 24.628853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.432400, 31.486273, 24.001171>,  <43.392891, 31.407555, 24.651997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.432400, 31.486273, 24.001171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.726551, 31.732904, 24.113628>,  <43.903042, 31.880884, 24.181103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.726551, 31.732904, 24.113628>,  <43.432400, 31.486273, 24.001171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.726551, 31.732904, 24.113628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529927, -0.264664, -0.805687,
		-0.422363, 0.741472, -0.521372,
		0.735382, 0.616581, 0.281142,
		43.947166, 31.917879, 24.197971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.534943, 31.921331, 23.417400>,  <43.432400, 31.486273, 24.001171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.534943, 31.921331, 23.417400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.858013, 31.910585, 23.653006>,  <44.051857, 31.904137, 23.794369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.858013, 31.910585, 23.653006>,  <43.534943, 31.921331, 23.417400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.858013, 31.910585, 23.653006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570164, -0.218957, -0.791815,
		0.150242, 0.975365, -0.161528,
		0.807676, -0.026866, 0.589014,
		44.100315, 31.902525, 23.829710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.962437, 32.275154, 23.021896>,  <43.534943, 31.921331, 23.417400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.962437, 32.275154, 23.021896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.193951, 32.064915, 23.271299>,  <44.332859, 31.938772, 23.420940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.193951, 32.064915, 23.271299>,  <43.962437, 32.275154, 23.021896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.193951, 32.064915, 23.271299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642767, -0.176507, -0.745450,
		0.501858, 0.832223, 0.235676,
		0.578783, -0.525595, 0.623507,
		44.367584, 31.907236, 23.458351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.667885, 32.498966, 23.009644>,  <43.962437, 32.275154, 23.021896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.667885, 32.498966, 23.009644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.732479, 32.137268, 23.167767>,  <44.771236, 31.920250, 23.262640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.732479, 32.137268, 23.167767>,  <44.667885, 32.498966, 23.009644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.732479, 32.137268, 23.167767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748373, -0.148916, -0.646346,
		0.643321, 0.400209, 0.652664,
		0.161481, -0.904244, 0.395306,
		44.780922, 31.865995, 23.286358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.360512, 32.474918, 23.046740>,  <44.667885, 32.498966, 23.009644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.360512, 32.474918, 23.046740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.264965, 32.086498, 23.047098>,  <45.207638, 31.853445, 23.047314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.264965, 32.086498, 23.047098>,  <45.360512, 32.474918, 23.046740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.264965, 32.086498, 23.047098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724560, -0.178847, -0.665603,
		0.646495, -0.158340, 0.746306,
		-0.238866, -0.971052, 0.000897,
		45.193306, 31.795183, 23.047367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.924374, 32.160324, 22.942533>,  <45.360512, 32.474918, 23.046740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.924374, 32.160324, 22.942533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.664581, 31.868877, 22.855553>,  <45.508705, 31.694008, 22.803364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.664581, 31.868877, 22.855553>,  <45.924374, 32.160324, 22.942533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.664581, 31.868877, 22.855553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628922, -0.354034, -0.692183,
		0.427352, -0.586322, 0.688184,
		-0.649482, -0.728620, -0.217453,
		45.469738, 31.650291, 22.790318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.231762, 31.565788, 23.060270>,  <45.924374, 32.160324, 22.942533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.231762, 31.565788, 23.060270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.969822, 31.533121, 22.759737>,  <45.812656, 31.513521, 22.579416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.969822, 31.533121, 22.759737>,  <46.231762, 31.565788, 23.060270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.969822, 31.533121, 22.759737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734421, -0.303334, -0.607136,
		-0.178321, -0.949378, 0.258617,
		-0.654849, -0.081668, -0.751334,
		45.773369, 31.508621, 22.534336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.520355, 31.041327, 22.653481>,  <46.231762, 31.565788, 23.060270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.520355, 31.041327, 22.653481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.270271, 31.260733, 22.431404>,  <46.120220, 31.392376, 22.298159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.270271, 31.260733, 22.431404>,  <46.520355, 31.041327, 22.653481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.270271, 31.260733, 22.431404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650344, -0.027114, -0.759156,
		-0.431463, -0.835700, -0.339773,
		-0.625215, 0.548517, -0.555191,
		46.082706, 31.425287, 22.264847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.271362, 30.683811, 21.997879>,  <46.520355, 31.041327, 22.653481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.271362, 30.683811, 21.997879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.285892, 31.080158, 21.945942>,  <46.294609, 31.317966, 21.914780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.285892, 31.080158, 21.945942>,  <46.271362, 30.683811, 21.997879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.285892, 31.080158, 21.945942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718307, -0.116218, -0.685951,
		-0.694778, -0.068353, -0.715969,
		0.036321, 0.990869, -0.129844,
		46.296787, 31.377419, 21.906988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.107006, 30.151846, 21.614368>,  <46.271362, 30.683811, 21.997879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.107006, 30.151846, 21.614368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.049526, 29.767496, 21.519655>,  <46.015038, 29.536886, 21.462828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.049526, 29.767496, 21.519655>,  <46.107006, 30.151846, 21.614368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.049526, 29.767496, 21.519655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788422, -0.033449, 0.614225,
		-0.598114, 0.274951, -0.752769,
		-0.143702, -0.960876, -0.236784,
		46.006416, 29.479233, 21.448620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.381496, 29.996635, 21.576334>,  <46.107006, 30.151846, 21.614368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.381496, 29.996635, 21.576334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.569458, 29.649548, 21.641151>,  <45.682236, 29.441296, 21.680042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.569458, 29.649548, 21.641151>,  <45.381496, 29.996635, 21.576334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.569458, 29.649548, 21.641151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703042, -0.256884, 0.663131,
		-0.533785, -0.425530, -0.730752,
		0.469901, -0.867718, 0.162044,
		45.710426, 29.389233, 21.689764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.860641, 29.399172, 21.387192>,  <45.381496, 29.996635, 21.576334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.860641, 29.399172, 21.387192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.143242, 29.289824, 21.648302>,  <45.312801, 29.224215, 21.804968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.143242, 29.289824, 21.648302>,  <44.860641, 29.399172, 21.387192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.143242, 29.289824, 21.648302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706869, -0.227694, 0.669695,
		-0.034441, -0.934572, -0.354104,
		0.706506, -0.273370, 0.652778,
		45.355194, 29.207811, 21.844135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.538017, 28.888309, 21.692505>,  <44.860641, 29.399172, 21.387192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.538017, 28.888309, 21.692505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.854286, 28.926104, 21.934465>,  <45.044048, 28.948780, 22.079641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.854286, 28.926104, 21.934465>,  <44.538017, 28.888309, 21.692505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.854286, 28.926104, 21.934465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577642, -0.212283, 0.788204,
		0.202883, -0.972630, -0.113269,
		0.790676, 0.094484, 0.604900,
		45.091488, 28.954449, 22.115936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.542831, 28.291872, 22.121637>,  <44.538017, 28.888309, 21.692505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.542831, 28.291872, 22.121637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.750954, 28.577045, 22.309683>,  <44.875828, 28.748150, 22.422510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.750954, 28.577045, 22.309683>,  <44.542831, 28.291872, 22.121637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.750954, 28.577045, 22.309683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388623, -0.292519, 0.873730,
		0.760428, -0.637306, 0.124862,
		0.520309, 0.712933, 0.470111,
		44.907047, 28.790926, 22.450716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.803535, 27.978342, 22.792124>,  <44.542831, 28.291872, 22.121637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.803535, 27.978342, 22.792124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.837898, 28.363846, 22.893150>,  <44.858517, 28.595148, 22.953766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.837898, 28.363846, 22.893150>,  <44.803535, 27.978342, 22.792124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.837898, 28.363846, 22.893150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291910, -0.218029, 0.931263,
		0.952580, -0.153730, 0.262601,
		0.085908, 0.963758, 0.252565,
		44.863670, 28.652973, 22.968920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.208500, 28.064568, 23.395109>,  <44.803535, 27.978342, 22.792124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.208500, 28.064568, 23.395109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.004959, 28.408836, 23.387993>,  <44.882835, 28.615398, 23.383722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.004959, 28.408836, 23.387993>,  <45.208500, 28.064568, 23.395109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.004959, 28.408836, 23.387993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297898, -0.156657, 0.941656,
		0.807670, 0.484460, 0.336107,
		-0.508848, 0.860673, -0.017792,
		44.852306, 28.667038, 23.382654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.430763, 28.487526, 24.020145>,  <45.208500, 28.064568, 23.395109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.430763, 28.487526, 24.020145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.089432, 28.659496, 23.902163>,  <44.884632, 28.762678, 23.831373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.089432, 28.659496, 23.902163>,  <45.430763, 28.487526, 24.020145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.089432, 28.659496, 23.902163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335109, -0.018862, 0.941990,
		0.399423, 0.902667, 0.160168,
		-0.853325, 0.429926, -0.294958,
		44.833435, 28.788475, 23.813675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.353607, 28.804993, 24.582243>,  <45.430763, 28.487526, 24.020145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.353607, 28.804993, 24.582243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.993282, 28.824286, 24.409637>,  <44.777088, 28.835861, 24.306074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.993282, 28.824286, 24.409637>,  <45.353607, 28.804993, 24.582243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.993282, 28.824286, 24.409637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434195, -0.095341, 0.895759,
		0.002062, 0.994276, 0.106826,
		-0.900816, 0.048231, -0.431513,
		44.723038, 28.838755, 24.280184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.065865, 29.310188, 24.896225>,  <45.353607, 28.804993, 24.582243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.065865, 29.310188, 24.896225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.774086, 29.077042, 24.753023>,  <44.599018, 28.937153, 24.667103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.774086, 29.077042, 24.753023>,  <45.065865, 29.310188, 24.896225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.774086, 29.077042, 24.753023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510639, 0.115771, 0.851965,
		-0.455137, 0.804277, -0.382084,
		-0.729450, -0.582869, -0.358004,
		44.555252, 28.902182, 24.645622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.477638, 29.527763, 25.230356>,  <45.065865, 29.310188, 24.896225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.477638, 29.527763, 25.230356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.333893, 29.179949, 25.094849>,  <44.247646, 28.971260, 25.013544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.333893, 29.179949, 25.094849>,  <44.477638, 29.527763, 25.230356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.333893, 29.179949, 25.094849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534734, -0.105636, 0.838392,
		-0.764798, 0.482439, -0.427008,
		-0.359366, -0.869536, -0.338767,
		44.226082, 28.919088, 24.993219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.817059, 29.658146, 25.336000>,  <44.477638, 29.527763, 25.230356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.817059, 29.658146, 25.336000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.884003, 29.263788, 25.335625>,  <43.924168, 29.027174, 25.335400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.884003, 29.263788, 25.335625>,  <43.817059, 29.658146, 25.336000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.884003, 29.263788, 25.335625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373350, -0.064256, 0.925463,
		-0.912470, -0.154533, -0.378838,
		0.167357, -0.985896, -0.000937,
		43.934208, 28.968019, 25.335344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.268230, 29.373953, 25.554197>,  <43.817059, 29.658146, 25.336000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.268230, 29.373953, 25.554197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.512035, 29.061533, 25.608530>,  <43.658318, 28.874081, 25.641130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.512035, 29.061533, 25.608530>,  <43.268230, 29.373953, 25.554197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.512035, 29.061533, 25.608530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396185, -0.151692, 0.905553,
		-0.686678, -0.605764, -0.401899,
		0.609517, -0.781050, 0.135831,
		43.694889, 28.827217, 25.649279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.820381, 28.846872, 25.778765>,  <43.268230, 29.373953, 25.554197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.820381, 28.846872, 25.778765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.193035, 28.762644, 25.897228>,  <43.416630, 28.712107, 25.968306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.193035, 28.762644, 25.897228>,  <42.820381, 28.846872, 25.778765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.193035, 28.762644, 25.897228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332763, -0.166892, 0.928125,
		-0.146000, -0.963230, -0.225550,
		0.931640, -0.210561, 0.296161,
		43.472527, 28.699472, 25.986076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.757950, 28.212013, 26.122126>,  <42.820381, 28.846872, 25.778765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.757950, 28.212013, 26.122126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.088615, 28.383600, 26.267790>,  <43.287014, 28.486551, 26.355188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.088615, 28.383600, 26.267790>,  <42.757950, 28.212013, 26.122126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.088615, 28.383600, 26.267790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229346, -0.334116, 0.914203,
		0.513833, -0.839259, -0.177821,
		0.826665, 0.428965, 0.364161,
		43.336617, 28.512289, 26.377039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.319931, 27.616922, 26.395775>,  <42.757950, 28.212013, 26.122126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.319931, 27.616922, 26.395775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.974945, 27.785965, 26.284382>,  <41.767952, 27.887390, 26.217546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.974945, 27.785965, 26.284382>,  <42.319931, 27.616922, 26.395775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.974945, 27.785965, 26.284382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199535, -0.221747, -0.954471,
		-0.465119, -0.878767, 0.106925,
		-0.862467, 0.422608, -0.278484,
		41.716206, 27.912746, 26.200836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199596, 27.316668, 25.904043>,  <42.319931, 27.616922, 26.395775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.199596, 27.316668, 25.904043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.912895, 27.586203, 25.832253>,  <41.740875, 27.747923, 25.789177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.912895, 27.586203, 25.832253>,  <42.199596, 27.316668, 25.904043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912895, 27.586203, 25.832253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157578, -0.094212, -0.983002,
		-0.679293, -0.732848, -0.038656,
		-0.716749, 0.673838, -0.179479,
		41.697872, 27.788355, 25.778408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612804, 26.928009, 25.552811>,  <42.199596, 27.316668, 25.904043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612804, 26.928009, 25.552811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.625919, 27.318218, 25.465834>,  <41.633789, 27.552343, 25.413649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.625919, 27.318218, 25.465834>,  <41.612804, 26.928009, 25.552811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625919, 27.318218, 25.465834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032621, -0.218486, -0.975294,
		-0.998930, 0.024882, -0.038986,
		0.032785, 0.975523, -0.217441,
		41.635754, 27.610874, 25.400602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156925, 26.934650, 25.025032>,  <41.612804, 26.928009, 25.552811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156925, 26.934650, 25.025032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.357243, 27.279671, 24.996159>,  <41.477432, 27.486683, 24.978834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.357243, 27.279671, 24.996159>,  <41.156925, 26.934650, 25.025032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.357243, 27.279671, 24.996159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165031, -0.177018, -0.970273,
		-0.849686, 0.473997, -0.230997,
		0.500797, 0.862549, -0.072185,
		41.507481, 27.538435, 24.974503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935375, 27.220428, 24.462189>,  <41.156925, 26.934650, 25.025032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935375, 27.220428, 24.462189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.284851, 27.407276, 24.516550>,  <41.494537, 27.519384, 24.549166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.284851, 27.407276, 24.516550>,  <40.935375, 27.220428, 24.462189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.284851, 27.407276, 24.516550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150777, 0.005594, -0.988552,
		-0.462532, 0.884176, -0.065543,
		0.873688, 0.467119, 0.135901,
		41.546959, 27.547413, 24.557320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986118, 27.677685, 23.819740>,  <40.935375, 27.220428, 24.462189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986118, 27.677685, 23.819740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.354549, 27.664204, 23.974909>,  <41.575607, 27.656115, 24.068010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.354549, 27.664204, 23.974909>,  <40.986118, 27.677685, 23.819740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354549, 27.664204, 23.974909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388933, 0.031808, -0.920717,
		0.018694, 0.998926, 0.042407,
		0.921076, -0.033705, 0.387921,
		41.630871, 27.654093, 24.091286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257008, 28.117163, 23.374617>,  <40.986118, 27.677685, 23.819740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257008, 28.117163, 23.374617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.557518, 27.919628, 23.549755>,  <41.737823, 27.801107, 23.654839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.557518, 27.919628, 23.549755>,  <41.257008, 28.117163, 23.374617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557518, 27.919628, 23.549755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503967, 0.000895, -0.863722,
		0.426145, 0.869555, 0.249550,
		0.751277, -0.493836, 0.437845,
		41.782902, 27.771477, 23.681108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902832, 28.850965, 23.205173>,  <41.257008, 28.117163, 23.374617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902832, 28.850965, 23.205173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.599106, 28.821548, 22.946550>,  <40.416870, 28.803898, 22.791376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.599106, 28.821548, 22.946550>,  <40.902832, 28.850965, 23.205173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599106, 28.821548, 22.946550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642240, 0.244629, 0.726419,
		0.104743, 0.966824, -0.232982,
		-0.759314, -0.073542, -0.646556,
		40.371311, 28.799486, 22.752584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596447, 29.495621, 23.241133>,  <40.902832, 28.850965, 23.205173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596447, 29.495621, 23.241133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.314034, 29.256115, 23.089872>,  <40.144585, 29.112411, 22.999115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.314034, 29.256115, 23.089872>,  <40.596447, 29.495621, 23.241133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314034, 29.256115, 23.089872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618693, 0.261697, 0.740765,
		-0.344583, 0.756965, -0.555218,
		-0.706032, -0.598764, -0.378152,
		40.102222, 29.076485, 22.976427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041817, 29.929453, 23.357960>,  <40.596447, 29.495621, 23.241133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041817, 29.929453, 23.357960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.901566, 29.560843, 23.291203>,  <39.817417, 29.339676, 23.251148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.901566, 29.560843, 23.291203>,  <40.041817, 29.929453, 23.357960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901566, 29.560843, 23.291203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592498, 0.080270, 0.801563,
		-0.725264, 0.379931, -0.574147,
		-0.350626, -0.921525, -0.166891,
		39.796379, 29.284386, 23.241135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312592, 29.963211, 23.369387>,  <40.041817, 29.929453, 23.357960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312592, 29.963211, 23.369387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.405491, 29.578297, 23.426044>,  <39.461231, 29.347347, 23.460039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.405491, 29.578297, 23.426044>,  <39.312592, 29.963211, 23.369387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405491, 29.578297, 23.426044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457555, 0.020416, 0.888947,
		-0.858314, -0.271267, -0.435558,
		0.232249, -0.962288, 0.141643,
		39.475166, 29.289610, 23.468538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687260, 29.611694, 23.460560>,  <39.312592, 29.963211, 23.369387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687260, 29.611694, 23.460560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.942646, 29.349890, 23.622538>,  <39.095879, 29.192806, 23.719725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.942646, 29.349890, 23.622538>,  <38.687260, 29.611694, 23.460560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942646, 29.349890, 23.622538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527877, 0.010499, 0.849256,
		-0.560100, -0.755978, -0.338799,
		0.638462, -0.654513, 0.404945,
		39.134186, 29.153536, 23.744020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263199, 29.206066, 23.819469>,  <38.687260, 29.611694, 23.460560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263199, 29.206066, 23.819469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.623531, 29.136574, 23.978628>,  <38.839729, 29.094879, 24.074123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.623531, 29.136574, 23.978628>,  <38.263199, 29.206066, 23.819469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623531, 29.136574, 23.978628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405990, -0.012276, 0.913795,
		-0.153872, -0.984716, -0.081593,
		0.900831, -0.173733, 0.397896,
		38.893780, 29.084455, 24.097998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165173, 28.612774, 24.341080>,  <38.263199, 29.206066, 23.819469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165173, 28.612774, 24.341080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.513134, 28.773287, 24.455786>,  <38.721912, 28.869595, 24.524609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.513134, 28.773287, 24.455786>,  <38.165173, 28.612774, 24.341080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513134, 28.773287, 24.455786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344099, 0.077235, 0.935752,
		0.353355, -0.912691, 0.205268,
		0.869906, 0.401285, 0.286765,
		38.774105, 28.893671, 24.541815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.895638, 31.624880, 20.731302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.154495, 31.713535, 21.023079>,  <43.309811, 31.766729, 21.198145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.154495, 31.713535, 21.023079>,  <42.895638, 31.624880, 20.731302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.154495, 31.713535, 21.023079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645710, 0.668014, 0.369886,
		-0.405294, -0.710376, 0.575415,
		0.647143, 0.221639, 0.729439,
		43.348637, 31.780027, 21.241911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418583, 31.684393, 21.412460>,  <42.895638, 31.624880, 20.731302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418583, 31.684393, 21.412460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.766628, 31.875555, 21.460630>,  <42.975456, 31.990252, 21.489532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.766628, 31.875555, 21.460630>,  <42.418583, 31.684393, 21.412460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.766628, 31.875555, 21.460630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487444, 0.798418, 0.353451,
		0.072766, -0.366245, 0.927669,
		0.870117, 0.477906, 0.120426,
		43.027664, 32.018929, 21.496758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.367638, 31.880133, 22.043060>,  <42.418583, 31.684393, 21.412460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.367638, 31.880133, 22.043060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.644760, 32.130630, 21.900042>,  <42.811035, 32.280930, 21.814230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.644760, 32.130630, 21.900042>,  <42.367638, 31.880133, 22.043060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644760, 32.130630, 21.900042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453856, 0.763965, 0.458664,
		0.560388, -0.155491, 0.813504,
		0.692806, 0.626243, -0.357546,
		42.852604, 32.318504, 21.792778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.643150, 32.176926, 22.652023>,  <42.367638, 31.880133, 22.043060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.643150, 32.176926, 22.652023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.750198, 32.417850, 22.351198>,  <42.814426, 32.562405, 22.170704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.750198, 32.417850, 22.351198>,  <42.643150, 32.176926, 22.652023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.750198, 32.417850, 22.351198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309980, 0.792859, 0.524679,
		0.912299, 0.092708, 0.398893,
		0.267624, 0.602312, -0.752062,
		42.830486, 32.598545, 22.125580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.865978, 32.791973, 22.957733>,  <42.643150, 32.176926, 22.652023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.865978, 32.791973, 22.957733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.781521, 32.880867, 22.576990>,  <42.730846, 32.934204, 22.348545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.781521, 32.880867, 22.576990>,  <42.865978, 32.791973, 22.957733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.781521, 32.880867, 22.576990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177022, 0.949014, 0.260835,
		0.961293, 0.223572, -0.161034,
		-0.211139, 0.222232, -0.951858,
		42.718178, 32.947536, 22.291433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.131119, 33.436661, 22.864117>,  <42.865978, 32.791973, 22.957733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.131119, 33.436661, 22.864117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.846291, 33.377270, 22.589624>,  <42.675396, 33.341637, 22.424929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.846291, 33.377270, 22.589624>,  <43.131119, 33.436661, 22.864117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.846291, 33.377270, 22.589624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467206, 0.829778, 0.305266,
		0.524096, 0.537982, -0.660226,
		-0.712069, -0.148473, -0.686232,
		42.632671, 33.332729, 22.383755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.921833, 34.092896, 22.708958>,  <43.131119, 33.436661, 22.864117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.921833, 34.092896, 22.708958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.624611, 33.883488, 22.542202>,  <42.446278, 33.757843, 22.442148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.624611, 33.883488, 22.542202>,  <42.921833, 34.092896, 22.708958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624611, 33.883488, 22.542202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661774, 0.667528, 0.341266,
		0.099627, 0.529466, -0.842461,
		-0.743055, -0.523519, -0.416891,
		42.401695, 33.726433, 22.417135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.378101, 34.621864, 22.423407>,  <42.921833, 34.092896, 22.708958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.378101, 34.621864, 22.423407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.212425, 34.266613, 22.503086>,  <42.113018, 34.053463, 22.550894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.212425, 34.266613, 22.503086>,  <42.378101, 34.621864, 22.423407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.212425, 34.266613, 22.503086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730460, 0.454914, 0.509393,
		-0.543023, 0.065479, -0.837161,
		-0.414191, -0.888125, 0.199199,
		42.088169, 34.000175, 22.562845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667938, 34.707706, 22.280849>,  <42.378101, 34.621864, 22.423407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667938, 34.707706, 22.280849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.676773, 34.379230, 22.508942>,  <41.682076, 34.182144, 22.645798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.676773, 34.379230, 22.508942>,  <41.667938, 34.707706, 22.280849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676773, 34.379230, 22.508942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651291, 0.420916, 0.631388,
		-0.758507, -0.385332, -0.525535,
		0.022088, -0.821188, 0.570231,
		41.683399, 34.132874, 22.680012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061836, 34.557804, 22.422571>,  <41.667938, 34.707706, 22.280849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061836, 34.557804, 22.422571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.240101, 34.386017, 22.736753>,  <41.347061, 34.282944, 22.925262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.240101, 34.386017, 22.736753>,  <41.061836, 34.557804, 22.422571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240101, 34.386017, 22.736753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553421, 0.557479, 0.618823,
		-0.703640, -0.710475, 0.010773,
		0.445665, -0.429466, 0.785457,
		41.373798, 34.257175, 22.972391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609264, 34.603615, 22.871326>,  <41.061836, 34.557804, 22.422571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609264, 34.603615, 22.871326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.915306, 34.505035, 23.109280>,  <41.098930, 34.445889, 23.252050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.915306, 34.505035, 23.109280>,  <40.609264, 34.603615, 22.871326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915306, 34.505035, 23.109280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462412, 0.432626, 0.773957,
		-0.448103, -0.867235, 0.217041,
		0.765101, -0.246450, 0.594881,
		41.144836, 34.431099, 23.287745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436531, 34.119179, 23.362444>,  <40.609264, 34.603615, 22.871326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436531, 34.119179, 23.362444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.746651, 34.282700, 23.555021>,  <40.932724, 34.380810, 23.670568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.746651, 34.282700, 23.555021>,  <40.436531, 34.119179, 23.362444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.746651, 34.282700, 23.555021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625547, 0.391829, 0.674656,
		0.087154, -0.824229, 0.559509,
		0.775304, 0.408798, 0.481445,
		40.979240, 34.405338, 23.699455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277306, 33.358704, 23.329035>,  <40.436531, 34.119179, 23.362444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277306, 33.358704, 23.329035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.988434, 33.088226, 23.387312>,  <39.815113, 32.925941, 23.422277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.988434, 33.088226, 23.387312>,  <40.277306, 33.358704, 23.329035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988434, 33.088226, 23.387312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339167, -0.529732, -0.777400,
		0.602849, -0.512005, 0.611902,
		-0.722176, -0.676191, 0.145693,
		39.771782, 32.885368, 23.431019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599327, 32.703709, 23.241076>,  <40.277306, 33.358704, 23.329035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599327, 32.703709, 23.241076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.206757, 32.650951, 23.185345>,  <39.971214, 32.619297, 23.151905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.206757, 32.650951, 23.185345>,  <40.599327, 32.703709, 23.241076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206757, 32.650951, 23.185345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191809, -0.658856, -0.727405,
		0.004142, -0.740617, 0.671915,
		-0.981423, -0.131893, -0.139328,
		39.912331, 32.611385, 23.143547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537872, 32.011322, 23.097105>,  <40.599327, 32.703709, 23.241076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537872, 32.011322, 23.097105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.183640, 32.147953, 22.971205>,  <39.971100, 32.229931, 22.895664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.183640, 32.147953, 22.971205>,  <40.537872, 32.011322, 23.097105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183640, 32.147953, 22.971205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009749, -0.663824, -0.747825,
		-0.464379, -0.665330, 0.584541,
		-0.885583, 0.341576, -0.314752,
		39.917965, 32.250427, 22.876780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005100, 31.414301, 22.995289>,  <40.537872, 32.011322, 23.097105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005100, 31.414301, 22.995289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.939167, 31.736021, 22.766928>,  <39.899605, 31.929054, 22.629911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.939167, 31.736021, 22.766928>,  <40.005100, 31.414301, 22.995289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939167, 31.736021, 22.766928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080438, -0.565929, -0.820521,
		-0.983035, -0.181174, 0.028589,
		-0.164836, 0.804301, -0.570902,
		39.889717, 31.977312, 22.595657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501076, 31.162519, 22.494705>,  <40.005100, 31.414301, 22.995289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501076, 31.162519, 22.494705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.661232, 31.499723, 22.351028>,  <39.757328, 31.702045, 22.264822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.661232, 31.499723, 22.351028>,  <39.501076, 31.162519, 22.494705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661232, 31.499723, 22.351028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169289, -0.453290, -0.875140,
		-0.900570, 0.289593, -0.324207,
		0.400394, 0.843009, -0.359194,
		39.781349, 31.752626, 22.243271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176273, 31.249052, 21.949844>,  <39.501076, 31.162519, 22.494705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176273, 31.249052, 21.949844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.513348, 31.458769, 21.900862>,  <39.715591, 31.584599, 21.871471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.513348, 31.458769, 21.900862>,  <39.176273, 31.249052, 21.949844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513348, 31.458769, 21.900862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155198, -0.454334, -0.877208,
		-0.515551, 0.720207, -0.464230,
		0.842687, 0.524293, -0.122457,
		39.766155, 31.616056, 21.864124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167500, 31.397095, 21.192587>,  <39.176273, 31.249052, 21.949844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167500, 31.397095, 21.192587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.534164, 31.490847, 21.322075>,  <39.754162, 31.547098, 21.399767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.534164, 31.490847, 21.322075>,  <39.167500, 31.397095, 21.192587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534164, 31.490847, 21.322075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372728, -0.209032, -0.904091,
		-0.144234, 0.949406, -0.278972,
		0.916663, 0.234381, 0.323721,
		39.809162, 31.561161, 21.419191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451145, 31.806906, 20.748257>,  <39.167500, 31.397095, 21.192587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451145, 31.806906, 20.748257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.805862, 31.704588, 20.902225>,  <40.018692, 31.643198, 20.994608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.805862, 31.704588, 20.902225>,  <39.451145, 31.806906, 20.748257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805862, 31.704588, 20.902225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274325, -0.378954, -0.883821,
		0.371945, 0.889361, -0.265883,
		0.886793, -0.255795, 0.384924,
		40.071899, 31.627850, 21.017702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982533, 32.053562, 20.295973>,  <39.451145, 31.806906, 20.748257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982533, 32.053562, 20.295973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.175507, 31.772638, 20.505360>,  <40.291290, 31.604084, 20.630993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.175507, 31.772638, 20.505360>,  <39.982533, 32.053562, 20.295973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175507, 31.772638, 20.505360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384284, -0.367334, -0.846990,
		0.787137, 0.609777, 0.092672,
		0.482433, -0.702309, 0.523469,
		40.320236, 31.561945, 20.662401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527390, 32.029476, 19.964430>,  <39.982533, 32.053562, 20.295973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527390, 32.029476, 19.964430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.527626, 31.693958, 20.182211>,  <40.527767, 31.492649, 20.312880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.527626, 31.693958, 20.182211>,  <40.527390, 32.029476, 19.964430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527626, 31.693958, 20.182211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417311, -0.494574, -0.762396,
		0.908764, 0.227654, 0.349746,
		0.000587, -0.838791, 0.544454,
		40.527802, 31.442322, 20.345547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201321, 31.780020, 19.829084>,  <40.527390, 32.029476, 19.964430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201321, 31.780020, 19.829084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.945210, 31.488022, 19.924717>,  <40.791542, 31.312824, 19.982096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.945210, 31.488022, 19.924717>,  <41.201321, 31.780020, 19.829084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.945210, 31.488022, 19.924717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125535, -0.406501, -0.904985,
		0.757819, -0.549425, 0.351911,
		-0.640274, -0.729993, 0.239082,
		40.753128, 31.269024, 19.996441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.511612, 31.174837, 19.586561>,  <41.201321, 31.780020, 19.829084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.511612, 31.174837, 19.586561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.129658, 31.061665, 19.622679>,  <40.900486, 30.993761, 19.644350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.129658, 31.061665, 19.622679>,  <41.511612, 31.174837, 19.586561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.129658, 31.061665, 19.622679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076175, -0.527190, -0.846327,
		0.287054, -0.801263, 0.524955,
		-0.954881, -0.282930, 0.090296,
		40.843193, 30.976786, 19.649767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514523, 30.499113, 19.377844>,  <41.511612, 31.174837, 19.586561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514523, 30.499113, 19.377844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.126606, 30.589870, 19.342018>,  <40.893856, 30.644325, 19.320522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.126606, 30.589870, 19.342018>,  <41.514523, 30.499113, 19.377844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126606, 30.589870, 19.342018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042235, -0.517814, -0.854450,
		-0.240246, -0.824857, 0.511755,
		-0.969792, 0.226893, -0.089565,
		40.835667, 30.657938, 19.315149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443409, 29.768110, 19.731800>,  <41.514523, 30.499113, 19.377844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.443409, 29.768110, 19.731800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.367249, 29.387777, 19.634096>,  <41.321552, 29.159578, 19.575474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.367249, 29.387777, 19.634096>,  <41.443409, 29.768110, 19.731800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.367249, 29.387777, 19.634096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008983, -0.247115, 0.968945,
		-0.981664, 0.186687, 0.038511,
		-0.190406, -0.950833, -0.244261,
		41.310127, 29.102528, 19.560818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752769, 29.641485, 20.016413>,  <41.443409, 29.768110, 19.731800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752769, 29.641485, 20.016413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.943005, 29.294062, 19.960676>,  <41.057148, 29.085608, 19.927235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.943005, 29.294062, 19.960676>,  <40.752769, 29.641485, 20.016413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943005, 29.294062, 19.960676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236841, -0.278982, 0.930632,
		-0.847183, -0.409599, -0.338393,
		0.475592, -0.868561, -0.139339,
		41.085682, 29.033493, 19.918875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261375, 29.119822, 20.124931>,  <40.752769, 29.641485, 20.016413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261375, 29.119822, 20.124931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.594807, 28.914064, 20.205484>,  <40.794865, 28.790611, 20.253817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.594807, 28.914064, 20.205484>,  <40.261375, 29.119822, 20.124931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594807, 28.914064, 20.205484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314057, -0.141384, 0.938818,
		-0.454448, -0.845820, -0.279402,
		0.833574, -0.514392, 0.201384,
		40.844879, 28.759747, 20.265900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077709, 28.517254, 20.495378>,  <40.261375, 29.119822, 20.124931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077709, 28.517254, 20.495378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.460747, 28.551102, 20.605543>,  <40.690571, 28.571411, 20.671642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.460747, 28.551102, 20.605543>,  <40.077709, 28.517254, 20.495378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460747, 28.551102, 20.605543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259481, -0.162192, 0.952031,
		0.125230, -0.983124, -0.133357,
		0.957594, 0.084619, 0.275414,
		40.748024, 28.576487, 20.688168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330345, 27.843534, 20.948956>,  <40.077709, 28.517254, 20.495378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330345, 27.843534, 20.948956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.572418, 28.141605, 21.061007>,  <40.717663, 28.320448, 21.128237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.572418, 28.141605, 21.061007>,  <40.330345, 27.843534, 20.948956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572418, 28.141605, 21.061007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264051, -0.144071, 0.953688,
		0.751024, -0.651119, 0.109576,
		0.605178, 0.745176, 0.280129,
		40.753971, 28.365158, 21.145044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727852, 27.656439, 21.539925>,  <40.330345, 27.843534, 20.948956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727852, 27.656439, 21.539925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.776161, 28.052876, 21.562372>,  <40.805145, 28.290737, 21.575842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.776161, 28.052876, 21.562372>,  <40.727852, 27.656439, 21.539925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.776161, 28.052876, 21.562372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111344, -0.042653, 0.992866,
		0.986416, -0.126160, 0.105201,
		0.120773, 0.991093, 0.056121,
		40.812393, 28.350203, 21.579208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924126, 27.749697, 22.184999>,  <40.727852, 27.656439, 21.539925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924126, 27.749697, 22.184999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.826000, 28.122522, 22.078358>,  <40.767124, 28.346218, 22.014372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.826000, 28.122522, 22.078358>,  <40.924126, 27.749697, 22.184999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826000, 28.122522, 22.078358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322986, 0.180719, 0.928989,
		0.914058, 0.314000, 0.256712,
		-0.245310, 0.932065, -0.266606,
		40.752407, 28.402142, 21.998377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.192612, 28.234419, 22.677673>,  <40.924126, 27.749697, 22.184999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.192612, 28.234419, 22.677673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.877499, 28.409849, 22.504681>,  <40.688431, 28.515108, 22.400885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.877499, 28.409849, 22.504681>,  <41.192612, 28.234419, 22.677673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877499, 28.409849, 22.504681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503747, -0.054706, 0.862118,
		0.354445, 0.897027, 0.264028,
		-0.787787, 0.438577, -0.432484,
		40.641163, 28.541422, 22.374935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860558, 28.422092, 23.047586>,  <41.192612, 28.234419, 22.677673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860558, 28.422092, 23.047586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.991390, 28.074003, 23.194954>,  <42.069889, 27.865150, 23.283375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.991390, 28.074003, 23.194954>,  <41.860558, 28.422092, 23.047586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.991390, 28.074003, 23.194954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704729, -0.035121, -0.708607,
		0.629585, 0.491406, 0.601784,
		0.327078, -0.870222, 0.368420,
		42.089512, 27.812937, 23.305479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498642, 28.492027, 23.039806>,  <41.860558, 28.422092, 23.047586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498642, 28.492027, 23.039806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.435333, 28.097336, 23.025318>,  <42.397346, 27.860521, 23.016626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.435333, 28.097336, 23.025318>,  <42.498642, 28.492027, 23.039806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.435333, 28.097336, 23.025318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624972, -0.071715, -0.777347,
		0.764434, -0.145671, 0.628029,
		-0.158276, -0.986731, -0.036219,
		42.387852, 27.801317, 23.014452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.155968, 28.305573, 23.020596>,  <42.498642, 28.492027, 23.039806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.155968, 28.305573, 23.020596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.937119, 28.003408, 22.876366>,  <42.805809, 27.822109, 22.789827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.937119, 28.003408, 22.876366>,  <43.155968, 28.305573, 23.020596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.937119, 28.003408, 22.876366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595292, -0.048311, -0.802056,
		0.588463, -0.653466, 0.476123,
		-0.547118, -0.755412, -0.360574,
		42.772984, 27.776785, 22.768194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.620655, 28.039566, 22.621563>,  <43.155968, 28.305573, 23.020596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.620655, 28.039566, 22.621563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.286880, 27.840893, 22.526047>,  <43.086617, 27.721689, 22.468737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.286880, 27.840893, 22.526047>,  <43.620655, 28.039566, 22.621563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.286880, 27.840893, 22.526047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424274, -0.302430, -0.853538,
		0.351722, -0.813536, 0.463088,
		-0.834436, -0.496684, -0.238791,
		43.036549, 27.691887, 22.454409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.771400, 27.312563, 22.447006>,  <43.620655, 28.039566, 22.621563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.771400, 27.312563, 22.447006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.447784, 27.420263, 22.238024>,  <43.253616, 27.484882, 22.112635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.447784, 27.420263, 22.238024>,  <43.771400, 27.312563, 22.447006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.447784, 27.420263, 22.238024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377555, -0.443179, -0.813047,
		-0.450452, -0.855043, 0.256893,
		-0.809039, 0.269247, -0.522456,
		43.205074, 27.501038, 22.081287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.705975, 26.821924, 21.952152>,  <43.771400, 27.312563, 22.447006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.705975, 26.821924, 21.952152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.456921, 27.101263, 21.810940>,  <43.307487, 27.268867, 21.726212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.456921, 27.101263, 21.810940>,  <43.705975, 26.821924, 21.952152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.456921, 27.101263, 21.810940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251684, -0.248458, -0.935374,
		-0.740930, -0.671252, -0.021064,
		-0.622637, 0.698348, -0.353033,
		43.270130, 27.310768, 21.705030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.340725, 26.495359, 21.443096>,  <43.705975, 26.821924, 21.952152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.340725, 26.495359, 21.443096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.320110, 26.882999, 21.346605>,  <43.307743, 27.115583, 21.288710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.320110, 26.882999, 21.346605>,  <43.340725, 26.495359, 21.443096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.320110, 26.882999, 21.346605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114000, -0.234262, -0.965466,
		-0.992143, -0.077254, -0.098405,
		-0.051534, 0.969099, -0.241228,
		43.304649, 27.173729, 21.274237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.076092, 26.551052, 20.821510>,  <43.340725, 26.495359, 21.443096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.076092, 26.551052, 20.821510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.290981, 26.887629, 20.844728>,  <43.419914, 27.089575, 20.858660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.290981, 26.887629, 20.844728>,  <43.076092, 26.551052, 20.821510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.290981, 26.887629, 20.844728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343329, -0.155302, -0.926286,
		-0.770399, 0.517553, -0.372322,
		0.537224, 0.841439, 0.058046,
		43.452148, 27.140060, 20.862143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.103329, 26.695282, 20.154198>,  <43.076092, 26.551052, 20.821510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.103329, 26.695282, 20.154198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.382122, 26.939104, 20.305277>,  <43.549397, 27.085398, 20.395926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.382122, 26.939104, 20.305277>,  <43.103329, 26.695282, 20.154198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.382122, 26.939104, 20.305277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603107, -0.213363, -0.768595,
		-0.387915, 0.763490, -0.516339,
		0.696982, 0.609557, 0.377699,
		43.591217, 27.121971, 20.418587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.537949, 31.691015, 34.602795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.934811, 31.733953, 34.577168>,  <37.172928, 31.759716, 34.561790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.934811, 31.733953, 34.577168>,  <36.537949, 31.691015, 34.602795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934811, 31.733953, 34.577168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041416, -0.765807, -0.641735,
		-0.117949, 0.634047, -0.764246,
		0.992155, 0.107344, -0.064066,
		37.232456, 31.766157, 34.557949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743656, 31.851521, 33.950710>,  <36.537949, 31.691015, 34.602795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743656, 31.851521, 33.950710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.063408, 31.666849, 34.104515>,  <37.255257, 31.556046, 34.196800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.063408, 31.666849, 34.104515>,  <36.743656, 31.851521, 33.950710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063408, 31.666849, 34.104515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062685, -0.572396, -0.817578,
		0.597553, 0.677655, -0.428619,
		0.799375, -0.461678, 0.384516,
		37.303219, 31.528345, 34.219872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338181, 31.832088, 33.416561>,  <36.743656, 31.851521, 33.950710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338181, 31.832088, 33.416561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.399067, 31.545122, 33.688488>,  <37.435596, 31.372942, 33.851643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.399067, 31.545122, 33.688488>,  <37.338181, 31.832088, 33.416561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399067, 31.545122, 33.688488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183502, -0.655354, -0.732692,
		0.971163, 0.236273, 0.031893,
		0.152214, -0.717416, 0.679813,
		37.444733, 31.329897, 33.892433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088722, 31.557930, 33.313530>,  <37.338181, 31.832088, 33.416561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088722, 31.557930, 33.313530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.830467, 31.293411, 33.466286>,  <37.675514, 31.134701, 33.557938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.830467, 31.293411, 33.466286>,  <38.088722, 31.557930, 33.313530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830467, 31.293411, 33.466286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239603, -0.650257, -0.720941,
		0.725080, -0.373967, 0.578280,
		-0.645639, -0.661297, 0.381885,
		37.636776, 31.095022, 33.580853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523632, 30.943413, 33.406631>,  <38.088722, 31.557930, 33.313530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523632, 30.943413, 33.406631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.142349, 30.822683, 33.413536>,  <37.913578, 30.750246, 33.417679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.142349, 30.822683, 33.413536>,  <38.523632, 30.943413, 33.406631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142349, 30.822683, 33.413536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226818, -0.751739, -0.619228,
		0.199870, -0.586338, 0.785022,
		-0.953208, -0.301822, 0.017259,
		37.856388, 30.732138, 33.418713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598610, 30.320173, 33.562675>,  <38.523632, 30.943413, 33.406631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598610, 30.320173, 33.562675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.223480, 30.330214, 33.424191>,  <37.998402, 30.336239, 33.341099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.223480, 30.330214, 33.424191>,  <38.598610, 30.320173, 33.562675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223480, 30.330214, 33.424191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190521, -0.796502, -0.573834,
		-0.290163, -0.604114, 0.742194,
		-0.937820, 0.025102, -0.346212,
		37.942135, 30.337744, 33.320328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415039, 29.572809, 33.593204>,  <38.598610, 30.320173, 33.562675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415039, 29.572809, 33.593204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.149269, 29.753536, 33.355080>,  <37.989807, 29.861973, 33.212204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.149269, 29.753536, 33.355080>,  <38.415039, 29.572809, 33.593204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149269, 29.753536, 33.355080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158808, -0.693015, -0.703214,
		-0.730283, -0.561776, 0.388708,
		-0.664429, 0.451815, -0.595312,
		37.949940, 29.889082, 33.176487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096275, 29.095663, 33.158295>,  <38.415039, 29.572809, 33.593204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096275, 29.095663, 33.158295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.004921, 29.431067, 32.960411>,  <37.950108, 29.632309, 32.841679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.004921, 29.431067, 32.960411>,  <38.096275, 29.095663, 33.158295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004921, 29.431067, 32.960411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075648, -0.491321, -0.867687,
		-0.970627, -0.235594, 0.048780,
		-0.228389, 0.838510, -0.494712,
		37.936405, 29.682619, 32.811996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649330, 28.872606, 32.556767>,  <38.096275, 29.095663, 33.158295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649330, 28.872606, 32.556767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.803703, 29.225574, 32.449146>,  <37.896328, 29.437355, 32.384575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.803703, 29.225574, 32.449146>,  <37.649330, 28.872606, 32.556767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803703, 29.225574, 32.449146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066137, -0.264426, -0.962135,
		-0.920153, 0.389113, -0.043690,
		0.385933, 0.882422, -0.269048,
		37.919483, 29.490301, 32.368431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238846, 29.226984, 32.000351>,  <37.649330, 28.872606, 32.556767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238846, 29.226984, 32.000351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.602180, 29.392359, 31.975077>,  <37.820183, 29.491583, 31.959911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.602180, 29.392359, 31.975077>,  <37.238846, 29.226984, 32.000351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602180, 29.392359, 31.975077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039164, -0.234492, -0.971329,
		-0.416399, 0.879821, -0.229190,
		0.908338, 0.413436, -0.063185,
		37.874683, 29.516390, 31.956121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219742, 29.712833, 31.424868>,  <37.238846, 29.226984, 32.000351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219742, 29.712833, 31.424868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.613937, 29.652807, 31.456583>,  <37.850456, 29.616793, 31.475613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.613937, 29.652807, 31.456583>,  <37.219742, 29.712833, 31.424868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613937, 29.652807, 31.456583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064842, -0.098827, -0.992990,
		0.156847, 0.983725, -0.087663,
		0.985492, -0.150063, 0.079287,
		37.909584, 29.607788, 31.480370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625343, 30.256989, 31.022451>,  <37.219742, 29.712833, 31.424868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625343, 30.256989, 31.022451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.875290, 29.946571, 31.056622>,  <38.025257, 29.760321, 31.077124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.875290, 29.946571, 31.056622>,  <37.625343, 30.256989, 31.022451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875290, 29.946571, 31.056622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126589, -0.007260, -0.991929,
		0.770398, 0.630641, 0.093701,
		0.624870, -0.776041, 0.085426,
		38.062752, 29.713758, 31.082249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042744, 30.828455, 30.608622>,  <37.625343, 30.256989, 31.022451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042744, 30.828455, 30.608622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.680298, 30.862085, 30.442781>,  <37.462830, 30.882263, 30.343277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.680298, 30.862085, 30.442781>,  <38.042744, 30.828455, 30.608622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680298, 30.862085, 30.442781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270749, 0.637782, 0.721061,
		0.325048, 0.765615, -0.555138,
		-0.906112, 0.084077, -0.414599,
		37.408463, 30.887308, 30.318401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935806, 31.530092, 30.621122>,  <38.042744, 30.828455, 30.608622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935806, 31.530092, 30.621122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.569454, 31.383970, 30.554523>,  <37.349644, 31.296297, 30.514565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.569454, 31.383970, 30.554523>,  <37.935806, 31.530092, 30.621122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569454, 31.383970, 30.554523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334860, 0.466381, 0.818754,
		-0.221442, 0.805632, -0.549473,
		-0.915878, -0.365303, -0.166498,
		37.294689, 31.274380, 30.504574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460278, 32.007065, 30.691801>,  <37.935806, 31.530092, 30.621122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460278, 32.007065, 30.691801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.223728, 31.691664, 30.759386>,  <37.081799, 31.502424, 30.799936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.223728, 31.691664, 30.759386>,  <37.460278, 32.007065, 30.691801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223728, 31.691664, 30.759386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569822, 0.556860, 0.604326,
		-0.570600, 0.261102, -0.778615,
		-0.591370, -0.788500, 0.168963,
		37.046318, 31.455114, 30.810076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740219, 32.240204, 30.549934>,  <37.460278, 32.007065, 30.691801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740219, 32.240204, 30.549934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.711739, 31.929920, 30.800760>,  <36.694649, 31.743750, 30.951256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.711739, 31.929920, 30.800760>,  <36.740219, 32.240204, 30.549934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711739, 31.929920, 30.800760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635385, 0.519881, 0.570972,
		-0.768906, -0.357772, -0.529889,
		-0.071201, -0.775707, 0.627063,
		36.690380, 31.697208, 30.988880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080677, 32.213383, 30.735275>,  <36.740219, 32.240204, 30.549934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080677, 32.213383, 30.735275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.244473, 31.965437, 31.003033>,  <36.342751, 31.816668, 31.163687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.244473, 31.965437, 31.003033>,  <36.080677, 32.213383, 30.735275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244473, 31.965437, 31.003033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736301, 0.208693, 0.643668,
		-0.538687, -0.756446, -0.370954,
		0.409484, -0.619869, 0.669392,
		36.367317, 31.779476, 31.203850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495209, 31.699699, 30.970558>,  <36.080677, 32.213383, 30.735275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495209, 31.699699, 30.970558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.788456, 31.730438, 31.240858>,  <35.964405, 31.748880, 31.403038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.788456, 31.730438, 31.240858>,  <35.495209, 31.699699, 30.970558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788456, 31.730438, 31.240858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669900, -0.089878, 0.736991,
		0.117371, -0.992983, -0.014411,
		0.733116, 0.076848, 0.675749,
		36.008392, 31.753492, 31.443583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375187, 31.305092, 31.451920>,  <35.495209, 31.699699, 30.970558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375187, 31.305092, 31.451920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.625370, 31.522202, 31.676134>,  <35.775478, 31.652468, 31.810663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.625370, 31.522202, 31.676134>,  <35.375187, 31.305092, 31.451920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625370, 31.522202, 31.676134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531014, -0.230262, 0.815477,
		0.571691, -0.807697, 0.144202,
		0.625455, 0.542775, 0.560537,
		35.813007, 31.685034, 31.844296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410316, 30.895969, 32.175545>,  <35.375187, 31.305092, 31.451920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410316, 30.895969, 32.175545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.510719, 31.282856, 32.190983>,  <35.570961, 31.514988, 32.200245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.510719, 31.282856, 32.190983>,  <35.410316, 30.895969, 32.175545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510719, 31.282856, 32.190983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731450, 0.163403, 0.662028,
		0.634017, -0.194405, 0.748485,
		0.251006, 0.967216, 0.038597,
		35.586021, 31.573021, 32.202560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224537, 31.107573, 32.800163>,  <35.410316, 30.895969, 32.175545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224537, 31.107573, 32.800163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.299438, 31.474646, 32.659992>,  <35.344379, 31.694889, 32.575890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.299438, 31.474646, 32.659992>,  <35.224537, 31.107573, 32.800163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299438, 31.474646, 32.659992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683726, 0.377895, 0.624271,
		0.705305, 0.122698, 0.698205,
		0.187251, 0.917682, -0.350423,
		35.355614, 31.749950, 32.554867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371948, 31.541136, 33.365551>,  <35.224537, 31.107573, 32.800163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371948, 31.541136, 33.365551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.255753, 31.775419, 33.062881>,  <35.186035, 31.915989, 32.881279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.255753, 31.775419, 33.062881>,  <35.371948, 31.541136, 33.365551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255753, 31.775419, 33.062881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757540, 0.342347, 0.555816,
		0.584594, 0.734671, 0.344251,
		-0.290489, 0.585710, -0.756677,
		35.168606, 31.951132, 32.835880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286488, 32.273106, 33.646065>,  <35.371948, 31.541136, 33.365551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286488, 32.273106, 33.646065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.068829, 32.262524, 33.310638>,  <34.938232, 32.256176, 33.109383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.068829, 32.262524, 33.310638>,  <35.286488, 32.273106, 33.646065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068829, 32.262524, 33.310638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787968, 0.359343, 0.499980,
		0.288108, 0.932830, -0.216381,
		-0.544151, -0.026454, -0.838570,
		34.905582, 32.254589, 33.059067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899147, 32.984478, 33.614574>,  <35.286488, 32.273106, 33.646065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899147, 32.984478, 33.614574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.735664, 32.708134, 33.376022>,  <34.637573, 32.542328, 33.232891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.735664, 32.708134, 33.376022>,  <34.899147, 32.984478, 33.614574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735664, 32.708134, 33.376022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911358, 0.273978, 0.307183,
		-0.048827, 0.669062, -0.741601,
		-0.408707, -0.690863, -0.596377,
		34.613052, 32.500874, 33.197109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345745, 33.329544, 33.166203>,  <34.899147, 32.984478, 33.614574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345745, 33.329544, 33.166203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.243023, 32.943226, 33.180561>,  <34.181389, 32.711433, 33.189175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.243023, 32.943226, 33.180561>,  <34.345745, 33.329544, 33.166203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243023, 32.943226, 33.180561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964190, 0.258573, 0.058966,
		-0.066231, -0.019468, -0.997614,
		-0.256808, -0.965795, 0.035896,
		34.165981, 32.653488, 33.191330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825054, 33.256607, 32.639111>,  <34.345745, 33.329544, 33.166203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825054, 33.256607, 32.639111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.783665, 32.968929, 32.913937>,  <33.758831, 32.796322, 33.078831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.783665, 32.968929, 32.913937>,  <33.825054, 33.256607, 32.639111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783665, 32.968929, 32.913937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972620, 0.217685, 0.081392,
		-0.208099, -0.659828, -0.722026,
		-0.103470, -0.719194, 0.687061,
		33.752625, 32.753170, 33.120056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324753, 32.825901, 32.403278>,  <33.825054, 33.256607, 32.639111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324753, 32.825901, 32.403278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.366428, 32.766357, 32.796619>,  <33.391434, 32.730629, 33.032623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.366428, 32.766357, 32.796619>,  <33.324753, 32.825901, 32.403278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366428, 32.766357, 32.796619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965850, 0.220695, 0.135748,
		-0.237229, -0.963916, -0.120786,
		0.104193, -0.148864, 0.983353,
		33.397686, 32.721699, 33.091625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357124, 33.359154, 31.752121>,  <33.324753, 32.825901, 32.403278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357124, 33.359154, 31.752121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.061382, 33.289894, 31.491854>,  <32.883938, 33.248337, 31.335693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.061382, 33.289894, 31.491854>,  <33.357124, 33.359154, 31.752121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061382, 33.289894, 31.491854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046453, 0.950949, -0.305840,
		0.671708, -0.256351, -0.695049,
		-0.739358, -0.173148, -0.650669,
		32.839577, 33.237949, 31.296654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423256, 33.393402, 31.082430>,  <33.357124, 33.359154, 31.752121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423256, 33.393402, 31.082430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.603081, 33.718029, 31.231699>,  <33.710976, 33.912804, 31.321260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.603081, 33.718029, 31.231699>,  <33.423256, 33.393402, 31.082430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603081, 33.718029, 31.231699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363764, 0.215221, -0.906287,
		-0.815826, 0.543175, -0.198464,
		0.449559, 0.811567, 0.373170,
		33.737949, 33.961498, 31.343651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211254, 33.839317, 30.621655>,  <33.423256, 33.393402, 31.082430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211254, 33.839317, 30.621655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.530327, 33.995399, 30.805586>,  <33.721771, 34.089046, 30.915945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.530327, 33.995399, 30.805586>,  <33.211254, 33.839317, 30.621655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530327, 33.995399, 30.805586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472988, 0.068239, -0.878422,
		-0.374140, 0.918197, -0.130128,
		0.797685, 0.390202, 0.459827,
		33.769634, 34.112461, 30.943535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408775, 34.339447, 30.155279>,  <33.211254, 33.839317, 30.621655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408775, 34.339447, 30.155279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.725441, 34.247066, 30.381527>,  <33.915440, 34.191639, 30.517275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.725441, 34.247066, 30.381527>,  <33.408775, 34.339447, 30.155279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725441, 34.247066, 30.381527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589878, 0.047887, -0.806072,
		0.159076, 0.971787, 0.174142,
		0.791669, -0.230950, 0.565618,
		33.962940, 34.177780, 30.551212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848728, 34.848721, 30.002148>,  <33.408775, 34.339447, 30.155279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848728, 34.848721, 30.002148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.063156, 34.555023, 30.168768>,  <34.191814, 34.378807, 30.268740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.063156, 34.555023, 30.168768>,  <33.848728, 34.848721, 30.002148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063156, 34.555023, 30.168768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621391, 0.009214, -0.783446,
		0.571401, 0.678825, 0.461191,
		0.536073, -0.734242, 0.416551,
		34.223976, 34.334751, 30.293734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606182, 35.001183, 30.046558>,  <33.848728, 34.848721, 30.002148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606182, 35.001183, 30.046558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.576359, 34.602890, 30.068354>,  <34.558464, 34.363914, 30.081430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.576359, 34.602890, 30.068354>,  <34.606182, 35.001183, 30.046558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576359, 34.602890, 30.068354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578583, -0.087698, -0.810895,
		0.812209, -0.028931, 0.582649,
		-0.074557, -0.995727, 0.054490,
		34.553993, 34.304173, 30.084702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303238, 34.848618, 30.095362>,  <34.606182, 35.001183, 30.046558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303238, 34.848618, 30.095362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.074085, 34.557850, 29.943892>,  <34.936592, 34.383389, 29.853008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.074085, 34.557850, 29.943892>,  <35.303238, 34.848618, 30.095362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074085, 34.557850, 29.943892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742485, -0.264568, -0.615403,
		0.347160, -0.633717, 0.691291,
		-0.572884, -0.726916, -0.378677,
		34.902222, 34.339775, 29.830288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786236, 34.305336, 30.069811>,  <35.303238, 34.848618, 30.095362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786236, 34.305336, 30.069811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.481964, 34.184551, 29.839966>,  <35.299400, 34.112080, 29.702059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.481964, 34.184551, 29.839966>,  <35.786236, 34.305336, 30.069811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481964, 34.184551, 29.839966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641299, -0.486633, -0.593232,
		-0.100491, -0.819760, 0.563822,
		-0.760682, -0.301964, -0.574613,
		35.253761, 34.093964, 29.667582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908245, 33.607746, 29.903444>,  <35.786236, 34.305336, 30.069811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908245, 33.607746, 29.903444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.646481, 33.710091, 29.618832>,  <35.489422, 33.771500, 29.448063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.646481, 33.710091, 29.618832>,  <35.908245, 33.607746, 29.903444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646481, 33.710091, 29.618832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577823, -0.437738, -0.688844,
		-0.487715, -0.861928, 0.138616,
		-0.654412, 0.255864, -0.711533,
		35.450157, 33.786850, 29.405373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763065, 32.940109, 29.480892>,  <35.908245, 33.607746, 29.903444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763065, 32.940109, 29.480892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.682377, 33.257900, 29.251766>,  <35.633965, 33.448574, 29.114290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.682377, 33.257900, 29.251766>,  <35.763065, 32.940109, 29.480892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682377, 33.257900, 29.251766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544808, -0.394996, -0.739704,
		-0.813936, -0.461290, -0.353156,
		-0.201723, 0.794474, -0.572816,
		35.621861, 33.496243, 29.079922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853382, 32.561298, 28.979523>,  <35.763065, 32.940109, 29.480892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853382, 32.561298, 28.979523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.843437, 32.940071, 28.851334>,  <35.837471, 33.167336, 28.774420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.843437, 32.940071, 28.851334>,  <35.853382, 32.561298, 28.979523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843437, 32.940071, 28.851334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652834, -0.227397, -0.722563,
		-0.757093, -0.227179, -0.612536,
		-0.024862, 0.946932, -0.320471,
		35.835979, 33.224152, 28.755192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846912, 32.451195, 28.220423>,  <35.853382, 32.561298, 28.979523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846912, 32.451195, 28.220423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.949169, 32.830891, 28.293736>,  <36.010521, 33.058708, 28.337723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.949169, 32.830891, 28.293736>,  <35.846912, 32.451195, 28.220423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949169, 32.830891, 28.293736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735891, -0.068107, -0.673666,
		-0.626988, 0.307092, -0.715947,
		0.255639, 0.949240, 0.183284,
		36.025860, 33.115662, 28.348721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793144, 32.834717, 27.547964>,  <35.846912, 32.451195, 28.220423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793144, 32.834717, 27.547964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.065372, 33.016842, 27.777576>,  <36.228710, 33.126118, 27.915344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.065372, 33.016842, 27.777576>,  <35.793144, 32.834717, 27.547964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065372, 33.016842, 27.777576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722822, -0.289119, -0.627645,
		-0.119814, 0.842079, -0.525878,
		0.680568, 0.455317, 0.574033,
		36.269543, 33.153439, 27.949787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256367, 33.038914, 27.050406>,  <35.793144, 32.834717, 27.547964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256367, 33.038914, 27.050406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.454491, 33.090771, 27.394001>,  <36.573364, 33.121887, 27.600159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.454491, 33.090771, 27.394001>,  <36.256367, 33.038914, 27.050406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454491, 33.090771, 27.394001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855128, -0.246983, -0.455802,
		0.153064, 0.960308, -0.233195,
		0.495306, 0.129644, 0.858990,
		36.603081, 33.129665, 27.651699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871559, 33.615044, 26.968353>,  <36.256367, 33.038914, 27.050406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871559, 33.615044, 26.968353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.954060, 33.414631, 27.304550>,  <37.003559, 33.294384, 27.506268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.954060, 33.414631, 27.304550>,  <36.871559, 33.615044, 26.968353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954060, 33.414631, 27.304550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976887, 0.056147, -0.206249,
		0.056147, 0.863604, 0.501034,
		0.206249, -0.501034, 0.840492,
		37.015934, 33.264320, 27.556698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252018, 34.084167, 27.282118>,  <36.871559, 33.615044, 26.968353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252018, 34.084167, 27.282118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.320717, 33.716511, 27.423923>,  <37.361935, 33.495918, 27.509007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.320717, 33.716511, 27.423923>,  <37.252018, 34.084167, 27.282118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320717, 33.716511, 27.423923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872991, -0.024754, -0.487108,
		0.456497, 0.393146, 0.798152,
		0.171747, -0.919143, 0.354513,
		37.372242, 33.440769, 27.530277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883228, 34.035831, 27.571047>,  <37.252018, 34.084167, 27.282118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883228, 34.035831, 27.571047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.797215, 33.656830, 27.476387>,  <37.745605, 33.429428, 27.419592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.797215, 33.656830, 27.476387>,  <37.883228, 34.035831, 27.571047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797215, 33.656830, 27.476387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863106, -0.071002, -0.500007,
		0.456954, -0.311773, 0.833061,
		-0.215037, -0.947500, -0.236649,
		37.732704, 33.372581, 27.405392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496201, 33.692368, 27.721218>,  <37.883228, 34.035831, 27.571047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496201, 33.692368, 27.721218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.274239, 33.465054, 27.478193>,  <38.141060, 33.328667, 27.332378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.274239, 33.465054, 27.478193>,  <38.496201, 33.692368, 27.721218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274239, 33.465054, 27.478193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787675, -0.123926, -0.603499,
		0.267667, -0.813446, 0.516392,
		-0.554908, -0.568285, -0.607560,
		38.107765, 33.294567, 27.295925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892311, 33.029255, 27.514635>,  <38.496201, 33.692368, 27.721218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892311, 33.029255, 27.514635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.613434, 33.081142, 27.232616>,  <38.446106, 33.112274, 27.063404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.613434, 33.081142, 27.232616>,  <38.892311, 33.029255, 27.514635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613434, 33.081142, 27.232616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671187, -0.227397, -0.705549,
		-0.251853, -0.965123, 0.071470,
		-0.697193, 0.129725, -0.705048,
		38.404274, 33.120060, 27.021101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075024, 32.488110, 27.017883>,  <38.892311, 33.029255, 27.514635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075024, 32.488110, 27.017883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.836475, 32.748970, 26.830675>,  <38.693348, 32.905487, 26.718349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.836475, 32.748970, 26.830675>,  <39.075024, 32.488110, 27.017883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836475, 32.748970, 26.830675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575016, -0.059746, -0.815957,
		-0.560088, -0.755733, -0.339365,
		-0.596370, 0.652148, -0.468022,
		38.657566, 32.944614, 26.690269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845676, 32.081886, 26.412474>,  <39.075024, 32.488110, 27.017883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845676, 32.081886, 26.412474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.792683, 32.472370, 26.343821>,  <38.760887, 32.706661, 26.302629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.792683, 32.472370, 26.343821>,  <38.845676, 32.081886, 26.412474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792683, 32.472370, 26.343821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592976, -0.060692, -0.802929,
		-0.794246, -0.208148, -0.570830,
		-0.132483, 0.976212, -0.171631,
		38.752937, 32.765232, 26.292332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683201, 32.120636, 25.732000>,  <38.845676, 32.081886, 26.412474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683201, 32.120636, 25.732000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.788567, 32.502083, 25.790268>,  <38.851788, 32.730953, 25.825228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.788567, 32.502083, 25.790268>,  <38.683201, 32.120636, 25.732000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788567, 32.502083, 25.790268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365452, 0.041101, -0.929922,
		-0.892781, 0.298189, -0.337676,
		0.263414, 0.953622, 0.145668,
		38.867592, 32.788170, 25.833969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316105, 32.495171, 25.189627>,  <38.683201, 32.120636, 25.732000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316105, 32.495171, 25.189627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.624756, 32.732712, 25.280783>,  <38.809944, 32.875237, 25.335476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.624756, 32.732712, 25.280783>,  <38.316105, 32.495171, 25.189627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624756, 32.732712, 25.280783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203391, 0.109109, -0.972999,
		-0.602685, 0.797139, -0.036594,
		0.771623, 0.593855, 0.227889,
		38.856243, 32.910870, 25.349150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199715, 33.043743, 24.720062>,  <38.316105, 32.495171, 25.189627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199715, 33.043743, 24.720062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.579498, 33.087208, 24.837858>,  <38.807369, 33.113285, 24.908535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.579498, 33.087208, 24.837858>,  <38.199715, 33.043743, 24.720062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579498, 33.087208, 24.837858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278495, 0.141223, -0.949998,
		-0.144817, 0.983996, 0.103824,
		0.949457, 0.108661, 0.294489,
		38.864334, 33.119804, 24.926205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464474, 33.612923, 24.280584>,  <38.199715, 33.043743, 24.720062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464474, 33.612923, 24.280584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.757740, 33.378986, 24.419399>,  <38.933701, 33.238625, 24.502687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.757740, 33.378986, 24.419399>,  <38.464474, 33.612923, 24.280584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757740, 33.378986, 24.419399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357137, -0.103151, -0.928339,
		0.578723, 0.804566, 0.133240,
		0.733166, -0.584836, 0.347036,
		38.977692, 33.203537, 24.523510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025410, 33.784458, 23.851706>,  <38.464474, 33.612923, 24.280584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025410, 33.784458, 23.851706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.203903, 33.462421, 24.008013>,  <39.311001, 33.269199, 24.101797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.203903, 33.462421, 24.008013>,  <39.025410, 33.784458, 23.851706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203903, 33.462421, 24.008013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350510, -0.244533, -0.904072,
		0.823418, 0.540396, 0.173074,
		0.446235, -0.805093, 0.390768,
		39.337772, 33.220894, 24.125242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713303, 33.794052, 23.621349>,  <39.025410, 33.784458, 23.851706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713303, 33.794052, 23.621349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.657894, 33.408615, 23.712835>,  <39.624649, 33.177353, 23.767727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.657894, 33.408615, 23.712835>,  <39.713303, 33.794052, 23.621349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657894, 33.408615, 23.712835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400094, -0.265705, -0.877112,
		0.905946, -0.029989, 0.422331,
		-0.138519, -0.963588, 0.228716,
		39.616337, 33.119537, 23.781450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214439, 34.169369, 24.058941>,  <39.713303, 33.794052, 23.621349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214439, 34.169369, 24.058941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.552605, 34.377705, 24.106285>,  <40.755505, 34.502705, 24.134691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.552605, 34.377705, 24.106285>,  <40.214439, 34.169369, 24.058941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552605, 34.377705, 24.106285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360924, 0.393721, 0.845410,
		0.393721, -0.757437, 0.520838,
		-0.845410, -0.520838, -0.118361,
		40.806229, 34.533955, 24.141794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464310, 34.029705, 24.725063>,  <40.214439, 34.169369, 24.058941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464310, 34.029705, 24.725063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.588280, 34.378277, 24.572981>,  <40.662663, 34.587421, 24.481731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.588280, 34.378277, 24.572981>,  <40.464310, 34.029705, 24.725063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588280, 34.378277, 24.572981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493393, 0.489248, 0.719166,
		0.812718, -0.035295, 0.581587,
		0.309923, 0.871431, -0.380206,
		40.681255, 34.639706, 24.458920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694004, 34.440033, 25.291376>,  <40.464310, 34.029705, 24.725063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.694004, 34.440033, 25.291376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.642555, 34.717079, 25.007475>,  <40.611687, 34.883305, 24.837135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.642555, 34.717079, 25.007475>,  <40.694004, 34.440033, 25.291376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642555, 34.717079, 25.007475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384259, 0.624978, 0.679520,
		0.914222, 0.360128, 0.185758,
		-0.128619, 0.692611, -0.709751,
		40.603970, 34.924862, 24.794550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055450, 35.030434, 25.498688>,  <40.694004, 34.440033, 25.291376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055450, 35.030434, 25.498688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.756779, 35.130680, 25.252224>,  <40.577576, 35.190830, 25.104345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.756779, 35.130680, 25.252224>,  <41.055450, 35.030434, 25.498688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756779, 35.130680, 25.252224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429338, 0.525938, 0.734206,
		0.508068, 0.812760, -0.285109,
		-0.746683, 0.250619, -0.616161,
		40.532772, 35.205864, 25.067375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962997, 35.685600, 25.692778>,  <41.055450, 35.030434, 25.498688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962997, 35.685600, 25.692778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.631481, 35.596230, 25.487572>,  <40.432571, 35.542606, 25.364449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.631481, 35.596230, 25.487572>,  <40.962997, 35.685600, 25.692778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631481, 35.596230, 25.487572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552387, 0.472972, 0.686415,
		0.089276, 0.852278, -0.515415,
		-0.828793, -0.223428, -0.513013,
		40.382843, 35.529202, 25.333668>
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
