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
	<24.542564, 35.381939, 34.559181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.355671, 35.216187, 34.871586>,  <24.243534, 35.116737, 35.059029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.355671, 35.216187, 34.871586>,  <24.542564, 35.381939, 34.559181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.355671, 35.216187, 34.871586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439840, 0.657358, 0.611900,
		-0.766963, 0.629422, -0.124882,
		-0.467236, -0.414377, 0.781014,
		24.215500, 35.091873, 35.105888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.096663, 35.893745, 34.860104>,  <24.542564, 35.381939, 34.559181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.096663, 35.893745, 34.860104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.240334, 35.664131, 35.154446>,  <24.326536, 35.526363, 35.331051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.240334, 35.664131, 35.154446>,  <24.096663, 35.893745, 34.860104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.240334, 35.664131, 35.154446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547649, 0.768082, 0.331860,
		-0.755694, 0.283793, 0.590244,
		0.359176, -0.574031, 0.735854,
		24.348087, 35.491920, 35.375202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.853365, 36.116928, 35.532879>,  <24.096663, 35.893745, 34.860104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.853365, 36.116928, 35.532879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.197437, 35.915890, 35.567501>,  <24.403881, 35.795269, 35.588276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.197437, 35.915890, 35.567501>,  <23.853365, 36.116928, 35.532879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.197437, 35.915890, 35.567501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406177, 0.777772, 0.479678,
		-0.308403, -0.377452, 0.873165,
		0.860179, -0.502594, 0.086555,
		24.455490, 35.765110, 35.593468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.062237, 36.264336, 36.162556>,  <23.853365, 36.116928, 35.532879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.062237, 36.264336, 36.162556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.406551, 36.116741, 36.022331>,  <24.613140, 36.028187, 35.938194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.406551, 36.116741, 36.022331>,  <24.062237, 36.264336, 36.162556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.406551, 36.116741, 36.022331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507681, 0.671330, 0.539977,
		0.036102, -0.642781, 0.765199,
		0.860788, -0.368983, -0.350564,
		24.664787, 36.006046, 35.917164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.493250, 36.327900, 36.795216>,  <24.062237, 36.264336, 36.162556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.493250, 36.327900, 36.795216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.734529, 36.302811, 36.477165>,  <24.879297, 36.287758, 36.286335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.734529, 36.302811, 36.477165>,  <24.493250, 36.327900, 36.795216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.734529, 36.302811, 36.477165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630902, 0.647431, 0.427546,
		0.487970, -0.759538, 0.430101,
		0.603198, -0.062721, -0.795121,
		24.915489, 36.283993, 36.238628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.101315, 35.958179, 36.895267>,  <24.493250, 36.327900, 36.795216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.101315, 35.958179, 36.895267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.181068, 36.220051, 36.603615>,  <25.228920, 36.377174, 36.428623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.181068, 36.220051, 36.603615>,  <25.101315, 35.958179, 36.895267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.181068, 36.220051, 36.603615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723764, 0.403234, 0.559972,
		0.660615, -0.639371, -0.393437,
		0.199382, 0.654681, -0.729136,
		25.240883, 36.416454, 36.384872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.815186, 36.041058, 36.716438>,  <25.101315, 35.958179, 36.895267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.815186, 36.041058, 36.716438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.596495, 36.372829, 36.670578>,  <25.465281, 36.571892, 36.643063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.596495, 36.372829, 36.670578>,  <25.815186, 36.041058, 36.716438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.596495, 36.372829, 36.670578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461950, 0.412990, 0.784883,
		0.698351, 0.376153, -0.608946,
		-0.546725, 0.829426, -0.114648,
		25.432478, 36.621658, 36.636185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.136623, 36.681847, 36.714939>,  <25.815186, 36.041058, 36.716438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.136623, 36.681847, 36.714939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.786634, 36.795166, 36.871998>,  <25.576641, 36.863159, 36.966232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.786634, 36.795166, 36.871998>,  <26.136623, 36.681847, 36.714939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.786634, 36.795166, 36.871998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483937, 0.537169, 0.690836,
		-0.015203, 0.794476, -0.607105,
		-0.874971, 0.283298, 0.392643,
		25.524143, 36.880154, 36.989792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.225054, 37.408409, 36.849506>,  <26.136623, 36.681847, 36.714939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.225054, 37.408409, 36.849506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.917683, 37.298744, 37.080799>,  <25.733259, 37.232944, 37.219574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.917683, 37.298744, 37.080799>,  <26.225054, 37.408409, 36.849506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.917683, 37.298744, 37.080799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288552, 0.658070, 0.695472,
		-0.571189, 0.701271, -0.426570,
		-0.768428, -0.274158, 0.578235,
		25.687155, 37.216496, 37.254269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.975929, 37.998058, 37.071037>,  <26.225054, 37.408409, 36.849506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.975929, 37.998058, 37.071037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.835194, 37.738308, 37.340710>,  <25.750753, 37.582458, 37.502514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.835194, 37.738308, 37.340710>,  <25.975929, 37.998058, 37.071037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.835194, 37.738308, 37.340710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172081, 0.663092, 0.728490,
		-0.920108, 0.372325, -0.121556,
		-0.351838, -0.649372, 0.674186,
		25.729643, 37.543495, 37.542965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.554897, 38.370544, 37.488941>,  <25.975929, 37.998058, 37.071037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.554897, 38.370544, 37.488941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.624701, 38.049820, 37.717552>,  <25.666582, 37.857384, 37.854717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.624701, 38.049820, 37.717552>,  <25.554897, 38.370544, 37.488941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.624701, 38.049820, 37.717552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209682, 0.597382, 0.774060,
		-0.962070, -0.015242, 0.272375,
		0.174510, -0.801812, 0.571527,
		25.677053, 37.809277, 37.889011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.217722, 38.472931, 38.159046>,  <25.554897, 38.370544, 37.488941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.217722, 38.472931, 38.159046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.519636, 38.216728, 38.215691>,  <25.700785, 38.063007, 38.249676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.519636, 38.216728, 38.215691>,  <25.217722, 38.472931, 38.159046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.519636, 38.216728, 38.215691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421620, 0.639075, 0.643288,
		-0.502530, -0.425838, 0.752414,
		0.754785, -0.640504, 0.141613,
		25.746071, 38.024578, 38.258175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.424444, 38.391171, 38.925274>,  <25.217722, 38.472931, 38.159046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.424444, 38.391171, 38.925274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.743591, 38.346157, 38.688381>,  <25.935080, 38.319149, 38.546246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.743591, 38.346157, 38.688381>,  <25.424444, 38.391171, 38.925274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.743591, 38.346157, 38.688381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505759, 0.659570, 0.556036,
		0.328045, -0.743171, 0.583166,
		0.797869, -0.112536, -0.592234,
		25.982952, 38.312397, 38.510712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.090250, 38.660740, 38.982567>,  <25.424444, 38.391171, 38.925274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.090250, 38.660740, 38.982567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.053295, 38.307487, 39.166546>,  <26.031122, 38.095535, 39.276932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.053295, 38.307487, 39.166546>,  <26.090250, 38.660740, 38.982567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.053295, 38.307487, 39.166546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218218, -0.432737, -0.874711,
		0.971517, -0.181180, -0.152735,
		-0.092386, -0.883126, 0.459948,
		26.025579, 38.042549, 39.304531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.401005, 37.980549, 38.733414>,  <26.090250, 38.660740, 38.982567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.401005, 37.980549, 38.733414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055035, 37.873970, 38.903549>,  <25.847452, 37.810020, 39.005630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055035, 37.873970, 38.903549>,  <26.401005, 37.980549, 38.733414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.055035, 37.873970, 38.903549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348951, -0.289875, -0.891182,
		0.360750, -0.919226, 0.157741,
		-0.864923, -0.266450, 0.425337,
		25.795557, 37.794037, 39.031151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.396330, 37.257278, 38.604210>,  <26.401005, 37.980549, 38.733414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.396330, 37.257278, 38.604210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.032125, 37.422421, 38.613327>,  <25.813602, 37.521507, 38.618797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.032125, 37.422421, 38.613327>,  <26.396330, 37.257278, 38.604210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.032125, 37.422421, 38.613327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210686, -0.415807, -0.884713,
		-0.355780, -0.810344, 0.465579,
		-0.910512, 0.412854, 0.022793,
		25.758972, 37.546276, 38.620163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.837826, 36.767155, 38.609081>,  <26.396330, 37.257278, 38.604210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.837826, 36.767155, 38.609081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762030, 37.104874, 38.408581>,  <25.716553, 37.307507, 38.288280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762030, 37.104874, 38.408581>,  <25.837826, 36.767155, 38.609081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.762030, 37.104874, 38.408581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289833, -0.535845, -0.793011,
		-0.938131, -0.004990, 0.346244,
		-0.189490, 0.844302, -0.501247,
		25.705183, 37.358166, 38.258205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.174150, 36.619820, 38.352474>,  <25.837826, 36.767155, 38.609081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.174150, 36.619820, 38.352474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.339941, 36.908028, 38.130100>,  <25.439415, 37.080952, 37.996677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.339941, 36.908028, 38.130100>,  <25.174150, 36.619820, 38.352474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.339941, 36.908028, 38.130100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347824, -0.439078, -0.828389,
		-0.840967, 0.536716, 0.068625,
		0.414478, 0.720518, -0.555934,
		25.464285, 37.124184, 37.963322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.622200, 36.795483, 37.880009>,  <25.174150, 36.619820, 38.352474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.622200, 36.795483, 37.880009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.949083, 36.937138, 37.698128>,  <25.145214, 37.022133, 37.589001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.949083, 36.937138, 37.698128>,  <24.622200, 36.795483, 37.880009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.949083, 36.937138, 37.698128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359266, -0.303890, -0.882371,
		-0.450663, 0.884441, -0.121112,
		0.817210, 0.354140, -0.454701,
		25.194246, 37.043381, 37.561718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.384829, 37.167824, 37.380970>,  <24.622200, 36.795483, 37.880009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.384829, 37.167824, 37.380970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.744530, 37.069828, 37.236015>,  <24.960350, 37.011032, 37.149044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.744530, 37.069828, 37.236015>,  <24.384829, 37.167824, 37.380970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.744530, 37.069828, 37.236015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437183, -0.475838, -0.763184,
		0.014534, 0.844725, -0.535003,
		0.899255, -0.244987, -0.362384,
		25.014307, 36.996330, 37.127300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.519939, 37.383240, 36.657097>,  <24.384829, 37.167824, 37.380970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.519939, 37.383240, 36.657097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.723370, 37.054817, 36.760799>,  <24.845427, 36.857761, 36.823021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.723370, 37.054817, 36.760799>,  <24.519939, 37.383240, 36.657097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.723370, 37.054817, 36.760799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339493, -0.467927, -0.815959,
		0.791263, 0.326961, -0.516720,
		0.508574, -0.821061, 0.259253,
		24.875942, 36.808498, 36.838573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.267649, 37.412151, 36.462975>,  <24.519939, 37.383240, 36.657097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.267649, 37.412151, 36.462975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590687, 37.304577, 36.253036>,  <25.784510, 37.240032, 36.127071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590687, 37.304577, 36.253036>,  <25.267649, 37.412151, 36.462975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.590687, 37.304577, 36.253036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534105, -0.710889, -0.457567,
		-0.250049, 0.649852, -0.717752,
		0.807593, -0.268941, -0.524847,
		25.832964, 37.223896, 36.095581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.049576, 37.475872, 35.694897>,  <25.267649, 37.412151, 36.462975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.049576, 37.475872, 35.694897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.325596, 37.214664, 35.819725>,  <25.491209, 37.057938, 35.894623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.325596, 37.214664, 35.819725>,  <25.049576, 37.475872, 35.694897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.325596, 37.214664, 35.819725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562153, -0.755171, -0.337196,
		0.455866, 0.057249, -0.888205,
		0.690051, -0.653023, 0.312075,
		25.532612, 37.018757, 35.913349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.359226, 37.026402, 35.239750>,  <25.049576, 37.475872, 35.694897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.359226, 37.026402, 35.239750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.366650, 36.802872, 35.571381>,  <25.371103, 36.668755, 35.770359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.366650, 36.802872, 35.571381>,  <25.359226, 37.026402, 35.239750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.366650, 36.802872, 35.571381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420804, -0.756566, -0.500533,
		0.906962, -0.339590, -0.249196,
		0.018557, -0.558827, 0.829077,
		25.372217, 36.635223, 35.820103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.670294, 36.264591, 35.167088>,  <25.359226, 37.026402, 35.239750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.670294, 36.264591, 35.167088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.439201, 36.263962, 35.493576>,  <25.300545, 36.263584, 35.689468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.439201, 36.263962, 35.493576>,  <25.670294, 36.264591, 35.167088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.439201, 36.263962, 35.493576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411802, -0.862835, -0.293147,
		0.704729, -0.505484, 0.497839,
		-0.577733, -0.001578, 0.816224,
		25.265881, 36.263489, 35.738441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.819475, 35.675220, 35.459530>,  <25.670294, 36.264591, 35.167088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.819475, 35.675220, 35.459530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.452822, 35.762146, 35.593727>,  <25.232830, 35.814301, 35.674244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.452822, 35.762146, 35.593727>,  <25.819475, 35.675220, 35.459530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.452822, 35.762146, 35.593727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324912, -0.893955, -0.308670,
		0.232835, -0.391943, 0.890039,
		-0.916635, 0.217315, 0.335490,
		25.177832, 35.827339, 35.694374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.565529, 35.054337, 35.710197>,  <25.819475, 35.675220, 35.459530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.565529, 35.054337, 35.710197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.247015, 35.290665, 35.658264>,  <25.055906, 35.432461, 35.627102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.247015, 35.290665, 35.658264>,  <25.565529, 35.054337, 35.710197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.247015, 35.290665, 35.658264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510363, -0.771379, -0.380137,
		-0.324747, -0.236433, 0.915772,
		-0.796285, 0.590825, -0.129836,
		25.008129, 35.467911, 35.619312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.967901, 34.896328, 36.070946>,  <25.565529, 35.054337, 35.710197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.967901, 34.896328, 36.070946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.860395, 35.078934, 35.731686>,  <24.795891, 35.188496, 35.528130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.860395, 35.078934, 35.731686>,  <24.967901, 34.896328, 36.070946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.860395, 35.078934, 35.731686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528615, -0.806003, -0.266318,
		-0.805180, 0.376751, 0.457977,
		-0.268795, 0.456527, -0.848134,
		24.779766, 35.215885, 35.477242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.605665, 34.276577, 35.911213>,  <24.967901, 34.896328, 36.070946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.605665, 34.276577, 35.911213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.931742, 34.044949, 35.916069>,  <25.127388, 33.905972, 35.918983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.931742, 34.044949, 35.916069>,  <24.605665, 34.276577, 35.911213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.931742, 34.044949, 35.916069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163987, 0.250851, 0.954035,
		-0.555495, -0.775729, 0.299451,
		0.815189, -0.579067, 0.012137,
		25.176298, 33.871227, 35.919708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.608070, 33.813351, 36.478626>,  <24.605665, 34.276577, 35.911213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.608070, 33.813351, 36.478626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.984394, 33.886620, 36.364555>,  <25.210188, 33.930580, 36.296112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.984394, 33.886620, 36.364555>,  <24.608070, 33.813351, 36.478626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.984394, 33.886620, 36.364555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231407, 0.267616, 0.935325,
		0.247637, -0.945955, 0.209391,
		0.940811, 0.183167, -0.285172,
		25.266638, 33.941570, 36.279003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.109472, 33.609043, 36.956738>,  <24.608070, 33.813351, 36.478626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.109472, 33.609043, 36.956738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.346048, 33.845329, 36.737190>,  <25.487995, 33.987099, 36.605461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.346048, 33.845329, 36.737190>,  <25.109472, 33.609043, 36.956738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.346048, 33.845329, 36.737190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523460, 0.236483, 0.818575,
		0.613340, -0.771450, -0.169349,
		0.591441, 0.590712, -0.548868,
		25.523481, 34.022545, 36.572529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.693741, 33.327393, 37.141472>,  <25.109472, 33.609043, 36.956738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.693741, 33.327393, 37.141472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.760210, 33.711578, 37.052116>,  <25.800091, 33.942089, 36.998505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.760210, 33.711578, 37.052116>,  <25.693741, 33.327393, 37.141472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.760210, 33.711578, 37.052116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226763, 0.183248, 0.956555,
		0.959669, -0.209609, -0.187346,
		0.166172, 0.960460, -0.223390,
		25.810062, 33.999718, 36.985100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.350863, 33.648365, 37.327084>,  <25.693741, 33.327393, 37.141472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.350863, 33.648365, 37.327084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.100918, 33.960426, 37.315033>,  <25.950951, 34.147663, 37.307800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.100918, 33.960426, 37.315033>,  <26.350863, 33.648365, 37.327084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.100918, 33.960426, 37.315033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290512, 0.268158, 0.918528,
		0.724673, 0.565200, -0.394205,
		-0.624862, 0.780154, -0.030130,
		25.913460, 34.194473, 37.305996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.563953, 33.822781, 37.908012>,  <26.350863, 33.648365, 37.327084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.563953, 33.822781, 37.908012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.398701, 34.160763, 37.772152>,  <26.299549, 34.363552, 37.690636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.398701, 34.160763, 37.772152>,  <26.563953, 33.822781, 37.908012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.398701, 34.160763, 37.772152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274076, 0.471042, 0.838452,
		0.868449, 0.253302, -0.426186,
		-0.413133, 0.844960, -0.339652,
		26.274761, 34.414249, 37.670258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.055395, 34.320698, 37.989243>,  <26.563953, 33.822781, 37.908012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.055395, 34.320698, 37.989243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.712099, 34.523247, 37.955753>,  <26.506121, 34.644775, 37.935661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.712099, 34.523247, 37.955753>,  <27.055395, 34.320698, 37.989243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.712099, 34.523247, 37.955753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159832, 0.418694, 0.893951,
		0.487727, 0.753844, -0.440275,
		-0.858240, 0.506374, -0.083720,
		26.454626, 34.675159, 37.930637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.208654, 35.053532, 38.043736>,  <27.055395, 34.320698, 37.989243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.208654, 35.053532, 38.043736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.830452, 35.004776, 38.164509>,  <26.603531, 34.975521, 38.236973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.830452, 35.004776, 38.164509>,  <27.208654, 35.053532, 38.043736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.830452, 35.004776, 38.164509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292883, 0.086798, 0.952200,
		-0.142273, 0.988741, -0.046368,
		-0.945504, -0.121892, 0.301935,
		26.546801, 34.968208, 38.255089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.953169, 35.677582, 38.387024>,  <27.208654, 35.053532, 38.043736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.953169, 35.677582, 38.387024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.746445, 35.362377, 38.520859>,  <26.622410, 35.173256, 38.601158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.746445, 35.362377, 38.520859>,  <26.953169, 35.677582, 38.387024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.746445, 35.362377, 38.520859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337403, 0.171709, 0.925568,
		-0.786808, 0.591233, 0.177136,
		-0.516810, -0.788010, 0.334586,
		26.591402, 35.125973, 38.621235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.493586, 35.938046, 38.886848>,  <26.953169, 35.677582, 38.387024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.493586, 35.938046, 38.886848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.597235, 35.556267, 38.946026>,  <26.659424, 35.327198, 38.981533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.597235, 35.556267, 38.946026>,  <26.493586, 35.938046, 38.886848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.597235, 35.556267, 38.946026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310844, 0.227440, 0.922847,
		-0.914457, -0.193143, 0.355619,
		0.259124, -0.954446, 0.147947,
		26.674973, 35.269932, 38.990410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.400801, 35.774647, 39.661213>,  <26.493586, 35.938046, 38.886848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.400801, 35.774647, 39.661213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.610397, 35.465050, 39.519020>,  <26.736156, 35.279293, 39.433704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.610397, 35.465050, 39.519020>,  <26.400801, 35.774647, 39.661213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.610397, 35.465050, 39.519020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391313, -0.151943, 0.907627,
		-0.756509, -0.614696, 0.223255,
		0.523993, -0.773991, -0.355485,
		26.767595, 35.232853, 39.412376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.094482, 35.848614, 40.151447>,  <26.400801, 35.774647, 39.661213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.094482, 35.848614, 40.151447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.852076, 35.549580, 40.260151>,  <26.706633, 35.370159, 40.325375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.852076, 35.549580, 40.260151>,  <27.094482, 35.848614, 40.151447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.852076, 35.549580, 40.260151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373538, -0.034178, -0.926985,
		0.702292, -0.663282, -0.258540,
		-0.606016, -0.747589, 0.271763,
		26.670271, 35.325302, 40.341679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.185492, 35.237602, 39.841751>,  <27.094482, 35.848614, 40.151447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.185492, 35.237602, 39.841751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.797163, 35.188152, 39.923946>,  <26.564167, 35.158482, 39.973263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.797163, 35.188152, 39.923946>,  <27.185492, 35.237602, 39.841751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.797163, 35.188152, 39.923946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172933, -0.232750, -0.957038,
		0.166144, -0.964647, 0.204579,
		-0.970819, -0.123628, 0.205490,
		26.505917, 35.151066, 39.985592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.052753, 34.493820, 39.674156>,  <27.185492, 35.237602, 39.841751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.052753, 34.493820, 39.674156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.730537, 34.730541, 39.662350>,  <26.537207, 34.872574, 39.655266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.730537, 34.730541, 39.662350>,  <27.052753, 34.493820, 39.674156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.730537, 34.730541, 39.662350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244521, -0.377383, -0.893192,
		-0.539736, -0.712284, 0.448706,
		-0.805540, 0.591805, -0.029519,
		26.488874, 34.908081, 39.653496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.694950, 34.120831, 39.278206>,  <27.052753, 34.493820, 39.674156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.694950, 34.120831, 39.278206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.534321, 34.482811, 39.221916>,  <26.437943, 34.700001, 39.188141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.534321, 34.482811, 39.221916>,  <26.694950, 34.120831, 39.278206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.534321, 34.482811, 39.221916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274526, -0.265537, -0.924189,
		-0.873713, -0.332498, 0.355065,
		-0.401574, 0.904951, -0.140723,
		26.413849, 34.754295, 39.179699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.924271, 34.131157, 39.140854>,  <26.694950, 34.120831, 39.278206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.924271, 34.131157, 39.140854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110252, 34.448505, 38.983688>,  <26.221842, 34.638916, 38.889389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110252, 34.448505, 38.983688>,  <25.924271, 34.131157, 39.140854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.110252, 34.448505, 38.983688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250619, -0.307699, -0.917884,
		-0.849121, 0.525246, 0.055767,
		0.464956, 0.793371, -0.392911,
		26.249739, 34.686516, 38.865814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.608088, 34.238045, 38.600086>,  <25.924271, 34.131157, 39.140854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.608088, 34.238045, 38.600086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.925535, 34.467571, 38.519184>,  <26.116003, 34.605286, 38.470642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.925535, 34.467571, 38.519184>,  <25.608088, 34.238045, 38.600086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.925535, 34.467571, 38.519184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243417, -0.005207, -0.969908,
		-0.557602, 0.818968, 0.135544,
		0.793617, 0.573816, -0.202254,
		26.163620, 34.639717, 38.458508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.262028, 34.531647, 38.084846>,  <25.608088, 34.238045, 38.600086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.262028, 34.531647, 38.084846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.634968, 34.669598, 38.041428>,  <25.858732, 34.752369, 38.015377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.634968, 34.669598, 38.041428>,  <25.262028, 34.531647, 38.084846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.634968, 34.669598, 38.041428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148650, 0.091982, -0.984603,
		-0.329582, 0.934130, 0.137026,
		0.932351, 0.344876, -0.108543,
		25.914673, 34.773060, 38.008865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.201017, 35.124756, 37.663906>,  <25.262028, 34.531647, 38.084846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.201017, 35.124756, 37.663906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.546156, 34.928570, 37.615017>,  <25.753239, 34.810860, 37.585682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.546156, 34.928570, 37.615017>,  <25.201017, 35.124756, 37.663906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.546156, 34.928570, 37.615017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274264, -0.251164, -0.928276,
		0.424588, 0.834482, -0.351233,
		0.862846, -0.490466, -0.122227,
		25.805010, 34.781429, 37.578350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.142982, 35.101387, 37.003563>,  <25.201017, 35.124756, 37.663906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.142982, 35.101387, 37.003563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.383062, 34.807907, 37.130966>,  <25.527111, 34.631821, 37.207409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.383062, 34.807907, 37.130966>,  <25.142982, 35.101387, 37.003563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.383062, 34.807907, 37.130966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000576, -0.397817, -0.917464,
		0.799848, 0.550847, -0.238348,
		0.600202, -0.733695, 0.318511,
		25.563124, 34.587799, 37.226521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.761776, 35.186459, 36.521893>,  <25.142982, 35.101387, 37.003563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.761776, 35.186459, 36.521893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.803930, 34.816586, 36.668243>,  <25.829224, 34.594662, 36.756054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.803930, 34.816586, 36.668243>,  <25.761776, 35.186459, 36.521893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.803930, 34.816586, 36.668243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156548, -0.347907, -0.924367,
		0.982032, 0.154692, 0.108092,
		0.105386, -0.924679, 0.365872,
		25.835546, 34.539181, 36.778004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.399336, 34.809673, 36.209377>,  <25.761776, 35.186459, 36.521893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.399336, 34.809673, 36.209377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.130840, 34.541569, 36.335987>,  <25.969742, 34.380707, 36.411953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.130840, 34.541569, 36.335987>,  <26.399336, 34.809673, 36.209377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.130840, 34.541569, 36.335987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082031, -0.491566, -0.866968,
		0.736686, -0.555980, 0.384942,
		-0.671241, -0.670260, 0.316522,
		25.929468, 34.340492, 36.430943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.584131, 34.080135, 36.047440>,  <26.399336, 34.809673, 36.209377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.584131, 34.080135, 36.047440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.195688, 34.021584, 36.122829>,  <25.962622, 33.986454, 36.168064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.195688, 34.021584, 36.122829>,  <26.584131, 34.080135, 36.047440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.195688, 34.021584, 36.122829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097217, -0.478623, -0.872622,
		0.217938, -0.865733, 0.450565,
		-0.971108, -0.146375, 0.188474,
		25.904356, 33.977673, 36.179371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.144112, 33.681644, 35.806931>,  <26.584131, 34.080135, 36.047440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.144112, 33.681644, 35.806931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.311251, 33.714859, 35.445045>,  <27.411533, 33.734787, 35.227913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.311251, 33.714859, 35.445045>,  <27.144112, 33.681644, 35.806931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.311251, 33.714859, 35.445045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495491, -0.855507, 0.150325,
		-0.761508, -0.511091, -0.398613,
		0.417846, 0.083035, -0.904716,
		27.436604, 33.739769, 35.173630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.032467, 33.144966, 35.372421>,  <27.144112, 33.681644, 35.806931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.032467, 33.144966, 35.372421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.387936, 33.327061, 35.350410>,  <27.601217, 33.436317, 35.337204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.387936, 33.327061, 35.350410>,  <27.032467, 33.144966, 35.372421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.387936, 33.327061, 35.350410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439126, -0.810333, 0.387981,
		0.132035, -0.368949, -0.920024,
		0.888671, 0.455233, -0.055023,
		27.654537, 33.463631, 35.333904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.425989, 32.800846, 34.888874>,  <27.032467, 33.144966, 35.372421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.425989, 32.800846, 34.888874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.666986, 32.963413, 35.163635>,  <27.811584, 33.060951, 35.328491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.666986, 32.963413, 35.163635>,  <27.425989, 32.800846, 34.888874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.666986, 32.963413, 35.163635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270357, -0.913684, 0.303463,
		0.750941, 0.002874, -0.660364,
		0.602491, 0.406416, 0.686899,
		27.847734, 33.085339, 35.369705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198526, 32.774319, 34.716862>,  <27.425989, 32.800846, 34.888874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.198526, 32.774319, 34.716862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.097141, 32.758041, 35.103458>,  <28.036310, 32.748276, 35.335415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.097141, 32.758041, 35.103458>,  <28.198526, 32.774319, 34.716862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.097141, 32.758041, 35.103458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513578, -0.852335, 0.098803,
		0.819752, 0.521410, 0.236935,
		-0.253465, -0.040691, 0.966488,
		28.021101, 32.745834, 35.393406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.717445, 32.774704, 35.016087>,  <28.198526, 32.774319, 34.716862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.717445, 32.774704, 35.016087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.483616, 32.600479, 35.289894>,  <28.343319, 32.495945, 35.454178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.483616, 32.600479, 35.289894>,  <28.717445, 32.774704, 35.016087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.483616, 32.600479, 35.289894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675078, -0.729106, 0.112582,
		0.450050, 0.527915, 0.720251,
		-0.584572, -0.435558, 0.684518,
		28.308245, 32.469810, 35.495251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083702, 32.577404, 35.668751>,  <28.717445, 32.774704, 35.016087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.083702, 32.577404, 35.668751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.777550, 32.361835, 35.528030>,  <28.593859, 32.232494, 35.443600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.777550, 32.361835, 35.528030>,  <29.083702, 32.577404, 35.668751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777550, 32.361835, 35.528030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609650, -0.782265, -0.128018,
		-0.206211, -0.312458, 0.927279,
		-0.765379, -0.538917, -0.351802,
		28.547935, 32.200161, 35.422489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562477, 32.559341, 36.216137>,  <29.083702, 32.577404, 35.668751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562477, 32.559341, 36.216137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.931799, 32.414101, 36.166080>,  <30.153393, 32.326954, 36.136047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.931799, 32.414101, 36.166080>,  <29.562477, 32.559341, 36.216137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.931799, 32.414101, 36.166080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383451, 0.853069, 0.353891,
		-0.021744, -0.374736, 0.926877,
		0.923305, -0.363106, -0.125144,
		30.208790, 32.305168, 36.128536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959978, 32.545570, 36.863403>,  <29.562477, 32.559341, 36.216137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959978, 32.545570, 36.863403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233582, 32.535477, 36.571789>,  <30.397743, 32.529423, 36.396820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233582, 32.535477, 36.571789>,  <29.959978, 32.545570, 36.863403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233582, 32.535477, 36.571789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489025, 0.757433, 0.432609,
		0.541280, -0.652425, 0.530431,
		0.684011, -0.025232, -0.729035,
		30.438786, 32.527908, 36.353077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668428, 32.657631, 37.545395>,  <29.959978, 32.545570, 36.863403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.668428, 32.657631, 37.545395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.741859, 33.050030, 37.570515>,  <29.785917, 33.285469, 37.585587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.741859, 33.050030, 37.570515>,  <29.668428, 32.657631, 37.545395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741859, 33.050030, 37.570515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028958, 0.069259, -0.997178,
		-0.982579, 0.181241, 0.041122,
		0.183578, 0.980997, 0.062804,
		29.796932, 33.344330, 37.589355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.046721, 33.150822, 37.257900>,  <29.668428, 32.657631, 37.545395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.046721, 33.150822, 37.257900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.429308, 33.266972, 37.246212>,  <29.658859, 33.336662, 37.239201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.429308, 33.266972, 37.246212>,  <29.046721, 33.150822, 37.257900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.429308, 33.266972, 37.246212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001340, -0.104500, -0.994524,
		-0.291835, 0.951191, -0.100340,
		0.956468, 0.290371, -0.029222,
		29.716248, 33.354084, 37.237446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.056816, 33.642540, 36.778496>,  <29.046721, 33.150822, 37.257900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.056816, 33.642540, 36.778496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432844, 33.506275, 36.772614>,  <29.658461, 33.424515, 36.769085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432844, 33.506275, 36.772614>,  <29.056816, 33.642540, 36.778496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432844, 33.506275, 36.772614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041009, -0.070141, -0.996694,
		0.338507, 0.937565, -0.079908,
		0.940070, -0.340665, -0.014706,
		29.714865, 33.404076, 36.768200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.296576, 34.133850, 36.275600>,  <29.056816, 33.642540, 36.778496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.296576, 34.133850, 36.275600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.504387, 33.794914, 36.319603>,  <29.629074, 33.591553, 36.346004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.504387, 33.794914, 36.319603>,  <29.296576, 34.133850, 36.275600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.504387, 33.794914, 36.319603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273318, 0.042820, -0.960970,
		0.809561, 0.529317, 0.253840,
		0.519527, -0.847343, 0.110006,
		29.660246, 33.540710, 36.352604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887009, 34.121037, 35.972424>,  <29.296576, 34.133850, 36.275600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887009, 34.121037, 35.972424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.794493, 33.732010, 35.962418>,  <29.738983, 33.498596, 35.956413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.794493, 33.732010, 35.962418>,  <29.887009, 34.121037, 35.972424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794493, 33.732010, 35.962418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254947, -0.035775, -0.966293,
		0.938886, -0.229870, 0.256227,
		-0.231289, -0.972564, -0.025016,
		29.725105, 33.440239, 35.954914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467781, 33.740959, 35.544064>,  <29.887009, 34.121037, 35.972424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467781, 33.740959, 35.544064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121931, 33.540485, 35.529968>,  <29.914421, 33.420200, 35.521511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121931, 33.540485, 35.529968>,  <30.467781, 33.740959, 35.544064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121931, 33.540485, 35.529968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046125, -0.009344, -0.998892,
		0.500299, -0.865291, 0.031196,
		-0.864623, -0.501184, -0.035237,
		29.862545, 33.390129, 35.519398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680063, 33.175968, 35.132862>,  <30.467781, 33.740959, 35.544064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680063, 33.175968, 35.132862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.287312, 33.248730, 35.111588>,  <30.051661, 33.292385, 35.098824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.287312, 33.248730, 35.111588>,  <30.680063, 33.175968, 35.132862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.287312, 33.248730, 35.111588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034971, -0.101942, -0.994175,
		-0.186265, -0.978018, 0.093734,
		-0.981877, 0.181902, -0.053190,
		29.992748, 33.303299, 35.095631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437790, 32.570053, 34.702446>,  <30.680063, 33.175968, 35.132862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437790, 32.570053, 34.702446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.268696, 32.931709, 34.677719>,  <30.167240, 33.148705, 34.662884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.268696, 32.931709, 34.677719>,  <30.437790, 32.570053, 34.702446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268696, 32.931709, 34.677719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268403, 0.059759, -0.961452,
		-0.865596, -0.423030, -0.267937,
		-0.422734, 0.904143, -0.061816,
		30.141876, 33.202953, 34.659176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896561, 32.584145, 34.056389>,  <30.437790, 32.570053, 34.702446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896561, 32.584145, 34.056389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078415, 32.935455, 34.115627>,  <30.187529, 33.146240, 34.151169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078415, 32.935455, 34.115627>,  <29.896561, 32.584145, 34.056389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.078415, 32.935455, 34.115627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282774, 0.015343, -0.959064,
		-0.844597, 0.477904, -0.241379,
		0.454637, 0.878278, 0.148097,
		30.214806, 33.198940, 34.160057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583574, 33.125298, 33.669109>,  <29.896561, 32.584145, 34.056389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583574, 33.125298, 33.669109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957394, 33.250809, 33.736237>,  <30.181684, 33.326115, 33.776512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957394, 33.250809, 33.736237>,  <29.583574, 33.125298, 33.669109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957394, 33.250809, 33.736237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111353, 0.190053, -0.975438,
		-0.337965, 0.930282, 0.142674,
		0.934548, 0.313777, 0.167821,
		30.237759, 33.344940, 33.786583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.620350, 33.749702, 33.287758>,  <29.583574, 33.125298, 33.669109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.620350, 33.749702, 33.287758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001659, 33.644417, 33.347065>,  <30.230446, 33.581245, 33.382648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001659, 33.644417, 33.347065>,  <29.620350, 33.749702, 33.287758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.001659, 33.644417, 33.347065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208606, 0.218515, -0.953276,
		0.218515, 0.939665, 0.263212,
		0.953276, -0.263212, 0.148271,
		30.287642, 33.565453, 33.391548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997738, 34.381462, 33.129963>,  <29.620350, 33.749702, 33.287758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.997738, 34.381462, 33.129963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.238874, 34.064758, 33.090561>,  <30.383556, 33.874737, 33.066917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.238874, 34.064758, 33.090561>,  <29.997738, 34.381462, 33.129963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.238874, 34.064758, 33.090561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188904, 0.261595, -0.946511,
		0.775175, 0.551988, 0.307266,
		0.602842, -0.791756, -0.098509,
		30.419727, 33.827232, 33.061008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529119, 34.618172, 32.818058>,  <29.997738, 34.381462, 33.129963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529119, 34.618172, 32.818058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591890, 34.229588, 32.746902>,  <30.629553, 33.996437, 32.704208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591890, 34.229588, 32.746902>,  <30.529119, 34.618172, 32.818058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591890, 34.229588, 32.746902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339345, 0.222192, -0.914043,
		0.927480, 0.083072, 0.364527,
		0.156926, -0.971457, -0.177889,
		30.638968, 33.938148, 32.693535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263510, 34.526924, 32.596935>,  <30.529119, 34.618172, 32.818058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263510, 34.526924, 32.596935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.029596, 34.230717, 32.464470>,  <30.889248, 34.052994, 32.384991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.029596, 34.230717, 32.464470>,  <31.263510, 34.526924, 32.596935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029596, 34.230717, 32.464470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425196, 0.067847, -0.902555,
		0.690823, -0.668607, 0.275188,
		-0.584784, -0.740514, -0.331159,
		30.854160, 34.008564, 32.365124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722431, 34.091042, 32.186867>,  <31.263510, 34.526924, 32.596935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722431, 34.091042, 32.186867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346251, 33.996780, 32.088875>,  <31.120543, 33.940224, 32.030079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346251, 33.996780, 32.088875>,  <31.722431, 34.091042, 32.186867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346251, 33.996780, 32.088875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268737, -0.074105, -0.960359,
		0.208154, -0.969009, 0.133020,
		-0.940454, -0.235650, -0.244983,
		31.064114, 33.926086, 32.015381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817965, 33.571167, 31.775146>,  <31.722431, 34.091042, 32.186867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817965, 33.571167, 31.775146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458731, 33.721821, 31.684290>,  <31.243191, 33.812214, 31.629776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458731, 33.721821, 31.684290>,  <31.817965, 33.571167, 31.775146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458731, 33.721821, 31.684290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267705, 0.058336, -0.961733,
		-0.348968, -0.924524, -0.153217,
		-0.898084, 0.376631, -0.227142,
		31.189306, 33.834808, 31.616148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533222, 33.212364, 31.126583>,  <31.817965, 33.571167, 31.775146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533222, 33.212364, 31.126583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308168, 33.542824, 31.138681>,  <31.173136, 33.741100, 31.145941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308168, 33.542824, 31.138681>,  <31.533222, 33.212364, 31.126583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308168, 33.542824, 31.138681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043899, 0.006678, -0.999014,
		-0.825541, -0.563405, 0.032510,
		-0.562633, 0.826154, 0.030246,
		31.139380, 33.790668, 31.147755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230013, 33.175362, 30.513891>,  <31.533222, 33.212364, 31.126583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230013, 33.175362, 30.513891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194824, 33.557934, 30.625244>,  <31.173712, 33.787479, 30.692057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194824, 33.557934, 30.625244>,  <31.230013, 33.175362, 30.513891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194824, 33.557934, 30.625244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004301, 0.279830, -0.960040,
		-0.996114, -0.083260, -0.028731,
		-0.087972, 0.956432, 0.278384,
		31.168432, 33.844864, 30.708759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746716, 33.473076, 30.100365>,  <31.230013, 33.175362, 30.513891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746716, 33.473076, 30.100365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955973, 33.783520, 30.241209>,  <31.081528, 33.969784, 30.325716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955973, 33.783520, 30.241209>,  <30.746716, 33.473076, 30.100365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955973, 33.783520, 30.241209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040690, 0.389940, -0.919941,
		-0.851273, 0.495588, 0.172415,
		0.523143, 0.776106, 0.352111,
		31.112915, 34.016350, 30.346842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574881, 33.989662, 29.689005>,  <30.746716, 33.473076, 30.100365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574881, 33.989662, 29.689005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910900, 34.146519, 29.838961>,  <31.112513, 34.240631, 29.928934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910900, 34.146519, 29.838961>,  <30.574881, 33.989662, 29.689005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910900, 34.146519, 29.838961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195524, 0.425743, -0.883467,
		-0.506049, 0.815456, 0.280972,
		0.840050, 0.392141, 0.374888,
		31.162914, 34.264160, 29.951427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646418, 34.599888, 29.362774>,  <30.574881, 33.989662, 29.689005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646418, 34.599888, 29.362774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017490, 34.535030, 29.497305>,  <31.240133, 34.496117, 29.578024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017490, 34.535030, 29.497305>,  <30.646418, 34.599888, 29.362774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017490, 34.535030, 29.497305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371842, 0.319771, -0.871482,
		0.033754, 0.933519, 0.356936,
		0.927682, -0.162139, 0.336328,
		31.295795, 34.486389, 29.598204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927916, 35.181274, 29.248014>,  <30.646418, 34.599888, 29.362774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927916, 35.181274, 29.248014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215879, 34.904739, 29.272636>,  <31.388657, 34.738819, 29.287409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215879, 34.904739, 29.272636>,  <30.927916, 35.181274, 29.248014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215879, 34.904739, 29.272636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428779, 0.373252, -0.822698,
		0.545784, 0.618660, 0.565137,
		0.719909, -0.691334, 0.061554,
		31.431852, 34.697338, 29.291103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527817, 35.590813, 29.086798>,  <30.927916, 35.181274, 29.248014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527817, 35.590813, 29.086798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596724, 35.203621, 29.013767>,  <31.638067, 34.971306, 28.969950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596724, 35.203621, 29.013767>,  <31.527817, 35.590813, 29.086798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596724, 35.203621, 29.013767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434207, 0.240986, -0.867980,
		0.884188, 0.070250, 0.461819,
		0.172268, -0.967983, -0.182574,
		31.648403, 34.913227, 28.958996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208748, 35.576893, 29.061518>,  <31.527817, 35.590813, 29.086798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208748, 35.576893, 29.061518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054314, 35.273808, 28.851068>,  <31.961653, 35.091957, 28.724798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054314, 35.273808, 28.851068>,  <32.208748, 35.576893, 29.061518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054314, 35.273808, 28.851068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401888, 0.375207, -0.835288,
		0.830314, -0.533937, 0.159653,
		-0.386088, -0.757714, -0.526122,
		31.938488, 35.046494, 28.693232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610210, 35.611423, 28.552999>,  <32.208748, 35.576893, 29.061518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610210, 35.611423, 28.552999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354008, 35.337437, 28.414104>,  <32.200287, 35.173046, 28.330767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354008, 35.337437, 28.414104>,  <32.610210, 35.611423, 28.552999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354008, 35.337437, 28.414104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190800, 0.296046, -0.935923,
		0.743873, -0.665718, -0.058928,
		-0.640506, -0.684965, -0.347239,
		32.161858, 35.131947, 28.309933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923740, 35.298405, 28.046488>,  <32.610210, 35.611423, 28.552999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923740, 35.298405, 28.046488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535076, 35.254665, 27.962667>,  <32.301876, 35.228420, 27.912376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535076, 35.254665, 27.962667>,  <32.923740, 35.298405, 28.046488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535076, 35.254665, 27.962667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169610, 0.294900, -0.940355,
		0.164623, -0.949251, -0.267997,
		-0.971665, -0.109349, -0.209550,
		32.243576, 35.221859, 27.899803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001381, 34.762539, 27.550739>,  <32.923740, 35.298405, 28.046488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001381, 34.762539, 27.550739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659260, 34.969387, 27.537878>,  <32.453987, 35.093498, 27.530161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659260, 34.969387, 27.537878>,  <33.001381, 34.762539, 27.550739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659260, 34.969387, 27.537878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113659, 0.126717, -0.985406,
		-0.505501, -0.846479, -0.167158,
		-0.855307, 0.517123, -0.032154,
		32.402668, 35.124523, 27.528233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621952, 34.541550, 27.003502>,  <33.001381, 34.762539, 27.550739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621952, 34.541550, 27.003502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440399, 34.889847, 27.079187>,  <32.331467, 35.098824, 27.124598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440399, 34.889847, 27.079187>,  <32.621952, 34.541550, 27.003502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440399, 34.889847, 27.079187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031964, 0.228118, -0.973109,
		-0.890486, -0.435633, -0.131372,
		-0.453887, 0.870739, 0.189211,
		32.304234, 35.151070, 27.135950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149319, 34.773224, 26.363636>,  <32.621952, 34.541550, 27.003502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149319, 34.773224, 26.363636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213833, 35.104443, 26.578419>,  <32.252541, 35.303173, 26.707289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213833, 35.104443, 26.578419>,  <32.149319, 34.773224, 26.363636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213833, 35.104443, 26.578419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051205, 0.536326, -0.842456,
		-0.985579, 0.163370, 0.044101,
		0.161285, 0.828048, 0.536957,
		32.262218, 35.352856, 26.739506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739853, 35.256008, 26.018061>,  <32.149319, 34.773224, 26.363636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739853, 35.256008, 26.018061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026291, 35.437313, 26.230387>,  <32.198154, 35.546097, 26.357782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026291, 35.437313, 26.230387>,  <31.739853, 35.256008, 26.018061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026291, 35.437313, 26.230387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202713, 0.592655, -0.779531,
		-0.667921, 0.665820, 0.332514,
		0.716093, 0.453260, 0.530817,
		32.241119, 35.573292, 26.389631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738773, 35.973564, 25.861105>,  <31.739853, 35.256008, 26.018061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738773, 35.973564, 25.861105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112869, 35.943466, 25.999475>,  <32.337326, 35.925407, 26.082499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112869, 35.943466, 25.999475>,  <31.738773, 35.973564, 25.861105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112869, 35.943466, 25.999475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286817, 0.733823, -0.615824,
		-0.207513, 0.675161, 0.707881,
		0.935240, -0.075241, 0.345926,
		32.393440, 35.920895, 26.103252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000771, 36.672745, 25.948715>,  <31.738773, 35.973564, 25.861105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000771, 36.672745, 25.948715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334015, 36.452152, 25.931747>,  <32.533962, 36.319798, 25.921566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334015, 36.452152, 25.931747>,  <32.000771, 36.672745, 25.948715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334015, 36.452152, 25.931747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372695, 0.616377, -0.693671,
		0.408693, 0.562093, 0.719042,
		0.833108, -0.551482, -0.042420,
		32.583946, 36.286709, 25.919022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429028, 37.168381, 25.999693>,  <32.000771, 36.672745, 25.948715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429028, 37.168381, 25.999693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655624, 36.863079, 25.875416>,  <32.791584, 36.679897, 25.800850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655624, 36.863079, 25.875416>,  <32.429028, 37.168381, 25.999693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655624, 36.863079, 25.875416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571221, 0.635448, -0.519531,
		0.593963, 0.116838, 0.795963,
		0.566494, -0.763253, -0.310692,
		32.825573, 36.634102, 25.782207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119186, 37.415890, 26.048826>,  <32.429028, 37.168381, 25.999693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119186, 37.415890, 26.048826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127480, 37.114868, 25.785545>,  <33.132454, 36.934254, 25.627577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127480, 37.114868, 25.785545>,  <33.119186, 37.415890, 26.048826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127480, 37.114868, 25.785545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504011, 0.576435, -0.643192,
		0.863448, -0.318406, 0.391248,
		0.020733, -0.752556, -0.658202,
		33.133698, 36.889103, 25.588085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831745, 37.375565, 25.878326>,  <33.119186, 37.415890, 26.048826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831745, 37.375565, 25.878326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612461, 37.236111, 25.574244>,  <33.480888, 37.152439, 25.391794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612461, 37.236111, 25.574244>,  <33.831745, 37.375565, 25.878326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612461, 37.236111, 25.574244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469601, 0.623835, -0.624743,
		0.692052, -0.699487, -0.178274,
		-0.548214, -0.348637, -0.760207,
		33.447998, 37.131519, 25.346182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318729, 37.164646, 25.428869>,  <33.831745, 37.375565, 25.878326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318729, 37.164646, 25.428869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986336, 37.188908, 25.207678>,  <33.786900, 37.203465, 25.074963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986336, 37.188908, 25.207678>,  <34.318729, 37.164646, 25.428869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986336, 37.188908, 25.207678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478025, 0.586278, -0.654042,
		0.284527, -0.807836, -0.516184,
		-0.830985, 0.060656, -0.552978,
		33.737041, 37.207104, 25.041784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543308, 36.928734, 24.815395>,  <34.318729, 37.164646, 25.428869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543308, 36.928734, 24.815395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213341, 37.151485, 24.776627>,  <34.015358, 37.285137, 24.753365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213341, 37.151485, 24.776627>,  <34.543308, 36.928734, 24.815395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213341, 37.151485, 24.776627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428037, 0.503437, -0.750557,
		-0.369171, -0.660637, -0.653659,
		-0.824922, 0.556874, -0.096923,
		33.965862, 37.318546, 24.747549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548145, 37.101059, 24.172337>,  <34.543308, 36.928734, 24.815395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548145, 37.101059, 24.172337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287537, 37.380810, 24.289913>,  <34.131172, 37.548660, 24.360458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287537, 37.380810, 24.289913>,  <34.548145, 37.101059, 24.172337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287537, 37.380810, 24.289913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452638, 0.669301, -0.589199,
		-0.608805, -0.250826, -0.752624,
		-0.651518, 0.699373, 0.293940,
		34.092083, 37.590622, 24.378096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229996, 37.301365, 23.641363>,  <34.548145, 37.101059, 24.172337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229996, 37.301365, 23.641363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206444, 37.613499, 23.890396>,  <34.192314, 37.800777, 24.039816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206444, 37.613499, 23.890396>,  <34.229996, 37.301365, 23.641363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206444, 37.613499, 23.890396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371540, 0.595990, -0.711866,
		-0.926548, 0.189403, -0.325015,
		-0.058876, 0.780335, 0.622585,
		34.188782, 37.847599, 24.077171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987656, 37.839680, 23.246929>,  <34.229996, 37.301365, 23.641363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987656, 37.839680, 23.246929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158474, 38.014923, 23.563334>,  <34.260963, 38.120068, 23.753176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158474, 38.014923, 23.563334>,  <33.987656, 37.839680, 23.246929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158474, 38.014923, 23.563334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546791, 0.571608, -0.611788,
		-0.720175, 0.693777, 0.004550,
		0.427045, 0.438107, 0.791009,
		34.286587, 38.146355, 23.800636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064926, 38.559547, 23.079781>,  <33.987656, 37.839680, 23.246929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064926, 38.559547, 23.079781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305687, 38.571609, 23.398979>,  <34.450146, 38.578846, 23.590498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305687, 38.571609, 23.398979>,  <34.064926, 38.559547, 23.079781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305687, 38.571609, 23.398979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643348, 0.573686, -0.506939,
		-0.473089, 0.818520, 0.325903,
		0.601906, 0.030159, 0.797998,
		34.486259, 38.580658, 23.638378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195953, 39.317535, 23.278765>,  <34.064926, 38.559547, 23.079781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195953, 39.317535, 23.278765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496937, 39.086933, 23.406168>,  <34.677525, 38.948570, 23.482611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496937, 39.086933, 23.406168>,  <34.195953, 39.317535, 23.278765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496937, 39.086933, 23.406168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646456, 0.553845, -0.524739,
		0.126112, 0.600745, 0.789431,
		0.752456, -0.576508, 0.318509,
		34.722675, 38.913982, 23.501720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798927, 39.760456, 23.386972>,  <34.195953, 39.317535, 23.278765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798927, 39.760456, 23.386972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965679, 39.397057, 23.375343>,  <35.065731, 39.179016, 23.368366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965679, 39.397057, 23.375343>,  <34.798927, 39.760456, 23.386972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965679, 39.397057, 23.375343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805589, 0.384099, -0.451104,
		0.420993, 0.164635, 0.891998,
		0.416883, -0.908495, -0.029075,
		35.090744, 39.124508, 23.366621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469349, 39.921207, 23.508514>,  <34.798927, 39.760456, 23.386972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469349, 39.921207, 23.508514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441059, 39.565151, 23.328449>,  <35.424088, 39.351517, 23.220409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441059, 39.565151, 23.328449>,  <35.469349, 39.921207, 23.508514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441059, 39.565151, 23.328449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789666, 0.225769, -0.570487,
		0.609448, -0.395824, 0.686948,
		-0.070721, -0.890141, -0.450163,
		35.419842, 39.298107, 23.193399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127464, 39.787922, 23.571260>,  <35.469349, 39.921207, 23.508514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127464, 39.787922, 23.571260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981041, 39.535080, 23.298075>,  <35.893185, 39.383373, 23.134163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981041, 39.535080, 23.298075>,  <36.127464, 39.787922, 23.571260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981041, 39.535080, 23.298075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782823, 0.187664, -0.593271,
		0.503178, -0.751814, 0.426131,
		-0.366060, -0.632106, -0.682966,
		35.871223, 39.345448, 23.093185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710781, 39.311096, 23.400913>,  <36.127464, 39.787922, 23.571260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710781, 39.311096, 23.400913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455170, 39.281677, 23.094648>,  <36.301804, 39.264027, 22.910891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455170, 39.281677, 23.094648>,  <36.710781, 39.311096, 23.400913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455170, 39.281677, 23.094648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758129, 0.107945, -0.643108,
		0.129949, -0.991433, -0.013221,
		-0.639025, -0.073548, -0.765661,
		36.263462, 39.259613, 22.864950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988659, 38.863625, 22.987225>,  <36.710781, 39.311096, 23.400913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988659, 38.863625, 22.987225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742966, 39.079582, 22.757013>,  <36.595551, 39.209156, 22.618887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742966, 39.079582, 22.757013>,  <36.988659, 38.863625, 22.987225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742966, 39.079582, 22.757013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680285, -0.007331, -0.732911,
		-0.399915, -0.841699, -0.362781,
		-0.614231, 0.539897, -0.575528,
		36.558697, 39.241550, 22.584354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916161, 38.653248, 22.208195>,  <36.988659, 38.863625, 22.987225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916161, 38.653248, 22.208195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812195, 39.039497, 22.209726>,  <36.749817, 39.271248, 22.210646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812195, 39.039497, 22.209726>,  <36.916161, 38.653248, 22.208195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812195, 39.039497, 22.209726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675854, 0.184743, -0.713506,
		-0.689686, -0.182862, -0.700639,
		-0.259912, 0.965625, 0.003827,
		36.734222, 39.329185, 22.210875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122177, 38.918091, 21.603838>,  <36.916161, 38.653248, 22.208195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122177, 38.918091, 21.603838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037281, 39.276546, 21.759731>,  <36.986343, 39.491619, 21.853268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037281, 39.276546, 21.759731>,  <37.122177, 38.918091, 21.603838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037281, 39.276546, 21.759731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698656, 0.417998, -0.580652,
		-0.683251, 0.149050, -0.714809,
		-0.212243, 0.896137, 0.389732,
		36.973610, 39.545387, 21.876652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264305, 39.360424, 21.119415>,  <37.122177, 38.918091, 21.603838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264305, 39.360424, 21.119415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254597, 39.591805, 21.445559>,  <37.248772, 39.730633, 21.641245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254597, 39.591805, 21.445559>,  <37.264305, 39.360424, 21.119415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254597, 39.591805, 21.445559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748995, 0.550715, -0.368402,
		-0.662131, 0.601755, -0.446625,
		-0.024275, 0.578450, 0.815356,
		37.247314, 39.765339, 21.690165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022419, 39.960789, 20.906250>,  <37.264305, 39.360424, 21.119415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022419, 39.960789, 20.906250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.283600, 39.986572, 21.208109>,  <37.440308, 40.002041, 21.389225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.283600, 39.986572, 21.208109>,  <37.022419, 39.960789, 20.906250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283600, 39.986572, 21.208109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505510, 0.704880, -0.497598,
		-0.564013, 0.706391, 0.427669,
		0.652954, 0.064460, 0.754649,
		37.479485, 40.005909, 21.434504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162003, 40.677887, 21.270842>,  <37.022419, 39.960789, 20.906250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162003, 40.677887, 21.270842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491226, 40.454548, 21.312441>,  <37.688763, 40.320545, 21.337400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491226, 40.454548, 21.312441>,  <37.162003, 40.677887, 21.270842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491226, 40.454548, 21.312441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532372, 0.694665, -0.483757,
		0.197861, 0.453528, 0.869001,
		0.823062, -0.558349, 0.103999,
		37.738144, 40.287045, 21.343641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770496, 41.127979, 21.254282>,  <37.162003, 40.677887, 21.270842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770496, 41.127979, 21.254282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927776, 40.763741, 21.203363>,  <38.022144, 40.545197, 21.172812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927776, 40.763741, 21.203363>,  <37.770496, 41.127979, 21.254282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927776, 40.763741, 21.203363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737280, 0.394978, -0.548097,
		0.549378, 0.121655, 0.826671,
		0.393195, -0.910600, -0.127298,
		38.045734, 40.490559, 21.165174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449467, 41.067398, 21.557472>,  <37.770496, 41.127979, 21.254282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449467, 41.067398, 21.557472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465370, 40.785038, 21.274595>,  <38.474915, 40.615620, 21.104870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465370, 40.785038, 21.274595>,  <38.449467, 41.067398, 21.557472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465370, 40.785038, 21.274595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865343, 0.378199, -0.328857,
		0.499600, -0.598887, 0.625887,
		0.039762, -0.705904, -0.707191,
		38.477299, 40.573265, 21.062437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139412, 40.812138, 21.553757>,  <38.449467, 41.067398, 21.557472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139412, 40.812138, 21.553757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970860, 40.776134, 21.192795>,  <38.869728, 40.754532, 20.976217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970860, 40.776134, 21.192795>,  <39.139412, 40.812138, 21.553757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970860, 40.776134, 21.192795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844654, 0.323299, -0.426659,
		0.330151, -0.942007, -0.060203,
		-0.421379, -0.090011, -0.902407,
		38.844444, 40.749134, 20.922073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384716, 40.190601, 21.159025>,  <39.139412, 40.812138, 21.553757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384716, 40.190601, 21.159025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282768, 40.518768, 20.954302>,  <39.221600, 40.715668, 20.831467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282768, 40.518768, 20.954302>,  <39.384716, 40.190601, 21.159025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282768, 40.518768, 20.954302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958142, 0.142886, -0.248088,
		-0.130406, -0.553617, -0.822497,
		-0.254869, 0.820422, -0.511811,
		39.206306, 40.764896, 20.800758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635319, 40.174664, 20.519783>,  <39.384716, 40.190601, 21.159025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635319, 40.174664, 20.519783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578770, 40.567169, 20.572153>,  <39.544838, 40.802673, 20.603575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578770, 40.567169, 20.572153>,  <39.635319, 40.174664, 20.519783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578770, 40.567169, 20.572153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952790, 0.170770, -0.251055,
		-0.268708, 0.089251, -0.959078,
		-0.141375, 0.981260, 0.130925,
		39.536358, 40.861546, 20.611431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103897, 40.661583, 20.736422>,  <39.635319, 40.174664, 20.519783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103897, 40.661583, 20.736422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950218, 41.029278, 20.770821>,  <39.858009, 41.249893, 20.791460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950218, 41.029278, 20.770821>,  <40.103897, 40.661583, 20.736422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950218, 41.029278, 20.770821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670785, -0.341931, 0.658126,
		0.634379, 0.195165, 0.747980,
		-0.384201, 0.919235, 0.086000,
		39.834957, 41.305050, 20.796621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030891, 40.361946, 21.433256>,  <40.103897, 40.661583, 20.736422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030891, 40.361946, 21.433256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047421, 40.755379, 21.503534>,  <40.057339, 40.991436, 21.545700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047421, 40.755379, 21.503534>,  <40.030891, 40.361946, 21.433256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047421, 40.755379, 21.503534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469354, -0.136125, 0.872455,
		0.882043, -0.118515, 0.456020,
		0.041323, 0.983577, 0.175694,
		40.059818, 41.050453, 21.556242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315804, 40.405952, 22.132557>,  <40.030891, 40.361946, 21.433256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315804, 40.405952, 22.132557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.094093, 40.728477, 22.049959>,  <39.961067, 40.921993, 22.000401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.094093, 40.728477, 22.049959>,  <40.315804, 40.405952, 22.132557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094093, 40.728477, 22.049959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588586, -0.204285, 0.782198,
		0.588515, 0.555089, 0.587815,
		-0.554272, 0.806315, -0.206493,
		39.927811, 40.970371, 21.988010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363365, 41.021999, 22.621517>,  <40.315804, 40.405952, 22.132557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363365, 41.021999, 22.621517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008934, 41.017330, 22.436159>,  <39.796276, 41.014530, 22.324944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008934, 41.017330, 22.436159>,  <40.363365, 41.021999, 22.621517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008934, 41.017330, 22.436159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461516, -0.071159, 0.884273,
		-0.043294, 0.997397, 0.057667,
		-0.886075, -0.011670, -0.463395,
		39.743111, 41.013828, 22.297140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993450, 41.529232, 22.959639>,  <40.363365, 41.021999, 22.621517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993450, 41.529232, 22.959639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739559, 41.252254, 22.822441>,  <39.587223, 41.086067, 22.740122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739559, 41.252254, 22.822441>,  <39.993450, 41.529232, 22.959639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739559, 41.252254, 22.822441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408664, -0.075917, 0.909522,
		-0.655828, 0.717470, -0.234788,
		-0.634731, -0.692440, -0.342993,
		39.549141, 41.044521, 22.719543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365437, 41.753494, 23.245199>,  <39.993450, 41.529232, 22.959639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365437, 41.753494, 23.245199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291283, 41.383434, 23.112700>,  <39.246792, 41.161396, 23.033199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291283, 41.383434, 23.112700>,  <39.365437, 41.753494, 23.245199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291283, 41.383434, 23.112700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598765, -0.160937, 0.784589,
		-0.779174, 0.343791, -0.524114,
		-0.185386, -0.925152, -0.331248,
		39.235668, 41.105888, 23.013325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735172, 41.643856, 23.467670>,  <39.365437, 41.753494, 23.245199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735172, 41.643856, 23.467670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864445, 41.274403, 23.385244>,  <38.942009, 41.052731, 23.335789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864445, 41.274403, 23.385244>,  <38.735172, 41.643856, 23.467670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864445, 41.274403, 23.385244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575674, -0.364705, 0.731840,
		-0.751103, -0.117889, -0.649574,
		0.323179, -0.923630, -0.206065,
		38.961399, 40.997314, 23.323425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187748, 41.328911, 23.332169>,  <38.735172, 41.643856, 23.467670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187748, 41.328911, 23.332169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467472, 41.065224, 23.442730>,  <38.635307, 40.907013, 23.509068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467472, 41.065224, 23.442730>,  <38.187748, 41.328911, 23.332169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467472, 41.065224, 23.442730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603528, -0.337310, 0.722479,
		-0.383038, -0.672052, -0.633741,
		0.699310, -0.659218, 0.276400,
		38.677265, 40.867458, 23.525652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831699, 40.705017, 23.589762>,  <38.187748, 41.328911, 23.332169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831699, 40.705017, 23.589762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199337, 40.680264, 23.745420>,  <38.419918, 40.665413, 23.838816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199337, 40.680264, 23.745420>,  <37.831699, 40.705017, 23.589762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199337, 40.680264, 23.745420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362771, -0.518417, 0.774365,
		0.153823, -0.852886, -0.498923,
		0.919095, -0.061880, 0.389147,
		38.475067, 40.661701, 23.862164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927761, 40.020966, 23.936882>,  <37.831699, 40.705017, 23.589762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927761, 40.020966, 23.936882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191521, 40.253407, 24.127674>,  <38.349777, 40.392872, 24.242149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191521, 40.253407, 24.127674>,  <37.927761, 40.020966, 23.936882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191521, 40.253407, 24.127674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348308, -0.326120, 0.878822,
		0.666238, -0.745632, -0.012641,
		0.659400, 0.581101, 0.476983,
		38.389339, 40.427738, 24.270769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137333, 39.613892, 24.497280>,  <37.927761, 40.020966, 23.936882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137333, 39.613892, 24.497280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242966, 39.983902, 24.606516>,  <38.306347, 40.205910, 24.672058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242966, 39.983902, 24.606516>,  <38.137333, 39.613892, 24.497280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242966, 39.983902, 24.606516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322166, -0.182279, 0.928969,
		0.909103, -0.333308, 0.249876,
		0.264086, 0.925030, 0.273091,
		38.322193, 40.261410, 24.688444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628319, 39.622238, 25.054741>,  <38.137333, 39.613892, 24.497280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628319, 39.622238, 25.054741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461254, 39.982704, 25.101143>,  <38.361015, 40.198986, 25.128984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461254, 39.982704, 25.101143>,  <38.628319, 39.622238, 25.054741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461254, 39.982704, 25.101143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317921, -0.264545, 0.910463,
		0.851168, 0.343384, 0.396990,
		-0.417660, 0.901168, 0.116003,
		38.335957, 40.253056, 25.135944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750008, 39.901497, 25.718666>,  <38.628319, 39.622238, 25.054741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750008, 39.901497, 25.718666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422241, 40.096649, 25.598307>,  <38.225582, 40.213741, 25.526091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422241, 40.096649, 25.598307>,  <38.750008, 39.901497, 25.718666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422241, 40.096649, 25.598307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408814, -0.129460, 0.903389,
		0.401789, 0.863258, 0.305533,
		-0.819412, 0.487878, -0.300897,
		38.176418, 40.243011, 25.508038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501534, 40.063000, 26.375456>,  <38.750008, 39.901497, 25.718666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501534, 40.063000, 26.375456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193851, 40.164707, 26.140961>,  <38.009243, 40.225731, 26.000263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193851, 40.164707, 26.140961>,  <38.501534, 40.063000, 26.375456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193851, 40.164707, 26.140961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637072, -0.233896, 0.734461,
		0.049629, 0.938426, 0.341898,
		-0.769205, 0.254264, -0.586236,
		37.963089, 40.240986, 25.965090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098190, 40.431660, 26.858448>,  <38.501534, 40.063000, 26.375456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098190, 40.431660, 26.858448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847851, 40.317474, 26.568117>,  <37.697647, 40.248962, 26.393919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847851, 40.317474, 26.568117>,  <38.098190, 40.431660, 26.858448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847851, 40.317474, 26.568117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661345, -0.299079, 0.687877,
		-0.413441, 0.910530, -0.001608,
		-0.625851, -0.285459, -0.725826,
		37.660095, 40.231838, 26.350368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481838, 40.630768, 27.179939>,  <38.098190, 40.431660, 26.858448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481838, 40.630768, 27.179939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361919, 40.413109, 26.866499>,  <37.289967, 40.282513, 26.678434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361919, 40.413109, 26.866499>,  <37.481838, 40.630768, 27.179939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361919, 40.413109, 26.866499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784073, -0.327371, 0.527312,
		-0.543462, 0.772486, -0.328504,
		-0.299799, -0.544145, -0.783599,
		37.271980, 40.249866, 26.631420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831333, 40.883713, 27.038490>,  <37.481838, 40.630768, 27.179939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831333, 40.883713, 27.038490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880562, 40.500954, 26.933268>,  <36.910099, 40.271297, 26.870134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880562, 40.500954, 26.933268>,  <36.831333, 40.883713, 27.038490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880562, 40.500954, 26.933268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818113, -0.247870, 0.518895,
		-0.561734, 0.151348, -0.813357,
		0.123073, -0.956898, -0.263057,
		36.917484, 40.213882, 26.854351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214340, 40.729511, 26.766129>,  <36.831333, 40.883713, 27.038490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214340, 40.729511, 26.766129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398170, 40.388847, 26.866898>,  <36.508469, 40.184448, 26.927359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398170, 40.388847, 26.866898>,  <36.214340, 40.729511, 26.766129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398170, 40.388847, 26.866898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880355, -0.399363, 0.255898,
		-0.117331, -0.339384, -0.933301,
		0.459574, -0.851662, 0.251921,
		36.536041, 40.133350, 26.942474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756042, 40.239838, 26.674328>,  <36.214340, 40.729511, 26.766129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756042, 40.239838, 26.674328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009232, 40.045639, 26.915535>,  <36.161144, 39.929119, 27.060259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009232, 40.045639, 26.915535>,  <35.756042, 40.239838, 26.674328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009232, 40.045639, 26.915535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773467, -0.429827, 0.465830,
		0.033034, -0.761274, -0.647588,
		0.632975, -0.485500, 0.603019,
		36.199123, 39.899990, 27.096441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510147, 39.516163, 26.649435>,  <35.756042, 40.239838, 26.674328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510147, 39.516163, 26.649435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739758, 39.569832, 26.972542>,  <35.877525, 39.602036, 27.166407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739758, 39.569832, 26.972542>,  <35.510147, 39.516163, 26.649435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739758, 39.569832, 26.972542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677779, -0.475676, 0.560667,
		0.459463, -0.869327, -0.182111,
		0.574029, 0.134175, 0.807767,
		35.911964, 39.610085, 27.214872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435993, 38.868114, 26.911556>,  <35.510147, 39.516163, 26.649435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435993, 38.868114, 26.911556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591793, 39.096573, 27.200579>,  <35.685272, 39.233650, 27.373991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591793, 39.096573, 27.200579>,  <35.435993, 38.868114, 26.911556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591793, 39.096573, 27.200579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584011, -0.453478, 0.673268,
		0.712197, -0.684213, 0.156929,
		0.389495, 0.571148, 0.722554,
		35.708641, 39.267918, 27.417345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874058, 38.418076, 27.368870>,  <35.435993, 38.868114, 26.911556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874058, 38.418076, 27.368870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736515, 38.725670, 27.584436>,  <35.653992, 38.910225, 27.713776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736515, 38.725670, 27.584436>,  <35.874058, 38.418076, 27.368870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736515, 38.725670, 27.584436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415279, -0.639269, 0.647209,
		0.842205, -0.001256, 0.539156,
		-0.343852, 0.768983, 0.538917,
		35.633358, 38.956364, 27.746111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125244, 38.287491, 28.116167>,  <35.874058, 38.418076, 27.368870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125244, 38.287491, 28.116167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818501, 38.543674, 28.132877>,  <35.634457, 38.697384, 28.142902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818501, 38.543674, 28.132877>,  <36.125244, 38.287491, 28.116167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818501, 38.543674, 28.132877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354501, -0.476922, 0.804285,
		0.535034, 0.601961, 0.592774,
		-0.766855, 0.640459, 0.041774,
		35.588444, 38.735813, 28.145409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892757, 38.391155, 28.851635>,  <36.125244, 38.287491, 28.116167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892757, 38.391155, 28.851635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577591, 38.529087, 28.647562>,  <35.388493, 38.611847, 28.525118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577591, 38.529087, 28.647562>,  <35.892757, 38.391155, 28.851635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577591, 38.529087, 28.647562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613911, -0.375280, 0.694462,
		0.048009, 0.860383, 0.507382,
		-0.787914, 0.344828, -0.510182,
		35.341217, 38.632534, 28.494507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544651, 38.954353, 29.270636>,  <35.892757, 38.391155, 28.851635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544651, 38.954353, 29.270636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250462, 38.850647, 29.020239>,  <35.073948, 38.788425, 28.870001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250462, 38.850647, 29.020239>,  <35.544651, 38.954353, 29.270636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250462, 38.850647, 29.020239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632317, -0.069293, 0.771605,
		-0.243424, 0.963318, -0.112972,
		-0.735473, -0.259262, -0.625990,
		35.029819, 38.772869, 28.832441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038380, 39.348591, 29.528860>,  <35.544651, 38.954353, 29.270636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038380, 39.348591, 29.528860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871357, 39.052444, 29.318144>,  <34.771141, 38.874756, 29.191715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871357, 39.052444, 29.318144>,  <35.038380, 39.348591, 29.528860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871357, 39.052444, 29.318144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700416, -0.107065, 0.705658,
		-0.578843, 0.663628, -0.473855,
		-0.417561, -0.740362, -0.526790,
		34.746090, 38.830338, 29.160107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376610, 39.454109, 29.612617>,  <35.038380, 39.348591, 29.528860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376610, 39.454109, 29.612617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398048, 39.064098, 29.526402>,  <34.410912, 38.830093, 29.474672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398048, 39.064098, 29.526402>,  <34.376610, 39.454109, 29.612617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398048, 39.064098, 29.526402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569407, -0.207158, 0.795525,
		-0.820307, 0.080095, -0.566288,
		0.053594, -0.975023, -0.215540,
		34.414127, 38.771591, 29.461739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670345, 39.174931, 29.676830>,  <34.376610, 39.454109, 29.612617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670345, 39.174931, 29.676830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903053, 38.850449, 29.700430>,  <34.042679, 38.655758, 29.714590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903053, 38.850449, 29.700430>,  <33.670345, 39.174931, 29.676830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903053, 38.850449, 29.700430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576575, -0.360163, 0.733379,
		-0.573675, -0.460675, -0.677255,
		0.581772, -0.811209, 0.058997,
		34.077583, 38.607086, 29.718128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134018, 38.621277, 29.642370>,  <33.670345, 39.174931, 29.676830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134018, 38.621277, 29.642370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472912, 38.465569, 29.786959>,  <33.676247, 38.372143, 29.873713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472912, 38.465569, 29.786959>,  <33.134018, 38.621277, 29.642370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472912, 38.465569, 29.786959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515564, -0.438552, 0.736115,
		-0.128027, -0.810023, -0.572252,
		0.847233, -0.389275, 0.361472,
		33.727081, 38.348785, 29.895401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000000, 37.800823, 29.711039>,  <33.134018, 38.621277, 29.642370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000000, 37.800823, 29.711039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318817, 37.870605, 29.942312>,  <33.510105, 37.912476, 30.081076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318817, 37.870605, 29.942312>,  <33.000000, 37.800823, 29.711039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318817, 37.870605, 29.942312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270468, -0.752882, 0.600012,
		0.539978, -0.634613, -0.552892,
		0.797039, 0.174454, 0.578183,
		33.557930, 37.922943, 30.115767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279106, 37.149422, 29.849367>,  <33.000000, 37.800823, 29.711039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279106, 37.149422, 29.849367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416386, 37.385258, 30.141832>,  <33.498753, 37.526760, 30.317310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416386, 37.385258, 30.141832>,  <33.279106, 37.149422, 29.849367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416386, 37.385258, 30.141832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201496, -0.714104, 0.670414,
		0.917394, -0.377414, -0.126283,
		0.343202, 0.589588, 0.731162,
		33.519348, 37.562134, 30.361181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779350, 36.791473, 30.263010>,  <33.279106, 37.149422, 29.849367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779350, 36.791473, 30.263010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630890, 37.090214, 30.483723>,  <33.541813, 37.269459, 30.616150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630890, 37.090214, 30.483723>,  <33.779350, 36.791473, 30.263010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630890, 37.090214, 30.483723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291848, -0.657938, 0.694221,
		0.881515, 0.096627, 0.462163,
		-0.371155, 0.746847, 0.551782,
		33.519543, 37.314266, 30.649258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001198, 36.611736, 30.851604>,  <33.779350, 36.791473, 30.263010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001198, 36.611736, 30.851604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728355, 36.882275, 30.962814>,  <33.564651, 37.044598, 31.029539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728355, 36.882275, 30.962814>,  <34.001198, 36.611736, 30.851604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728355, 36.882275, 30.962814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200288, -0.538455, 0.818506,
		0.703293, 0.502621, 0.502744,
		-0.682103, 0.676343, 0.278022,
		33.523724, 37.085178, 31.046221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096939, 36.716709, 31.652245>,  <34.001198, 36.611736, 30.851604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096939, 36.716709, 31.652245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728462, 36.845562, 31.564945>,  <33.507374, 36.922874, 31.512566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728462, 36.845562, 31.564945>,  <34.096939, 36.716709, 31.652245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728462, 36.845562, 31.564945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354724, -0.464747, 0.811284,
		0.159909, 0.824768, 0.542389,
		-0.921195, 0.322130, -0.218248,
		33.452103, 36.942200, 31.499472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857483, 36.989700, 32.275867>,  <34.096939, 36.716709, 31.652245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857483, 36.989700, 32.275867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538502, 36.888142, 32.056919>,  <33.347115, 36.827206, 31.925550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538502, 36.888142, 32.056919>,  <33.857483, 36.989700, 32.275867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538502, 36.888142, 32.056919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439815, -0.376455, 0.815380,
		-0.413084, 0.890963, 0.188535,
		-0.797449, -0.253900, -0.547367,
		33.299267, 36.811970, 31.892710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262070, 37.250660, 32.591602>,  <33.857483, 36.989700, 32.275867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262070, 37.250660, 32.591602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091549, 36.963253, 32.371784>,  <32.989235, 36.790810, 32.239895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091549, 36.963253, 32.371784>,  <33.262070, 37.250660, 32.591602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091549, 36.963253, 32.371784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629762, -0.200364, 0.750502,
		-0.649359, 0.666021, -0.367081,
		-0.426301, -0.718519, -0.549543,
		32.963657, 36.747696, 32.206921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544212, 37.333088, 32.633591>,  <33.262070, 37.250660, 32.591602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544212, 37.333088, 32.633591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588486, 36.962666, 32.489277>,  <32.615051, 36.740414, 32.402687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588486, 36.962666, 32.489277>,  <32.544212, 37.333088, 32.633591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588486, 36.962666, 32.489277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574416, -0.355854, 0.737167,
		-0.811046, 0.125647, -0.571330,
		0.110687, -0.926057, -0.360787,
		32.621693, 36.684849, 32.381042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923635, 37.066750, 32.881454>,  <32.544212, 37.333088, 32.633591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923635, 37.066750, 32.881454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168972, 36.764473, 32.789589>,  <32.316174, 36.583107, 32.734470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168972, 36.764473, 32.789589>,  <31.923635, 37.066750, 32.881454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168972, 36.764473, 32.789589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324835, -0.506402, 0.798774,
		-0.719928, -0.415317, -0.556072,
		0.613339, -0.755691, -0.229663,
		32.352974, 36.537766, 32.720692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490105, 36.509609, 33.120670>,  <31.923635, 37.066750, 32.881454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490105, 36.509609, 33.120670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840082, 36.332134, 33.043091>,  <32.050068, 36.225651, 32.996544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840082, 36.332134, 33.043091>,  <31.490105, 36.509609, 33.120670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840082, 36.332134, 33.043091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256092, -0.763927, 0.592310,
		-0.410965, -0.468568, -0.782017,
		0.874943, -0.443688, -0.193951,
		32.102566, 36.199028, 32.984905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440678, 35.758305, 32.841408>,  <31.490105, 36.509609, 33.120670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440678, 35.758305, 32.841408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787687, 35.814228, 33.032345>,  <31.995893, 35.847782, 33.146908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787687, 35.814228, 33.032345>,  <31.440678, 35.758305, 32.841408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787687, 35.814228, 33.032345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186789, -0.797865, 0.573168,
		0.460988, -0.586399, -0.666053,
		0.867525, 0.139812, 0.477339,
		32.047943, 35.856171, 33.175545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700157, 35.046684, 33.085190>,  <31.440678, 35.758305, 32.841408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700157, 35.046684, 33.085190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904579, 35.317581, 33.296913>,  <32.027233, 35.480118, 33.423946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904579, 35.317581, 33.296913>,  <31.700157, 35.046684, 33.085190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904579, 35.317581, 33.296913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067001, -0.582542, 0.810034,
		0.856933, -0.449436, -0.252335,
		0.511054, 0.677239, 0.529312,
		32.057896, 35.520752, 33.455708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278530, 34.618946, 33.472164>,  <31.700157, 35.046684, 33.085190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278530, 34.618946, 33.472164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252205, 34.960854, 33.678093>,  <32.236412, 35.165997, 33.801651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252205, 34.960854, 33.678093>,  <32.278530, 34.618946, 33.472164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252205, 34.960854, 33.678093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226232, -0.515285, 0.826620,
		0.971848, -0.062068, 0.227287,
		-0.065811, 0.854769, 0.514820,
		32.232460, 35.217285, 33.832539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673100, 34.543110, 34.029030>,  <32.278530, 34.618946, 33.472164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673100, 34.543110, 34.029030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428036, 34.830479, 34.160793>,  <32.280998, 35.002899, 34.239853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428036, 34.830479, 34.160793>,  <32.673100, 34.543110, 34.029030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428036, 34.830479, 34.160793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171304, -0.527595, 0.832045,
		0.771558, 0.453331, 0.446306,
		-0.612660, 0.718425, 0.329413,
		32.244236, 35.046005, 34.259617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910999, 33.981133, 34.494431>,  <32.673100, 34.543110, 34.029030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910999, 33.981133, 34.494431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263859, 33.796421, 34.531490>,  <33.475574, 33.685596, 34.553726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263859, 33.796421, 34.531490>,  <32.910999, 33.981133, 34.494431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263859, 33.796421, 34.531490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295871, 0.390279, -0.871862,
		0.366444, 0.796521, 0.480908,
		0.882145, -0.461775, 0.092652,
		33.528503, 33.657890, 34.559284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488987, 34.448616, 34.615929>,  <32.910999, 33.981133, 34.494431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488987, 34.448616, 34.615929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659752, 34.114712, 34.476837>,  <33.762211, 33.914368, 34.393383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659752, 34.114712, 34.476837>,  <33.488987, 34.448616, 34.615929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659752, 34.114712, 34.476837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612242, 0.549806, -0.568219,
		0.665511, 0.029689, 0.745797,
		0.426914, -0.834765, -0.347725,
		33.787827, 33.864281, 34.372520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127228, 34.603767, 34.643818>,  <33.488987, 34.448616, 34.615929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127228, 34.603767, 34.643818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137142, 34.299675, 34.384144>,  <34.143093, 34.117218, 34.228340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137142, 34.299675, 34.384144>,  <34.127228, 34.603767, 34.643818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137142, 34.299675, 34.384144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690481, 0.482618, -0.538809,
		0.722925, -0.434892, 0.536888,
		0.024788, -0.760230, -0.649181,
		34.144577, 34.071606, 34.189388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865402, 34.556454, 34.470699>,  <34.127228, 34.603767, 34.643818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865402, 34.556454, 34.470699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649300, 34.372639, 34.188721>,  <34.519638, 34.262352, 34.019531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649300, 34.372639, 34.188721>,  <34.865402, 34.556454, 34.470699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649300, 34.372639, 34.188721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633018, 0.330032, -0.700263,
		0.554451, -0.824565, 0.112594,
		-0.540252, -0.459535, -0.704950,
		34.487225, 34.234779, 33.977234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320652, 34.390636, 34.043034>,  <34.865402, 34.556454, 34.470699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320652, 34.390636, 34.043034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009228, 34.303207, 33.807724>,  <34.822372, 34.250751, 33.666538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009228, 34.303207, 33.807724>,  <35.320652, 34.390636, 34.043034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009228, 34.303207, 33.807724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522830, 0.292586, -0.800651,
		0.347122, -0.930924, -0.113519,
		-0.778559, -0.218572, -0.588279,
		34.775661, 34.237637, 33.631241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577507, 33.966351, 33.415787>,  <35.320652, 34.390636, 34.043034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577507, 33.966351, 33.415787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225868, 34.133675, 33.324390>,  <35.014885, 34.234070, 33.269554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225868, 34.133675, 33.324390>,  <35.577507, 33.966351, 33.415787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225868, 34.133675, 33.324390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369195, 0.294377, -0.881497,
		-0.301481, -0.859276, -0.413225,
		-0.879093, 0.418315, -0.228491,
		34.962139, 34.259171, 33.255844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289112, 33.743317, 32.796627>,  <35.577507, 33.966351, 33.415787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289112, 33.743317, 32.796627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150738, 34.110668, 32.873478>,  <35.067711, 34.331078, 32.919586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150738, 34.110668, 32.873478>,  <35.289112, 33.743317, 32.796627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150738, 34.110668, 32.873478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291100, 0.299717, -0.908532,
		-0.891956, -0.258371, -0.371023,
		-0.345940, 0.918376, 0.192123,
		35.046955, 34.386181, 32.931114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981815, 33.931110, 32.091671>,  <35.289112, 33.743317, 32.796627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981815, 33.931110, 32.091671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029804, 34.260578, 32.313362>,  <35.058598, 34.458260, 32.446377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029804, 34.260578, 32.313362>,  <34.981815, 33.931110, 32.091671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029804, 34.260578, 32.313362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465752, 0.446316, -0.764118,
		-0.876744, 0.349810, -0.330080,
		0.119976, 0.823672, 0.554230,
		35.065796, 34.507679, 32.479630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827370, 34.422607, 31.655655>,  <34.981815, 33.931110, 32.091671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827370, 34.422607, 31.655655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029461, 34.632286, 31.929873>,  <35.150715, 34.758095, 32.094402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029461, 34.632286, 31.929873>,  <34.827370, 34.422607, 31.655655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029461, 34.632286, 31.929873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530587, 0.437821, -0.725803,
		-0.680607, 0.730433, -0.056934,
		0.505223, 0.524196, 0.685542,
		35.181026, 34.789543, 32.135536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930042, 35.122696, 31.444885>,  <34.827370, 34.422607, 31.655655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930042, 35.122696, 31.444885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224667, 35.088821, 31.713303>,  <35.401443, 35.068497, 31.874353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224667, 35.088821, 31.713303>,  <34.930042, 35.122696, 31.444885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224667, 35.088821, 31.713303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637304, 0.419186, -0.646627,
		-0.226534, 0.903942, 0.362727,
		0.736564, -0.084685, 0.671046,
		35.445637, 35.063416, 31.914616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139542, 35.801517, 31.837063>,  <34.930042, 35.122696, 31.444885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139542, 35.801517, 31.837063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452682, 35.553173, 31.853436>,  <35.640568, 35.404167, 31.863258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452682, 35.553173, 31.853436>,  <35.139542, 35.801517, 31.837063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452682, 35.553173, 31.853436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531117, 0.632524, -0.563762,
		0.324130, 0.463079, 0.824923,
		0.782850, -0.620863, 0.040930,
		35.687538, 35.366913, 31.865715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713577, 36.240993, 31.763256>,  <35.139542, 35.801517, 31.837063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713577, 36.240993, 31.763256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908829, 35.895359, 31.714140>,  <36.025982, 35.687977, 31.684669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908829, 35.895359, 31.714140>,  <35.713577, 36.240993, 31.763256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908829, 35.895359, 31.714140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629153, 0.445887, -0.636672,
		0.604892, 0.233525, 0.761296,
		0.488131, -0.864089, -0.122791,
		36.055267, 35.636131, 31.677303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455482, 36.319302, 31.889240>,  <35.713577, 36.240993, 31.763256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455482, 36.319302, 31.889240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405045, 35.993469, 31.662769>,  <36.374783, 35.797970, 31.526888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405045, 35.993469, 31.662769>,  <36.455482, 36.319302, 31.889240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405045, 35.993469, 31.662769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564064, 0.410619, -0.716397,
		0.816047, -0.409691, 0.407701,
		-0.126091, -0.814583, -0.566176,
		36.367218, 35.749096, 31.492916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145699, 36.220688, 31.638626>,  <36.455482, 36.319302, 31.889240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145699, 36.220688, 31.638626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917885, 36.009689, 31.386475>,  <36.781197, 35.883091, 31.235184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917885, 36.009689, 31.386475>,  <37.145699, 36.220688, 31.638626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917885, 36.009689, 31.386475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594210, 0.265671, -0.759167,
		0.567933, -0.806947, 0.162136,
		-0.569533, -0.527499, -0.630379,
		36.747025, 35.851440, 31.197361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546154, 35.717731, 31.232090>,  <37.145699, 36.220688, 31.638626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546154, 35.717731, 31.232090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215485, 35.822746, 31.033020>,  <37.017082, 35.885754, 30.913578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215485, 35.822746, 31.033020>,  <37.546154, 35.717731, 31.232090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215485, 35.822746, 31.033020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562163, 0.347543, -0.750457,
		-0.024060, -0.900160, -0.434896,
		-0.826676, 0.262538, -0.497674,
		36.967484, 35.901508, 30.883718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715652, 35.800747, 30.533960>,  <37.546154, 35.717731, 31.232090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715652, 35.800747, 30.533960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350441, 35.959377, 30.495775>,  <37.131313, 36.054554, 30.472864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350441, 35.959377, 30.495775>,  <37.715652, 35.800747, 30.533960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350441, 35.959377, 30.495775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310259, 0.523249, -0.793694,
		-0.264809, -0.754280, -0.600781,
		-0.913026, 0.396575, -0.095461,
		37.076534, 36.078350, 30.467136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544987, 35.674473, 29.860577>,  <37.715652, 35.800747, 30.533960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544987, 35.674473, 29.860577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301762, 35.969002, 29.979296>,  <37.155827, 36.145718, 30.050528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301762, 35.969002, 29.979296>,  <37.544987, 35.674473, 29.860577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301762, 35.969002, 29.979296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210699, 0.510122, -0.833895,
		-0.765420, -0.444525, -0.465328,
		-0.608062, 0.736324, 0.296797,
		37.119343, 36.189899, 30.068335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137108, 35.828346, 29.270548>,  <37.544987, 35.674473, 29.860577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137108, 35.828346, 29.270548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113384, 36.153973, 29.501644>,  <37.099152, 36.349346, 29.640303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113384, 36.153973, 29.501644>,  <37.137108, 35.828346, 29.270548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113384, 36.153973, 29.501644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160177, 0.579022, -0.799423,
		-0.985305, 0.045130, -0.164733,
		-0.059306, 0.814062, 0.577742,
		37.095592, 36.398190, 29.674967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761604, 36.315865, 28.831820>,  <37.137108, 35.828346, 29.270548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761604, 36.315865, 28.831820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974663, 36.534157, 29.090574>,  <37.102497, 36.665134, 29.245827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974663, 36.534157, 29.090574>,  <36.761604, 36.315865, 28.831820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974663, 36.534157, 29.090574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154454, 0.688821, -0.708287,
		-0.832126, 0.477180, 0.282605,
		0.532645, 0.545734, 0.646888,
		37.134457, 36.697876, 29.284641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593952, 36.983719, 28.684708>,  <36.761604, 36.315865, 28.831820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593952, 36.983719, 28.684708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912041, 37.026974, 28.923344>,  <37.102894, 37.052929, 29.066526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912041, 37.026974, 28.923344>,  <36.593952, 36.983719, 28.684708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912041, 37.026974, 28.923344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401014, 0.644202, -0.651300,
		-0.454757, 0.757172, 0.468921,
		0.795226, 0.108139, 0.596592,
		37.150608, 37.059414, 29.102322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677559, 37.683727, 28.671448>,  <36.593952, 36.983719, 28.684708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677559, 37.683727, 28.671448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.013462, 37.495708, 28.780159>,  <37.215004, 37.382896, 28.845385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.013462, 37.495708, 28.780159>,  <36.677559, 37.683727, 28.671448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013462, 37.495708, 28.780159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534882, 0.630165, -0.562844,
		0.093298, 0.618022, 0.780605,
		0.839760, -0.470044, 0.271776,
		37.265388, 37.354694, 28.861692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143574, 38.164307, 28.764935>,  <36.677559, 37.683727, 28.671448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143574, 38.164307, 28.764935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347950, 37.825809, 28.704512>,  <37.470577, 37.622711, 28.668259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347950, 37.825809, 28.704512>,  <37.143574, 38.164307, 28.764935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347950, 37.825809, 28.704512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597708, 0.476034, -0.645087,
		0.617806, 0.239314, 0.749029,
		0.510942, -0.846239, -0.151057,
		37.501232, 37.571938, 28.659195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910904, 38.282742, 28.785658>,  <37.143574, 38.164307, 28.764935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910904, 38.282742, 28.785658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860054, 37.952744, 28.565397>,  <37.829544, 37.754745, 28.433241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860054, 37.952744, 28.565397>,  <37.910904, 38.282742, 28.785658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860054, 37.952744, 28.565397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479655, 0.434799, -0.762156,
		0.868200, -0.361010, 0.340441,
		-0.127122, -0.824998, -0.550652,
		37.821918, 37.705246, 28.400202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499878, 38.247417, 28.332596>,  <37.910904, 38.282742, 28.785658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499878, 38.247417, 28.332596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231216, 37.996204, 28.175392>,  <38.070019, 37.845478, 28.081070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231216, 37.996204, 28.175392>,  <38.499878, 38.247417, 28.332596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231216, 37.996204, 28.175392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351290, 0.197081, -0.915289,
		0.652287, -0.752817, 0.088252,
		-0.671652, -0.628033, -0.393011,
		38.029720, 37.807793, 28.057489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953979, 37.823418, 27.899704>,  <38.499878, 38.247417, 28.332596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953979, 37.823418, 27.899704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589149, 37.773018, 27.743633>,  <38.370251, 37.742779, 27.649990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589149, 37.773018, 27.743633>,  <38.953979, 37.823418, 27.899704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589149, 37.773018, 27.743633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395758, -0.021747, -0.918098,
		0.107200, -0.991791, 0.069702,
		-0.912077, -0.126005, -0.390178,
		38.315525, 37.735218, 27.626579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033577, 37.279495, 27.452694>,  <38.953979, 37.823418, 27.899704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033577, 37.279495, 27.452694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697334, 37.452930, 27.322847>,  <38.495586, 37.556992, 27.244940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697334, 37.452930, 27.322847>,  <39.033577, 37.279495, 27.452694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697334, 37.452930, 27.322847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334627, -0.055532, -0.940713,
		-0.425911, -0.899397, -0.098410,
		-0.840609, 0.433591, -0.324614,
		38.445152, 37.583008, 27.225464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930061, 37.083694, 26.728254>,  <39.033577, 37.279495, 27.452694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930061, 37.083694, 26.728254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693417, 37.405140, 26.754145>,  <38.551430, 37.598007, 26.769678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693417, 37.405140, 26.754145>,  <38.930061, 37.083694, 26.728254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693417, 37.405140, 26.754145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172969, 0.204931, -0.963372,
		-0.787447, -0.558750, -0.260241,
		-0.591616, 0.803618, 0.064726,
		38.515930, 37.646225, 26.773563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449429, 37.022678, 26.222244>,  <38.930061, 37.083694, 26.728254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449429, 37.022678, 26.222244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445297, 37.414894, 26.300661>,  <38.442818, 37.650223, 26.347712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445297, 37.414894, 26.300661>,  <38.449429, 37.022678, 26.222244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445297, 37.414894, 26.300661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010643, 0.195935, -0.980559,
		-0.999890, -0.012214, 0.008412,
		-0.010329, 0.980541, 0.196044,
		38.442200, 37.709057, 26.359474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090870, 37.209095, 25.608274>,  <38.449429, 37.022678, 26.222244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090870, 37.209095, 25.608274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.205067, 37.562344, 25.757191>,  <38.273586, 37.774292, 25.846540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.205067, 37.562344, 25.757191>,  <38.090870, 37.209095, 25.608274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205067, 37.562344, 25.757191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140729, 0.345616, -0.927764,
		-0.947993, 0.317261, -0.025609,
		0.285492, 0.883117, 0.372289,
		38.290714, 37.827278, 25.868877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752243, 37.841850, 25.280922>,  <38.090870, 37.209095, 25.608274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752243, 37.841850, 25.280922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112663, 37.961369, 25.406670>,  <38.328915, 38.033077, 25.482119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112663, 37.961369, 25.406670>,  <37.752243, 37.841850, 25.280922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112663, 37.961369, 25.406670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148277, 0.468935, -0.870697,
		-0.407575, 0.831158, 0.378231,
		0.901053, 0.298791, 0.314368,
		38.382980, 38.051006, 25.500980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931377, 38.432735, 24.959513>,  <37.752243, 37.841850, 25.280922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931377, 38.432735, 24.959513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292889, 38.310719, 25.079599>,  <38.509796, 38.237511, 25.151651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292889, 38.310719, 25.079599>,  <37.931377, 38.432735, 24.959513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292889, 38.310719, 25.079599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369892, 0.203813, -0.906443,
		0.215311, 0.930275, 0.297034,
		0.903781, -0.305038, 0.300219,
		38.564022, 38.219208, 25.169664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382816, 38.800762, 24.452173>,  <37.931377, 38.432735, 24.959513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382816, 38.800762, 24.452173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639137, 38.524677, 24.586620>,  <38.792931, 38.359028, 24.667290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639137, 38.524677, 24.586620>,  <38.382816, 38.800762, 24.452173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639137, 38.524677, 24.586620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565186, 0.127843, -0.814997,
		0.519549, 0.712225, 0.472021,
		0.640806, -0.690211, 0.336119,
		38.831379, 38.317616, 24.687456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057941, 39.094795, 24.534742>,  <38.382816, 38.800762, 24.452173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057941, 39.094795, 24.534742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107502, 38.698360, 24.515171>,  <39.137238, 38.460499, 24.503429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107502, 38.698360, 24.515171>,  <39.057941, 39.094795, 24.534742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107502, 38.698360, 24.515171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590165, 0.113240, -0.799301,
		0.797717, 0.070162, 0.598936,
		0.123904, -0.991087, -0.048926,
		39.144672, 38.401035, 24.500494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754269, 39.009552, 24.310993>,  <39.057941, 39.094795, 24.534742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754269, 39.009552, 24.310993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609947, 38.644001, 24.236534>,  <39.523354, 38.424671, 24.191858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609947, 38.644001, 24.236534>,  <39.754269, 39.009552, 24.310993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609947, 38.644001, 24.236534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436553, 0.010888, -0.899613,
		0.824163, -0.405843, 0.395028,
		-0.360801, -0.913878, -0.186146,
		39.501705, 38.369839, 24.180691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280933, 38.653217, 23.965069>,  <39.754269, 39.009552, 24.310993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280933, 38.653217, 23.965069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.955803, 38.455162, 23.842329>,  <39.760727, 38.336330, 23.768686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.955803, 38.455162, 23.842329>,  <40.280933, 38.653217, 23.965069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955803, 38.455162, 23.842329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365236, -0.022839, -0.930635,
		0.453786, -0.868513, 0.199407,
		-0.812823, -0.495140, -0.306848,
		39.711956, 38.306622, 23.750275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504612, 37.978607, 23.653442>,  <40.280933, 38.653217, 23.965069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504612, 37.978607, 23.653442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141926, 38.074635, 23.514746>,  <39.924313, 38.132252, 23.431528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141926, 38.074635, 23.514746>,  <40.504612, 37.978607, 23.653442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141926, 38.074635, 23.514746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352199, -0.021219, -0.935685,
		-0.231988, -0.970523, -0.065313,
		-0.906718, 0.240070, -0.346740,
		39.869911, 38.146656, 23.410725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440102, 37.571545, 22.996220>,  <40.504612, 37.978607, 23.653442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440102, 37.571545, 22.996220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198112, 37.889935, 22.987852>,  <40.052917, 38.080967, 22.982832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198112, 37.889935, 22.987852>,  <40.440102, 37.571545, 22.996220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198112, 37.889935, 22.987852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214068, 0.137285, -0.967124,
		-0.766932, -0.589560, -0.253446,
		-0.604971, 0.795973, -0.020918,
		40.016621, 38.128727, 22.981577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104290, 37.591946, 22.313656>,  <40.440102, 37.571545, 22.996220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104290, 37.591946, 22.313656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040440, 37.965187, 22.442551>,  <40.002129, 38.189133, 22.519888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040440, 37.965187, 22.442551>,  <40.104290, 37.591946, 22.313656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040440, 37.965187, 22.442551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134758, 0.343963, -0.929263,
		-0.977936, -0.104914, -0.180650,
		-0.159629, 0.933104, 0.322236,
		39.992550, 38.245117, 22.539221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264385, 37.185516, 21.697886>,  <40.104290, 37.591946, 22.313656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264385, 37.185516, 21.697886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218029, 36.792305, 21.640989>,  <40.190216, 36.556377, 21.606852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218029, 36.792305, 21.640989>,  <40.264385, 37.185516, 21.697886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218029, 36.792305, 21.640989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286967, -0.103960, 0.952282,
		-0.950904, 0.151181, -0.270048,
		-0.115893, -0.983024, -0.142240,
		40.183262, 36.497398, 21.598318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745186, 36.959934, 22.114326>,  <40.264385, 37.185516, 21.697886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745186, 36.959934, 22.114326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888275, 36.594929, 22.034975>,  <39.974129, 36.375927, 21.987364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888275, 36.594929, 22.034975>,  <39.745186, 36.959934, 22.114326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888275, 36.594929, 22.034975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216923, -0.287823, 0.932793,
		-0.908284, -0.290649, -0.300906,
		0.357723, -0.912514, -0.198377,
		39.995590, 36.321175, 21.975462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224075, 36.551750, 22.350237>,  <39.745186, 36.959934, 22.114326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224075, 36.551750, 22.350237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560669, 36.335690, 22.355080>,  <39.762623, 36.206055, 22.357985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560669, 36.335690, 22.355080>,  <39.224075, 36.551750, 22.350237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560669, 36.335690, 22.355080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379961, -0.575702, 0.724015,
		-0.384107, -0.613845, -0.689678,
		0.841482, -0.540150, 0.012106,
		39.813114, 36.173645, 22.358711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996330, 35.851089, 22.313976>,  <39.224075, 36.551750, 22.350237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996330, 35.851089, 22.313976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365860, 35.871853, 22.465685>,  <39.587578, 35.884312, 22.556711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365860, 35.871853, 22.465685>,  <38.996330, 35.851089, 22.313976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365860, 35.871853, 22.465685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278927, -0.587300, 0.759788,
		0.262189, -0.807703, -0.528084,
		0.923827, 0.051911, 0.379274,
		39.643009, 35.887424, 22.579468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262390, 35.119408, 22.413549>,  <38.996330, 35.851089, 22.313976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262390, 35.119408, 22.413549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452595, 35.368683, 22.661913>,  <39.566719, 35.518246, 22.810930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452595, 35.368683, 22.661913>,  <39.262390, 35.119408, 22.413549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452595, 35.368683, 22.661913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243664, -0.584895, 0.773644,
		0.845289, -0.519172, -0.126279,
		0.475515, 0.623184, 0.620909,
		39.595249, 35.555637, 22.848186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413933, 34.611694, 23.046640>,  <39.262390, 35.119408, 22.413549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413933, 34.611694, 23.046640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498856, 34.982574, 23.170069>,  <39.549809, 35.205105, 23.244125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498856, 34.982574, 23.170069>,  <39.413933, 34.611694, 23.046640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498856, 34.982574, 23.170069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258106, -0.251349, 0.932848,
		0.942500, -0.277695, 0.185953,
		0.212308, 0.927205, 0.308571,
		39.562550, 35.260735, 23.262640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837929, 34.552811, 23.722458>,  <39.413933, 34.611694, 23.046640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837929, 34.552811, 23.722458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668888, 34.915043, 23.707911>,  <39.567463, 35.132381, 23.699183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668888, 34.915043, 23.707911>,  <39.837929, 34.552811, 23.722458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668888, 34.915043, 23.707911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378809, -0.140037, 0.914819,
		0.823353, 0.400383, 0.402223,
		-0.422604, 0.905585, -0.036368,
		39.542107, 35.186718, 23.697001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069454, 34.708969, 24.396811>,  <39.837929, 34.552811, 23.722458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069454, 34.708969, 24.396811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762020, 34.948246, 24.306080>,  <39.577560, 35.091812, 24.251640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762020, 34.948246, 24.306080>,  <40.069454, 34.708969, 24.396811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762020, 34.948246, 24.306080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262911, 0.027899, 0.964417,
		0.583231, 0.800870, 0.135828,
		-0.768582, 0.598189, -0.226829,
		39.531445, 35.127701, 24.238031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877922, 35.148033, 24.982780>,  <40.069454, 34.708969, 24.396811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877922, 35.148033, 24.982780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.533569, 35.134853, 24.779684>,  <39.326958, 35.126945, 24.657827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.533569, 35.134853, 24.779684>,  <39.877922, 35.148033, 24.982780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533569, 35.134853, 24.779684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508217, 0.007616, 0.861195,
		-0.024506, 0.999428, -0.023300,
		-0.860880, -0.032946, -0.507740,
		39.275307, 35.124969, 24.627361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459488, 35.716232, 25.225664>,  <39.877922, 35.148033, 24.982780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459488, 35.716232, 25.225664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219761, 35.434677, 25.073154>,  <39.075924, 35.265743, 24.981647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219761, 35.434677, 25.073154>,  <39.459488, 35.716232, 25.225664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219761, 35.434677, 25.073154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582891, 0.057253, 0.810531,
		-0.548690, 0.708004, -0.444600,
		-0.599313, -0.703884, -0.381275,
		39.039967, 35.223511, 24.958773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845562, 35.814842, 25.447498>,  <39.459488, 35.716232, 25.225664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845562, 35.814842, 25.447498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765530, 35.444214, 25.320108>,  <38.717510, 35.221836, 25.243673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765530, 35.444214, 25.320108>,  <38.845562, 35.814842, 25.447498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765530, 35.444214, 25.320108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649768, -0.117801, 0.750949,
		-0.733326, 0.357189, -0.578488,
		-0.200084, -0.926574, -0.318477,
		38.705505, 35.166241, 25.224566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133179, 35.742451, 25.601107>,  <38.845562, 35.814842, 25.447498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133179, 35.742451, 25.601107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263737, 35.367290, 25.554102>,  <38.342072, 35.142193, 25.525900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263737, 35.367290, 25.554102>,  <38.133179, 35.742451, 25.601107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263737, 35.367290, 25.554102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539783, -0.287001, 0.791369,
		-0.775951, -0.194870, -0.599939,
		0.326397, -0.937900, -0.117511,
		38.361656, 35.085922, 25.518848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576805, 35.302231, 25.419760>,  <38.133179, 35.742451, 25.601107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576805, 35.302231, 25.419760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861107, 35.086861, 25.600836>,  <38.031689, 34.957638, 25.709482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861107, 35.086861, 25.600836>,  <37.576805, 35.302231, 25.419760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861107, 35.086861, 25.600836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653770, -0.268072, 0.707617,
		-0.259613, -0.798921, -0.542519,
		0.710764, -0.538389, 0.452716,
		38.074333, 34.925331, 25.736643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283752, 34.632294, 25.551483>,  <37.576805, 35.302231, 25.419760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283752, 34.632294, 25.551483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599148, 34.672173, 25.794250>,  <37.788383, 34.696098, 25.939911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599148, 34.672173, 25.794250>,  <37.283752, 34.632294, 25.551483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599148, 34.672173, 25.794250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556014, -0.306320, 0.772668,
		0.262944, -0.946694, -0.186096,
		0.788485, 0.099696, 0.606920,
		37.835693, 34.702080, 25.976326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094482, 34.216759, 26.083818>,  <37.283752, 34.632294, 25.551483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094482, 34.216759, 26.083818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403561, 34.378773, 26.279324>,  <37.589008, 34.475979, 26.396626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403561, 34.378773, 26.279324>,  <37.094482, 34.216759, 26.083818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403561, 34.378773, 26.279324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375915, -0.328459, 0.866488,
		0.511492, -0.853267, -0.101543,
		0.772699, 0.405030, 0.488760,
		37.635372, 34.500282, 26.425951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353821, 33.746403, 26.493862>,  <37.094482, 34.216759, 26.083818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353821, 33.746403, 26.493862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482868, 34.087559, 26.658054>,  <37.560295, 34.292252, 26.756571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482868, 34.087559, 26.658054>,  <37.353821, 33.746403, 26.493862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482868, 34.087559, 26.658054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419648, -0.259836, 0.869702,
		0.848419, -0.452837, 0.274087,
		0.322616, 0.852891, 0.410482,
		37.579655, 34.343426, 26.781199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819614, 33.574173, 27.067812>,  <37.353821, 33.746403, 26.493862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819614, 33.574173, 27.067812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697174, 33.948166, 27.139488>,  <37.623711, 34.172562, 27.182493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697174, 33.948166, 27.139488>,  <37.819614, 33.574173, 27.067812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697174, 33.948166, 27.139488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245682, -0.259432, 0.933989,
		0.919751, 0.241873, 0.309121,
		-0.306102, 0.934983, 0.179189,
		37.605343, 34.228661, 27.193245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175274, 33.844975, 27.703514>,  <37.819614, 33.574173, 27.067812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175274, 33.844975, 27.703514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846848, 34.069637, 27.662756>,  <37.649792, 34.204437, 27.638302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846848, 34.069637, 27.662756>,  <38.175274, 33.844975, 27.703514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846848, 34.069637, 27.662756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271497, -0.227223, 0.935232,
		0.502130, 0.795555, 0.339055,
		-0.821069, 0.561661, -0.101895,
		37.600525, 34.238136, 27.632187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138695, 34.145386, 28.303791>,  <38.175274, 33.844975, 27.703514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138695, 34.145386, 28.303791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770378, 34.224861, 28.169533>,  <37.549389, 34.272545, 28.088978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770378, 34.224861, 28.169533>,  <38.138695, 34.145386, 28.303791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770378, 34.224861, 28.169533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372020, -0.188790, 0.908823,
		0.117205, 0.961708, 0.247753,
		-0.920795, 0.198688, -0.335648,
		37.494141, 34.284466, 28.068838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863403, 34.610077, 28.700077>,  <38.138695, 34.145386, 28.303791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863403, 34.610077, 28.700077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522430, 34.463184, 28.551214>,  <37.317848, 34.375050, 28.461897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522430, 34.463184, 28.551214>,  <37.863403, 34.610077, 28.700077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522430, 34.463184, 28.551214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244198, -0.349744, 0.904459,
		-0.462305, 0.861870, 0.208456,
		-0.852433, -0.367231, -0.372155,
		37.266701, 34.353016, 28.439568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299675, 34.899086, 29.140766>,  <37.863403, 34.610077, 28.700077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299675, 34.899086, 29.140766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162292, 34.559780, 28.979530>,  <37.079861, 34.356197, 28.882788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162292, 34.559780, 28.979530>,  <37.299675, 34.899086, 29.140766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162292, 34.559780, 28.979530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300644, -0.307310, 0.902870,
		-0.889746, 0.431287, -0.149478,
		-0.343460, -0.848265, -0.403091,
		37.059254, 34.305302, 28.858603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588070, 34.825359, 29.376532>,  <37.299675, 34.899086, 29.140766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588070, 34.825359, 29.376532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718376, 34.472916, 29.239408>,  <36.796558, 34.261448, 29.157135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718376, 34.472916, 29.239408>,  <36.588070, 34.825359, 29.376532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718376, 34.472916, 29.239408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314279, -0.442887, 0.839690,
		-0.891687, -0.165804, -0.421193,
		0.325765, -0.881113, -0.342808,
		36.816105, 34.208580, 29.136566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008728, 34.319225, 29.544605>,  <36.588070, 34.825359, 29.376532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008728, 34.319225, 29.544605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336403, 34.099033, 29.480219>,  <36.533009, 33.966919, 29.441587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336403, 34.099033, 29.480219>,  <36.008728, 34.319225, 29.544605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336403, 34.099033, 29.480219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237977, -0.581607, 0.777882,
		-0.521823, -0.598925, -0.607445,
		0.819187, -0.550475, -0.160965,
		36.582157, 33.933891, 29.431929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786282, 33.719585, 29.518684>,  <36.008728, 34.319225, 29.544605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786282, 33.719585, 29.518684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171108, 33.643120, 29.596533>,  <36.402004, 33.597240, 29.643242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171108, 33.643120, 29.596533>,  <35.786282, 33.719585, 29.518684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171108, 33.643120, 29.596533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262746, -0.457418, 0.849549,
		-0.073379, -0.868462, -0.490296,
		0.962071, -0.191162, 0.194619,
		36.459728, 33.585770, 29.654919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716740, 33.125309, 29.859211>,  <35.786282, 33.719585, 29.518684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716740, 33.125309, 29.859211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092037, 33.231632, 29.947792>,  <36.317215, 33.295425, 30.000940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092037, 33.231632, 29.947792>,  <35.716740, 33.125309, 29.859211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092037, 33.231632, 29.947792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106959, -0.385879, 0.916328,
		0.329025, -0.883426, -0.333618,
		0.938244, 0.265811, 0.221454,
		36.373512, 33.311375, 30.014229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200394, 32.559544, 30.078028>,  <35.716740, 33.125309, 29.859211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200394, 32.559544, 30.078028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365612, 32.883938, 30.243776>,  <36.464741, 33.078575, 30.343225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365612, 32.883938, 30.243776>,  <36.200394, 32.559544, 30.078028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365612, 32.883938, 30.243776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091925, -0.489800, 0.866975,
		0.906061, -0.320006, -0.276858,
		0.413042, 0.810982, 0.414371,
		36.489525, 33.127232, 30.368088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890919, 32.377300, 30.397732>,  <36.200394, 32.559544, 30.078028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890919, 32.377300, 30.397732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730373, 32.701382, 30.568605>,  <36.634048, 32.895828, 30.671129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730373, 32.701382, 30.568605>,  <36.890919, 32.377300, 30.397732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730373, 32.701382, 30.568605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185045, -0.385051, 0.904154,
		0.897033, 0.441940, 0.004621,
		-0.401361, 0.810200, 0.427182,
		36.609966, 32.944443, 30.696760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340469, 32.656269, 30.912510>,  <36.890919, 32.377300, 30.397732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340469, 32.656269, 30.912510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965302, 32.752354, 31.012602>,  <36.740200, 32.810005, 31.072657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965302, 32.752354, 31.012602>,  <37.340469, 32.656269, 30.912510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965302, 32.752354, 31.012602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128565, -0.429271, 0.893979,
		0.322159, 0.870646, 0.371736,
		-0.937915, 0.240211, 0.250228,
		36.683926, 32.824417, 31.087671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402409, 32.864655, 31.638323>,  <37.340469, 32.656269, 30.912510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402409, 32.864655, 31.638323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006447, 32.825527, 31.597305>,  <36.768867, 32.802052, 31.572695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006447, 32.825527, 31.597305>,  <37.402409, 32.864655, 31.638323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006447, 32.825527, 31.597305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059923, -0.366808, 0.928365,
		-0.128424, 0.925140, 0.357245,
		-0.989907, -0.097817, -0.102544,
		36.709476, 32.796181, 31.566542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039211, 33.234024, 32.238956>,  <37.402409, 32.864655, 31.638323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039211, 33.234024, 32.238956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839321, 32.926033, 32.080261>,  <36.719387, 32.741238, 31.985043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839321, 32.926033, 32.080261>,  <37.039211, 33.234024, 32.238956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839321, 32.926033, 32.080261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042571, -0.479313, 0.876611,
		-0.865137, 0.421175, 0.272305,
		-0.499726, -0.769980, -0.396741,
		36.689404, 32.695038, 31.961239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502956, 33.169758, 32.628334>,  <37.039211, 33.234024, 32.238956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502956, 33.169758, 32.628334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504826, 32.808640, 32.456318>,  <36.505947, 32.591969, 32.353107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504826, 32.808640, 32.456318>,  <36.502956, 33.169758, 32.628334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504826, 32.808640, 32.456318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058540, -0.429063, 0.901375,
		-0.998274, -0.029389, 0.050844,
		0.004675, -0.902796, -0.430043,
		36.506229, 32.537800, 32.327305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153030, 32.772732, 33.157467>,  <36.502956, 33.169758, 32.628334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153030, 32.772732, 33.157467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307167, 32.499798, 32.908974>,  <36.399651, 32.336037, 32.759880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307167, 32.499798, 32.908974>,  <36.153030, 32.772732, 33.157467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307167, 32.499798, 32.908974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129969, -0.626376, 0.768609,
		-0.913576, -0.376917, -0.152686,
		0.385341, -0.682339, -0.621230,
		36.422768, 32.295097, 32.722607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900925, 32.146000, 33.395401>,  <36.153030, 32.772732, 33.157467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900925, 32.146000, 33.395401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224953, 32.049438, 33.181667>,  <36.419369, 31.991501, 33.053429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224953, 32.049438, 33.181667>,  <35.900925, 32.146000, 33.395401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224953, 32.049438, 33.181667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199578, -0.743365, 0.638417,
		-0.551322, -0.623803, -0.553998,
		0.810069, -0.241408, -0.534331,
		36.467972, 31.977016, 33.021366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821209, 31.401987, 33.317486>,  <35.900925, 32.146000, 33.395401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821209, 31.401987, 33.317486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204308, 31.507605, 33.271873>,  <36.434166, 31.570976, 33.244507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204308, 31.507605, 33.271873>,  <35.821209, 31.401987, 33.317486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204308, 31.507605, 33.271873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280016, -0.765474, 0.579345,
		0.065684, -0.586797, -0.807066,
		0.957746, 0.264045, -0.114034,
		36.491631, 31.586819, 33.237663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198662, 30.794134, 32.879658>,  <35.821209, 31.401987, 33.317486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198662, 30.794134, 32.879658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463520, 30.978401, 33.116077>,  <36.622437, 31.088961, 33.257931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463520, 30.978401, 33.116077>,  <36.198662, 30.794134, 32.879658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463520, 30.978401, 33.116077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073645, -0.824917, 0.560435,
		0.745743, -0.327564, -0.580145,
		0.662150, 0.460666, 0.591053,
		36.662167, 31.116600, 33.293392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648994, 30.286861, 33.064938>,  <36.198662, 30.794134, 32.879658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648994, 30.286861, 33.064938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757225, 30.584864, 33.308826>,  <36.822163, 30.763664, 33.455158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757225, 30.584864, 33.308826>,  <36.648994, 30.286861, 33.064938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757225, 30.584864, 33.308826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083412, -0.649104, 0.756113,
		0.959077, -0.153731, -0.237776,
		0.270579, 0.745004, 0.609718,
		36.838398, 30.808365, 33.491741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130283, 30.001997, 33.431141>,  <36.648994, 30.286861, 33.064938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130283, 30.001997, 33.431141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046516, 30.312487, 33.669006>,  <36.996258, 30.498779, 33.811726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046516, 30.312487, 33.669006>,  <37.130283, 30.001997, 33.431141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046516, 30.312487, 33.669006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095059, -0.589107, 0.802444,
		0.973196, 0.224571, 0.049580,
		-0.209413, 0.776222, 0.594664,
		36.983692, 30.545353, 33.847404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661465, 30.011040, 33.977901>,  <37.130283, 30.001997, 33.431141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661465, 30.011040, 33.977901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371086, 30.242235, 34.126995>,  <37.196861, 30.380953, 34.216454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371086, 30.242235, 34.126995>,  <37.661465, 30.011040, 33.977901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371086, 30.242235, 34.126995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152009, -0.393716, 0.906577,
		0.670745, 0.714783, 0.197955,
		-0.725944, 0.577991, 0.372736,
		37.153301, 30.415632, 34.238815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907806, 30.207228, 34.666279>,  <37.661465, 30.011040, 33.977901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907806, 30.207228, 34.666279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510567, 30.254129, 34.664738>,  <37.272224, 30.282270, 34.663815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510567, 30.254129, 34.664738>,  <37.907806, 30.207228, 34.666279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510567, 30.254129, 34.664738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057845, -0.460831, 0.885601,
		0.102064, 0.879708, 0.464432,
		-0.993095, 0.117253, -0.003853,
		37.212639, 30.289305, 34.663582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781055, 30.532295, 35.270462>,  <37.907806, 30.207228, 34.666279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781055, 30.532295, 35.270462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484852, 30.298647, 35.137524>,  <37.307129, 30.158459, 35.057762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484852, 30.298647, 35.137524>,  <37.781055, 30.532295, 35.270462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484852, 30.298647, 35.137524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052412, -0.543216, 0.837956,
		-0.670002, 0.603093, 0.432869,
		-0.740506, -0.584120, -0.332347,
		37.262699, 30.123411, 35.037819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255318, 30.987457, 35.058975>,  <37.781055, 30.532295, 35.270462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255318, 30.987457, 35.058975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593838, 31.178221, 35.153919>,  <38.796947, 31.292679, 35.210884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593838, 31.178221, 35.153919>,  <38.255318, 30.987457, 35.058975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593838, 31.178221, 35.153919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479772, 0.875997, -0.049474,
		-0.231519, -0.072008, 0.970162,
		0.846297, 0.476911, 0.237357,
		38.847725, 31.321295, 35.225128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179325, 31.448521, 35.667400>,  <38.255318, 30.987457, 35.058975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179325, 31.448521, 35.667400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460659, 31.595829, 35.424187>,  <38.629459, 31.684214, 35.278259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460659, 31.595829, 35.424187>,  <38.179325, 31.448521, 35.667400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460659, 31.595829, 35.424187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385499, 0.916244, 0.109030,
		0.597257, 0.157711, 0.786391,
		0.703331, 0.368272, -0.608031,
		38.671658, 31.706310, 35.241776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533115, 31.960531, 36.025719>,  <38.179325, 31.448521, 35.667400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533115, 31.960531, 36.025719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574051, 32.038303, 35.635494>,  <38.598610, 32.084969, 35.401360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574051, 32.038303, 35.635494>,  <38.533115, 31.960531, 36.025719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574051, 32.038303, 35.635494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284640, 0.945429, 0.158567,
		0.953157, 0.261457, 0.152093,
		0.102335, 0.194431, -0.975563,
		38.604752, 32.096634, 35.342827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139721, 32.561932, 35.937237>,  <38.533115, 31.960531, 36.025719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139721, 32.561932, 35.937237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080822, 32.592884, 35.542809>,  <39.045483, 32.611454, 35.306152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080822, 32.592884, 35.542809>,  <39.139721, 32.561932, 35.937237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080822, 32.592884, 35.542809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038377, 0.995737, 0.083872,
		0.988355, 0.050193, -0.143653,
		-0.147250, 0.077383, -0.986068,
		39.036648, 32.616100, 35.246986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547726, 33.144142, 35.505299>,  <39.139721, 32.561932, 35.937237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547726, 33.144142, 35.505299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191933, 33.069614, 35.338390>,  <38.978458, 33.024899, 35.238247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191933, 33.069614, 35.338390>,  <39.547726, 33.144142, 35.505299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191933, 33.069614, 35.338390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226589, 0.972774, 0.048659,
		0.396839, 0.137829, -0.907481,
		-0.889481, -0.186315, -0.417266,
		38.925087, 33.013721, 35.213211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600819, 33.528435, 34.910603>,  <39.547726, 33.144142, 35.505299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600819, 33.528435, 34.910603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217239, 33.469654, 35.007626>,  <38.987091, 33.434387, 35.065838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217239, 33.469654, 35.007626>,  <39.600819, 33.528435, 34.910603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217239, 33.469654, 35.007626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144784, 0.989099, 0.026842,
		-0.243854, -0.009378, -0.969767,
		-0.958944, -0.146952, 0.242553,
		38.929558, 33.425568, 35.080391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370899, 34.003166, 34.529411>,  <39.600819, 33.528435, 34.910603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370899, 34.003166, 34.529411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085842, 33.938843, 34.802551>,  <38.914806, 33.900249, 34.966434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085842, 33.938843, 34.802551>,  <39.370899, 34.003166, 34.529411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085842, 33.938843, 34.802551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042927, 0.961553, 0.271244,
		-0.700213, 0.222612, -0.678340,
		-0.712642, -0.160810, 0.682848,
		38.872051, 33.890598, 35.007404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851696, 34.489502, 34.393379>,  <39.370899, 34.003166, 34.529411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851696, 34.489502, 34.393379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806389, 34.373566, 34.773518>,  <38.779205, 34.304005, 35.001602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806389, 34.373566, 34.773518>,  <38.851696, 34.489502, 34.393379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806389, 34.373566, 34.773518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063711, 0.956655, 0.284168,
		-0.991520, -0.028361, -0.126822,
		-0.113265, -0.289838, 0.950350,
		38.772408, 34.286613, 35.058624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299294, 34.836590, 34.701511>,  <38.851696, 34.489502, 34.393379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299294, 34.836590, 34.701511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524918, 34.697380, 35.001034>,  <38.660294, 34.613853, 35.180748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524918, 34.697380, 35.001034>,  <38.299294, 34.836590, 34.701511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524918, 34.697380, 35.001034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157829, 0.844681, 0.511472,
		-0.810507, -0.406686, 0.421527,
		0.564065, -0.348022, 0.748807,
		38.694138, 34.592972, 35.225677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859173, 34.887379, 35.317371>,  <38.299294, 34.836590, 34.701511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859173, 34.887379, 35.317371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236519, 34.874424, 35.449444>,  <38.462925, 34.866650, 35.528687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236519, 34.874424, 35.449444>,  <37.859173, 34.887379, 35.317371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236519, 34.874424, 35.449444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203967, 0.728294, 0.654206,
		-0.261656, -0.684499, 0.680439,
		0.943363, -0.032390, 0.330178,
		38.519527, 34.864708, 35.548496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885132, 34.945572, 36.021973>,  <37.859173, 34.887379, 35.317371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885132, 34.945572, 36.021973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254463, 35.072010, 35.934757>,  <38.476063, 35.147873, 35.882427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254463, 35.072010, 35.934757>,  <37.885132, 34.945572, 36.021973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254463, 35.072010, 35.934757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123731, 0.782423, 0.610332,
		0.363524, -0.536561, 0.761547,
		0.923331, 0.316097, -0.218040,
		38.531464, 35.166840, 35.869347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351395, 34.927097, 36.777222>,  <37.885132, 34.945572, 36.021973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351395, 34.927097, 36.777222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458439, 35.166813, 36.475430>,  <38.522663, 35.310642, 36.294353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458439, 35.166813, 36.475430>,  <38.351395, 34.927097, 36.777222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458439, 35.166813, 36.475430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148656, 0.799344, 0.582195,
		0.951992, -0.043641, 0.302997,
		0.267606, 0.599287, -0.754482,
		38.538719, 35.346600, 36.249084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899357, 35.414795, 36.891811>,  <38.351395, 34.927097, 36.777222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899357, 35.414795, 36.891811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719494, 35.620197, 36.599476>,  <38.611576, 35.743439, 36.424076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719494, 35.620197, 36.599476>,  <38.899357, 35.414795, 36.891811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719494, 35.620197, 36.599476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023899, 0.811012, 0.584541,
		0.892881, 0.280310, -0.352406,
		-0.449658, 0.513504, -0.730836,
		38.584595, 35.774250, 36.380226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962231, 36.155510, 37.102192>,  <38.899357, 35.414795, 36.891811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962231, 36.155510, 37.102192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724758, 36.199310, 36.783306>,  <38.582275, 36.225590, 36.591976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724758, 36.199310, 36.783306>,  <38.962231, 36.155510, 37.102192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724758, 36.199310, 36.783306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298312, 0.890159, 0.344422,
		0.747363, 0.442296, -0.495805,
		-0.593682, 0.109504, -0.797214,
		38.546654, 36.232162, 36.544144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064049, 36.861752, 36.877155>,  <38.962231, 36.155510, 37.102192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064049, 36.861752, 36.877155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.717190, 36.761047, 36.705257>,  <38.509075, 36.700626, 36.602119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.717190, 36.761047, 36.705257>,  <39.064049, 36.861752, 36.877155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717190, 36.761047, 36.705257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358978, 0.914035, 0.188877,
		0.345250, 0.318052, -0.882975,
		-0.867143, -0.251759, -0.429744,
		38.457047, 36.685520, 36.576336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970875, 37.365860, 36.434868>,  <39.064049, 36.861752, 36.877155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970875, 37.365860, 36.434868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607639, 37.207840, 36.490456>,  <38.389698, 37.113029, 36.523808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607639, 37.207840, 36.490456>,  <38.970875, 37.365860, 36.434868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607639, 37.207840, 36.490456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414865, 0.893895, -0.169822,
		-0.057134, -0.211866, -0.975627,
		-0.908087, -0.395051, 0.138968,
		38.335213, 37.089325, 36.532146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650478, 37.701515, 35.941963>,  <38.970875, 37.365860, 36.434868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650478, 37.701515, 35.941963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336369, 37.554089, 36.140965>,  <38.147903, 37.465633, 36.260365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336369, 37.554089, 36.140965>,  <38.650478, 37.701515, 35.941963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336369, 37.554089, 36.140965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586965, 0.698847, -0.408761,
		-0.197024, -0.613005, -0.765119,
		-0.785273, -0.368562, 0.497502,
		38.100788, 37.443520, 36.290215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085072, 37.884548, 35.538242>,  <38.650478, 37.701515, 35.941963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085072, 37.884548, 35.538242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886532, 37.790051, 35.872387>,  <37.767410, 37.733353, 36.072876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886532, 37.790051, 35.872387>,  <38.085072, 37.884548, 35.538242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886532, 37.790051, 35.872387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614021, 0.775773, -0.145443,
		-0.613693, -0.585121, -0.530108,
		-0.496346, -0.236240, 0.835363,
		37.737629, 37.719177, 36.122997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314579, 37.727432, 35.441582>,  <38.085072, 37.884548, 35.538242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314579, 37.727432, 35.441582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392525, 37.860775, 35.810558>,  <37.439293, 37.940781, 36.031944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392525, 37.860775, 35.810558>,  <37.314579, 37.727432, 35.441582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392525, 37.860775, 35.810558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537097, 0.823200, -0.184032,
		-0.820704, -0.459580, 0.339459,
		0.194865, 0.333358, 0.922443,
		37.450985, 37.960781, 36.087292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709332, 38.000774, 35.708031>,  <37.314579, 37.727432, 35.441582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709332, 38.000774, 35.708031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978146, 38.181156, 35.942982>,  <37.139435, 38.289383, 36.083954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978146, 38.181156, 35.942982>,  <36.709332, 38.000774, 35.708031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978146, 38.181156, 35.942982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548330, 0.836135, -0.014571,
		-0.497699, -0.312286, 0.809181,
		0.672034, 0.450950, 0.587380,
		37.179756, 38.316441, 36.119194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321335, 38.257271, 36.319462>,  <36.709332, 38.000774, 35.708031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321335, 38.257271, 36.319462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646900, 38.470173, 36.226299>,  <36.842239, 38.597916, 36.170403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646900, 38.470173, 36.226299>,  <36.321335, 38.257271, 36.319462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646900, 38.470173, 36.226299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567952, 0.813359, -0.126003,
		0.122374, 0.234838, 0.964301,
		0.813913, 0.532257, -0.232911,
		36.891075, 38.629848, 36.156425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261295, 38.935535, 36.531971>,  <36.321335, 38.257271, 36.319462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261295, 38.935535, 36.531971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561985, 38.966846, 36.270046>,  <36.742401, 38.985634, 36.112892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561985, 38.966846, 36.270046>,  <36.261295, 38.935535, 36.531971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561985, 38.966846, 36.270046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307551, 0.919956, -0.243090,
		0.583369, 0.384125, 0.715631,
		0.751727, 0.078282, -0.654812,
		36.787502, 38.990330, 36.073601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737671, 39.574299, 36.583633>,  <36.261295, 38.935535, 36.531971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737671, 39.574299, 36.583633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663918, 39.412476, 36.225342>,  <36.619667, 39.315380, 36.010365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663918, 39.412476, 36.225342>,  <36.737671, 39.574299, 36.583633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663918, 39.412476, 36.225342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314127, 0.887813, -0.336324,
		0.931305, 0.219362, -0.290776,
		-0.184378, -0.404561, -0.895732,
		36.608604, 39.291107, 35.956623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468239, 39.648136, 36.307186>,  <36.737671, 39.574299, 36.583633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468239, 39.648136, 36.307186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197289, 39.369331, 36.401276>,  <37.034718, 39.202049, 36.457729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197289, 39.369331, 36.401276>,  <37.468239, 39.648136, 36.307186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197289, 39.369331, 36.401276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684067, -0.714434, -0.147093,
		0.270576, 0.061269, 0.960747,
		-0.677378, -0.697015, 0.235220,
		36.994076, 39.160225, 36.471840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940338, 39.082146, 36.384819>,  <37.468239, 39.648136, 36.307186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940338, 39.082146, 36.384819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574089, 38.932949, 36.444832>,  <37.354340, 38.843430, 36.480839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574089, 38.932949, 36.444832>,  <37.940338, 39.082146, 36.384819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574089, 38.932949, 36.444832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388334, -0.917124, 0.089888,
		0.104073, 0.140567, 0.984586,
		-0.915623, -0.372993, 0.150035,
		37.299400, 38.821053, 36.489841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883968, 38.693939, 37.002441>,  <37.940338, 39.082146, 36.384819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883968, 38.693939, 37.002441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600220, 38.557831, 36.755539>,  <37.429970, 38.476166, 36.607395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600220, 38.557831, 36.755539>,  <37.883968, 38.693939, 37.002441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600220, 38.557831, 36.755539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309216, -0.937215, 0.161286,
		-0.633386, -0.076455, 0.770049,
		-0.709371, -0.340268, -0.617260,
		37.387409, 38.455750, 36.570362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525826, 38.268780, 37.390850>,  <37.883968, 38.693939, 37.002441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525826, 38.268780, 37.390850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516373, 38.168049, 37.003857>,  <37.510700, 38.107609, 36.771660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516373, 38.168049, 37.003857>,  <37.525826, 38.268780, 37.390850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516373, 38.168049, 37.003857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417074, -0.881996, 0.219390,
		-0.908565, -0.398329, 0.125871,
		-0.023628, -0.251828, -0.967483,
		37.509285, 38.092499, 36.713612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302917, 37.572208, 37.344204>,  <37.525826, 38.268780, 37.390850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302917, 37.572208, 37.344204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456875, 37.633392, 36.980125>,  <37.549248, 37.670101, 36.761677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456875, 37.633392, 36.980125>,  <37.302917, 37.572208, 37.344204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456875, 37.633392, 36.980125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322677, -0.946240, -0.022569,
		-0.864719, -0.285013, -0.413555,
		0.384890, 0.152961, -0.910199,
		37.572342, 37.679279, 36.707066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193336, 36.907513, 37.020565>,  <37.302917, 37.572208, 37.344204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193336, 36.907513, 37.020565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470215, 37.097855, 36.803520>,  <37.636341, 37.212059, 36.673294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470215, 37.097855, 36.803520>,  <37.193336, 36.907513, 37.020565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470215, 37.097855, 36.803520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340259, -0.878213, -0.336103,
		-0.636462, 0.048023, -0.769811,
		0.692199, 0.475852, -0.542609,
		37.677876, 37.240612, 36.640736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243301, 36.431969, 36.547066>,  <37.193336, 36.907513, 37.020565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243301, 36.431969, 36.547066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536591, 36.684193, 36.445267>,  <37.712566, 36.835526, 36.384186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536591, 36.684193, 36.445267>,  <37.243301, 36.431969, 36.547066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536591, 36.684193, 36.445267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450738, -0.730941, -0.512407,
		-0.509129, 0.260997, -0.820164,
		0.733228, 0.630560, -0.254501,
		37.756557, 36.873360, 36.368916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406853, 36.292957, 35.817940>,  <37.243301, 36.431969, 36.547066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406853, 36.292957, 35.817940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724678, 36.429089, 36.019073>,  <37.915375, 36.510769, 36.139751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724678, 36.429089, 36.019073>,  <37.406853, 36.292957, 35.817940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724678, 36.429089, 36.019073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544766, -0.765299, -0.342851,
		0.268134, 0.546344, -0.793481,
		0.794565, 0.340332, 0.502832,
		37.963047, 36.531189, 36.169922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968891, 36.491558, 35.358448>,  <37.406853, 36.292957, 35.817940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968891, 36.491558, 35.358448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125557, 36.392921, 35.713028>,  <38.219555, 36.333740, 35.925777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125557, 36.392921, 35.713028>,  <37.968891, 36.491558, 35.358448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125557, 36.392921, 35.713028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523513, -0.732552, -0.435088,
		0.756659, 0.634476, -0.157820,
		0.391665, -0.246593, 0.886449,
		38.243057, 36.318943, 35.978962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631287, 36.264400, 35.245232>,  <37.968891, 36.491558, 35.358448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631287, 36.264400, 35.245232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562279, 36.111042, 35.608162>,  <38.520874, 36.019028, 35.825920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562279, 36.111042, 35.608162>,  <38.631287, 36.264400, 35.245232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562279, 36.111042, 35.608162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562621, -0.794447, -0.228719,
		0.808514, 0.471023, 0.352765,
		-0.172521, -0.383395, 0.907328,
		38.510521, 35.996025, 35.880360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266083, 35.979271, 35.373070>,  <38.631287, 36.264400, 35.245232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266083, 35.979271, 35.373070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012997, 35.774185, 35.605206>,  <38.861145, 35.651134, 35.744488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012997, 35.774185, 35.605206>,  <39.266083, 35.979271, 35.373070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012997, 35.774185, 35.605206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465668, -0.850692, -0.243878,
		0.618731, 0.115941, 0.777001,
		-0.632713, -0.512719, 0.580340,
		38.823181, 35.620369, 35.779308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674389, 35.521446, 35.847847>,  <39.266083, 35.979271, 35.373070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674389, 35.521446, 35.847847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316280, 35.346119, 35.879776>,  <39.101414, 35.240925, 35.898933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316280, 35.346119, 35.879776>,  <39.674389, 35.521446, 35.847847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316280, 35.346119, 35.879776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404034, -0.874262, -0.269113,
		0.187746, -0.208676, 0.959795,
		-0.895270, -0.438315, 0.079827,
		39.047699, 35.214626, 35.903725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809677, 34.771179, 35.956905>,  <39.674389, 35.521446, 35.847847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809677, 34.771179, 35.956905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428925, 34.796032, 35.836868>,  <39.200474, 34.810944, 35.764847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428925, 34.796032, 35.836868>,  <39.809677, 34.771179, 35.956905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428925, 34.796032, 35.836868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104769, -0.854254, -0.509188,
		-0.287994, -0.516129, 0.806641,
		-0.951884, 0.062132, -0.300095,
		39.143360, 34.814671, 35.746841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536415, 34.153374, 36.151051>,  <39.809677, 34.771179, 35.956905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536415, 34.153374, 36.151051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301060, 34.297817, 35.861664>,  <39.159847, 34.384483, 35.688034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301060, 34.297817, 35.861664>,  <39.536415, 34.153374, 36.151051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301060, 34.297817, 35.861664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064720, -0.870834, -0.487298,
		-0.805982, -0.333545, 0.489021,
		-0.588392, 0.361104, -0.723463,
		39.124542, 34.406147, 35.644623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913666, 33.774426, 35.864220>,  <39.536415, 34.153374, 36.151051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913666, 33.774426, 35.864220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056995, 33.962032, 35.541325>,  <39.142994, 34.074596, 35.347588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056995, 33.962032, 35.541325>,  <38.913666, 33.774426, 35.864220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056995, 33.962032, 35.541325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025309, -0.859452, -0.510589,
		-0.933253, 0.203389, -0.296095,
		0.358327, 0.469015, -0.807234,
		39.164494, 34.102737, 35.299156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333725, 33.930428, 36.227501>,  <38.913666, 33.774426, 35.864220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333725, 33.930428, 36.227501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459332, 34.032894, 35.861820>,  <38.534695, 34.094372, 35.642410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459332, 34.032894, 35.861820>,  <38.333725, 33.930428, 36.227501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459332, 34.032894, 35.861820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215209, -0.918644, -0.331327,
		-0.924704, 0.300789, -0.233344,
		0.314019, 0.256162, -0.914206,
		38.553535, 34.109741, 35.587559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855930, 33.565067, 35.854214>,  <38.333725, 33.930428, 36.227501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855930, 33.565067, 35.854214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139919, 33.668957, 35.592381>,  <38.310314, 33.731289, 35.435280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139919, 33.668957, 35.592381>,  <37.855930, 33.565067, 35.854214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139919, 33.668957, 35.592381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010348, -0.925557, -0.378467,
		-0.704149, 0.275477, -0.654436,
		0.709977, 0.259725, -0.654581,
		38.352913, 33.746876, 35.396008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814514, 32.997303, 35.429031>,  <37.855930, 33.565067, 35.854214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814514, 32.997303, 35.429031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152832, 33.164017, 35.295815>,  <38.355824, 33.264046, 35.215885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152832, 33.164017, 35.295815>,  <37.814514, 32.997303, 35.429031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152832, 33.164017, 35.295815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265048, -0.870038, -0.415673,
		-0.463006, 0.263302, -0.846343,
		0.845798, 0.416781, -0.333045,
		38.406570, 33.289051, 35.195900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752831, 32.877548, 34.793800>,  <37.814514, 32.997303, 35.429031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752831, 32.877548, 34.793800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137566, 32.906971, 34.899216>,  <38.368408, 32.924625, 34.962467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137566, 32.906971, 34.899216>,  <37.752831, 32.877548, 34.793800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137566, 32.906971, 34.899216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171257, -0.913027, -0.370207,
		0.213389, 0.401213, -0.890782,
		0.961840, 0.073555, 0.263540,
		38.426117, 32.929039, 34.978279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094364, 32.727787, 34.259960>,  <37.752831, 32.877548, 34.793800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094364, 32.727787, 34.259960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.339905, 32.639313, 34.563084>,  <38.487228, 32.586227, 34.744957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.339905, 32.639313, 34.563084>,  <38.094364, 32.727787, 34.259960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339905, 32.639313, 34.563084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181584, -0.894645, -0.408213,
		0.768256, 0.388186, -0.509013,
		0.613848, -0.221183, 0.757805,
		38.524059, 32.572956, 34.790424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714054, 32.407413, 34.056980>,  <38.094364, 32.727787, 34.259960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714054, 32.407413, 34.056980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696568, 32.295994, 34.440750>,  <38.686077, 32.229141, 34.671013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696568, 32.295994, 34.440750>,  <38.714054, 32.407413, 34.056980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696568, 32.295994, 34.440750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594506, -0.779055, -0.199091,
		0.802902, 0.561681, 0.199655,
		-0.043716, -0.278547, 0.959427,
		38.683453, 32.212429, 34.728577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318176, 32.190502, 34.189293>,  <38.714054, 32.407413, 34.056980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318176, 32.190502, 34.189293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113754, 32.036842, 34.496864>,  <38.991100, 31.944645, 34.681408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113754, 32.036842, 34.496864>,  <39.318176, 32.190502, 34.189293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113754, 32.036842, 34.496864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410928, -0.894913, -0.173980,
		0.754960, 0.227061, 0.615207,
		-0.511052, -0.384153, 0.768929,
		38.960438, 31.921597, 34.727543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696426, 31.787315, 34.803482>,  <39.318176, 32.190502, 34.189293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696426, 31.787315, 34.803482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333248, 31.623980, 34.765778>,  <39.115341, 31.525978, 34.743156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333248, 31.623980, 34.765778>,  <39.696426, 31.787315, 34.803482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333248, 31.623980, 34.765778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413528, -0.909455, -0.043445,
		-0.067982, -0.078423, 0.994600,
		-0.907950, -0.408341, -0.094256,
		39.060863, 31.501478, 34.737499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772503, 31.119989, 35.033836>,  <39.696426, 31.787315, 34.803482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772503, 31.119989, 35.033836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400566, 31.090109, 34.889717>,  <39.177406, 31.072182, 34.803246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400566, 31.090109, 34.889717>,  <39.772503, 31.119989, 35.033836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400566, 31.090109, 34.889717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109104, -0.991114, -0.076083,
		-0.351418, -0.110056, 0.929728,
		-0.929840, -0.074700, -0.360303,
		39.121613, 31.067699, 34.781628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356426, 31.158566, 35.529667>,  <39.772503, 31.119989, 35.033836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356426, 31.158566, 35.529667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.443413, 30.942413, 35.204533>,  <40.495605, 30.812721, 35.009453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.443413, 30.942413, 35.204533>,  <40.356426, 31.158566, 35.529667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443413, 30.942413, 35.204533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884943, -0.242186, 0.397771,
		-0.411804, -0.805813, 0.425538,
		0.217470, -0.540381, -0.812832,
		40.508656, 30.780300, 34.960682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715240, 30.592543, 35.835873>,  <40.356426, 31.158566, 35.529667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715240, 30.592543, 35.835873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.784611, 30.672369, 35.450108>,  <40.826233, 30.720264, 35.218647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.784611, 30.672369, 35.450108>,  <40.715240, 30.592543, 35.835873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784611, 30.672369, 35.450108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982880, -0.096936, 0.156687,
		-0.062217, -0.975078, -0.212962,
		0.173425, 0.199568, -0.964415,
		40.836639, 30.732239, 35.160782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.436508, 30.254000, 35.550049>,  <40.715240, 30.592543, 35.835873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.436508, 30.254000, 35.550049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342983, 30.582560, 35.341961>,  <41.286869, 30.779696, 35.217106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342983, 30.582560, 35.341961>,  <41.436508, 30.254000, 35.550049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.342983, 30.582560, 35.341961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953238, 0.299039, 0.043731,
		0.191488, -0.485670, -0.852911,
		-0.233815, 0.821401, -0.520222,
		41.272839, 30.828979, 35.185894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.076969, 30.488405, 35.164173>,  <41.436508, 30.254000, 35.550049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.076969, 30.488405, 35.164173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832520, 30.804323, 35.185135>,  <41.685848, 30.993874, 35.197712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832520, 30.804323, 35.185135>,  <42.076969, 30.488405, 35.164173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.832520, 30.804323, 35.185135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766994, 0.607239, -0.207317,
		-0.195559, -0.086504, -0.976869,
		-0.611127, 0.789796, 0.052403,
		41.649181, 31.041262, 35.200855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032719, 30.903034, 34.563343>,  <42.076969, 30.488405, 35.164173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032719, 30.903034, 34.563343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.990673, 31.077393, 34.920879>,  <41.965446, 31.182007, 35.135399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.990673, 31.077393, 34.920879>,  <42.032719, 30.903034, 34.563343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.990673, 31.077393, 34.920879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723836, 0.649870, -0.231799,
		-0.681919, 0.622628, -0.383825,
		-0.105112, 0.435895, 0.893838,
		41.959141, 31.208160, 35.189030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960728, 31.617975, 34.472668>,  <42.032719, 30.903034, 34.563343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.960728, 31.617975, 34.472668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112968, 31.538485, 34.833923>,  <42.204311, 31.490791, 35.050674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112968, 31.538485, 34.833923>,  <41.960728, 31.617975, 34.472668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112968, 31.538485, 34.833923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732700, 0.660643, -0.163408,
		-0.564176, 0.723919, 0.397047,
		0.380600, -0.198725, 0.903134,
		42.227150, 31.478867, 35.104862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048107, 32.252285, 34.813885>,  <41.960728, 31.617975, 34.472668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048107, 32.252285, 34.813885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.321320, 32.016479, 34.986366>,  <42.485249, 31.874996, 35.089855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.321320, 32.016479, 34.986366>,  <42.048107, 32.252285, 34.813885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.321320, 32.016479, 34.986366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719716, 0.643787, -0.259899,
		-0.124389, 0.487864, 0.864011,
		0.683035, -0.589514, 0.431204,
		42.526230, 31.839624, 35.115726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.483311, 32.551041, 35.336796>,  <42.048107, 32.252285, 34.813885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.483311, 32.551041, 35.336796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.674301, 32.295139, 35.095882>,  <42.788895, 32.141598, 34.951336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.674301, 32.295139, 35.095882>,  <42.483311, 32.551041, 35.336796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.674301, 32.295139, 35.095882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530310, 0.756361, -0.382999,
		0.700565, -0.136524, 0.700406,
		0.477472, -0.639749, -0.602281,
		42.817543, 32.103214, 34.915199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.243629, 32.652687, 35.402180>,  <42.483311, 32.551041, 35.336796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.243629, 32.652687, 35.402180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.177219, 32.489380, 35.043125>,  <43.137371, 32.391396, 34.827690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.177219, 32.489380, 35.043125>,  <43.243629, 32.652687, 35.402180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.177219, 32.489380, 35.043125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616326, 0.667620, -0.417643,
		0.769790, -0.622579, 0.140781,
		-0.166027, -0.408265, -0.897638,
		43.127411, 32.366901, 34.773834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.824444, 32.386055, 35.062370>,  <43.243629, 32.652687, 35.402180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.824444, 32.386055, 35.062370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.547981, 32.510735, 34.801559>,  <43.382103, 32.585541, 34.645073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.547981, 32.510735, 34.801559>,  <43.824444, 32.386055, 35.062370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.547981, 32.510735, 34.801559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674823, 0.601272, -0.427887,
		0.258677, -0.735743, -0.625914,
		-0.691159, 0.311696, -0.652031,
		43.340633, 32.604244, 34.605949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.149651, 32.728928, 34.705273>,  <43.824444, 32.386055, 35.062370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.149651, 32.728928, 34.705273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.826111, 32.815468, 34.486565>,  <43.631989, 32.867390, 34.355339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.826111, 32.815468, 34.486565>,  <44.149651, 32.728928, 34.705273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.826111, 32.815468, 34.486565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556661, 0.581329, -0.593452,
		0.189463, -0.784379, -0.590638,
		-0.808846, 0.216348, -0.546774,
		43.583458, 32.880371, 34.322533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.536503, 32.752144, 35.389938>,  <44.149651, 32.728928, 34.705273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.536503, 32.752144, 35.389938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.869663, 32.563702, 35.506104>,  <45.069557, 32.450634, 35.575802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.869663, 32.563702, 35.506104>,  <44.536503, 32.752144, 35.389938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.869663, 32.563702, 35.506104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551844, 0.667323, -0.500149,
		0.041828, 0.576834, 0.815790,
		0.832898, -0.471109, 0.290409,
		45.119534, 32.422367, 35.593227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.959663, 33.188419, 35.654324>,  <44.536503, 32.752144, 35.389938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.959663, 33.188419, 35.654324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.216160, 32.920410, 35.504723>,  <45.370060, 32.759605, 35.414963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.216160, 32.920410, 35.504723>,  <44.959663, 33.188419, 35.654324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.216160, 32.920410, 35.504723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547695, 0.741022, -0.388481,
		0.537434, 0.044271, 0.842143,
		0.641244, -0.670020, -0.374003,
		45.408535, 32.719402, 35.392521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.630520, 33.178867, 35.912384>,  <44.959663, 33.188419, 35.654324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.630520, 33.178867, 35.912384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.655865, 33.028946, 35.542408>,  <45.671070, 32.938992, 35.320423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.655865, 33.028946, 35.542408>,  <45.630520, 33.178867, 35.912384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.655865, 33.028946, 35.542408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791543, 0.583335, -0.182156,
		0.607820, -0.720586, 0.333633,
		0.063361, -0.374803, -0.924937,
		45.674873, 32.916504, 35.264927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.207748, 32.828220, 35.920113>,  <45.630520, 33.178867, 35.912384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.207748, 32.828220, 35.920113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.117031, 32.970737, 35.557537>,  <46.062603, 33.056248, 35.339993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.117031, 32.970737, 35.557537>,  <46.207748, 32.828220, 35.920113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.117031, 32.970737, 35.557537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760842, 0.645823, 0.063491,
		0.608018, -0.675255, -0.417547,
		-0.226789, 0.356291, -0.906435,
		46.048996, 33.077625, 35.285606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.800694, 32.749767, 35.507648>,  <46.207748, 32.828220, 35.920113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.800694, 32.749767, 35.507648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.554153, 33.049686, 35.411392>,  <46.406227, 33.229637, 35.353638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.554153, 33.049686, 35.411392>,  <46.800694, 32.749767, 35.507648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.554153, 33.049686, 35.411392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730908, 0.658440, 0.179528,
		0.293060, -0.065235, -0.953866,
		-0.616352, 0.749800, -0.240644,
		46.369247, 33.274628, 35.339199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.962181, 33.061096, 34.877419>,  <46.800694, 32.749767, 35.507648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.962181, 33.061096, 34.877419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.764481, 33.349033, 35.072372>,  <46.645859, 33.521793, 35.189346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.764481, 33.349033, 35.072372>,  <46.962181, 33.061096, 34.877419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.764481, 33.349033, 35.072372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794980, 0.601118, -0.081633,
		-0.351739, 0.347115, -0.869362,
		-0.494253, 0.719839, 0.487386,
		46.616203, 33.564983, 35.218590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.544533, 33.593407, 34.887299>,  <46.962181, 33.061096, 34.877419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.544533, 33.593407, 34.887299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.234119, 33.836071, 34.956268>,  <47.047871, 33.981670, 34.997650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.234119, 33.836071, 34.956268>,  <47.544533, 33.593407, 34.887299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.234119, 33.836071, 34.956268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630018, 0.733069, 0.256297,
		0.029089, 0.307524, -0.951096,
		-0.776036, 0.606663, 0.172421,
		47.001308, 34.018070, 35.007996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.718670, 34.290852, 34.591442>,  <47.544533, 33.593407, 34.887299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.718670, 34.290852, 34.591442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.466736, 34.335045, 34.898975>,  <47.315575, 34.361561, 35.083496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.466736, 34.335045, 34.898975>,  <47.718670, 34.290852, 34.591442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.466736, 34.335045, 34.898975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482866, 0.831013, 0.276146,
		-0.608403, 0.545170, -0.576746,
		-0.629830, 0.110483, 0.768835,
		47.277786, 34.368191, 35.129627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.399956, 35.018917, 34.651546>,  <47.718670, 34.290852, 34.591442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.399956, 35.018917, 34.651546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.432396, 34.826069, 35.000484>,  <47.451862, 34.710361, 35.209846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.432396, 34.826069, 35.000484>,  <47.399956, 35.018917, 34.651546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.432396, 34.826069, 35.000484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650875, 0.688458, 0.319980,
		-0.754841, 0.541835, 0.369635,
		0.081102, -0.482120, 0.872343,
		47.456726, 34.681435, 35.262188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.525043, 32.853966, 25.337141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.316196, 33.188511, 25.403938>,  <34.190887, 33.389236, 25.444016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.316196, 33.188511, 25.403938>,  <34.525043, 32.853966, 25.337141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316196, 33.188511, 25.403938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311338, -0.369196, 0.875650,
		0.794014, 0.405205, 0.453156,
		-0.522121, 0.836363, 0.166991,
		34.159561, 33.439419, 25.454035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700138, 33.160957, 26.050446>,  <34.525043, 32.853966, 25.337141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700138, 33.160957, 26.050446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.332111, 33.285675, 25.955566>,  <34.111294, 33.360508, 25.898640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.332111, 33.285675, 25.955566>,  <34.700138, 33.160957, 26.050446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332111, 33.285675, 25.955566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321918, -0.256652, 0.911317,
		0.223268, 0.914829, 0.336510,
		-0.920065, 0.311796, -0.237198,
		34.056091, 33.379215, 25.884407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336582, 33.350716, 26.691721>,  <34.700138, 33.160957, 26.050446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336582, 33.350716, 26.691721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.031620, 33.331429, 26.433601>,  <33.848644, 33.319855, 26.278728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.031620, 33.331429, 26.433601>,  <34.336582, 33.350716, 26.691721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031620, 33.331429, 26.433601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585282, -0.373969, 0.719439,
		-0.276012, 0.926187, 0.256896,
		-0.762406, -0.048217, -0.645300,
		33.802898, 33.316963, 26.240011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762306, 33.736134, 27.005344>,  <34.336582, 33.350716, 26.691721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762306, 33.736134, 27.005344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.599747, 33.464844, 26.760443>,  <33.502213, 33.302071, 26.613503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.599747, 33.464844, 26.760443>,  <33.762306, 33.736134, 27.005344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599747, 33.464844, 26.760443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491131, -0.402899, 0.772310,
		-0.770473, 0.614564, -0.169357,
		-0.406400, -0.678220, -0.612255,
		33.477825, 33.261379, 26.576767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023750, 33.821941, 27.112719>,  <33.762306, 33.736134, 27.005344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023750, 33.821941, 27.112719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.071087, 33.460899, 26.947166>,  <33.099487, 33.244274, 26.847836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.071087, 33.460899, 26.947166>,  <33.023750, 33.821941, 27.112719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071087, 33.460899, 26.947166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590376, -0.399091, 0.701557,
		-0.798406, 0.161324, -0.580106,
		0.118337, -0.902608, -0.413878,
		33.106586, 33.190117, 26.823004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363018, 33.597542, 26.998966>,  <33.023750, 33.821941, 27.112719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363018, 33.597542, 26.998966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.631001, 33.302280, 27.030697>,  <32.791790, 33.125126, 27.049736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.631001, 33.302280, 27.030697>,  <32.363018, 33.597542, 26.998966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631001, 33.302280, 27.030697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384902, -0.253984, 0.887323,
		-0.634832, -0.624999, -0.454274,
		0.669955, -0.738152, 0.079327,
		32.831985, 33.080833, 27.054495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105537, 33.145512, 27.489079>,  <32.363018, 33.597542, 26.998966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105537, 33.145512, 27.489079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.475010, 32.994789, 27.461283>,  <32.696693, 32.904358, 27.444605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.475010, 32.994789, 27.461283>,  <32.105537, 33.145512, 27.489079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475010, 32.994789, 27.461283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079250, -0.365324, 0.927501,
		-0.374899, -0.851199, -0.367303,
		0.923672, -0.376827, -0.069502,
		32.752113, 32.881748, 27.440435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150532, 32.326710, 27.530508>,  <32.105537, 33.145512, 27.489079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150532, 32.326710, 27.530508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.481876, 32.507923, 27.662310>,  <32.680683, 32.616650, 27.741390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.481876, 32.507923, 27.662310>,  <32.150532, 32.326710, 27.530508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481876, 32.507923, 27.662310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255029, -0.218734, 0.941868,
		0.498768, -0.864245, -0.065656,
		0.828366, 0.453030, 0.329505,
		32.730385, 32.643833, 27.761162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284393, 31.911757, 28.118347>,  <32.150532, 32.326710, 27.530508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284393, 31.911757, 28.118347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.536621, 32.219357, 28.160341>,  <32.687958, 32.403915, 28.185537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.536621, 32.219357, 28.160341>,  <32.284393, 31.911757, 28.118347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536621, 32.219357, 28.160341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058940, -0.182320, 0.981471,
		0.773894, -0.612696, -0.160290,
		0.630567, 0.769002, 0.104984,
		32.725792, 32.450058, 28.191837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937336, 31.626816, 28.516857>,  <32.284393, 31.911757, 28.118347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937336, 31.626816, 28.516857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.907326, 32.019279, 28.588070>,  <32.889320, 32.254757, 28.630798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.907326, 32.019279, 28.588070>,  <32.937336, 31.626816, 28.516857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907326, 32.019279, 28.588070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094935, -0.170696, 0.980740,
		0.992653, 0.090479, -0.080340,
		-0.075023, 0.981161, 0.178032,
		32.884819, 32.313629, 28.641479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565147, 31.759672, 28.809330>,  <32.937336, 31.626816, 28.516857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565147, 31.759672, 28.809330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.323780, 32.056885, 28.925112>,  <33.178959, 32.235214, 28.994581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.323780, 32.056885, 28.925112>,  <33.565147, 31.759672, 28.809330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323780, 32.056885, 28.925112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327256, -0.100266, 0.939601,
		0.727178, 0.661701, -0.182659,
		-0.603421, 0.743033, 0.289457,
		33.142754, 32.279797, 29.011950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941914, 32.200199, 29.246061>,  <33.565147, 31.759672, 28.809330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941914, 32.200199, 29.246061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.562290, 32.265026, 29.354147>,  <33.334515, 32.303921, 29.418999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.562290, 32.265026, 29.354147>,  <33.941914, 32.200199, 29.246061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562290, 32.265026, 29.354147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240388, -0.182007, 0.953461,
		0.203704, 0.969849, 0.133777,
		-0.949062, 0.162065, 0.270215,
		33.277573, 32.313644, 29.435211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031429, 32.357430, 29.855724>,  <33.941914, 32.200199, 29.246061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031429, 32.357430, 29.855724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.634483, 32.312508, 29.876133>,  <33.396317, 32.285553, 29.888378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.634483, 32.312508, 29.876133>,  <34.031429, 32.357430, 29.855724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634483, 32.312508, 29.876133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074588, -0.216890, 0.973342,
		-0.098244, 0.969715, 0.223611,
		-0.992363, -0.112304, 0.051021,
		33.336773, 32.278816, 29.891439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836018, 32.619781, 30.539246>,  <34.031429, 32.357430, 29.855724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836018, 32.619781, 30.539246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.548637, 32.358807, 30.442787>,  <33.376209, 32.202221, 30.384912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.548637, 32.358807, 30.442787>,  <33.836018, 32.619781, 30.539246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548637, 32.358807, 30.442787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054554, -0.398473, 0.915556,
		-0.693434, 0.644628, 0.321877,
		-0.718452, -0.652437, -0.241147,
		33.333103, 32.163074, 30.370443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451859, 32.588284, 31.149149>,  <33.836018, 32.619781, 30.539246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451859, 32.588284, 31.149149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.334999, 32.258698, 30.954941>,  <33.264885, 32.060947, 30.838415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.334999, 32.258698, 30.954941>,  <33.451859, 32.588284, 31.149149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334999, 32.258698, 30.954941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055206, -0.521352, 0.851554,
		-0.954778, 0.221978, 0.197800,
		-0.292149, -0.823965, -0.485521,
		33.247353, 32.011509, 30.809284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971153, 32.272522, 31.550543>,  <33.451859, 32.588284, 31.149149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971153, 32.272522, 31.550543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.045727, 31.956335, 31.317167>,  <33.090473, 31.766623, 31.177141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.045727, 31.956335, 31.317167>,  <32.971153, 32.272522, 31.550543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045727, 31.956335, 31.317167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097732, -0.575985, 0.811597,
		-0.977594, -0.208334, -0.030132,
		0.186439, -0.790468, -0.583440,
		33.101658, 31.719194, 31.142136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552536, 31.852793, 31.916126>,  <32.971153, 32.272522, 31.550543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552536, 31.852793, 31.916126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.833462, 31.673023, 31.695301>,  <33.002018, 31.565161, 31.562805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.833462, 31.673023, 31.695301>,  <32.552536, 31.852793, 31.916126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833462, 31.673023, 31.695301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232984, -0.587687, 0.774818,
		-0.672664, -0.672786, -0.308030,
		0.702311, -0.449426, -0.552064,
		33.044155, 31.538195, 31.529682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439312, 31.134111, 31.986616>,  <32.552536, 31.852793, 31.916126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439312, 31.134111, 31.986616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.819626, 31.120375, 31.863438>,  <33.047813, 31.112133, 31.789532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.819626, 31.120375, 31.863438>,  <32.439312, 31.134111, 31.986616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819626, 31.120375, 31.863438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239032, -0.551094, 0.799474,
		-0.197161, -0.833736, -0.515763,
		0.950784, -0.034341, -0.307944,
		33.104862, 31.110073, 31.771053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741405, 30.405579, 32.177231>,  <32.439312, 31.134111, 31.986616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741405, 30.405579, 32.177231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.069313, 30.632751, 32.147770>,  <33.266060, 30.769054, 32.130093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.069313, 30.632751, 32.147770>,  <32.741405, 30.405579, 32.177231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069313, 30.632751, 32.147770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312696, -0.336144, 0.888385,
		0.479784, -0.751306, -0.453152,
		0.819773, 0.567932, -0.073654,
		33.315247, 30.803131, 32.125675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265621, 30.046801, 32.426506>,  <32.741405, 30.405579, 32.177231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265621, 30.046801, 32.426506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.465122, 30.393333, 32.437180>,  <33.584824, 30.601254, 32.443584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.465122, 30.393333, 32.437180>,  <33.265621, 30.046801, 32.426506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465122, 30.393333, 32.437180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357035, -0.233406, 0.904460,
		0.789790, -0.441579, -0.425723,
		0.498757, 0.866331, 0.026683,
		33.614750, 30.653233, 32.445183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933895, 29.858959, 32.685455>,  <33.265621, 30.046801, 32.426506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933895, 29.858959, 32.685455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.926777, 30.252220, 32.758228>,  <33.922508, 30.488176, 32.801891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.926777, 30.252220, 32.758228>,  <33.933895, 29.858959, 32.685455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926777, 30.252220, 32.758228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396416, -0.160110, 0.904002,
		0.917899, 0.088204, -0.386888,
		-0.017792, 0.983150, 0.181930,
		33.921440, 30.547165, 32.812809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639889, 30.130404, 32.895290>,  <33.933895, 29.858959, 32.685455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639889, 30.130404, 32.895290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.336166, 30.333174, 33.058495>,  <34.153931, 30.454836, 33.156418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.336166, 30.333174, 33.058495>,  <34.639889, 30.130404, 32.895290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336166, 30.333174, 33.058495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376198, -0.169650, 0.910875,
		0.530967, 0.845129, -0.061889,
		-0.759308, 0.506928, 0.408014,
		34.108376, 30.485252, 33.180901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818203, 29.350872, 33.229042>,  <34.639889, 30.130404, 32.895290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818203, 29.350872, 33.229042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.143764, 29.118858, 33.242466>,  <35.339100, 28.979650, 33.250523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.143764, 29.118858, 33.242466>,  <34.818203, 29.350872, 33.229042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143764, 29.118858, 33.242466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287767, 0.352265, -0.890562,
		0.504731, 0.734488, 0.453623,
		0.813902, -0.580032, 0.033563,
		35.387936, 28.944849, 33.252533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534184, 29.748451, 33.011215>,  <34.818203, 29.350872, 33.229042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534184, 29.748451, 33.011215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.636654, 29.363186, 32.978504>,  <35.698135, 29.132027, 32.958878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.636654, 29.363186, 32.978504>,  <35.534184, 29.748451, 33.011215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636654, 29.363186, 32.978504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247708, 0.147190, -0.957588,
		0.934352, 0.225055, 0.276290,
		0.256177, -0.963164, -0.081779,
		35.713509, 29.074236, 32.953972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225220, 29.694666, 32.748058>,  <35.534184, 29.748451, 33.011215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225220, 29.694666, 32.748058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.032532, 29.365383, 32.627872>,  <35.916920, 29.167814, 32.555759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.032532, 29.365383, 32.627872>,  <36.225220, 29.694666, 32.748058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032532, 29.365383, 32.627872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280296, 0.180116, -0.942864,
		0.830290, -0.538413, 0.143977,
		-0.481718, -0.823207, -0.300464,
		35.888016, 29.118422, 32.537735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708553, 29.316357, 32.297703>,  <36.225220, 29.694666, 32.748058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708553, 29.316357, 32.297703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.349533, 29.166477, 32.204742>,  <36.134121, 29.076550, 32.148964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.349533, 29.166477, 32.204742>,  <36.708553, 29.316357, 32.297703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349533, 29.166477, 32.204742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262585, -0.030816, -0.964417,
		0.354203, -0.926635, 0.126050,
		-0.897546, -0.374698, -0.232405,
		36.080269, 29.054068, 32.135021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800308, 28.790958, 31.817785>,  <36.708553, 29.316357, 32.297703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800308, 28.790958, 31.817785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.409836, 28.869066, 31.779968>,  <36.175552, 28.915932, 31.757278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.409836, 28.869066, 31.779968>,  <36.800308, 28.790958, 31.817785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409836, 28.869066, 31.779968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108437, 0.061715, -0.992186,
		-0.187912, -0.978806, -0.081420,
		-0.976182, 0.195272, -0.094542,
		36.116982, 28.927649, 31.751606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692959, 28.560757, 31.231646>,  <36.800308, 28.790958, 31.817785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692959, 28.560757, 31.231646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.375050, 28.802240, 31.256548>,  <36.184303, 28.947130, 31.271488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.375050, 28.802240, 31.256548>,  <36.692959, 28.560757, 31.231646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375050, 28.802240, 31.256548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124296, 0.262312, -0.956945,
		-0.594048, -0.752811, -0.283516,
		-0.794768, 0.603711, 0.062254,
		36.136620, 28.983355, 31.275225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279190, 28.559618, 30.549440>,  <36.692959, 28.560757, 31.231646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279190, 28.559618, 30.549440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.189732, 28.886759, 30.761515>,  <36.136055, 29.083044, 30.888760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.189732, 28.886759, 30.761515>,  <36.279190, 28.559618, 30.549440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189732, 28.886759, 30.761515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124870, 0.515441, -0.847778,
		-0.966638, -0.255809, -0.013153,
		-0.223649, 0.817852, 0.530188,
		36.122639, 29.132114, 30.920570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003899, 28.867922, 30.101233>,  <36.279190, 28.559618, 30.549440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003899, 28.867922, 30.101233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.064354, 29.162228, 30.365295>,  <36.100628, 29.338812, 30.523733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.064354, 29.162228, 30.365295>,  <36.003899, 28.867922, 30.101233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064354, 29.162228, 30.365295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131164, 0.646997, -0.751126,
		-0.979773, 0.200110, 0.001277,
		0.151134, 0.735765, 0.660158,
		36.109695, 29.382957, 30.563343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463245, 29.350716, 29.971300>,  <36.003899, 28.867922, 30.101233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463245, 29.350716, 29.971300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.760914, 29.560743, 30.136473>,  <35.939514, 29.686760, 30.235577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.760914, 29.560743, 30.136473>,  <35.463245, 29.350716, 29.971300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760914, 29.560743, 30.136473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053433, 0.662978, -0.746730,
		-0.665849, 0.533630, 0.521425,
		0.744171, 0.525070, 0.412929,
		35.984165, 29.718264, 30.260351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240108, 30.019506, 29.905447>,  <35.463245, 29.350716, 29.971300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240108, 30.019506, 29.905447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.634415, 30.051355, 29.964668>,  <35.870998, 30.070465, 30.000200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.634415, 30.051355, 29.964668>,  <35.240108, 30.019506, 29.905447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634415, 30.051355, 29.964668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041892, 0.736583, -0.675049,
		-0.162800, 0.671645, 0.722765,
		0.985769, 0.079620, 0.148052,
		35.930145, 30.075241, 30.009085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353947, 30.719707, 29.796961>,  <35.240108, 30.019506, 29.905447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353947, 30.719707, 29.796961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.722153, 30.563660, 29.788349>,  <35.943077, 30.470032, 29.783182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.722153, 30.563660, 29.788349>,  <35.353947, 30.719707, 29.796961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722153, 30.563660, 29.788349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282468, 0.702545, -0.653179,
		0.269942, 0.595178, 0.756898,
		0.920512, -0.390120, -0.021528,
		35.998306, 30.446623, 29.781891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879707, 31.247402, 30.060225>,  <35.353947, 30.719707, 29.796961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879707, 31.247402, 30.060225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.053997, 30.977739, 29.821678>,  <36.158569, 30.815941, 29.678551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.053997, 30.977739, 29.821678>,  <35.879707, 31.247402, 30.060225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053997, 30.977739, 29.821678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304157, 0.733878, -0.607380,
		0.847131, 0.083262, 0.524820,
		0.435726, -0.674159, -0.596366,
		36.184715, 30.775492, 29.642769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438683, 31.519197, 29.792402>,  <35.879707, 31.247402, 30.060225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438683, 31.519197, 29.792402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.387524, 31.214331, 29.538555>,  <36.356827, 31.031410, 29.386248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.387524, 31.214331, 29.538555>,  <36.438683, 31.519197, 29.792402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387524, 31.214331, 29.538555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367668, 0.557844, -0.744063,
		0.921120, -0.328496, 0.208876,
		-0.127901, -0.762169, -0.634618,
		36.349152, 30.985680, 29.348169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987663, 31.654030, 29.364952>,  <36.438683, 31.519197, 29.792402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987663, 31.654030, 29.364952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.741898, 31.413013, 29.161213>,  <36.594437, 31.268404, 29.038969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.741898, 31.413013, 29.161213>,  <36.987663, 31.654030, 29.364952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741898, 31.413013, 29.161213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405289, 0.312856, -0.858989,
		0.676929, -0.734210, 0.051980,
		-0.614416, -0.602542, -0.509349,
		36.557571, 31.232250, 29.008408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361607, 31.361626, 28.692698>,  <36.987663, 31.654030, 29.364952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361607, 31.361626, 28.692698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.972015, 31.303062, 28.623503>,  <36.738258, 31.267925, 28.581985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.972015, 31.303062, 28.623503>,  <37.361607, 31.361626, 28.692698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972015, 31.303062, 28.623503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118967, 0.319367, -0.940134,
		0.192887, -0.936253, -0.293640,
		-0.973982, -0.146406, -0.172985,
		36.679821, 31.259140, 28.571608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290085, 30.906889, 28.066414>,  <37.361607, 31.361626, 28.692698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290085, 30.906889, 28.066414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.934311, 31.088150, 28.090246>,  <36.720844, 31.196907, 28.104546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.934311, 31.088150, 28.090246>,  <37.290085, 30.906889, 28.066414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934311, 31.088150, 28.090246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023180, 0.085471, -0.996071,
		-0.456465, -0.887326, -0.065517,
		-0.889439, 0.453153, 0.059583,
		36.667480, 31.224096, 28.108122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771084, 30.590178, 27.614904>,  <37.290085, 30.906889, 28.066414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771084, 30.590178, 27.614904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.648804, 30.967680, 27.665295>,  <36.575436, 31.194181, 27.695530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.648804, 30.967680, 27.665295>,  <36.771084, 30.590178, 27.614904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648804, 30.967680, 27.665295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160734, 0.079260, -0.983810,
		-0.938463, -0.320998, 0.127464,
		-0.305698, 0.943758, 0.125978,
		36.557095, 31.250807, 27.703089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327503, 30.624638, 27.091440>,  <36.771084, 30.590178, 27.614904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327503, 30.624638, 27.091440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.358280, 31.002272, 27.219677>,  <36.376747, 31.228853, 27.296619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.358280, 31.002272, 27.219677>,  <36.327503, 30.624638, 27.091440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358280, 31.002272, 27.219677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071949, 0.325965, -0.942640,
		-0.994436, 0.049467, 0.093008,
		0.076947, 0.944087, 0.320592,
		36.381363, 31.285498, 27.315855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.674793, 31.094818, 26.832693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.973682, 31.347721, 26.914576>,  <36.153015, 31.499462, 26.963705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.973682, 31.347721, 26.914576>,  <35.674793, 31.094818, 26.832693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973682, 31.347721, 26.914576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159092, 0.469250, -0.868616,
		-0.645247, 0.616485, 0.451223,
		0.747226, 0.632258, 0.204705,
		36.197849, 31.537399, 26.975986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425148, 31.754471, 26.627056>,  <35.674793, 31.094818, 26.832693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425148, 31.754471, 26.627056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.816769, 31.835865, 26.629782>,  <36.051743, 31.884703, 26.631416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.816769, 31.835865, 26.629782>,  <35.425148, 31.754471, 26.627056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816769, 31.835865, 26.629782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117551, 0.592275, -0.797115,
		-0.166238, 0.779618, 0.603789,
		0.979054, 0.203487, 0.006813,
		36.110485, 31.896912, 26.631826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456715, 32.458424, 26.349543>,  <35.425148, 31.754471, 26.627056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456715, 32.458424, 26.349543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.839558, 32.343613, 26.333771>,  <36.069263, 32.274727, 26.324308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.839558, 32.343613, 26.333771>,  <35.456715, 32.458424, 26.349543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839558, 32.343613, 26.333771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130822, 0.549579, -0.825136,
		0.258505, 0.784588, 0.563557,
		0.957111, -0.287028, -0.039427,
		36.126690, 32.257504, 26.321943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863449, 33.130043, 26.399872>,  <35.456715, 32.458424, 26.349543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863449, 33.130043, 26.399872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.069988, 32.837917, 26.220978>,  <36.193913, 32.662640, 26.113642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.069988, 32.837917, 26.220978>,  <35.863449, 33.130043, 26.399872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069988, 32.837917, 26.220978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163741, 0.596800, -0.785505,
		0.840578, 0.332366, 0.427741,
		0.516351, -0.730317, -0.447235,
		36.224892, 32.618824, 26.086807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366684, 33.485252, 26.068155>,  <35.863449, 33.130043, 26.399872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366684, 33.485252, 26.068155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.356400, 33.136612, 25.872335>,  <36.350231, 32.927429, 25.754845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.356400, 33.136612, 25.872335>,  <36.366684, 33.485252, 26.068155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356400, 33.136612, 25.872335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232928, 0.471009, -0.850820,
		0.972154, -0.135901, 0.190911,
		-0.025706, -0.871597, -0.489549,
		36.348686, 32.875134, 25.725471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008404, 33.432491, 25.780989>,  <36.366684, 33.485252, 26.068155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008404, 33.432491, 25.780989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.748055, 33.202248, 25.582981>,  <36.591846, 33.064102, 25.464176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.748055, 33.202248, 25.582981>,  <37.008404, 33.432491, 25.780989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748055, 33.202248, 25.582981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383765, 0.313148, -0.868713,
		0.655052, -0.755391, 0.017079,
		-0.650870, -0.575606, -0.495021,
		36.552792, 33.029568, 25.434475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435913, 33.056923, 25.359489>,  <37.008404, 33.432491, 25.780989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435913, 33.056923, 25.359489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.076294, 33.016590, 25.189053>,  <36.860523, 32.992390, 25.086790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.076294, 33.016590, 25.189053>,  <37.435913, 33.056923, 25.359489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076294, 33.016590, 25.189053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358784, 0.388166, -0.848882,
		0.250986, -0.916057, -0.312802,
		-0.899044, -0.100829, -0.426091,
		36.806580, 32.986343, 25.061226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607086, 32.905888, 24.721537>,  <37.435913, 33.056923, 25.359489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607086, 32.905888, 24.721537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.228657, 33.026749, 24.674809>,  <37.001598, 33.099266, 24.646772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.228657, 33.026749, 24.674809>,  <37.607086, 32.905888, 24.721537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228657, 33.026749, 24.674809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248023, 0.443625, -0.861209,
		-0.208395, -0.843741, -0.494644,
		-0.946074, 0.302155, -0.116818,
		36.944836, 33.117393, 24.639763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489849, 32.711449, 24.109507>,  <37.607086, 32.905888, 24.721537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489849, 32.711449, 24.109507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.218842, 32.997478, 24.178377>,  <37.056236, 33.169094, 24.219700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.218842, 32.997478, 24.178377>,  <37.489849, 32.711449, 24.109507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218842, 32.997478, 24.178377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113315, 0.332779, -0.936172,
		-0.726726, -0.614762, -0.306492,
		-0.677517, 0.715070, 0.172177,
		37.015587, 33.211998, 24.230030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015778, 32.640156, 23.592443>,  <37.489849, 32.711449, 24.109507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015778, 32.640156, 23.592443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.989483, 33.008118, 23.747084>,  <36.973705, 33.228893, 23.839869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.989483, 33.008118, 23.747084>,  <37.015778, 32.640156, 23.592443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989483, 33.008118, 23.747084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072506, 0.390818, -0.917608,
		-0.995199, -0.032291, -0.092390,
		-0.065738, 0.919902, 0.386600,
		36.969761, 33.284088, 23.863064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270924, 32.995670, 23.451498>,  <37.015778, 32.640156, 23.592443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270924, 32.995670, 23.451498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.521790, 33.300510, 23.515829>,  <36.672310, 33.483414, 23.554428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.521790, 33.300510, 23.515829>,  <36.270924, 32.995670, 23.451498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521790, 33.300510, 23.515829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136740, 0.311009, -0.940519,
		-0.766792, 0.567866, 0.299263,
		0.627163, 0.762103, 0.160829,
		36.709938, 33.529140, 23.564077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102402, 33.584019, 23.002207>,  <36.270924, 32.995670, 23.451498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102402, 33.584019, 23.002207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.473614, 33.693672, 23.103096>,  <36.696339, 33.759464, 23.163630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.473614, 33.693672, 23.103096>,  <36.102402, 33.584019, 23.002207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473614, 33.693672, 23.103096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108739, 0.448249, -0.887271,
		-0.356287, 0.850838, 0.386179,
		0.928028, 0.274131, 0.252224,
		36.752022, 33.775913, 23.178762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170990, 34.309547, 22.780483>,  <36.102402, 33.584019, 23.002207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170990, 34.309547, 22.780483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.551025, 34.204697, 22.848164>,  <36.779045, 34.141785, 22.888771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.551025, 34.204697, 22.848164>,  <36.170990, 34.309547, 22.780483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551025, 34.204697, 22.848164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290525, 0.545624, -0.786060,
		0.113728, 0.795980, 0.594543,
		0.950085, -0.262127, 0.169199,
		36.836052, 34.126057, 22.898924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555550, 34.836163, 22.937246>,  <36.170990, 34.309547, 22.780483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555550, 34.836163, 22.937246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.825935, 34.581448, 22.788881>,  <36.988167, 34.428619, 22.699862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.825935, 34.581448, 22.788881>,  <36.555550, 34.836163, 22.937246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825935, 34.581448, 22.788881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173050, 0.626404, -0.760047,
		0.716331, 0.449575, 0.533621,
		0.675961, -0.636788, -0.370914,
		37.028725, 34.390411, 22.677607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135960, 35.244522, 22.765129>,  <36.555550, 34.836163, 22.937246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135960, 35.244522, 22.765129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.193939, 34.913536, 22.548136>,  <37.228725, 34.714943, 22.417940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.193939, 34.913536, 22.548136>,  <37.135960, 35.244522, 22.765129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193939, 34.913536, 22.548136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351334, 0.555585, -0.753584,
		0.924963, -0.081364, 0.371247,
		0.144945, -0.827469, -0.542481,
		37.237423, 34.665295, 22.385391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839275, 35.242596, 22.479235>,  <37.135960, 35.244522, 22.765129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839275, 35.242596, 22.479235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.645157, 34.970619, 22.259357>,  <37.528687, 34.807434, 22.127432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.645157, 34.970619, 22.259357>,  <37.839275, 35.242596, 22.479235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645157, 34.970619, 22.259357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388773, 0.395314, -0.832215,
		0.783162, -0.617576, 0.072501,
		-0.485296, -0.679946, -0.549692,
		37.499569, 34.766636, 22.094450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353584, 35.009953, 22.096754>,  <37.839275, 35.242596, 22.479235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353584, 35.009953, 22.096754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.016098, 34.908890, 21.907310>,  <37.813606, 34.848251, 21.793644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.016098, 34.908890, 21.907310>,  <38.353584, 35.009953, 22.096754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016098, 34.908890, 21.907310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286797, 0.533638, -0.795599,
		0.453746, -0.807091, -0.377780,
		-0.843719, -0.252653, -0.473608,
		37.762981, 34.833092, 21.765228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572224, 34.803032, 21.442503>,  <38.353584, 35.009953, 22.096754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572224, 34.803032, 21.442503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.185921, 34.903744, 21.417456>,  <37.954140, 34.964172, 21.402428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.185921, 34.903744, 21.417456>,  <38.572224, 34.803032, 21.442503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185921, 34.903744, 21.417456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212527, 0.629268, -0.747565,
		-0.148822, -0.735273, -0.661230,
		-0.965756, 0.251784, -0.062616,
		37.896194, 34.979279, 21.398670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481148, 34.746403, 20.672909>,  <38.572224, 34.803032, 21.442503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481148, 34.746403, 20.672909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.202137, 34.992199, 20.820351>,  <38.034733, 35.139675, 20.908815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.202137, 34.992199, 20.820351>,  <38.481148, 34.746403, 20.672909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202137, 34.992199, 20.820351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069772, 0.570202, -0.818536,
		-0.713158, -0.545229, -0.440603,
		-0.697522, 0.614487, 0.368603,
		37.992882, 35.176544, 20.930931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925522, 34.763824, 20.193810>,  <38.481148, 34.746403, 20.672909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925522, 34.763824, 20.193810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.933502, 35.094894, 20.418148>,  <37.938290, 35.293537, 20.552752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.933502, 35.094894, 20.418148>,  <37.925522, 34.763824, 20.193810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933502, 35.094894, 20.418148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092733, 0.557009, -0.825313,
		-0.995491, 0.068474, -0.065641,
		0.019950, 0.827678, 0.560848,
		37.939487, 35.343197, 20.586403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782822, 35.291084, 19.691704>,  <37.925522, 34.763824, 20.193810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782822, 35.291084, 19.691704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.881031, 35.521461, 20.003605>,  <37.939957, 35.659687, 20.190744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.881031, 35.521461, 20.003605>,  <37.782822, 35.291084, 19.691704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881031, 35.521461, 20.003605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170943, 0.766044, -0.619641,
		-0.954200, 0.285429, 0.089630,
		0.245524, 0.575939, 0.779751,
		37.954689, 35.694244, 20.237530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343567, 35.785210, 19.719372>,  <37.782822, 35.291084, 19.691704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343567, 35.785210, 19.719372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.694523, 35.910324, 19.864893>,  <37.905098, 35.985394, 19.952206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.694523, 35.910324, 19.864893>,  <37.343567, 35.785210, 19.719372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694523, 35.910324, 19.864893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036241, 0.799319, -0.599813,
		-0.478407, 0.513086, 0.712650,
		0.877390, 0.312782, 0.363805,
		37.957741, 36.004158, 19.974035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297501, 36.556347, 19.860466>,  <37.343567, 35.785210, 19.719372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297501, 36.556347, 19.860466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.678116, 36.437176, 19.829981>,  <37.906487, 36.365673, 19.811689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.678116, 36.437176, 19.829981>,  <37.297501, 36.556347, 19.860466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678116, 36.437176, 19.829981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176390, 0.731778, -0.658322,
		0.251902, 0.612978, 0.748868,
		0.951542, -0.297925, -0.076214,
		37.963577, 36.347797, 19.807117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766716, 37.157703, 20.013880>,  <37.297501, 36.556347, 19.860466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766716, 37.157703, 20.013880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.850677, 36.886860, 19.731754>,  <37.901054, 36.724354, 19.562479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.850677, 36.886860, 19.731754>,  <37.766716, 37.157703, 20.013880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850677, 36.886860, 19.731754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076735, 0.730569, -0.678513,
		0.974706, 0.088301, 0.205308,
		0.209905, -0.677105, -0.705314,
		37.913651, 36.683727, 19.520161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270527, 37.357166, 19.651964>,  <37.766716, 37.157703, 20.013880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270527, 37.357166, 19.651964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.998016, 37.648930, 19.627218>,  <36.834511, 37.823986, 19.612371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.998016, 37.648930, 19.627218>,  <37.270527, 37.357166, 19.651964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998016, 37.648930, 19.627218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242996, -0.145620, 0.959035,
		0.690519, 0.668400, 0.276450,
		-0.681275, 0.729408, -0.061866,
		36.793633, 37.867752, 19.608658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427662, 37.801952, 20.301987>,  <37.270527, 37.357166, 19.651964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427662, 37.801952, 20.301987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.055676, 37.876652, 20.175312>,  <36.832485, 37.921471, 20.099308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.055676, 37.876652, 20.175312>,  <37.427662, 37.801952, 20.301987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055676, 37.876652, 20.175312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356769, -0.250403, 0.900008,
		0.088774, 0.949960, 0.299491,
		-0.929965, 0.186746, -0.316687,
		36.776688, 37.932674, 20.080305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211796, 38.037582, 20.885880>,  <37.427662, 37.801952, 20.301987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211796, 38.037582, 20.885880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.897758, 37.923626, 20.665892>,  <36.709335, 37.855251, 20.533899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.897758, 37.923626, 20.665892>,  <37.211796, 38.037582, 20.885880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897758, 37.923626, 20.665892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471601, -0.300671, 0.828969,
		-0.401525, 0.910184, 0.101700,
		-0.785092, -0.284890, -0.549971,
		36.662231, 37.838158, 20.500900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628452, 38.369011, 21.134075>,  <37.211796, 38.037582, 20.885880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628452, 38.369011, 21.134075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.509159, 38.046955, 20.929016>,  <36.437584, 37.853722, 20.805981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.509159, 38.046955, 20.929016>,  <36.628452, 38.369011, 21.134075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509159, 38.046955, 20.929016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553437, -0.291728, 0.780130,
		-0.777667, 0.516379, -0.358591,
		-0.298232, -0.805138, -0.512650,
		36.419689, 37.805412, 20.775221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949406, 38.403809, 21.353159>,  <36.628452, 38.369011, 21.134075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949406, 38.403809, 21.353159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.019821, 38.044662, 21.191746>,  <36.062073, 37.829174, 21.094898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.019821, 38.044662, 21.191746>,  <35.949406, 38.403809, 21.353159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019821, 38.044662, 21.191746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589207, -0.424502, 0.687483,
		-0.788571, 0.116738, -0.603762,
		0.176043, -0.897869, -0.403533,
		36.072636, 37.775303, 21.070686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263458, 37.944054, 21.170786>,  <35.949406, 38.403809, 21.353159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263458, 37.944054, 21.170786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.576096, 37.702389, 21.232876>,  <35.763680, 37.557388, 21.270130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.576096, 37.702389, 21.232876>,  <35.263458, 37.944054, 21.170786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576096, 37.702389, 21.232876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529223, -0.510524, 0.677708,
		-0.330200, -0.611842, -0.718761,
		0.781595, -0.604164, 0.155226,
		35.810574, 37.521141, 21.279444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020699, 37.223217, 21.098011>,  <35.263458, 37.944054, 21.170786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020699, 37.223217, 21.098011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.356613, 37.216801, 21.315084>,  <35.558163, 37.212952, 21.445330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.356613, 37.216801, 21.315084>,  <35.020699, 37.223217, 21.098011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356613, 37.216801, 21.315084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443280, -0.597391, 0.668301,
		0.313477, -0.801790, -0.508788,
		0.839783, -0.016038, 0.542685,
		35.608547, 37.211990, 21.477890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022701, 36.550831, 21.368298>,  <35.020699, 37.223217, 21.098011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022701, 36.550831, 21.368298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.320740, 36.701805, 21.588249>,  <35.499565, 36.792389, 21.720221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.320740, 36.701805, 21.588249>,  <35.022701, 36.550831, 21.368298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320740, 36.701805, 21.588249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266594, -0.587192, 0.764286,
		0.611353, -0.716065, -0.336895,
		0.745100, 0.377435, 0.549880,
		35.544270, 36.815037, 21.753214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466301, 35.950733, 21.534037>,  <35.022701, 36.550831, 21.368298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466301, 35.950733, 21.534037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.539833, 36.229664, 21.811150>,  <35.583950, 36.397022, 21.977417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.539833, 36.229664, 21.811150>,  <35.466301, 35.950733, 21.534037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539833, 36.229664, 21.811150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096284, -0.688630, 0.718692,
		0.978231, -0.198820, -0.059449,
		0.183828, 0.697323, 0.692783,
		35.594982, 36.438862, 22.018984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814587, 35.602993, 22.063744>,  <35.466301, 35.950733, 21.534037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814587, 35.602993, 22.063744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.711193, 35.941132, 22.250753>,  <35.649158, 36.144012, 22.362959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.711193, 35.941132, 22.250753>,  <35.814587, 35.602993, 22.063744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711193, 35.941132, 22.250753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069463, -0.498984, 0.863823,
		0.963515, 0.190807, 0.187699,
		-0.258483, 0.845344, 0.467525,
		35.633648, 36.194736, 22.391010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308445, 35.691608, 22.643160>,  <35.814587, 35.602993, 22.063744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308445, 35.691608, 22.643160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.971249, 35.895977, 22.710482>,  <35.768932, 36.018600, 22.750874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.971249, 35.895977, 22.710482>,  <36.308445, 35.691608, 22.643160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971249, 35.895977, 22.710482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112797, -0.473805, 0.873376,
		0.525972, 0.717262, 0.457043,
		-0.842989, 0.510925, 0.168303,
		35.718353, 36.049255, 22.760973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357834, 35.960674, 23.279428>,  <36.308445, 35.691608, 22.643160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357834, 35.960674, 23.279428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.964359, 35.952808, 23.207905>,  <35.728275, 35.948090, 23.164991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.964359, 35.952808, 23.207905>,  <36.357834, 35.960674, 23.279428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964359, 35.952808, 23.207905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149217, -0.465967, 0.872129,
		-0.100469, 0.884584, 0.455431,
		-0.983687, -0.019664, -0.178810,
		35.669254, 35.946911, 23.154263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999664, 36.077888, 23.885241>,  <36.357834, 35.960674, 23.279428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999664, 36.077888, 23.885241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.708500, 35.888947, 23.686432>,  <35.533802, 35.775581, 23.567146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.708500, 35.888947, 23.686432>,  <35.999664, 36.077888, 23.885241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708500, 35.888947, 23.686432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319755, -0.407376, 0.855454,
		-0.606550, 0.781619, 0.145497,
		-0.727911, -0.472352, -0.497020,
		35.490128, 35.747242, 23.537327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412975, 36.077179, 24.333166>,  <35.999664, 36.077888, 23.885241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412975, 36.077179, 24.333166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.331795, 35.811348, 24.045515>,  <35.283085, 35.651848, 23.872925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.331795, 35.811348, 24.045515>,  <35.412975, 36.077179, 24.333166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331795, 35.811348, 24.045515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501297, -0.560354, 0.659322,
		-0.841137, 0.494308, -0.219426,
		-0.202952, -0.664578, -0.719129,
		35.270908, 35.611973, 23.829777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687885, 35.919697, 24.397245>,  <35.412975, 36.077179, 24.333166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687885, 35.919697, 24.397245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.820503, 35.600445, 24.196022>,  <34.900074, 35.408894, 24.075289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.820503, 35.600445, 24.196022>,  <34.687885, 35.919697, 24.397245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820503, 35.600445, 24.196022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488772, -0.601388, 0.632008,
		-0.806957, 0.036342, -0.589490,
		0.331544, -0.798130, -0.503058,
		34.919968, 35.361004, 24.045105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153542, 35.602257, 24.061977>,  <34.687885, 35.919697, 24.397245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153542, 35.602257, 24.061977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.423187, 35.307045, 24.073799>,  <34.584976, 35.129917, 24.080893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.423187, 35.307045, 24.073799>,  <34.153542, 35.602257, 24.061977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423187, 35.307045, 24.073799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631683, -0.555313, 0.540929,
		-0.382811, -0.383319, -0.840549,
		0.674116, -0.738034, 0.029556,
		34.625423, 35.085636, 24.082666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761761, 34.962559, 23.972107>,  <34.153542, 35.602257, 24.061977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761761, 34.962559, 23.972107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.113842, 34.832127, 24.110046>,  <34.325089, 34.753868, 24.192810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.113842, 34.832127, 24.110046>,  <33.761761, 34.962559, 23.972107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113842, 34.832127, 24.110046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468103, -0.716330, 0.517447,
		0.078296, -0.616881, -0.783153,
		0.880198, -0.326082, 0.344849,
		34.377903, 34.734303, 24.213501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646904, 34.239204, 24.040058>,  <33.761761, 34.962559, 23.972107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646904, 34.239204, 24.040058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.962372, 34.313732, 24.274422>,  <34.151653, 34.358448, 24.415041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.962372, 34.313732, 24.274422>,  <33.646904, 34.239204, 24.040058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962372, 34.313732, 24.274422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369547, -0.617965, 0.693941,
		0.491367, -0.763809, -0.418514,
		0.788665, 0.186319, 0.585911,
		34.198971, 34.369629, 24.450195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961639, 33.549900, 24.196678>,  <33.646904, 34.239204, 24.040058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961639, 33.549900, 24.196678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.103573, 33.788612, 24.484552>,  <34.188732, 33.931839, 24.657276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.103573, 33.788612, 24.484552>,  <33.961639, 33.549900, 24.196678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103573, 33.788612, 24.484552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337341, -0.636193, 0.693873,
		0.871947, -0.488990, -0.024425,
		0.354836, 0.596781, 0.719683,
		34.210022, 33.967648, 24.700457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175362, 33.109619, 24.666847>,  <33.961639, 33.549900, 24.196678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175362, 33.109619, 24.666847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.179249, 33.429600, 24.906843>,  <34.181583, 33.621586, 25.050840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.179249, 33.429600, 24.906843>,  <34.175362, 33.109619, 24.666847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179249, 33.429600, 24.906843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362279, -0.556436, 0.747752,
		0.932019, -0.224632, 0.284396,
		0.009721, 0.799949, 0.599989,
		34.182163, 33.669586, 25.086840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.863453, 29.832512, 29.010992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.659882, 30.127911, 29.187906>,  <36.537739, 30.305149, 29.294054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.659882, 30.127911, 29.187906>,  <36.863453, 29.832512, 29.010992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659882, 30.127911, 29.187906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026981, -0.527234, 0.849292,
		0.860385, 0.420296, 0.288251,
		-0.508930, 0.738495, 0.442284,
		36.507202, 30.349459, 29.320591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243668, 30.045650, 29.674721>,  <36.863453, 29.832512, 29.010992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243668, 30.045650, 29.674721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.862453, 30.162428, 29.706966>,  <36.633724, 30.232494, 29.726313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.862453, 30.162428, 29.706966>,  <37.243668, 30.045650, 29.674721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862453, 30.162428, 29.706966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055119, -0.428904, 0.901667,
		0.297812, 0.854874, 0.424851,
		-0.953032, 0.291945, 0.080613,
		36.576546, 30.250011, 29.731150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231915, 30.121084, 30.365559>,  <37.243668, 30.045650, 29.674721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231915, 30.121084, 30.365559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.847713, 30.117201, 30.254313>,  <36.617195, 30.114870, 30.187565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.847713, 30.117201, 30.254313>,  <37.231915, 30.121084, 30.365559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847713, 30.117201, 30.254313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264113, -0.283047, 0.922024,
		-0.087673, 0.959057, 0.269302,
		-0.960499, -0.009711, -0.278115,
		36.559563, 30.114288, 30.170877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880348, 30.426109, 30.841135>,  <37.231915, 30.121084, 30.365559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880348, 30.426109, 30.841135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.597939, 30.196796, 30.674820>,  <36.428493, 30.059210, 30.575031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.597939, 30.196796, 30.674820>,  <36.880348, 30.426109, 30.841135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597939, 30.196796, 30.674820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189295, -0.412985, 0.890848,
		-0.682420, 0.707667, 0.183058,
		-0.706024, -0.573281, -0.415787,
		36.386131, 30.024813, 30.550083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297432, 30.481997, 31.220797>,  <36.880348, 30.426109, 30.841135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297432, 30.481997, 31.220797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.230621, 30.137314, 31.029144>,  <36.190533, 29.930504, 30.914152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.230621, 30.137314, 31.029144>,  <36.297432, 30.481997, 31.220797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230621, 30.137314, 31.029144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324602, -0.410804, 0.851982,
		-0.930986, 0.297834, -0.211094,
		-0.167031, -0.861705, -0.479130,
		36.180511, 29.878803, 30.885405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711143, 30.287178, 31.446484>,  <36.297432, 30.481997, 31.220797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711143, 30.287178, 31.446484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.813007, 29.937115, 31.281929>,  <35.874126, 29.727076, 31.183195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.813007, 29.937115, 31.281929>,  <35.711143, 30.287178, 31.446484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813007, 29.937115, 31.281929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349470, -0.479953, 0.804684,
		-0.901675, -0.061156, -0.428069,
		0.254664, -0.875161, -0.411389,
		35.889408, 29.674566, 31.158512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202454, 29.866220, 31.515511>,  <35.711143, 30.287178, 31.446484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202454, 29.866220, 31.515511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.483845, 29.591492, 31.442410>,  <35.652679, 29.426655, 31.398548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.483845, 29.591492, 31.442410>,  <35.202454, 29.866220, 31.515511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483845, 29.591492, 31.442410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229901, -0.463218, 0.855906,
		-0.672511, -0.560092, -0.483763,
		0.703473, -0.686823, -0.182753,
		35.694885, 29.385445, 31.387585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883251, 29.272575, 31.677574>,  <35.202454, 29.866220, 31.515511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883251, 29.272575, 31.677574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.269997, 29.171061, 31.666521>,  <35.502045, 29.110151, 31.659889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.269997, 29.171061, 31.666521>,  <34.883251, 29.272575, 31.677574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269997, 29.171061, 31.666521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120000, -0.547349, 0.828257,
		-0.225327, -0.797497, -0.559667,
		0.966865, -0.253789, -0.027633,
		35.560055, 29.094923, 31.658232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880890, 28.644918, 31.899282>,  <34.883251, 29.272575, 31.677574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880890, 28.644918, 31.899282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.260117, 28.754446, 31.964018>,  <35.487652, 28.820162, 32.002857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.260117, 28.754446, 31.964018>,  <34.880890, 28.644918, 31.899282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260117, 28.754446, 31.964018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014376, -0.471402, 0.881802,
		0.317744, -0.838334, -0.442984,
		0.948068, 0.273819, 0.161837,
		35.544537, 28.836592, 32.012569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238708, 28.042992, 32.120296>,  <34.880890, 28.644918, 31.899282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238708, 28.042992, 32.120296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.426815, 28.366461, 32.261662>,  <35.539677, 28.560541, 32.346481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.426815, 28.366461, 32.261662>,  <35.238708, 28.042992, 32.120296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426815, 28.366461, 32.261662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095049, -0.351722, 0.931267,
		0.877393, -0.471533, -0.088539,
		0.470264, 0.808671, 0.353417,
		35.567894, 28.609062, 32.367687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754429, 27.819035, 32.613274>,  <35.238708, 28.042992, 32.120296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754429, 27.819035, 32.613274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.736782, 28.200653, 32.731831>,  <35.726192, 28.429625, 32.802967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.736782, 28.200653, 32.731831>,  <35.754429, 27.819035, 32.613274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736782, 28.200653, 32.731831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060064, -0.298680, 0.952461,
		0.997219, 0.024217, 0.070481,
		-0.044117, 0.954046, 0.296395,
		35.723545, 28.486866, 32.820747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283634, 27.995321, 33.162056>,  <35.754429, 27.819035, 32.613274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283634, 27.995321, 33.162056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.999855, 28.276506, 33.182198>,  <35.829590, 28.445217, 33.194283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.999855, 28.276506, 33.182198>,  <36.283634, 27.995321, 33.162056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999855, 28.276506, 33.182198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119778, -0.190675, 0.974318,
		0.694509, 0.685193, 0.219473,
		-0.709444, 0.702961, 0.050355,
		35.787022, 28.487394, 33.197304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543713, 28.528656, 33.515942>,  <36.283634, 27.995321, 33.162056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543713, 28.528656, 33.515942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.149040, 28.493542, 33.570728>,  <35.912239, 28.472473, 33.603600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.149040, 28.493542, 33.570728>,  <36.543713, 28.528656, 33.515942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149040, 28.493542, 33.570728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159146, -0.346145, 0.924584,
		-0.033754, 0.934065, 0.355505,
		-0.986678, -0.087785, 0.136969,
		35.853035, 28.467207, 33.611820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295231, 29.165100, 33.936806>,  <36.543713, 28.528656, 33.515942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295231, 29.165100, 33.936806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.125671, 28.802837, 33.940701>,  <36.023937, 28.585480, 33.943039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.125671, 28.802837, 33.940701>,  <36.295231, 29.165100, 33.936806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125671, 28.802837, 33.940701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299086, -0.129823, 0.945354,
		-0.854902, 0.403647, 0.325901,
		-0.423899, -0.905657, 0.009739,
		35.998501, 28.531139, 33.943623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201439, 29.493959, 34.576641>,  <36.295231, 29.165100, 33.936806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201439, 29.493959, 34.576641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.507221, 29.690157, 34.743984>,  <36.690689, 29.807875, 34.844391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.507221, 29.690157, 34.743984>,  <36.201439, 29.493959, 34.576641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507221, 29.690157, 34.743984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241897, 0.819768, -0.519102,
		-0.597573, 0.295631, 0.745325,
		0.764456, 0.490493, 0.418359,
		36.736557, 29.837305, 34.869492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913357, 30.133858, 34.609711>,  <36.201439, 29.493959, 34.576641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913357, 30.133858, 34.609711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.310764, 30.178701, 34.617134>,  <36.549210, 30.205608, 34.621590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.310764, 30.178701, 34.617134>,  <35.913357, 30.133858, 34.609711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310764, 30.178701, 34.617134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076006, 0.777025, -0.624864,
		-0.084475, 0.619405, 0.780513,
		0.993522, 0.112109, 0.018561,
		36.608822, 30.212334, 34.622704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030872, 30.872629, 34.715275>,  <35.913357, 30.133858, 34.609711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030872, 30.872629, 34.715275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.379501, 30.738916, 34.571819>,  <36.588680, 30.658689, 34.485748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.379501, 30.738916, 34.571819>,  <36.030872, 30.872629, 34.715275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379501, 30.738916, 34.571819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015040, 0.749394, -0.661954,
		0.490038, 0.571546, 0.658178,
		0.871571, -0.334281, -0.358635,
		36.640972, 30.638632, 34.464230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523849, 31.417980, 34.668514>,  <36.030872, 30.872629, 34.715275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523849, 31.417980, 34.668514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.679516, 31.162443, 34.403053>,  <36.772915, 31.009121, 34.243778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.679516, 31.162443, 34.403053>,  <36.523849, 31.417980, 34.668514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679516, 31.162443, 34.403053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219867, 0.764041, -0.606548,
		0.894543, 0.090135, 0.437800,
		0.389168, -0.638841, -0.663649,
		36.796265, 30.970791, 34.203957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032288, 31.752525, 34.338810>,  <36.523849, 31.417980, 34.668514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032288, 31.752525, 34.338810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.989182, 31.458897, 34.070625>,  <36.963318, 31.282719, 33.909714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.989182, 31.458897, 34.070625>,  <37.032288, 31.752525, 34.338810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989182, 31.458897, 34.070625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103577, 0.662432, -0.741927,
		0.988766, -0.149397, 0.004647,
		-0.107763, -0.734074, -0.670465,
		36.956852, 31.238674, 33.869488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641125, 31.755474, 33.845196>,  <37.032288, 31.752525, 34.338810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641125, 31.755474, 33.845196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.310551, 31.594524, 33.687668>,  <37.112206, 31.497955, 33.593151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.310551, 31.594524, 33.687668>,  <37.641125, 31.755474, 33.845196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310551, 31.594524, 33.687668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042521, 0.652870, -0.756275,
		0.561417, -0.641762, -0.522449,
		-0.826440, -0.402371, -0.393821,
		37.062618, 31.473812, 33.569523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765354, 31.875902, 33.207413>,  <37.641125, 31.755474, 33.845196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765354, 31.875902, 33.207413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.373772, 31.794395, 33.202820>,  <37.138824, 31.745491, 33.200066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.373772, 31.794395, 33.202820>,  <37.765354, 31.875902, 33.207413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373772, 31.794395, 33.202820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093381, 0.497226, -0.862581,
		0.181471, -0.843354, -0.505789,
		-0.978952, -0.203765, -0.011479,
		37.080086, 31.733265, 33.199375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607506, 31.674213, 32.521481>,  <37.765354, 31.875902, 33.207413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607506, 31.674213, 32.521481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.241486, 31.747520, 32.665203>,  <37.021873, 31.791506, 32.751438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.241486, 31.747520, 32.665203>,  <37.607506, 31.674213, 32.521481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241486, 31.747520, 32.665203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223372, 0.511484, -0.829752,
		-0.335848, -0.839521, -0.427095,
		-0.915047, 0.183270, 0.359306,
		36.966972, 31.802502, 32.772995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164085, 31.570887, 31.880667>,  <37.607506, 31.674213, 32.521481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164085, 31.570887, 31.880667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.929981, 31.770460, 32.136333>,  <36.789520, 31.890205, 32.289734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.929981, 31.770460, 32.136333>,  <37.164085, 31.570887, 31.880667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929981, 31.770460, 32.136333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296607, 0.601905, -0.741441,
		-0.754648, -0.623518, -0.204284,
		-0.585261, 0.498935, 0.639166,
		36.754402, 31.920141, 32.328083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369022, 31.435556, 31.760519>,  <37.164085, 31.570887, 31.880667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369022, 31.435556, 31.760519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.444477, 31.789724, 31.930435>,  <36.489750, 32.002224, 32.032383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.444477, 31.789724, 31.930435>,  <36.369022, 31.435556, 31.760519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444477, 31.789724, 31.930435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419034, 0.463769, -0.780595,
		-0.888160, -0.030756, 0.458504,
		0.188632, 0.885422, 0.424789,
		36.501068, 32.055351, 32.057873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713390, 31.888090, 31.653734>,  <36.369022, 31.435556, 31.760519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713390, 31.888090, 31.653734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.002537, 32.147129, 31.750135>,  <36.176025, 32.302551, 31.807976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.002537, 32.147129, 31.750135>,  <35.713390, 31.888090, 31.653734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002537, 32.147129, 31.750135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331652, 0.631149, -0.701183,
		-0.606194, 0.426932, 0.671013,
		0.722867, 0.647596, 0.241005,
		36.219398, 32.341408, 31.822437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446636, 32.548798, 31.593954>,  <35.713390, 31.888090, 31.653734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446636, 32.548798, 31.593954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.837776, 32.629066, 31.570148>,  <36.072460, 32.677227, 31.555866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.837776, 32.629066, 31.570148>,  <35.446636, 32.548798, 31.593954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837776, 32.629066, 31.570148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171905, 0.607745, -0.775303,
		-0.119412, 0.768360, 0.628779,
		0.977849, 0.200671, -0.059513,
		36.131130, 32.689266, 31.552294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577690, 33.376896, 31.503187>,  <35.446636, 32.548798, 31.593954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577690, 33.376896, 31.503187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.908962, 33.192940, 31.375053>,  <36.107727, 33.082565, 31.298172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.908962, 33.192940, 31.375053>,  <35.577690, 33.376896, 31.503187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908962, 33.192940, 31.375053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022106, 0.597922, -0.801249,
		0.560019, 0.656501, 0.505356,
		0.828184, -0.459886, -0.320336,
		36.157417, 33.054974, 31.278954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095463, 33.937859, 31.267679>,  <35.577690, 33.376896, 31.503187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095463, 33.937859, 31.267679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.247345, 33.621078, 31.076416>,  <36.338474, 33.431011, 30.961658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.247345, 33.621078, 31.076416>,  <36.095463, 33.937859, 31.267679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247345, 33.621078, 31.076416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040632, 0.530645, -0.846620,
		0.924215, 0.302036, 0.233667,
		0.379704, -0.791953, -0.478158,
		36.361256, 33.383492, 30.932968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537796, 34.426018, 31.554825>,  <36.095463, 33.937859, 31.267679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537796, 34.426018, 31.554825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.388790, 34.795326, 31.592363>,  <36.299385, 35.016911, 31.614885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.388790, 34.795326, 31.592363>,  <36.537796, 34.426018, 31.554825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388790, 34.795326, 31.592363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336399, -0.228588, 0.913555,
		0.864908, 0.308747, 0.395739,
		-0.372518, 0.923267, 0.093846,
		36.277035, 35.072308, 31.620518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678661, 34.680096, 32.246853>,  <36.537796, 34.426018, 31.554825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678661, 34.680096, 32.246853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.368656, 34.874435, 32.085209>,  <36.182652, 34.991039, 31.988224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.368656, 34.874435, 32.085209>,  <36.678661, 34.680096, 32.246853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368656, 34.874435, 32.085209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589820, -0.326580, 0.738551,
		0.226850, 0.810740, 0.539667,
		-0.775017, 0.485846, -0.404106,
		36.136150, 35.020191, 31.963978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306175, 34.931129, 32.826866>,  <36.678661, 34.680096, 32.246853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306175, 34.931129, 32.826866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.050438, 34.935623, 32.519333>,  <35.896996, 34.938320, 32.334812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.050438, 34.935623, 32.519333>,  <36.306175, 34.931129, 32.826866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050438, 34.935623, 32.519333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722837, -0.349728, 0.595984,
		-0.262187, 0.936784, 0.231719,
		-0.639347, 0.011236, -0.768836,
		35.858635, 34.938995, 32.288681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807171, 35.376118, 33.091263>,  <36.306175, 34.931129, 32.826866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807171, 35.376118, 33.091263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.617798, 35.173462, 32.803047>,  <35.504173, 35.051868, 32.630116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.617798, 35.173462, 32.803047>,  <35.807171, 35.376118, 33.091263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617798, 35.173462, 32.803047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762191, -0.174390, 0.623421,
		-0.441502, 0.844339, -0.303591,
		-0.473435, -0.506636, -0.720541,
		35.475769, 35.021473, 32.586884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124603, 35.647068, 33.200691>,  <35.807171, 35.376118, 33.091263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124603, 35.647068, 33.200691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.113201, 35.299393, 33.003231>,  <35.106358, 35.090786, 32.884754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.113201, 35.299393, 33.003231>,  <35.124603, 35.647068, 33.200691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113201, 35.299393, 33.003231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800614, -0.275838, 0.531912,
		-0.598501, 0.410390, -0.688023,
		-0.028508, -0.869191, -0.493653,
		35.104649, 35.038635, 32.855137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360062, 35.484432, 33.049496>,  <35.124603, 35.647068, 33.200691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360062, 35.484432, 33.049496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.570549, 35.145702, 33.018551>,  <34.696842, 34.942467, 32.999985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.570549, 35.145702, 33.018551>,  <34.360062, 35.484432, 33.049496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570549, 35.145702, 33.018551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782784, -0.517944, 0.344940,
		-0.332173, -0.120956, -0.935431,
		0.526223, -0.846820, -0.077364,
		34.728416, 34.891655, 32.995342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931358, 34.914162, 32.747879>,  <34.360062, 35.484432, 33.049496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931358, 34.914162, 32.747879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.238506, 34.726463, 32.922321>,  <34.422794, 34.613846, 33.026985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.238506, 34.726463, 32.922321>,  <33.931358, 34.914162, 32.747879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238506, 34.726463, 32.922321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638938, -0.610114, 0.468529,
		0.046218, -0.638412, -0.768306,
		0.767869, -0.469245, 0.436104,
		34.468868, 34.585690, 33.053154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679493, 34.264107, 32.992996>,  <33.931358, 34.914162, 32.747879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679493, 34.264107, 32.992996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.034939, 34.246189, 33.175579>,  <34.248207, 34.235439, 33.285130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.034939, 34.246189, 33.175579>,  <33.679493, 34.264107, 32.992996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034939, 34.246189, 33.175579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333611, -0.746092, 0.576238,
		0.314745, -0.664334, -0.677935,
		0.888616, -0.044798, 0.456458,
		34.301525, 34.232750, 33.312515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872585, 33.589134, 32.974682>,  <33.679493, 34.264107, 32.992996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872585, 33.589134, 32.974682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.056755, 33.769093, 33.280781>,  <34.167255, 33.877068, 33.464439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.056755, 33.769093, 33.280781>,  <33.872585, 33.589134, 32.974682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056755, 33.769093, 33.280781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361887, -0.692045, 0.624589,
		0.810585, -0.564509, -0.155823,
		0.460423, 0.449892, 0.765250,
		34.194881, 33.904060, 33.510357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258457, 33.065575, 33.386440>,  <33.872585, 33.589134, 32.974682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258457, 33.065575, 33.386440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.195206, 33.376297, 33.630264>,  <34.157253, 33.562733, 33.776558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.195206, 33.376297, 33.630264>,  <34.258457, 33.065575, 33.386440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195206, 33.376297, 33.630264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294303, -0.626348, 0.721854,
		0.942540, -0.065250, 0.327661,
		-0.158129, 0.776808, 0.609562,
		34.147766, 33.609341, 33.813133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406071, 32.735111, 34.012592>,  <34.258457, 33.065575, 33.386440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406071, 32.735111, 34.012592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.230549, 33.079792, 34.114517>,  <34.125237, 33.286598, 34.175671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.230549, 33.079792, 34.114517>,  <34.406071, 32.735111, 34.012592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230549, 33.079792, 34.114517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406940, -0.443387, 0.798629,
		0.801156, 0.246750, 0.545219,
		-0.438805, 0.861697, 0.254809,
		34.098907, 33.338303, 34.190960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633720, 33.041111, 34.662712>,  <34.406071, 32.735111, 34.012592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633720, 33.041111, 34.662712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.256672, 33.153862, 34.591148>,  <34.030441, 33.221512, 34.548210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.256672, 33.153862, 34.591148>,  <34.633720, 33.041111, 34.662712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256672, 33.153862, 34.591148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277861, -0.365298, 0.888454,
		0.185081, 0.887188, 0.422661,
		-0.942623, 0.281876, -0.178905,
		33.973885, 33.238426, 34.537476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.384033, 36.765007, 29.151791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033749, 36.935043, 29.060209>,  <37.823578, 37.037067, 29.005260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033749, 36.935043, 29.060209>,  <38.384033, 36.765007, 29.151791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033749, 36.935043, 29.060209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292784, -0.090471, 0.951889,
		0.383930, 0.900616, 0.203688,
		-0.875714, 0.425095, -0.228951,
		37.771034, 37.062572, 28.991524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241394, 37.310108, 29.742880>,  <38.384033, 36.765007, 29.151791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241394, 37.310108, 29.742880> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901066, 37.212879, 29.556536>,  <37.696869, 37.154541, 29.444729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901066, 37.212879, 29.556536>,  <38.241394, 37.310108, 29.742880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901066, 37.212879, 29.556536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405912, -0.258967, 0.876454,
		-0.333688, 0.934800, 0.121666,
		-0.850816, -0.243076, -0.465860,
		37.645821, 37.139957, 29.416777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749710, 37.396450, 30.270590>,  <38.241394, 37.310108, 29.742880>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749710, 37.396450, 30.270590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553150, 37.201988, 29.981543>,  <37.435215, 37.085312, 29.808115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553150, 37.201988, 29.981543>,  <37.749710, 37.396450, 30.270590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553150, 37.201988, 29.981543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503834, -0.518090, 0.691183,
		-0.710403, 0.703729, 0.009649,
		-0.491404, -0.486157, -0.722616,
		37.405727, 37.056141, 29.764757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045315, 37.394821, 30.449375>,  <37.749710, 37.396450, 30.270590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045315, 37.394821, 30.449375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059551, 37.082146, 30.200315>,  <37.068092, 36.894539, 30.050880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059551, 37.082146, 30.200315>,  <37.045315, 37.394821, 30.449375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059551, 37.082146, 30.200315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519336, -0.546777, 0.656753,
		-0.853828, 0.299989, -0.425422,
		0.035592, -0.781691, -0.622648,
		37.070229, 36.847637, 30.013521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412472, 37.171387, 30.402285>,  <37.045315, 37.394821, 30.449375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412472, 37.171387, 30.402285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649136, 36.860710, 30.315861>,  <36.791134, 36.674305, 30.264006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649136, 36.860710, 30.315861>,  <36.412472, 37.171387, 30.402285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649136, 36.860710, 30.315861> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453175, -0.542075, 0.707663,
		-0.666759, -0.320784, -0.672704,
		0.591663, -0.776693, -0.216061,
		36.826633, 36.627701, 30.251043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934521, 36.654419, 30.499907>,  <36.412472, 37.171387, 30.402285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934521, 36.654419, 30.499907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275345, 36.447044, 30.471014>,  <36.479839, 36.322620, 30.453678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275345, 36.447044, 30.471014>,  <35.934521, 36.654419, 30.499907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275345, 36.447044, 30.471014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315793, -0.619175, 0.718955,
		-0.417459, -0.589781, -0.691293,
		0.852058, -0.518440, -0.072232,
		36.530964, 36.291512, 30.449345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804245, 35.897987, 30.280668>,  <35.934521, 36.654419, 30.499907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804245, 35.897987, 30.280668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152416, 35.925571, 30.475643>,  <36.361320, 35.942123, 30.592628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152416, 35.925571, 30.475643>,  <35.804245, 35.897987, 30.280668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152416, 35.925571, 30.475643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323338, -0.666540, 0.671697,
		0.371218, -0.742272, -0.557879,
		0.870431, 0.068963, 0.487436,
		36.413544, 35.946259, 30.621874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843296, 35.257851, 30.487764>,  <35.804245, 35.897987, 30.280668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843296, 35.257851, 30.487764> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132320, 35.426895, 30.706600>,  <36.305733, 35.528324, 30.837902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132320, 35.426895, 30.706600>,  <35.843296, 35.257851, 30.487764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132320, 35.426895, 30.706600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276841, -0.548263, 0.789155,
		0.633457, -0.721668, -0.279156,
		0.722559, 0.422614, 0.547089,
		36.349087, 35.553680, 30.870728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329239, 34.652527, 30.831846>,  <35.843296, 35.257851, 30.487764>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329239, 34.652527, 30.831846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304352, 34.996880, 31.033840>,  <36.289421, 35.203491, 31.155037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304352, 34.996880, 31.033840>,  <36.329239, 34.652527, 30.831846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304352, 34.996880, 31.033840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377960, -0.488606, 0.786391,
		0.923729, -0.141937, 0.355780,
		-0.062219, 0.860882, 0.504986,
		36.285686, 35.255146, 31.185335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947487, 34.210060, 30.877554>,  <36.329239, 34.652527, 30.831846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947487, 34.210060, 30.877554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814850, 33.869972, 30.714006>,  <36.735268, 33.665920, 30.615877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814850, 33.869972, 30.714006>,  <36.947487, 34.210060, 30.877554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814850, 33.869972, 30.714006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403133, 0.264136, -0.876194,
		0.852955, -0.455366, 0.255167,
		-0.331590, -0.850220, -0.408869,
		36.715374, 33.614906, 30.591345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481728, 33.942085, 30.441998>,  <36.947487, 34.210060, 30.877554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481728, 33.942085, 30.441998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151451, 33.751659, 30.320938>,  <36.953285, 33.637405, 30.248302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151451, 33.751659, 30.320938>,  <37.481728, 33.942085, 30.441998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151451, 33.751659, 30.320938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316788, 0.052620, -0.947036,
		0.466772, -0.877836, 0.107362,
		-0.825693, -0.476061, -0.302650,
		36.903744, 33.608841, 30.230143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722359, 33.494926, 29.959274>,  <37.481728, 33.942085, 30.441998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722359, 33.494926, 29.959274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332085, 33.521404, 29.875704>,  <37.097919, 33.537289, 29.825562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332085, 33.521404, 29.875704>,  <37.722359, 33.494926, 29.959274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332085, 33.521404, 29.875704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213062, 0.063128, -0.974997,
		-0.051348, -0.995808, -0.075696,
		-0.975689, 0.066192, -0.208927,
		37.039379, 33.541260, 29.813026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606880, 33.099075, 29.360380>,  <37.722359, 33.494926, 29.959274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606880, 33.099075, 29.360380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312031, 33.369366, 29.362953>,  <37.135120, 33.531540, 29.364496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312031, 33.369366, 29.362953>,  <37.606880, 33.099075, 29.360380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312031, 33.369366, 29.362953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235923, 0.266260, -0.934583,
		-0.633232, -0.687389, -0.355686,
		-0.737127, 0.675723, 0.006433,
		37.090893, 33.572083, 29.364883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210880, 33.071663, 28.688931>,  <37.606880, 33.099075, 29.360380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210880, 33.071663, 28.688931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118000, 33.435795, 28.825972>,  <37.062271, 33.654274, 28.908195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118000, 33.435795, 28.825972>,  <37.210880, 33.071663, 28.688931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118000, 33.435795, 28.825972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031278, 0.345058, -0.938060,
		-0.972165, -0.228533, -0.051649,
		-0.232199, 0.910334, 0.342601,
		37.048340, 33.708897, 28.928753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601940, 33.242054, 28.281645>,  <37.210880, 33.071663, 28.688931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601940, 33.242054, 28.281645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767979, 33.566158, 28.447136>,  <36.867603, 33.760620, 28.546431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767979, 33.566158, 28.447136>,  <36.601940, 33.242054, 28.281645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767979, 33.566158, 28.447136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085178, 0.487371, -0.869031,
		-0.905781, 0.325492, 0.271323,
		0.415097, 0.810262, 0.413727,
		36.892509, 33.809238, 28.571255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227921, 33.827766, 27.917065>,  <36.601940, 33.242054, 28.281645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227921, 33.827766, 27.917065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540993, 34.017548, 28.078211>,  <36.728836, 34.131416, 28.174898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540993, 34.017548, 28.078211>,  <36.227921, 33.827766, 27.917065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540993, 34.017548, 28.078211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212401, 0.404811, -0.889389,
		-0.585056, 0.781681, 0.216066,
		0.782684, 0.474450, 0.402867,
		36.775799, 34.159882, 28.199072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260143, 34.467125, 27.541000>,  <36.227921, 33.827766, 27.917065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260143, 34.467125, 27.541000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621681, 34.435780, 27.709249>,  <36.838604, 34.416973, 27.810200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621681, 34.435780, 27.709249>,  <36.260143, 34.467125, 27.541000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621681, 34.435780, 27.709249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411374, 0.429424, -0.803969,
		-0.117627, 0.899697, 0.420369,
		0.903845, -0.078361, 0.420624,
		36.892834, 34.412270, 27.835436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630165, 35.104328, 27.515610>,  <36.260143, 34.467125, 27.541000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630165, 35.104328, 27.515610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914883, 34.824348, 27.539015>,  <37.085712, 34.656361, 27.553059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914883, 34.824348, 27.539015>,  <36.630165, 35.104328, 27.515610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914883, 34.824348, 27.539015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423193, 0.360878, -0.831069,
		0.560591, 0.616308, 0.553083,
		0.711790, -0.699951, 0.058512,
		37.128418, 34.614365, 27.556568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283562, 35.468845, 27.480007>,  <36.630165, 35.104328, 27.515610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283562, 35.468845, 27.480007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366386, 35.087368, 27.392740>,  <37.416080, 34.858482, 27.340380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366386, 35.087368, 27.392740>,  <37.283562, 35.468845, 27.480007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366386, 35.087368, 27.392740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662988, 0.300774, -0.685552,
		0.719425, -0.002692, 0.694565,
		0.207061, -0.953692, -0.218169,
		37.428505, 34.801262, 27.327290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956985, 35.532890, 27.084358>,  <37.283562, 35.468845, 27.480007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956985, 35.532890, 27.084358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866772, 35.149254, 27.015911>,  <37.812645, 34.919071, 26.974842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866772, 35.149254, 27.015911>,  <37.956985, 35.532890, 27.084358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866772, 35.149254, 27.015911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568762, 0.012986, -0.822400,
		0.790977, -0.282804, 0.542565,
		-0.225532, -0.959090, -0.171120,
		37.799110, 34.861526, 26.964575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621929, 35.173443, 26.985136>,  <37.956985, 35.532890, 27.084358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621929, 35.173443, 26.985136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327438, 34.967758, 26.809158>,  <38.150745, 34.844345, 26.703571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327438, 34.967758, 26.809158>,  <38.621929, 35.173443, 26.985136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327438, 34.967758, 26.809158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553941, -0.084476, -0.828259,
		0.388740, -0.853490, 0.347039,
		-0.736227, -0.514217, -0.439944,
		38.106571, 34.813492, 26.677176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870628, 34.513058, 26.728468>,  <38.621929, 35.173443, 26.985136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870628, 34.513058, 26.728468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560959, 34.589523, 26.487101>,  <38.375156, 34.635403, 26.342279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560959, 34.589523, 26.487101>,  <38.870628, 34.513058, 26.728468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560959, 34.589523, 26.487101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615287, 0.003477, -0.788296,
		-0.148594, -0.981553, -0.120311,
		-0.774172, 0.191161, -0.603420,
		38.328709, 34.646873, 26.306074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057392, 34.161217, 26.158762>,  <38.870628, 34.513058, 26.728468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057392, 34.161217, 26.158762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747360, 34.383656, 26.038759>,  <38.561340, 34.517120, 25.966759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747360, 34.383656, 26.038759>,  <39.057392, 34.161217, 26.158762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747360, 34.383656, 26.038759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422562, 0.103189, -0.900441,
		-0.469775, -0.824687, -0.314966,
		-0.775082, 0.556097, -0.300006,
		38.514835, 34.550484, 25.948757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.601341, 37.296982, 24.383015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.953480, 37.292629, 24.572699>,  <33.164761, 37.290016, 24.686510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.953480, 37.292629, 24.572699>,  <32.601341, 37.296982, 24.383015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953480, 37.292629, 24.572699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289787, -0.803810, 0.519531,
		0.375523, -0.594786, -0.710782,
		0.880344, -0.010880, 0.474211,
		33.217583, 37.289364, 24.714962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863827, 36.578163, 24.358723>,  <32.601341, 37.296982, 24.383015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863827, 36.578163, 24.358723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.031719, 36.741135, 24.683147>,  <33.132454, 36.838917, 24.877804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.031719, 36.741135, 24.683147>,  <32.863827, 36.578163, 24.358723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031719, 36.741135, 24.683147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351724, -0.750756, 0.559156,
		0.836730, -0.519965, -0.171811,
		0.419730, 0.407433, 0.811064,
		33.157639, 36.863365, 24.926466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225739, 36.049374, 24.616140>,  <32.863827, 36.578163, 24.358723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225739, 36.049374, 24.616140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.185173, 36.313179, 24.914068>,  <33.160835, 36.471462, 25.092825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.185173, 36.313179, 24.914068>,  <33.225739, 36.049374, 24.616140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185173, 36.313179, 24.914068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244827, -0.742200, 0.623858,
		0.964248, -0.119083, 0.236737,
		-0.101415, 0.659514, 0.744820,
		33.154747, 36.511032, 25.137514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559002, 35.695705, 25.197422>,  <33.225739, 36.049374, 24.616140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559002, 35.695705, 25.197422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.319393, 35.962242, 25.375034>,  <33.175629, 36.122162, 25.481602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.319393, 35.962242, 25.375034>,  <33.559002, 35.695705, 25.197422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319393, 35.962242, 25.375034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296842, -0.699815, 0.649727,
		0.743676, 0.257396, 0.617003,
		-0.599025, 0.666339, 0.444030,
		33.139687, 36.162144, 25.508244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663830, 35.495285, 25.917469>,  <33.559002, 35.695705, 25.197422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663830, 35.495285, 25.917469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.350342, 35.743561, 25.908344>,  <33.162247, 35.892529, 25.902870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.350342, 35.743561, 25.908344>,  <33.663830, 35.495285, 25.917469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350342, 35.743561, 25.908344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483941, -0.587208, 0.648836,
		0.389332, 0.519547, 0.760587,
		-0.783723, 0.620692, -0.022812,
		33.115227, 35.929768, 25.901501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527866, 35.693020, 26.670914>,  <33.663830, 35.495285, 25.917469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527866, 35.693020, 26.670914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.180904, 35.774086, 26.489128>,  <32.972729, 35.822727, 26.380056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.180904, 35.774086, 26.489128>,  <33.527866, 35.693020, 26.670914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180904, 35.774086, 26.489128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496136, -0.282070, 0.821149,
		0.038230, 0.937743, 0.345220,
		-0.867403, 0.202669, -0.454464,
		32.920685, 35.834888, 26.352789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186302, 36.106457, 27.078831>,  <33.527866, 35.693020, 26.670914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186302, 36.106457, 27.078831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.901970, 35.946316, 26.847511>,  <32.731369, 35.850231, 26.708719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.901970, 35.946316, 26.847511>,  <33.186302, 36.106457, 27.078831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901970, 35.946316, 26.847511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445536, -0.379914, 0.810656,
		-0.544253, 0.833896, 0.091685,
		-0.710835, -0.400353, -0.578300,
		32.688721, 35.826210, 26.674021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530437, 36.432384, 27.434143>,  <33.186302, 36.106457, 27.078831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530437, 36.432384, 27.434143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.456089, 36.093937, 27.234327>,  <32.411480, 35.890869, 27.114439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.456089, 36.093937, 27.234327>,  <32.530437, 36.432384, 27.434143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456089, 36.093937, 27.234327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523002, -0.345200, 0.779298,
		-0.831818, 0.406108, -0.378359,
		-0.185870, -0.846117, -0.499538,
		32.400330, 35.840103, 27.084465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762745, 36.275124, 27.369448>,  <32.530437, 36.432384, 27.434143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762745, 36.275124, 27.369448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.948050, 35.925228, 27.312563>,  <32.059231, 35.715290, 27.278433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.948050, 35.925228, 27.312563>,  <31.762745, 36.275124, 27.369448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948050, 35.925228, 27.312563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585580, -0.422585, 0.691750,
		-0.665196, -0.237184, -0.707996,
		0.463261, -0.874737, -0.142211,
		32.087029, 35.662807, 27.269899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216242, 35.735279, 27.395723>,  <31.762745, 36.275124, 27.369448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216242, 35.735279, 27.395723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.571856, 35.567852, 27.469931>,  <31.785225, 35.467396, 27.514456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.571856, 35.567852, 27.469931>,  <31.216242, 35.735279, 27.395723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.571856, 35.567852, 27.469931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426816, -0.611093, 0.666628,
		-0.165659, -0.671839, -0.721935,
		0.889036, -0.418566, 0.185519,
		31.838566, 35.442284, 27.525585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012058, 35.062347, 27.516947>,  <31.216242, 35.735279, 27.395723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012058, 35.062347, 27.516947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.385410, 35.115677, 27.650230>,  <31.609421, 35.147675, 27.730200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.385410, 35.115677, 27.650230>,  <31.012058, 35.062347, 27.516947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385410, 35.115677, 27.650230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282206, -0.300952, 0.910927,
		0.221724, -0.944274, -0.243279,
		0.933380, 0.133320, 0.333208,
		31.665424, 35.155674, 27.750193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180656, 34.472252, 27.891161>,  <31.012058, 35.062347, 27.516947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180656, 34.472252, 27.891161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.468962, 34.713188, 28.028378>,  <31.641945, 34.857750, 28.110708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.468962, 34.713188, 28.028378>,  <31.180656, 34.472252, 27.891161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468962, 34.713188, 28.028378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004528, -0.490783, 0.871270,
		0.693164, -0.629535, -0.351012,
		0.720765, 0.602344, 0.343043,
		31.685192, 34.893890, 28.131290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690569, 33.914093, 28.153793>,  <31.180656, 34.472252, 27.891161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690569, 33.914093, 28.153793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.739204, 34.270046, 28.329670>,  <31.768385, 34.483616, 28.435196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.739204, 34.270046, 28.329670>,  <31.690569, 33.914093, 28.153793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739204, 34.270046, 28.329670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072645, -0.433813, 0.898069,
		0.989919, -0.141136, 0.011898,
		0.121589, 0.889880, 0.439693,
		31.775681, 34.537010, 28.461578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158791, 33.728691, 28.707405>,  <31.690569, 33.914093, 28.153793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158791, 33.728691, 28.707405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.993452, 34.082455, 28.794085>,  <31.894249, 34.294712, 28.846092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.993452, 34.082455, 28.794085>,  <32.158791, 33.728691, 28.707405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993452, 34.082455, 28.794085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129236, -0.292551, 0.947476,
		0.901355, 0.363632, 0.235224,
		-0.413348, 0.884412, 0.216698,
		31.869448, 34.347778, 28.859095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934788, 33.579273, 28.813246>,  <32.158791, 33.728691, 28.707405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934788, 33.579273, 28.813246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.916187, 33.183594, 28.757631>,  <32.905025, 32.946186, 28.724262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.916187, 33.183594, 28.757631>,  <32.934788, 33.579273, 28.813246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916187, 33.183594, 28.757631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142452, 0.131198, -0.981068,
		0.988709, -0.065430, 0.134811,
		-0.046504, -0.989195, -0.139037,
		32.902237, 32.886837, 28.715919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451492, 33.488373, 28.295305>,  <32.934788, 33.579273, 28.813246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451492, 33.488373, 28.295305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.246666, 33.145420, 28.274546>,  <33.123772, 32.939648, 28.262091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.246666, 33.145420, 28.274546>,  <33.451492, 33.488373, 28.295305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246666, 33.145420, 28.274546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244750, -0.087727, -0.965609,
		0.823339, -0.507156, 0.254765,
		-0.512065, -0.857377, -0.051897,
		33.093048, 32.888206, 28.258976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919865, 33.004086, 28.012060>,  <33.451492, 33.488373, 28.295305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919865, 33.004086, 28.012060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.542213, 32.888893, 27.947943>,  <33.315624, 32.819778, 27.909472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.542213, 32.888893, 27.947943>,  <33.919865, 33.004086, 28.012060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542213, 32.888893, 27.947943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180004, -0.043139, -0.982719,
		0.276087, -0.956665, 0.092566,
		-0.944127, -0.287978, -0.160293,
		33.258976, 32.802502, 27.899855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929317, 32.352982, 27.520695>,  <33.919865, 33.004086, 28.012060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929317, 32.352982, 27.520695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.578430, 32.544868, 27.513027>,  <33.367897, 32.660000, 27.508427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.578430, 32.544868, 27.513027>,  <33.929317, 32.352982, 27.520695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578430, 32.544868, 27.513027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028854, 0.012827, -0.999501,
		-0.479231, -0.877330, -0.025094,
		-0.877214, 0.479716, -0.019167,
		33.315266, 32.688782, 27.507277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572105, 32.023621, 27.022196>,  <33.929317, 32.352982, 27.520695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572105, 32.023621, 27.022196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.351627, 32.356495, 27.046385>,  <33.219341, 32.556217, 27.060898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.351627, 32.356495, 27.046385>,  <33.572105, 32.023621, 27.022196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351627, 32.356495, 27.046385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004424, 0.075390, -0.997144,
		-0.834367, -0.549351, -0.045236,
		-0.551192, 0.832184, 0.060473,
		33.186268, 32.606152, 27.064528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228878, 31.998459, 26.322916>,  <33.572105, 32.023621, 27.022196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228878, 31.998459, 26.322916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.191917, 32.367821, 26.471931>,  <33.169739, 32.589439, 26.561340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.191917, 32.367821, 26.471931>,  <33.228878, 31.998459, 26.322916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191917, 32.367821, 26.471931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045649, 0.377675, -0.924812,
		-0.994675, -0.068452, -0.077052,
		-0.092406, 0.923405, 0.372539,
		33.164196, 32.644840, 26.583693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936974, 32.368538, 25.790989>,  <33.228878, 31.998459, 26.322916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936974, 32.368538, 25.790989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.108246, 32.643158, 26.026041>,  <33.211010, 32.807930, 26.167072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.108246, 32.643158, 26.026041>,  <32.936974, 32.368538, 25.790989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108246, 32.643158, 26.026041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459136, 0.394803, -0.795817,
		-0.778366, 0.610557, -0.146171,
		0.428183, 0.686550, 0.587630,
		33.236702, 32.849121, 26.202330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759663, 33.103504, 25.496021>,  <32.936974, 32.368538, 25.790989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759663, 33.103504, 25.496021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.094276, 33.148029, 25.710613>,  <33.295044, 33.174744, 25.839369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.094276, 33.148029, 25.710613>,  <32.759663, 33.103504, 25.496021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094276, 33.148029, 25.710613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373875, 0.599797, -0.707433,
		-0.400525, 0.792372, 0.460138,
		0.836539, 0.111310, 0.536481,
		33.345238, 33.181423, 25.871557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991867, 33.751499, 25.180517>,  <32.759663, 33.103504, 25.496021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991867, 33.751499, 25.180517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.290028, 33.664360, 25.432522>,  <33.468925, 33.612076, 25.583725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.290028, 33.664360, 25.432522>,  <32.991867, 33.751499, 25.180517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290028, 33.664360, 25.432522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617740, 0.580948, -0.529997,
		-0.250545, 0.784245, 0.567615,
		0.745402, -0.217851, 0.630013,
		33.513649, 33.599007, 25.621527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311588, 34.438046, 25.414839>,  <32.991867, 33.751499, 25.180517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311588, 34.438046, 25.414839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.577511, 34.142670, 25.459974>,  <33.737064, 33.965443, 25.487055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.577511, 34.142670, 25.459974>,  <33.311588, 34.438046, 25.414839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577511, 34.142670, 25.459974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713564, 0.583060, -0.388418,
		0.221033, 0.338740, 0.914549,
		0.664809, -0.738442, 0.112837,
		33.776955, 33.921139, 25.493826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873978, 34.866993, 25.525158>,  <33.311588, 34.438046, 25.414839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873978, 34.866993, 25.525158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.017277, 34.502953, 25.441843>,  <34.103256, 34.284531, 25.391853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.017277, 34.502953, 25.441843>,  <33.873978, 34.866993, 25.525158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017277, 34.502953, 25.441843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667115, 0.405604, -0.624855,
		0.653160, 0.084900, 0.752445,
		0.358245, -0.910098, -0.208287,
		34.124748, 34.229923, 25.379356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613216, 34.783382, 25.615265>,  <33.873978, 34.866993, 25.525158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613216, 34.783382, 25.615265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.475899, 34.528866, 25.338924>,  <34.393509, 34.376156, 25.173120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.475899, 34.528866, 25.338924>,  <34.613216, 34.783382, 25.615265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475899, 34.528866, 25.338924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640783, 0.379114, -0.667586,
		0.686694, -0.671863, 0.277581,
		-0.343292, -0.636296, -0.690853,
		34.372910, 34.337978, 25.131668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192638, 34.519768, 25.289175>,  <34.613216, 34.783382, 25.615265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192638, 34.519768, 25.289175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.878101, 34.485054, 25.044512>,  <34.689377, 34.464226, 24.897713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.878101, 34.485054, 25.044512>,  <35.192638, 34.519768, 25.289175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878101, 34.485054, 25.044512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539789, 0.385036, -0.748582,
		0.300475, -0.918812, -0.255927,
		-0.786347, -0.086784, -0.611658,
		34.642197, 34.459019, 24.861013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491631, 34.276196, 24.647081>,  <35.192638, 34.519768, 25.289175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491631, 34.276196, 24.647081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.135315, 34.436737, 24.561844>,  <34.921524, 34.533062, 24.510702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.135315, 34.436737, 24.561844>,  <35.491631, 34.276196, 24.647081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135315, 34.436737, 24.561844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388977, 0.431040, -0.814188,
		-0.234925, -0.808159, -0.540083,
		-0.890790, 0.401352, -0.213093,
		34.868076, 34.557144, 24.497915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700554, 33.516022, 24.439009>,  <35.491631, 34.276196, 24.647081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700554, 33.516022, 24.439009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.068222, 33.369968, 24.498083>,  <36.288822, 33.282337, 24.533527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.068222, 33.369968, 24.498083>,  <35.700554, 33.516022, 24.439009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068222, 33.369968, 24.498083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343342, -0.559063, 0.754695,
		-0.192995, -0.744398, -0.639237,
		0.919168, -0.365129, 0.147687,
		36.343971, 33.260429, 24.542389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600655, 32.921940, 24.581261>,  <35.700554, 33.516022, 24.439009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600655, 32.921940, 24.581261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.976063, 32.938145, 24.718393>,  <36.201309, 32.947868, 24.800673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.976063, 32.938145, 24.718393>,  <35.600655, 32.921940, 24.581261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976063, 32.938145, 24.718393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266833, -0.544950, 0.794877,
		0.219029, -0.837489, -0.500638,
		0.938523, 0.040515, 0.342830,
		36.257618, 32.950298, 24.821241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721207, 32.283646, 24.744772>,  <35.600655, 32.921940, 24.581261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721207, 32.283646, 24.744772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.987625, 32.489597, 24.960651>,  <36.147476, 32.613171, 25.090179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.987625, 32.489597, 24.960651>,  <35.721207, 32.283646, 24.744772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987625, 32.489597, 24.960651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275074, -0.503002, 0.819343,
		0.693334, -0.694180, -0.193394,
		0.666050, 0.514881, 0.539699,
		36.187439, 32.644062, 25.122561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219498, 31.771652, 25.055058>,  <35.721207, 32.283646, 24.744772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219498, 31.771652, 25.055058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.268562, 32.104282, 25.271736>,  <36.298000, 32.303860, 25.401743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.268562, 32.104282, 25.271736>,  <36.219498, 31.771652, 25.055058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268562, 32.104282, 25.271736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012701, -0.544457, 0.838693,
		0.992367, -0.109757, -0.056223,
		0.122663, 0.831577, 0.541695,
		36.305363, 32.353756, 25.434244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706078, 31.575220, 25.573084>,  <36.219498, 31.771652, 25.055058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706078, 31.575220, 25.573084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.506050, 31.896832, 25.701750>,  <36.386036, 32.089798, 25.778950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.506050, 31.896832, 25.701750>,  <36.706078, 31.575220, 25.573084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506050, 31.896832, 25.701750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087632, -0.322555, 0.942486,
		0.861542, 0.499493, 0.090840,
		-0.500066, 0.804030, 0.321666,
		36.356030, 32.138042, 25.798250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283817, 31.834686, 26.049835>,  <36.706078, 31.575220, 25.573084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283817, 31.834686, 26.049835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.917583, 31.971592, 26.134268>,  <36.697842, 32.053734, 26.184927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.917583, 31.971592, 26.134268>,  <37.283817, 31.834686, 26.049835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917583, 31.971592, 26.134268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118545, -0.271859, 0.955008,
		0.384250, 0.899416, 0.208337,
		-0.915587, 0.342264, 0.211082,
		36.642906, 32.074272, 26.197592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359585, 32.083477, 26.712425>,  <37.283817, 31.834686, 26.049835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359585, 32.083477, 26.712425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.967949, 32.014977, 26.668497>,  <36.732967, 31.973875, 26.642139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.967949, 32.014977, 26.668497>,  <37.359585, 32.083477, 26.712425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967949, 32.014977, 26.668497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061407, -0.265864, 0.962053,
		-0.193951, 0.948677, 0.249788,
		-0.979087, -0.171253, -0.109820,
		36.674221, 31.963600, 26.635551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140881, 32.388294, 27.285233>,  <37.359585, 32.083477, 26.712425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140881, 32.388294, 27.285233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.860226, 32.124401, 27.177563>,  <36.691833, 31.966066, 27.112961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.860226, 32.124401, 27.177563>,  <37.140881, 32.388294, 27.285233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860226, 32.124401, 27.177563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087426, -0.295206, 0.951425,
		-0.707147, 0.691092, 0.149451,
		-0.701641, -0.659731, -0.269173,
		36.649734, 31.926481, 27.096811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503597, 32.551884, 27.587275>,  <37.140881, 32.388294, 27.285233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503597, 32.551884, 27.587275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.497192, 32.154968, 27.538124>,  <36.493351, 31.916819, 27.508635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.497192, 32.154968, 27.538124>,  <36.503597, 32.551884, 27.587275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497192, 32.154968, 27.538124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192506, -0.117534, 0.974232,
		-0.981165, 0.039252, -0.189141,
		-0.016010, -0.992293, -0.122877,
		36.492390, 31.857281, 27.501261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011272, 32.325157, 28.031828>,  <36.503597, 32.551884, 27.587275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011272, 32.325157, 28.031828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.179935, 31.983553, 27.909925>,  <36.281136, 31.778591, 27.836784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.179935, 31.983553, 27.909925>,  <36.011272, 32.325157, 28.031828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179935, 31.983553, 27.909925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283202, -0.443316, 0.850451,
		-0.861393, -0.272296, -0.428785,
		0.421662, -0.854006, -0.304755,
		36.306435, 31.727350, 27.818499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514820, 31.785250, 28.175066>,  <36.011272, 32.325157, 28.031828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514820, 31.785250, 28.175066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.877869, 31.618109, 28.158928>,  <36.095695, 31.517824, 28.149244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.877869, 31.618109, 28.158928>,  <35.514820, 31.785250, 28.175066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877869, 31.618109, 28.158928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212739, -0.540678, 0.813886,
		-0.361896, -0.730116, -0.579623,
		0.907620, -0.417850, -0.040345,
		36.150154, 31.492754, 28.146824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400505, 31.071728, 28.325365>,  <35.514820, 31.785250, 28.175066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400505, 31.071728, 28.325365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.789780, 31.133274, 28.393749>,  <36.023346, 31.170202, 28.434780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.789780, 31.133274, 28.393749>,  <35.400505, 31.071728, 28.325365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789780, 31.133274, 28.393749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042803, -0.609147, 0.791902,
		0.225988, -0.777988, -0.586229,
		0.973189, 0.153868, 0.170960,
		36.081738, 31.179434, 28.445038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701256, 30.453976, 28.416508>,  <35.400505, 31.071728, 28.325365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701256, 30.453976, 28.416508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.970821, 30.691074, 28.592913>,  <36.132561, 30.833334, 28.698755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.970821, 30.691074, 28.592913>,  <35.701256, 30.453976, 28.416508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970821, 30.691074, 28.592913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053206, -0.634309, 0.771247,
		0.736893, -0.496288, -0.459006,
		0.673913, 0.592748, 0.441012,
		36.172997, 30.868898, 28.725216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257095, 30.002666, 28.489422>,  <35.701256, 30.453976, 28.416508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257095, 30.002666, 28.489422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.266674, 30.298225, 28.758780>,  <36.272419, 30.475561, 28.920393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.266674, 30.298225, 28.758780>,  <36.257095, 30.002666, 28.489422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266674, 30.298225, 28.758780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111142, -0.667443, 0.736320,
		0.993516, -0.092472, 0.066142,
		0.023943, 0.738897, 0.673393,
		36.273857, 30.519894, 28.960798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.743919, 33.862602, 25.438795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.601448, 34.236210, 25.449635>,  <38.515965, 34.460377, 25.456139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.601448, 34.236210, 25.449635>,  <38.743919, 33.862602, 25.438795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601448, 34.236210, 25.449635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318595, 0.148656, -0.936162,
		-0.878426, -0.324810, -0.350524,
		-0.356182, 0.934024, 0.027100,
		38.494595, 34.516418, 25.457766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538300, 33.977623, 24.760794>,  <38.743919, 33.862602, 25.438795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538300, 33.977623, 24.760794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.602356, 34.337135, 24.924032>,  <38.640789, 34.552845, 25.021976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.602356, 34.337135, 24.924032>,  <38.538300, 33.977623, 24.760794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602356, 34.337135, 24.924032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302145, 0.348956, -0.887095,
		-0.939715, 0.265363, -0.215681,
		0.160139, 0.898784, 0.408097,
		38.650398, 34.606770, 25.046461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176357, 34.489182, 24.391397>,  <38.538300, 33.977623, 24.760794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176357, 34.489182, 24.391397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.470173, 34.691113, 24.572773>,  <38.646461, 34.812271, 24.681599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.470173, 34.691113, 24.572773>,  <38.176357, 34.489182, 24.391397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470173, 34.691113, 24.572773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192509, 0.485742, -0.852640,
		-0.650686, 0.713588, 0.259613,
		0.734539, 0.504823, 0.453438,
		38.690533, 34.842560, 24.708805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120308, 35.047897, 24.036577>,  <38.176357, 34.489182, 24.391397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120308, 35.047897, 24.036577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.483032, 35.073521, 24.203234>,  <38.700668, 35.088894, 24.303228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.483032, 35.073521, 24.203234>,  <38.120308, 35.047897, 24.036577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483032, 35.073521, 24.203234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359108, 0.400224, -0.843127,
		-0.220758, 0.914176, 0.339924,
		0.906812, 0.064058, 0.416641,
		38.755077, 35.092739, 24.328226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390518, 35.785336, 23.955683>,  <38.120308, 35.047897, 24.036577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390518, 35.785336, 23.955683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.724701, 35.572842, 24.011972>,  <38.925209, 35.445347, 24.045746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.724701, 35.572842, 24.011972>,  <38.390518, 35.785336, 23.955683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724701, 35.572842, 24.011972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346095, 0.309691, -0.885613,
		0.426887, 0.788595, 0.442590,
		0.835456, -0.531235, 0.140726,
		38.975338, 35.413471, 24.054190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992798, 36.319569, 23.802807>,  <38.390518, 35.785336, 23.955683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992798, 36.319569, 23.802807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.163265, 35.959953, 23.762581>,  <39.265545, 35.744186, 23.738445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.163265, 35.959953, 23.762581>,  <38.992798, 36.319569, 23.802807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163265, 35.959953, 23.762581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604676, 0.365777, -0.707513,
		0.672864, 0.240710, 0.699509,
		0.426170, -0.899036, -0.100567,
		39.291115, 35.690243, 23.732410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785992, 36.359352, 23.818275>,  <38.992798, 36.319569, 23.802807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785992, 36.359352, 23.818275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.701683, 36.028194, 23.610365>,  <39.651096, 35.829498, 23.485619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.701683, 36.028194, 23.610365>,  <39.785992, 36.359352, 23.818275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701683, 36.028194, 23.610365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492834, 0.369204, -0.787911,
		0.844209, -0.422234, 0.330196,
		-0.210773, -0.827893, -0.519776,
		39.638451, 35.779827, 23.454432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471313, 36.120968, 23.571430>,  <39.785992, 36.359352, 23.818275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471313, 36.120968, 23.571430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.178123, 35.989918, 23.332966>,  <40.002209, 35.911289, 23.189888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.178123, 35.989918, 23.332966>,  <40.471313, 36.120968, 23.571430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178123, 35.989918, 23.332966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589013, 0.132757, -0.797145,
		0.340310, -0.935434, 0.095668,
		-0.732976, -0.327626, -0.596161,
		39.958229, 35.891632, 23.154118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917690, 35.840687, 22.989908>,  <40.471313, 36.120968, 23.571430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917690, 35.840687, 22.989908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.539356, 35.871536, 22.863762>,  <40.312355, 35.890045, 22.788074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.539356, 35.871536, 22.863762>,  <40.917690, 35.840687, 22.989908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539356, 35.871536, 22.863762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324528, 0.196823, -0.925172,
		-0.009285, -0.977401, -0.211192,
		-0.945831, 0.077127, -0.315366,
		40.255608, 35.894672, 22.769152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971474, 35.617596, 22.345125>,  <40.917690, 35.840687, 22.989908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971474, 35.617596, 22.345125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.600006, 35.765488, 22.333279>,  <40.377125, 35.854221, 22.326172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.600006, 35.765488, 22.333279>,  <40.971474, 35.617596, 22.345125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600006, 35.765488, 22.333279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094396, 0.158374, -0.982857,
		-0.358702, -0.915542, -0.181978,
		-0.928667, 0.369731, -0.029614,
		40.321407, 35.876408, 22.324394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605091, 35.177780, 21.847830>,  <40.971474, 35.617596, 22.345125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605091, 35.177780, 21.847830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.428101, 35.534290, 21.887529>,  <40.321907, 35.748196, 21.911348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.428101, 35.534290, 21.887529>,  <40.605091, 35.177780, 21.847830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428101, 35.534290, 21.887529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046602, 0.087670, -0.995059,
		-0.895568, -0.444916, 0.002743,
		-0.442477, 0.891271, 0.099249,
		40.295357, 35.801670, 21.917303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036331, 35.237751, 21.360332>,  <40.605091, 35.177780, 21.847830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036331, 35.237751, 21.360332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.119591, 35.621292, 21.437567>,  <40.169548, 35.851418, 21.483908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.119591, 35.621292, 21.437567>,  <40.036331, 35.237751, 21.360332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119591, 35.621292, 21.437567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022084, 0.201967, -0.979143,
		-0.977848, 0.199544, 0.063215,
		0.208150, 0.958849, 0.193087,
		40.182037, 35.908947, 21.495493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616898, 35.797413, 21.024387>,  <40.036331, 35.237751, 21.360332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616898, 35.797413, 21.024387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.986477, 35.950336, 21.029392>,  <40.208225, 36.042091, 21.032394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.986477, 35.950336, 21.029392>,  <39.616898, 35.797413, 21.024387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986477, 35.950336, 21.029392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137042, 0.361380, -0.922293,
		-0.357123, 0.850438, 0.386289,
		0.923949, 0.382310, 0.012512,
		40.263660, 36.065029, 21.033146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656414, 36.514679, 20.885527>,  <39.616898, 35.797413, 21.024387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656414, 36.514679, 20.885527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.990997, 36.358311, 20.731897>,  <40.191746, 36.264488, 20.639719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.990997, 36.358311, 20.731897>,  <39.656414, 36.514679, 20.885527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990997, 36.358311, 20.731897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210890, 0.417253, -0.883983,
		0.505828, 0.820413, 0.266573,
		0.836459, -0.390925, -0.384075,
		40.241936, 36.241032, 20.616674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938850, 36.406162, 20.670881>,  <39.656414, 36.514679, 20.885527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938850, 36.406162, 20.670881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.602703, 36.318333, 20.472662>,  <38.401012, 36.265636, 20.353731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.602703, 36.318333, 20.472662>,  <38.938850, 36.406162, 20.670881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602703, 36.318333, 20.472662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250902, -0.652823, 0.714752,
		-0.480444, 0.724990, 0.493521,
		-0.840370, -0.219573, -0.495546,
		38.350594, 36.252460, 20.323997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441349, 36.489914, 21.175856>,  <38.938850, 36.406162, 20.670881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441349, 36.489914, 21.175856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.299133, 36.236305, 20.901161>,  <38.213802, 36.084141, 20.736345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.299133, 36.236305, 20.901161>,  <38.441349, 36.489914, 21.175856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299133, 36.236305, 20.901161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425926, -0.544114, 0.722861,
		-0.831972, 0.549505, -0.076591,
		-0.355542, -0.634022, -0.686736,
		38.192471, 36.046097, 20.695141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695019, 36.467987, 21.206760>,  <38.441349, 36.489914, 21.175856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695019, 36.467987, 21.206760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.787941, 36.122044, 21.028749>,  <37.843693, 35.914478, 20.921942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.787941, 36.122044, 21.028749>,  <37.695019, 36.467987, 21.206760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787941, 36.122044, 21.028749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456234, -0.500980, 0.735438,
		-0.859002, 0.032191, -0.510959,
		0.232305, -0.864860, -0.445030,
		37.857632, 35.862587, 20.895241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061451, 35.964088, 21.339231>,  <37.695019, 36.467987, 21.206760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061451, 35.964088, 21.339231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.355644, 35.722069, 21.217262>,  <37.532162, 35.576855, 21.144081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.355644, 35.722069, 21.217262>,  <37.061451, 35.964088, 21.339231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355644, 35.722069, 21.217262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221762, -0.640225, 0.735482,
		-0.640225, -0.473313, -0.605051,
		-0.735482, 0.605051, 0.304925,
		37.576290, 35.540554, 21.125784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656822, 35.379078, 21.241508>,  <37.061451, 35.964088, 21.339231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656822, 35.379078, 21.241508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.032974, 35.246212, 21.270784>,  <37.258663, 35.166492, 21.288349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.032974, 35.246212, 21.270784>,  <36.656822, 35.379078, 21.241508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032974, 35.246212, 21.270784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331135, -0.844882, 0.420146,
		-0.077723, -0.419331, -0.904500,
		0.940377, -0.332167, 0.073189,
		37.315086, 35.146561, 21.292742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582203, 34.620682, 21.130157>,  <36.656822, 35.379078, 21.241508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582203, 34.620682, 21.130157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.943554, 34.681904, 21.290396>,  <37.160366, 34.718636, 21.386538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.943554, 34.681904, 21.290396>,  <36.582203, 34.620682, 21.130157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943554, 34.681904, 21.290396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191448, -0.691944, 0.696104,
		0.383730, -0.705541, -0.595788,
		0.903382, 0.153054, 0.400594,
		37.214569, 34.727821, 21.410574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827698, 33.989040, 21.334019>,  <36.582203, 34.620682, 21.130157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827698, 33.989040, 21.334019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.056355, 34.221634, 21.565569>,  <37.193546, 34.361191, 21.704500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.056355, 34.221634, 21.565569>,  <36.827698, 33.989040, 21.334019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056355, 34.221634, 21.565569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225705, -0.566856, 0.792295,
		0.788851, -0.583563, -0.192793,
		0.571640, 0.581488, 0.578878,
		37.227848, 34.396080, 21.739233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357014, 33.572533, 21.737097>,  <36.827698, 33.989040, 21.334019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357014, 33.572533, 21.737097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.304287, 33.917713, 21.932209>,  <37.272652, 34.124821, 22.049276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.304287, 33.917713, 21.932209>,  <37.357014, 33.572533, 21.737097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304287, 33.917713, 21.932209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006442, -0.491320, 0.870955,
		0.991253, 0.117951, 0.059206,
		-0.131819, 0.862956, 0.487782,
		37.264740, 34.176601, 22.078545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828125, 33.511742, 22.247551>,  <37.357014, 33.572533, 21.737097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828125, 33.511742, 22.247551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.576180, 33.798878, 22.366198>,  <37.425014, 33.971161, 22.437386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.576180, 33.798878, 22.366198>,  <37.828125, 33.511742, 22.247551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576180, 33.798878, 22.366198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028625, -0.360174, 0.932446,
		0.776180, 0.595803, 0.206311,
		-0.629861, 0.717840, 0.296614,
		37.387222, 34.014229, 22.455181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081383, 33.710892, 22.958542>,  <37.828125, 33.511742, 22.247551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081383, 33.710892, 22.958542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.699715, 33.829132, 22.939840>,  <37.470715, 33.900078, 22.928619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.699715, 33.829132, 22.939840>,  <38.081383, 33.710892, 22.958542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699715, 33.829132, 22.939840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060473, -0.037427, 0.997468,
		0.293104, 0.954578, 0.053587,
		-0.954166, 0.295603, -0.046756,
		37.413464, 33.917812, 22.925814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951530, 33.994904, 23.569971>,  <38.081383, 33.710892, 22.958542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951530, 33.994904, 23.569971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.577572, 33.938309, 23.439766>,  <37.353199, 33.904350, 23.361643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.577572, 33.938309, 23.439766>,  <37.951530, 33.994904, 23.569971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577572, 33.938309, 23.439766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310535, -0.118070, 0.943201,
		-0.171887, 0.982873, 0.066445,
		-0.934892, -0.141491, -0.325512,
		37.297104, 33.895863, 23.342112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548100, 34.415977, 23.991425>,  <37.951530, 33.994904, 23.569971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548100, 34.415977, 23.991425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.279282, 34.163982, 23.835751>,  <37.117989, 34.012787, 23.742346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.279282, 34.163982, 23.835751>,  <37.548100, 34.415977, 23.991425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279282, 34.163982, 23.835751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267634, -0.283401, 0.920900,
		-0.690453, 0.723047, 0.021852,
		-0.672047, -0.629989, -0.389187,
		37.077667, 33.974987, 23.718994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816715, 34.500019, 24.342188>,  <37.548100, 34.415977, 23.991425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816715, 34.500019, 24.342188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.873646, 34.133259, 24.193043>,  <36.907806, 33.913200, 24.103556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.873646, 34.133259, 24.193043>,  <36.816715, 34.500019, 24.342188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873646, 34.133259, 24.193043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109065, -0.388933, 0.914788,
		-0.983792, -0.089535, -0.155359,
		0.142330, -0.916905, -0.372864,
		36.916344, 33.858189, 24.081184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195957, 34.188740, 24.370546>,  <36.816715, 34.500019, 24.342188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195957, 34.188740, 24.370546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.459377, 33.889187, 24.340902>,  <36.617428, 33.709454, 24.323116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.459377, 33.889187, 24.340902>,  <36.195957, 34.188740, 24.370546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459377, 33.889187, 24.340902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422560, -0.449474, 0.787030,
		-0.622704, -0.486979, -0.612447,
		0.658546, -0.748882, -0.074111,
		36.656940, 33.664524, 24.318668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533058, 34.141674, 23.948021>,  <36.195957, 34.188740, 24.370546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533058, 34.141674, 23.948021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.252010, 34.418106, 24.015821>,  <35.083382, 34.583965, 24.056501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.252010, 34.418106, 24.015821>,  <35.533058, 34.141674, 23.948021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252010, 34.418106, 24.015821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177113, 0.400561, -0.898989,
		-0.689173, -0.601626, -0.403841,
		-0.702618, 0.691084, 0.169500,
		35.041225, 34.625431, 24.066671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410271, 34.387051, 23.323467>,  <35.533058, 34.141674, 23.948021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410271, 34.387051, 23.323467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.229519, 34.669716, 23.541250>,  <35.121067, 34.839314, 23.671921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.229519, 34.669716, 23.541250>,  <35.410271, 34.387051, 23.323467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229519, 34.669716, 23.541250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182230, 0.670577, -0.719110,
		-0.873268, -0.225733, -0.431795,
		-0.451878, 0.706662, 0.544458,
		35.093956, 34.881714, 23.704588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972618, 34.844921, 22.837988>,  <35.410271, 34.387051, 23.323467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972618, 34.844921, 22.837988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.064873, 35.055527, 23.165300>,  <35.120224, 35.181892, 23.361689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.064873, 35.055527, 23.165300>,  <34.972618, 34.844921, 22.837988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064873, 35.055527, 23.165300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209304, 0.794424, -0.570160,
		-0.950262, 0.302770, 0.073021,
		0.230637, 0.526517, 0.818282,
		35.134064, 35.213482, 23.410786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461212, 35.319576, 22.977432>,  <34.972618, 34.844921, 22.837988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461212, 35.319576, 22.977432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.784981, 35.485714, 23.143480>,  <34.979244, 35.585396, 23.243109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.784981, 35.485714, 23.143480>,  <34.461212, 35.319576, 22.977432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784981, 35.485714, 23.143480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021852, 0.685125, -0.728098,
		-0.586818, 0.598411, 0.545481,
		0.809424, 0.415341, 0.415120,
		35.027809, 35.610317, 23.268017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458633, 36.102909, 22.790201>,  <34.461212, 35.319576, 22.977432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458633, 36.102909, 22.790201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.833027, 36.058674, 22.923885>,  <35.057663, 36.032131, 23.004095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.833027, 36.058674, 22.923885>,  <34.458633, 36.102909, 22.790201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833027, 36.058674, 22.923885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312686, 0.697318, -0.644961,
		-0.161723, 0.708179, 0.687262,
		0.935988, -0.110592, 0.334210,
		35.113823, 36.025497, 23.024149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698429, 36.750885, 23.142624>,  <34.458633, 36.102909, 22.790201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698429, 36.750885, 23.142624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.005798, 36.537136, 23.001787>,  <35.190220, 36.408886, 22.917286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.005798, 36.537136, 23.001787>,  <34.698429, 36.750885, 23.142624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005798, 36.537136, 23.001787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282557, 0.776977, -0.562555,
		0.574180, 0.332796, 0.748041,
		0.768426, -0.534372, -0.352091,
		35.236328, 36.376823, 22.896160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321915, 37.215714, 23.127092>,  <34.698429, 36.750885, 23.142624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321915, 37.215714, 23.127092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.400299, 36.898369, 22.896551>,  <35.447330, 36.707962, 22.758226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.400299, 36.898369, 22.896551>,  <35.321915, 37.215714, 23.127092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400299, 36.898369, 22.896551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427959, 0.598011, -0.677668,
		0.882299, -0.113861, 0.456711,
		0.195958, -0.793359, -0.576352,
		35.459087, 36.660362, 22.723646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541080, 37.964165, 23.488527>,  <35.321915, 37.215714, 23.127092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541080, 37.964165, 23.488527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.426487, 38.345158, 23.447128>,  <35.357731, 38.573753, 23.422289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.426487, 38.345158, 23.447128>,  <35.541080, 37.964165, 23.488527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426487, 38.345158, 23.447128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597311, -0.093101, 0.796587,
		0.749097, 0.290029, 0.595598,
		-0.286484, 0.952479, -0.103496,
		35.340542, 38.630901, 23.416079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694977, 38.338207, 24.180948>,  <35.541080, 37.964165, 23.488527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694977, 38.338207, 24.180948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.397945, 38.483315, 23.955746>,  <35.219727, 38.570377, 23.820625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.397945, 38.483315, 23.955746>,  <35.694977, 38.338207, 24.180948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397945, 38.483315, 23.955746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626778, -0.080124, 0.775068,
		0.236060, 0.928429, 0.286873,
		-0.742580, 0.362768, -0.563004,
		35.175171, 38.592144, 23.786844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270489, 38.578415, 24.666986>,  <35.694977, 38.338207, 24.180948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270489, 38.578415, 24.666986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.017075, 38.579372, 24.357502>,  <34.865028, 38.579948, 24.171810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.017075, 38.579372, 24.357502>,  <35.270489, 38.578415, 24.666986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017075, 38.579372, 24.357502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733780, -0.318986, 0.599846,
		-0.245367, 0.947756, 0.203845,
		-0.633531, 0.002396, -0.773713,
		34.827015, 38.580090, 24.125387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629921, 38.920010, 24.796879>,  <35.270489, 38.578415, 24.666986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629921, 38.920010, 24.796879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.538090, 38.671558, 24.497147>,  <34.482990, 38.522488, 24.317308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.538090, 38.671558, 24.497147>,  <34.629921, 38.920010, 24.796879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538090, 38.671558, 24.497147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771549, -0.353174, 0.529133,
		-0.593303, 0.699620, -0.398151,
		-0.229575, -0.621128, -0.749329,
		34.469215, 38.485218, 24.272348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984669, 38.795670, 24.969048>,  <34.629921, 38.920010, 24.796879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984669, 38.795670, 24.969048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.035625, 38.537426, 24.667860>,  <34.066200, 38.382481, 24.487148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.035625, 38.537426, 24.667860>,  <33.984669, 38.795670, 24.969048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035625, 38.537426, 24.667860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724531, -0.579021, 0.373883,
		-0.677367, 0.497920, -0.541525,
		0.127391, -0.645608, -0.752969,
		34.073841, 38.343742, 24.441969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307648, 38.578957, 24.676228>,  <33.984669, 38.795670, 24.969048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307648, 38.578957, 24.676228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.563126, 38.279018, 24.607185>,  <33.716412, 38.099056, 24.565760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.563126, 38.279018, 24.607185>,  <33.307648, 38.578957, 24.676228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563126, 38.279018, 24.607185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622592, -0.635435, 0.456730,
		-0.452157, -0.184250, -0.872701,
		0.638697, -0.749849, -0.172604,
		33.754734, 38.054062, 24.555405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830402, 38.021053, 24.450611>,  <33.307648, 38.578957, 24.676228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830402, 38.021053, 24.450611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.165733, 37.812851, 24.515457>,  <33.366932, 37.687927, 24.554365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.165733, 37.812851, 24.515457>,  <32.830402, 38.021053, 24.450611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165733, 37.812851, 24.515457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536825, -0.736312, 0.411902,
		-0.095030, -0.432337, -0.896691,
		0.838325, -0.520509, 0.162118,
		33.417233, 37.656700, 24.564093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.771828, 39.257065, 22.704128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.726273, 38.896206, 22.537680>,  <39.698940, 38.679691, 22.437811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.726273, 38.896206, 22.537680>,  <39.771828, 39.257065, 22.704128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726273, 38.896206, 22.537680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465606, -0.321532, 0.824517,
		-0.877633, 0.287653, -0.383426,
		-0.113891, -0.902149, -0.416120,
		39.692104, 38.625561, 22.412844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970448, 38.939716, 22.738859>,  <39.771828, 39.257065, 22.704128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970448, 38.939716, 22.738859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.272087, 38.682625, 22.792885>,  <39.453072, 38.528370, 22.825300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.272087, 38.682625, 22.792885>,  <38.970448, 38.939716, 22.738859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272087, 38.682625, 22.792885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387572, -0.269476, 0.881573,
		-0.530215, -0.717136, -0.452314,
		0.754095, -0.642728, 0.135061,
		39.498314, 38.489807, 22.833403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673454, 38.335518, 22.982950>,  <38.970448, 38.939716, 22.738859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673454, 38.335518, 22.982950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.051888, 38.284340, 23.101980>,  <39.278950, 38.253635, 23.173397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.051888, 38.284340, 23.101980>,  <38.673454, 38.335518, 22.982950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051888, 38.284340, 23.101980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320032, -0.227447, 0.919700,
		-0.049983, -0.965349, -0.256129,
		0.946087, -0.127939, 0.297575,
		39.335712, 38.245956, 23.191252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685333, 37.629311, 23.305233>,  <38.673454, 38.335518, 22.982950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685333, 37.629311, 23.305233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.996239, 37.829460, 23.457808>,  <39.182781, 37.949551, 23.549353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.996239, 37.829460, 23.457808>,  <38.685333, 37.629311, 23.305233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996239, 37.829460, 23.457808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300787, -0.236970, 0.923781,
		0.552626, -0.832748, -0.033681,
		0.777259, 0.500375, 0.381436,
		39.229416, 37.979572, 23.572239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808971, 37.310646, 23.922199>,  <38.685333, 37.629311, 23.305233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808971, 37.310646, 23.922199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.056297, 37.614628, 24.002350>,  <39.204693, 37.797016, 24.050440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.056297, 37.614628, 24.002350>,  <38.808971, 37.310646, 23.922199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056297, 37.614628, 24.002350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157216, -0.130202, 0.978944,
		0.770044, -0.636799, 0.038971,
		0.618316, 0.759957, 0.200377,
		39.241791, 37.842613, 24.062464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296841, 37.075909, 24.507502>,  <38.808971, 37.310646, 23.922199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296841, 37.075909, 24.507502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.278889, 37.475372, 24.497227>,  <39.268120, 37.715050, 24.491062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.278889, 37.475372, 24.497227>,  <39.296841, 37.075909, 24.507502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278889, 37.475372, 24.497227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201567, 0.016134, 0.979342,
		0.978446, 0.049128, 0.200573,
		-0.044877, 0.998662, -0.025689,
		39.265427, 37.774971, 24.489519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497894, 37.341091, 25.151445>,  <39.296841, 37.075909, 24.507502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497894, 37.341091, 25.151445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.293884, 37.658760, 25.019287>,  <39.171478, 37.849361, 24.939993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.293884, 37.658760, 25.019287>,  <39.497894, 37.341091, 25.151445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293884, 37.658760, 25.019287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345735, 0.162442, 0.924164,
		0.787620, 0.585573, 0.191726,
		-0.510021, 0.794177, -0.330396,
		39.140877, 37.897015, 24.920168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659061, 37.733208, 25.690214>,  <39.497894, 37.341091, 25.151445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659061, 37.733208, 25.690214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.330055, 37.889893, 25.525276>,  <39.132652, 37.983902, 25.426313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.330055, 37.889893, 25.525276>,  <39.659061, 37.733208, 25.690214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330055, 37.889893, 25.525276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404250, 0.107328, 0.908330,
		0.400059, 0.913807, 0.070070,
		-0.822517, 0.391711, -0.412344,
		39.083302, 38.007404, 25.401573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509308, 38.453114, 26.038080>,  <39.659061, 37.733208, 25.690214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509308, 38.453114, 26.038080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.171844, 38.325680, 25.865221>,  <38.969368, 38.249218, 25.761505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.171844, 38.325680, 25.865221>,  <39.509308, 38.453114, 26.038080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171844, 38.325680, 25.865221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413386, -0.128143, 0.901494,
		-0.342580, 0.939193, -0.023590,
		-0.843654, -0.318585, -0.432148,
		38.918747, 38.230103, 25.735577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019123, 38.806316, 26.384663>,  <39.509308, 38.453114, 26.038080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019123, 38.806316, 26.384663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.800369, 38.512070, 26.224775>,  <38.669117, 38.335522, 26.128843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.800369, 38.512070, 26.224775>,  <39.019123, 38.806316, 26.384663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800369, 38.512070, 26.224775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274101, -0.293804, 0.915723,
		-0.791063, 0.610362, -0.040956,
		-0.546889, -0.735621, -0.399718,
		38.636303, 38.291382, 26.104860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469234, 38.921139, 26.726891>,  <39.019123, 38.806316, 26.384663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469234, 38.921139, 26.726891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.419624, 38.552547, 26.579655>,  <38.389858, 38.331390, 26.491312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.419624, 38.552547, 26.579655>,  <38.469234, 38.921139, 26.726891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419624, 38.552547, 26.579655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381953, -0.298039, 0.874805,
		-0.915822, 0.249089, -0.314999,
		-0.124023, -0.921481, -0.368091,
		38.382416, 38.276104, 26.469227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752419, 38.765793, 26.836174>,  <38.469234, 38.921139, 26.726891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752419, 38.765793, 26.836174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.961174, 38.425056, 26.818251>,  <38.086426, 38.220615, 26.807497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.961174, 38.425056, 26.818251>,  <37.752419, 38.765793, 26.836174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961174, 38.425056, 26.818251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363561, -0.269646, 0.891692,
		-0.771660, -0.449069, -0.450420,
		0.521885, -0.851838, -0.044811,
		38.117741, 38.169506, 26.804808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102352, 38.998657, 26.426643>,  <37.752419, 38.765793, 26.836174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102352, 38.998657, 26.426643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.039539, 39.367580, 26.567884>,  <37.001854, 39.588936, 26.652630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.039539, 39.367580, 26.567884>,  <37.102352, 38.998657, 26.426643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039539, 39.367580, 26.567884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578021, 0.375735, -0.724372,
		-0.800770, 0.090353, -0.592118,
		-0.157030, 0.922312, 0.353103,
		36.992432, 39.644276, 26.673815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118340, 39.314709, 25.756615>,  <37.102352, 38.998657, 26.426643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118340, 39.314709, 25.756615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.156792, 39.614937, 26.018116>,  <37.179863, 39.795074, 26.175016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.156792, 39.614937, 26.018116>,  <37.118340, 39.314709, 25.756615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156792, 39.614937, 26.018116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491903, 0.535165, -0.686754,
		-0.865326, 0.387604, -0.317763,
		0.096133, 0.750575, 0.653756,
		37.185631, 39.840111, 26.214243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943504, 39.828213, 25.350319>,  <37.118340, 39.314709, 25.756615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943504, 39.828213, 25.350319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.147655, 39.969238, 25.664062>,  <37.270145, 40.053852, 25.852308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.147655, 39.969238, 25.664062>,  <36.943504, 39.828213, 25.350319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147655, 39.969238, 25.664062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576172, 0.536907, -0.616244,
		-0.638391, 0.766441, 0.070888,
		0.510375, 0.352561, 0.784359,
		37.300770, 40.075008, 25.899370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921444, 40.563446, 25.307756>,  <36.943504, 39.828213, 25.350319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921444, 40.563446, 25.307756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.251240, 40.486588, 25.520657>,  <37.449120, 40.440472, 25.648397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.251240, 40.486588, 25.520657>,  <36.921444, 40.563446, 25.307756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251240, 40.486588, 25.520657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557448, 0.437482, -0.705593,
		-0.097277, 0.878459, 0.467810,
		0.824493, -0.192142, 0.532252,
		37.498589, 40.428944, 25.680332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310234, 41.153870, 25.243242>,  <36.921444, 40.563446, 25.307756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310234, 41.153870, 25.243242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.556465, 40.845398, 25.308168>,  <37.704205, 40.660313, 25.347124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.556465, 40.845398, 25.308168>,  <37.310234, 41.153870, 25.243242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556465, 40.845398, 25.308168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644851, 0.374503, -0.666269,
		0.453027, 0.514808, 0.727832,
		0.615576, -0.771181, 0.162314,
		37.741138, 40.614044, 25.356863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921852, 41.469028, 25.117834>,  <37.310234, 41.153870, 25.243242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921852, 41.469028, 25.117834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.031921, 41.084484, 25.121105>,  <38.097965, 40.853760, 25.123068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.031921, 41.084484, 25.121105>,  <37.921852, 41.469028, 25.117834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031921, 41.084484, 25.121105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539570, 0.147396, -0.828938,
		0.795702, 0.232516, 0.559280,
		0.275177, -0.961359, 0.008175,
		38.114475, 40.796078, 25.123558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619514, 41.411953, 25.109159>,  <37.921852, 41.469028, 25.117834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619514, 41.411953, 25.109159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.518028, 41.054447, 24.961206>,  <38.457134, 40.839943, 24.872435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.518028, 41.054447, 24.961206>,  <38.619514, 41.411953, 25.109159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518028, 41.054447, 24.961206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560639, 0.175734, -0.809198,
		0.788233, -0.412679, 0.456492,
		-0.253718, -0.893764, -0.369883,
		38.441914, 40.786320, 24.850241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268471, 41.178139, 24.818851>,  <38.619514, 41.411953, 25.109159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268471, 41.178139, 24.818851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.984913, 40.950077, 24.652771>,  <38.814777, 40.813240, 24.553123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.984913, 40.950077, 24.652771>,  <39.268471, 41.178139, 24.818851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984913, 40.950077, 24.652771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580950, -0.138200, -0.802121,
		0.399948, -0.809833, 0.429198,
		-0.708899, -0.570150, -0.415200,
		38.772243, 40.779034, 24.528212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587547, 40.571709, 24.469347>,  <39.268471, 41.178139, 24.818851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587547, 40.571709, 24.469347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.232845, 40.616924, 24.290068>,  <39.020023, 40.644054, 24.182501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.232845, 40.616924, 24.290068>,  <39.587547, 40.571709, 24.469347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232845, 40.616924, 24.290068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437425, -0.108156, -0.892727,
		-0.149389, -0.987686, 0.046462,
		-0.886759, 0.113040, -0.448196,
		38.966816, 40.650837, 24.155609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585423, 40.031467, 23.886036>,  <39.587547, 40.571709, 24.469347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585423, 40.031467, 23.886036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.305092, 40.298550, 23.785633>,  <39.136894, 40.458801, 23.725391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.305092, 40.298550, 23.785633>,  <39.585423, 40.031467, 23.886036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305092, 40.298550, 23.785633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398211, 0.074262, -0.914283,
		-0.591836, -0.740708, -0.317934,
		-0.700827, 0.667711, -0.251007,
		39.094845, 40.498863, 23.710331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524948, 39.822865, 23.218191>,  <39.585423, 40.031467, 23.886036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524948, 39.822865, 23.218191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.353241, 40.182934, 23.247631>,  <39.250217, 40.398975, 23.265295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.353241, 40.182934, 23.247631>,  <39.524948, 39.822865, 23.218191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353241, 40.182934, 23.247631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331432, 0.232807, -0.914305,
		-0.840168, -0.368087, -0.398283,
		-0.429267, 0.900174, 0.073602,
		39.224461, 40.452988, 23.269712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220379, 39.853954, 22.606213>,  <39.524948, 39.822865, 23.218191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220379, 39.853954, 22.606213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.213902, 40.229488, 22.743807>,  <39.210014, 40.454807, 22.826363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.213902, 40.229488, 22.743807>,  <39.220379, 39.853954, 22.606213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213902, 40.229488, 22.743807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317237, 0.331076, -0.888678,
		-0.948208, 0.094738, -0.303194,
		-0.016189, 0.938836, 0.343984,
		39.209045, 40.511139, 22.847002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689796, 40.126907, 22.218571>,  <39.220379, 39.853954, 22.606213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689796, 40.126907, 22.218571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.958607, 40.381958, 22.369205>,  <39.119892, 40.534988, 22.459587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.958607, 40.381958, 22.369205>,  <38.689796, 40.126907, 22.218571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958607, 40.381958, 22.369205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375887, 0.144444, -0.915339,
		-0.638037, 0.756685, -0.142605,
		0.672025, 0.637624, 0.376589,
		39.160213, 40.573246, 22.482182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015076, 40.346622, 22.588976>,  <38.689796, 40.126907, 22.218571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015076, 40.346622, 22.588976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.824760, 40.260029, 22.247974>,  <37.710571, 40.208073, 22.043373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.824760, 40.260029, 22.247974>,  <38.015076, 40.346622, 22.588976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824760, 40.260029, 22.247974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708121, -0.480637, 0.517255,
		-0.521721, 0.849779, 0.075385,
		-0.475785, -0.216481, -0.852505,
		37.682026, 40.195084, 21.992224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333302, 40.618946, 22.597355>,  <38.015076, 40.346622, 22.588976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333302, 40.618946, 22.597355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.295635, 40.339172, 22.313969>,  <37.273037, 40.171307, 22.143938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.295635, 40.339172, 22.313969>,  <37.333302, 40.618946, 22.597355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295635, 40.339172, 22.313969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901587, -0.241895, 0.358647,
		-0.422225, 0.672513, -0.607826,
		-0.094165, -0.699437, -0.708463,
		37.267387, 40.129341, 22.101429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630890, 40.729340, 22.381960>,  <37.333302, 40.618946, 22.597355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630890, 40.729340, 22.381960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.748173, 40.376503, 22.234478>,  <36.818542, 40.164799, 22.145988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.748173, 40.376503, 22.234478>,  <36.630890, 40.729340, 22.381960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748173, 40.376503, 22.234478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832379, -0.425236, 0.355415,
		-0.470296, 0.202693, -0.858916,
		0.293202, -0.882094, -0.368704,
		36.836132, 40.111874, 22.123867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066776, 40.417721, 22.264662>,  <36.630890, 40.729340, 22.381960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066776, 40.417721, 22.264662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.310932, 40.101349, 22.247459>,  <36.457424, 39.911526, 22.237139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.310932, 40.101349, 22.247459>,  <36.066776, 40.417721, 22.264662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310932, 40.101349, 22.247459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765364, -0.602901, 0.225229,
		-0.204069, -0.104563, -0.973356,
		0.610388, -0.790934, -0.043005,
		36.494049, 39.864067, 22.234558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713192, 39.889671, 21.869043>,  <36.066776, 40.417721, 22.264662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713192, 39.889671, 21.869043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.982578, 39.686203, 22.083595>,  <36.144211, 39.564121, 22.212326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.982578, 39.686203, 22.083595>,  <35.713192, 39.889671, 21.869043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982578, 39.686203, 22.083595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737991, -0.504447, 0.448221,
		0.042580, -0.697704, -0.715120,
		0.673466, -0.508667, 0.536379,
		36.184620, 39.533604, 22.244509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403839, 39.204105, 21.882339>,  <35.713192, 39.889671, 21.869043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403839, 39.204105, 21.882339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.678738, 39.217896, 22.172583>,  <35.843678, 39.226170, 22.346729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.678738, 39.217896, 22.172583>,  <35.403839, 39.204105, 21.882339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678738, 39.217896, 22.172583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624056, -0.483249, 0.614023,
		0.371817, -0.874804, -0.310596,
		0.687245, 0.034475, 0.725607,
		35.884911, 39.228237, 22.390265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543659, 38.579552, 22.135405>,  <35.403839, 39.204105, 21.882339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543659, 38.579552, 22.135405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.610958, 38.829380, 22.440456>,  <35.651337, 38.979279, 22.623487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.610958, 38.829380, 22.440456>,  <35.543659, 38.579552, 22.135405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610958, 38.829380, 22.440456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518216, -0.602080, 0.607415,
		0.838537, -0.497402, 0.222365,
		0.168248, 0.624573, 0.762628,
		35.661434, 39.016750, 22.669245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529976, 38.024231, 22.736353>,  <35.543659, 38.579552, 22.135405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529976, 38.024231, 22.736353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.505371, 38.392757, 22.889919>,  <35.490608, 38.613873, 22.982059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.505371, 38.392757, 22.889919>,  <35.529976, 38.024231, 22.736353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505371, 38.392757, 22.889919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326419, -0.382061, 0.864569,
		0.943222, -0.072140, 0.324235,
		-0.061508, 0.921317, 0.383916,
		35.486919, 38.669151, 23.005095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006252, 37.312931, 22.886099>,  <35.529976, 38.024231, 22.736353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006252, 37.312931, 22.886099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.853436, 37.055653, 22.620665>,  <35.761745, 36.901287, 22.461403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.853436, 37.055653, 22.620665>,  <36.006252, 37.312931, 22.886099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853436, 37.055653, 22.620665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424224, 0.515872, -0.744251,
		0.821023, -0.565844, 0.075773,
		-0.382041, -0.643192, -0.663588,
		35.738823, 36.862694, 22.421589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510254, 37.263329, 22.496782>,  <36.006252, 37.312931, 22.886099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510254, 37.263329, 22.496782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.203468, 37.135811, 22.274027>,  <36.019398, 37.059299, 22.140373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.203468, 37.135811, 22.274027>,  <36.510254, 37.263329, 22.496782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203468, 37.135811, 22.274027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386650, 0.463018, -0.797569,
		0.512115, -0.827032, -0.231856,
		-0.766968, -0.318799, -0.556890,
		35.973377, 37.040173, 22.106960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777012, 37.080933, 21.942976>,  <36.510254, 37.263329, 22.496782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777012, 37.080933, 21.942976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.400528, 37.109146, 21.810827>,  <36.174637, 37.126076, 21.731539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.400528, 37.109146, 21.810827>,  <36.777012, 37.080933, 21.942976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400528, 37.109146, 21.810827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331721, 0.377952, -0.864357,
		0.063894, -0.923134, -0.379132,
		-0.941211, 0.070538, -0.330372,
		36.118164, 37.130306, 21.711716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817764, 36.795586, 21.293449>,  <36.777012, 37.080933, 21.942976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817764, 36.795586, 21.293449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.466640, 36.986408, 21.276194>,  <36.255966, 37.100903, 21.265841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.466640, 36.986408, 21.276194>,  <36.817764, 36.795586, 21.293449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466640, 36.986408, 21.276194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159650, 0.206472, -0.965340,
		-0.451615, -0.854275, -0.257405,
		-0.877813, 0.477057, -0.043139,
		36.203297, 37.129524, 21.263252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454494, 36.612701, 20.612915>,  <36.817764, 36.795586, 21.293449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454494, 36.612701, 20.612915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.312122, 36.956367, 20.759964>,  <36.226700, 37.162567, 20.848192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.312122, 36.956367, 20.759964>,  <36.454494, 36.612701, 20.612915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312122, 36.956367, 20.759964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028764, 0.383124, -0.923249,
		-0.934070, -0.339187, -0.111652,
		-0.355931, 0.859167, 0.367621,
		36.205341, 37.214119, 20.870251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960739, 36.820454, 20.127365>,  <36.454494, 36.612701, 20.612915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960739, 36.820454, 20.127365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.108074, 37.139332, 20.318699>,  <36.196476, 37.330658, 20.433498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.108074, 37.139332, 20.318699>,  <35.960739, 36.820454, 20.127365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108074, 37.139332, 20.318699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154863, 0.454709, -0.877073,
		-0.916703, 0.397136, 0.044030,
		0.368338, 0.797197, 0.478335,
		36.218575, 37.378490, 20.462200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717640, 37.441097, 19.697794>,  <35.960739, 36.820454, 20.127365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717640, 37.441097, 19.697794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.992863, 37.581314, 19.951942>,  <36.157997, 37.665443, 20.104431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.992863, 37.581314, 19.951942>,  <35.717640, 37.441097, 19.697794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992863, 37.581314, 19.951942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204555, 0.746381, -0.633303,
		-0.696229, 0.565717, 0.441847,
		0.688057, 0.350542, 0.635373,
		36.199280, 37.686478, 20.142555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655384, 38.189472, 19.530663>,  <35.717640, 37.441097, 19.697794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655384, 38.189472, 19.530663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.991268, 38.126236, 19.738466>,  <36.192799, 38.088295, 19.863148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.991268, 38.126236, 19.738466>,  <35.655384, 38.189472, 19.530663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991268, 38.126236, 19.738466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528055, 0.460858, -0.713279,
		-0.126655, 0.873279, 0.470470,
		0.839712, -0.158093, 0.519510,
		36.243183, 38.078808, 19.894320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986076, 38.928360, 19.541931>,  <35.655384, 38.189472, 19.530663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986076, 38.928360, 19.541931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.231575, 38.613216, 19.562283>,  <36.378876, 38.424129, 19.574493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.231575, 38.613216, 19.562283>,  <35.986076, 38.928360, 19.541931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231575, 38.613216, 19.562283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566951, 0.394981, -0.722881,
		0.549433, 0.472513, 0.689097,
		0.613751, -0.787859, 0.050876,
		36.415699, 38.376858, 19.577545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.348995, 31.065807, 33.362011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.747993, 31.045990, 33.341846>,  <33.987392, 31.034100, 33.329746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.747993, 31.045990, 33.341846>,  <33.348995, 31.065807, 33.362011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747993, 31.045990, 33.341846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037307, 0.236756, -0.970853,
		0.060034, 0.970305, 0.234315,
		0.997499, -0.049543, -0.050412,
		34.047245, 31.031128, 33.326721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736835, 31.776110, 33.065342>,  <33.348995, 31.065807, 33.362011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736835, 31.776110, 33.065342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.843437, 31.396746, 32.996647>,  <33.907398, 31.169127, 32.955429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.843437, 31.396746, 32.996647>,  <33.736835, 31.776110, 33.065342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843437, 31.396746, 32.996647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011784, 0.181373, -0.983344,
		0.963762, 0.260040, 0.059513,
		0.266503, -0.948411, -0.171736,
		33.923389, 31.112223, 32.945126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241703, 31.764997, 32.516090>,  <33.736835, 31.776110, 33.065342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241703, 31.764997, 32.516090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.062202, 31.407904, 32.499859>,  <33.954502, 31.193647, 32.490120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.062202, 31.407904, 32.499859>,  <34.241703, 31.764997, 32.516090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062202, 31.407904, 32.499859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016758, 0.036990, -0.999175,
		0.893501, -0.449059, -0.001639,
		-0.448749, -0.892736, -0.040576,
		33.927578, 31.140083, 32.487686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383907, 31.501524, 31.875053>,  <34.241703, 31.764997, 32.516090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383907, 31.501524, 31.875053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.057865, 31.284887, 31.957298>,  <33.862240, 31.154905, 32.006645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.057865, 31.284887, 31.957298>,  <34.383907, 31.501524, 31.875053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057865, 31.284887, 31.957298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260019, 0.024869, -0.965283,
		0.517673, -0.840275, -0.161095,
		-0.815110, -0.541589, 0.205614,
		33.813332, 31.122410, 32.018982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386318, 30.990442, 31.545326>,  <34.383907, 31.501524, 31.875053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386318, 30.990442, 31.545326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.997757, 31.056664, 31.613401>,  <33.764618, 31.096395, 31.654245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.997757, 31.056664, 31.613401>,  <34.386318, 30.990442, 31.545326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997757, 31.056664, 31.613401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151186, 0.121381, -0.981025,
		-0.183068, -0.978703, -0.092881,
		-0.971406, 0.165552, 0.170187,
		33.706337, 31.106329, 31.664457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141220, 30.864937, 30.928911>,  <34.386318, 30.990442, 31.545326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141220, 30.864937, 30.928911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.822552, 31.035456, 31.100300>,  <33.631351, 31.137766, 31.203133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.822552, 31.035456, 31.100300>,  <34.141220, 30.864937, 30.928911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822552, 31.035456, 31.100300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278890, 0.369652, -0.886328,
		-0.536222, -0.825609, -0.175602,
		-0.796672, 0.426295, 0.428470,
		33.583549, 31.163343, 31.228840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607136, 30.806646, 30.458326>,  <34.141220, 30.864937, 30.928911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607136, 30.806646, 30.458326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.432438, 31.089453, 30.680817>,  <33.327621, 31.259136, 30.814310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.432438, 31.089453, 30.680817>,  <33.607136, 30.806646, 30.458326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432438, 31.089453, 30.680817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445326, 0.367314, -0.816557,
		-0.781627, -0.604326, 0.154431,
		-0.436742, 0.707015, 0.556225,
		33.301414, 31.301558, 30.847685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902958, 30.939222, 30.121830>,  <33.607136, 30.806646, 30.458326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902958, 30.939222, 30.121830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.954918, 31.260534, 30.354336>,  <32.986095, 31.453321, 30.493839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.954918, 31.260534, 30.354336>,  <32.902958, 30.939222, 30.121830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954918, 31.260534, 30.354336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361312, 0.584273, -0.726690,
		-0.923352, -0.115620, 0.366133,
		0.129902, 0.803279, 0.581265,
		32.993889, 31.501518, 30.528715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307537, 31.286554, 30.237062>,  <32.902958, 30.939222, 30.121830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307537, 31.286554, 30.237062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.603004, 31.555126, 30.260920>,  <32.780285, 31.716269, 30.275234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.603004, 31.555126, 30.260920>,  <32.307537, 31.286554, 30.237062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603004, 31.555126, 30.260920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395110, 0.502961, -0.768712,
		-0.546133, 0.544256, 0.636808,
		0.738666, 0.671428, 0.059643,
		32.824604, 31.756554, 30.278812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105045, 31.926908, 29.868055>,  <32.307537, 31.286554, 30.237062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105045, 31.926908, 29.868055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.491665, 32.025082, 29.897831>,  <32.723637, 32.083984, 29.915697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.491665, 32.025082, 29.897831>,  <32.105045, 31.926908, 29.868055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491665, 32.025082, 29.897831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071445, 0.536413, -0.840926,
		-0.246321, 0.807480, 0.536005,
		0.966551, 0.245433, 0.074440,
		32.781631, 32.098713, 29.920162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153908, 32.596104, 29.874449>,  <32.105045, 31.926908, 29.868055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153908, 32.596104, 29.874449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.510395, 32.495697, 29.723331>,  <32.724285, 32.435452, 29.632662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.510395, 32.495697, 29.723331>,  <32.153908, 32.596104, 29.874449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510395, 32.495697, 29.723331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241047, 0.443453, -0.863276,
		0.384233, 0.860429, 0.334704,
		0.891214, -0.251019, -0.377793,
		32.777760, 32.420391, 29.609993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252262, 33.158981, 29.370905>,  <32.153908, 32.596104, 29.874449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252262, 33.158981, 29.370905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.518776, 32.879486, 29.266729>,  <32.678684, 32.711788, 29.204224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.518776, 32.879486, 29.266729>,  <32.252262, 33.158981, 29.370905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518776, 32.879486, 29.266729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003267, 0.346514, -0.938039,
		0.745691, 0.625851, 0.228594,
		0.666284, -0.698741, -0.260437,
		32.718662, 32.669865, 29.188599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413532, 33.850212, 29.404123>,  <32.252262, 33.158981, 29.370905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413532, 33.850212, 29.404123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.103325, 34.100243, 29.368687>,  <31.917200, 34.250259, 29.347424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.103325, 34.100243, 29.368687>,  <32.413532, 33.850212, 29.404123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103325, 34.100243, 29.368687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237520, -0.158866, 0.958304,
		0.584937, 0.764228, 0.271672,
		-0.775522, 0.625074, -0.088592,
		31.870668, 34.287766, 29.342110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494160, 34.235649, 29.982779>,  <32.413532, 33.850212, 29.404123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494160, 34.235649, 29.982779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.116707, 34.303177, 29.868893>,  <31.890236, 34.343693, 29.800560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.116707, 34.303177, 29.868893>,  <32.494160, 34.235649, 29.982779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116707, 34.303177, 29.868893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309397, -0.144188, 0.939938,
		0.117623, 0.975044, 0.188291,
		-0.943630, 0.168815, -0.284716,
		31.833618, 34.353821, 29.783478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288185, 34.764420, 30.375652>,  <32.494160, 34.235649, 29.982779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288185, 34.764420, 30.375652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.955420, 34.584728, 30.245356>,  <31.755758, 34.476913, 30.167177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.955420, 34.584728, 30.245356>,  <32.288185, 34.764420, 30.375652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955420, 34.584728, 30.245356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267077, -0.190405, 0.944678,
		-0.486396, 0.872893, 0.038423,
		-0.831919, -0.449226, -0.325742,
		31.705843, 34.449959, 30.147633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730095, 35.083393, 30.794712>,  <32.288185, 34.764420, 30.375652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730095, 35.083393, 30.794712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.572039, 34.743313, 30.655558>,  <31.477205, 34.539265, 30.572065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.572039, 34.743313, 30.655558>,  <31.730095, 35.083393, 30.794712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572039, 34.743313, 30.655558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385042, -0.190546, 0.903014,
		-0.834030, 0.490769, -0.252070,
		-0.395140, -0.850199, -0.347888,
		31.453497, 34.488255, 30.551191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068745, 35.141422, 30.988119>,  <31.730095, 35.083393, 30.794712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068745, 35.141422, 30.988119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.092360, 34.749500, 30.911707>,  <31.106527, 34.514347, 30.865860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.092360, 34.749500, 30.911707>,  <31.068745, 35.141422, 30.988119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092360, 34.749500, 30.911707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376296, -0.199091, 0.904856,
		-0.924617, 0.018465, -0.380451,
		0.059036, -0.979807, -0.191031,
		31.110071, 34.455559, 30.854397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.415672, 34.799271, 31.287537>,  <31.068745, 35.141422, 30.988119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.415672, 34.799271, 31.287537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.643684, 34.474087, 31.239943>,  <30.780491, 34.278976, 31.211386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.643684, 34.474087, 31.239943>,  <30.415672, 34.799271, 31.287537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643684, 34.474087, 31.239943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386106, -0.392878, 0.834607,
		-0.725251, -0.429809, -0.537842,
		0.570028, -0.812964, -0.118983,
		30.814693, 34.230198, 31.204248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976070, 34.228657, 31.442680>,  <30.415672, 34.799271, 31.287537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976070, 34.228657, 31.442680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.348000, 34.087193, 31.483377>,  <30.571157, 34.002316, 31.507795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.348000, 34.087193, 31.483377>,  <29.976070, 34.228657, 31.442680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.348000, 34.087193, 31.483377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243617, -0.384333, 0.890471,
		-0.275819, -0.852769, -0.443520,
		0.929825, -0.353657, 0.101743,
		30.626947, 33.981094, 31.513901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877020, 33.454556, 31.634399>,  <29.976070, 34.228657, 31.442680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877020, 33.454556, 31.634399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.235456, 33.589886, 31.749331>,  <30.450518, 33.671085, 31.818289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.235456, 33.589886, 31.749331>,  <29.877020, 33.454556, 31.634399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235456, 33.589886, 31.749331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171994, -0.332094, 0.927433,
		0.409197, -0.880481, -0.239395,
		0.896089, 0.338328, 0.287329,
		30.504284, 33.691383, 31.835529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172997, 32.975510, 31.966022>,  <29.877020, 33.454556, 31.634399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172997, 32.975510, 31.966022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.374941, 33.294964, 32.097042>,  <30.496107, 33.486637, 32.175655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.374941, 33.294964, 32.097042>,  <30.172997, 32.975510, 31.966022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374941, 33.294964, 32.097042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089051, -0.329247, 0.940035,
		0.858594, -0.503757, -0.095104,
		0.504862, 0.798640, 0.327550,
		30.526400, 33.534557, 32.195309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623434, 32.658840, 32.389496>,  <30.172997, 32.975510, 31.966022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623434, 32.658840, 32.389496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.645218, 33.046169, 32.486969>,  <30.658289, 33.278568, 32.545452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.645218, 33.046169, 32.486969>,  <30.623434, 32.658840, 32.389496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645218, 33.046169, 32.486969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042762, -0.246087, 0.968304,
		0.997600, -0.042313, -0.054809,
		0.054460, 0.968324, 0.243687,
		30.661556, 33.336666, 32.560074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.229055, 32.802097, 32.932453>,  <30.623434, 32.658840, 32.389496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.229055, 32.802097, 32.932453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.986120, 33.118942, 32.956768>,  <30.840359, 33.309052, 32.971355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.986120, 33.118942, 32.956768>,  <31.229055, 32.802097, 32.932453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986120, 33.118942, 32.956768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031570, -0.052392, 0.998128,
		0.793816, 0.608119, 0.006813,
		-0.607338, 0.792115, 0.060788,
		30.803919, 33.356575, 32.975006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.461319, 33.061226, 33.525936>,  <31.229055, 32.802097, 32.932453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.461319, 33.061226, 33.525936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.102486, 33.230942, 33.476585>,  <30.887186, 33.332771, 33.446976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.102486, 33.230942, 33.476585>,  <31.461319, 33.061226, 33.525936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102486, 33.230942, 33.476585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085722, 0.106806, 0.990578,
		0.433467, 0.899206, -0.059443,
		-0.897083, 0.424288, -0.123379,
		30.833361, 33.358227, 33.439571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468777, 33.709827, 33.944298>,  <31.461319, 33.061226, 33.525936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468777, 33.709827, 33.944298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.094360, 33.575878, 33.901047>,  <30.869711, 33.495510, 33.875095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.094360, 33.575878, 33.901047>,  <31.468777, 33.709827, 33.944298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094360, 33.575878, 33.901047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181737, 0.196901, 0.963432,
		-0.301334, 0.921462, -0.245165,
		-0.936039, -0.334870, -0.108131,
		30.813549, 33.475418, 33.868607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018169, 34.215519, 34.254002>,  <31.468777, 33.709827, 33.944298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018169, 34.215519, 34.254002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.780405, 33.894032, 34.243324>,  <30.637747, 33.701138, 34.236916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.780405, 33.894032, 34.243324>,  <31.018169, 34.215519, 34.254002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780405, 33.894032, 34.243324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389356, 0.258595, 0.884042,
		-0.703616, 0.535880, -0.466645,
		-0.594412, -0.803717, -0.026696,
		30.602081, 33.652916, 34.235317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361858, 34.831032, 34.482628>,  <31.018169, 34.215519, 34.254002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361858, 34.831032, 34.482628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.521864, 35.003380, 34.806194>,  <31.617867, 35.106789, 35.000336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.521864, 35.003380, 34.806194>,  <31.361858, 34.831032, 34.482628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521864, 35.003380, 34.806194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455201, 0.672648, -0.583384,
		-0.795475, 0.601580, 0.072938,
		0.400014, 0.430866, 0.808915,
		31.641869, 35.132641, 35.048870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051500, 35.537136, 34.584110>,  <31.361858, 34.831032, 34.482628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051500, 35.537136, 34.584110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.419794, 35.404781, 34.666824>,  <31.640770, 35.325367, 34.716454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.419794, 35.404781, 34.666824>,  <31.051500, 35.537136, 34.584110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419794, 35.404781, 34.666824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375302, 0.606018, -0.701349,
		0.106751, 0.723364, 0.682165,
		0.920735, -0.330887, 0.206787,
		31.696014, 35.305515, 34.728859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456320, 36.073723, 34.420670>,  <31.051500, 35.537136, 34.584110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456320, 36.073723, 34.420670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.721355, 35.774746, 34.401478>,  <31.880377, 35.595360, 34.389961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.721355, 35.774746, 34.401478>,  <31.456320, 36.073723, 34.420670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721355, 35.774746, 34.401478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475989, 0.469680, -0.743529,
		0.578281, 0.469817, 0.666980,
		0.662590, -0.747444, -0.047980,
		31.920132, 35.550514, 34.387085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185337, 36.328434, 34.530514>,  <31.456320, 36.073723, 34.420670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185337, 36.328434, 34.530514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.177708, 35.993011, 34.312721>,  <32.173130, 35.791756, 34.182045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.177708, 35.993011, 34.312721>,  <32.185337, 36.328434, 34.530514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177708, 35.993011, 34.312721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569622, 0.438439, -0.695199,
		0.821685, -0.323405, 0.469300,
		-0.019071, -0.838559, -0.544477,
		32.171986, 35.741444, 34.149380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801582, 36.233669, 34.243130>,  <32.185337, 36.328434, 34.530514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801582, 36.233669, 34.243130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.598488, 36.000805, 33.989109>,  <32.476631, 35.861088, 33.836697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.598488, 36.000805, 33.989109>,  <32.801582, 36.233669, 34.243130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598488, 36.000805, 33.989109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411108, 0.484069, -0.772442,
		0.757095, -0.653273, -0.006448,
		-0.507737, -0.582161, -0.635052,
		32.446167, 35.826157, 33.798592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180584, 36.182854, 33.672806>,  <32.801582, 36.233669, 34.243130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180584, 36.182854, 33.672806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.829990, 36.059139, 33.525230>,  <32.619633, 35.984913, 33.436684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.829990, 36.059139, 33.525230>,  <33.180584, 36.182854, 33.672806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829990, 36.059139, 33.525230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253784, 0.354396, -0.899998,
		0.409108, -0.882466, -0.232131,
		-0.876484, -0.309285, -0.368942,
		32.567043, 35.966354, 33.414547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366600, 35.883251, 33.107182>,  <33.180584, 36.182854, 33.672806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366600, 35.883251, 33.107182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.979862, 35.962124, 33.042267>,  <32.747822, 36.009449, 33.003319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.979862, 35.962124, 33.042267>,  <33.366600, 35.883251, 33.107182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979862, 35.962124, 33.042267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219276, 0.315248, -0.923329,
		-0.130904, -0.928298, -0.348032,
		-0.966841, 0.197183, -0.162286,
		32.689808, 36.021278, 32.993580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143940, 35.527668, 32.496960>,  <33.366600, 35.883251, 33.107182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143940, 35.527668, 32.496960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.879780, 35.824799, 32.540913>,  <32.721283, 36.003078, 32.567284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.879780, 35.824799, 32.540913>,  <33.143940, 35.527668, 32.496960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879780, 35.824799, 32.540913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160461, 0.282558, -0.945734,
		-0.733565, -0.606935, -0.305797,
		-0.660404, 0.742827, 0.109885,
		32.681660, 36.047646, 32.573879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733059, 35.536922, 31.870134>,  <33.143940, 35.527668, 32.496960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733059, 35.536922, 31.870134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.690308, 35.900822, 32.030602>,  <32.664658, 36.119160, 32.126881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.690308, 35.900822, 32.030602>,  <32.733059, 35.536922, 31.870134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690308, 35.900822, 32.030602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194821, 0.414821, -0.888801,
		-0.974998, -0.016836, -0.221573,
		-0.106877, 0.909747, 0.401170,
		32.658245, 36.173744, 32.150951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485104, 35.943001, 31.274309>,  <32.733059, 35.536922, 31.870134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485104, 35.943001, 31.274309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.608212, 36.192066, 31.562077>,  <32.682076, 36.341507, 31.734737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.608212, 36.192066, 31.562077>,  <32.485104, 35.943001, 31.274309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608212, 36.192066, 31.562077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261771, 0.671527, -0.693200,
		-0.914743, 0.401669, 0.043679,
		0.307768, 0.622666, 0.719420,
		32.700542, 36.378864, 31.777903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219482, 36.667938, 31.140192>,  <32.485104, 35.943001, 31.274309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219482, 36.667938, 31.140192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.536167, 36.704346, 31.381824>,  <32.726177, 36.726189, 31.526804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.536167, 36.704346, 31.381824>,  <32.219482, 36.667938, 31.140192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536167, 36.704346, 31.381824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383847, 0.695149, -0.607807,
		-0.475246, 0.713081, 0.515418,
		0.791708, 0.091016, 0.604081,
		32.773678, 36.731651, 31.563049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277374, 37.370850, 31.222437>,  <32.219482, 36.667938, 31.140192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277374, 37.370850, 31.222437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.646652, 37.268719, 31.337339>,  <32.868221, 37.207439, 31.406281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.646652, 37.268719, 31.337339>,  <32.277374, 37.370850, 31.222437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646652, 37.268719, 31.337339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382621, 0.680953, -0.624422,
		-0.036177, 0.686375, 0.726347,
		0.923197, -0.255326, 0.287257,
		32.923611, 37.192120, 31.423517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630043, 37.983513, 31.362955>,  <32.277374, 37.370850, 31.222437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630043, 37.983513, 31.362955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.905182, 37.706425, 31.276239>,  <33.070267, 37.540173, 31.224211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.905182, 37.706425, 31.276239>,  <32.630043, 37.983513, 31.362955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905182, 37.706425, 31.276239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462725, 0.648593, -0.604328,
		0.559242, 0.315371, 0.766675,
		0.687847, -0.692725, -0.216790,
		33.111538, 37.498608, 31.211203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147961, 38.397121, 31.234180>,  <32.630043, 37.983513, 31.362955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147961, 38.397121, 31.234180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.291149, 38.046581, 31.105267>,  <33.377064, 37.836258, 31.027918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.291149, 38.046581, 31.105267>,  <33.147961, 38.397121, 31.234180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291149, 38.046581, 31.105267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603712, 0.480535, -0.636096,
		0.712311, 0.033138, 0.701081,
		0.357973, -0.876349, -0.322285,
		33.398540, 37.783676, 31.008581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854824, 38.381020, 31.254631>,  <33.147961, 38.397121, 31.234180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854824, 38.381020, 31.254631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.764748, 38.128605, 30.957693>,  <33.710701, 37.977158, 30.779530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.764748, 38.128605, 30.957693>,  <33.854824, 38.381020, 31.254631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764748, 38.128605, 30.957693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599652, 0.510752, -0.616076,
		0.767923, -0.583886, 0.263385,
		-0.225193, -0.631038, -0.742347,
		33.697189, 37.939293, 30.734989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443939, 38.044277, 30.993023>,  <33.854824, 38.381020, 31.254631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443939, 38.044277, 30.993023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.164917, 38.041431, 30.706423>,  <33.997505, 38.039722, 30.534464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.164917, 38.041431, 30.706423>,  <34.443939, 38.044277, 30.993023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164917, 38.041431, 30.706423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624764, 0.483573, -0.613047,
		0.350842, -0.875275, -0.332871,
		-0.697553, -0.007117, -0.716498,
		33.955650, 38.039295, 30.491474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723469, 37.748749, 30.478922>,  <34.443939, 38.044277, 30.993023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723469, 37.748749, 30.478922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.432335, 37.948887, 30.291340>,  <34.257656, 38.068970, 30.178791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.432335, 37.948887, 30.291340>,  <34.723469, 37.748749, 30.478922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432335, 37.948887, 30.291340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650743, 0.288204, -0.702475,
		-0.216323, -0.816454, -0.535358,
		-0.727831, 0.500342, -0.468957,
		34.213985, 38.098988, 30.150652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745998, 37.461475, 29.764227>,  <34.723469, 37.748749, 30.478922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745998, 37.461475, 29.764227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.540401, 37.802975, 29.730934>,  <34.417042, 38.007874, 29.710958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.540401, 37.802975, 29.730934>,  <34.745998, 37.461475, 29.764227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540401, 37.802975, 29.730934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370983, 0.133758, -0.918956,
		-0.773421, -0.503218, -0.385476,
		-0.513996, 0.853745, -0.083234,
		34.386204, 38.059097, 29.705963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504185, 37.553848, 29.126333>,  <34.745998, 37.461475, 29.764227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504185, 37.553848, 29.126333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.443329, 37.939476, 29.213440>,  <34.406815, 38.170853, 29.265703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.443329, 37.939476, 29.213440>,  <34.504185, 37.553848, 29.126333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443329, 37.939476, 29.213440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335359, 0.257614, -0.906184,
		-0.929724, -0.064840, -0.362504,
		-0.152143, 0.964070, 0.217766,
		34.397686, 38.228699, 29.278770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094418, 37.912754, 28.546070>,  <34.504185, 37.553848, 29.126333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094418, 37.912754, 28.546070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.330505, 38.177464, 28.730980>,  <34.472157, 38.336288, 28.841927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.330505, 38.177464, 28.730980>,  <34.094418, 37.912754, 28.546070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330505, 38.177464, 28.730980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393196, 0.264458, -0.880601,
		-0.705013, 0.701510, -0.104120,
		0.590215, 0.661775, 0.462277,
		34.507568, 38.375996, 28.869663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083492, 38.436535, 28.032595>,  <34.094418, 37.912754, 28.546070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083492, 38.436535, 28.032595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.380772, 38.540901, 28.279036>,  <34.559139, 38.603519, 28.426901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.380772, 38.540901, 28.279036>,  <34.083492, 38.436535, 28.032595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380772, 38.540901, 28.279036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501977, 0.391366, -0.771266,
		-0.442356, 0.882472, 0.159889,
		0.743196, 0.260913, 0.616104,
		34.603729, 38.619175, 28.463867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356094, 39.153042, 27.900646>,  <34.083492, 38.436535, 28.032595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356094, 39.153042, 27.900646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.667721, 38.993305, 28.093967>,  <34.854698, 38.897465, 28.209961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.667721, 38.993305, 28.093967>,  <34.356094, 39.153042, 27.900646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667721, 38.993305, 28.093967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602082, 0.691486, -0.399179,
		-0.174792, 0.601977, 0.779148,
		0.779067, -0.399338, 0.483306,
		34.901440, 38.873505, 28.238958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736034, 39.712189, 28.036621>,  <34.356094, 39.153042, 27.900646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736034, 39.712189, 28.036621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.996979, 39.412773, 28.084143>,  <35.153545, 39.233124, 28.112656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.996979, 39.412773, 28.084143>,  <34.736034, 39.712189, 28.036621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996979, 39.412773, 28.084143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661551, 0.485886, -0.571195,
		0.369838, 0.451219, 0.812171,
		0.652357, -0.748542, 0.118805,
		35.192684, 39.188210, 28.119783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263268, 40.046619, 28.384808>,  <34.736034, 39.712189, 28.036621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263268, 40.046619, 28.384808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.383324, 39.722107, 28.184113>,  <35.455357, 39.527401, 28.063696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.383324, 39.722107, 28.184113>,  <35.263268, 40.046619, 28.384808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383324, 39.722107, 28.184113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712530, 0.540385, -0.447531,
		0.634204, -0.223179, 0.740254,
		0.300143, -0.811280, -0.501737,
		35.473366, 39.478722, 28.033592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965366, 40.118702, 28.385502>,  <35.263268, 40.046619, 28.384808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965366, 40.118702, 28.385502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.919109, 39.846024, 28.096525>,  <35.891357, 39.682419, 27.923140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.919109, 39.846024, 28.096525>,  <35.965366, 40.118702, 28.385502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919109, 39.846024, 28.096525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760051, 0.407529, -0.506204,
		0.639492, -0.607630, 0.470995,
		-0.115640, -0.681693, -0.722442,
		35.884418, 39.641514, 27.879793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609913, 39.803841, 28.240820>,  <35.965366, 40.118702, 28.385502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609913, 39.803841, 28.240820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.386734, 39.724442, 27.918505>,  <36.252827, 39.676804, 27.725115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.386734, 39.724442, 27.918505>,  <36.609913, 39.803841, 28.240820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386734, 39.724442, 27.918505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825221, -0.029990, -0.564013,
		0.087789, -0.979642, 0.180537,
		-0.557945, -0.198497, -0.805789,
		36.219349, 39.664894, 27.676767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896774, 39.107872, 27.854689>,  <36.609913, 39.803841, 28.240820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896774, 39.107872, 27.854689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.702393, 39.370483, 27.623924>,  <36.585766, 39.528049, 27.485466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.702393, 39.370483, 27.623924>,  <36.896774, 39.107872, 27.854689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702393, 39.370483, 27.623924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776256, 0.020911, -0.630071,
		-0.401593, -0.754016, -0.519792,
		-0.485953, 0.656524, -0.576911,
		36.556606, 39.567440, 27.450851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191730, 38.912918, 27.259375>,  <36.896774, 39.107872, 27.854689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191730, 38.912918, 27.259375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.022648, 39.269234, 27.192669>,  <36.921200, 39.483025, 27.152645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.022648, 39.269234, 27.192669>,  <37.191730, 38.912918, 27.259375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022648, 39.269234, 27.192669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639496, 0.162796, -0.751361,
		-0.642158, -0.424249, -0.638472,
		-0.422705, 0.890792, -0.166765,
		36.895836, 39.536472, 27.142639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290302, 38.197083, 26.884808>,  <37.191730, 38.912918, 27.259375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290302, 38.197083, 26.884808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.633453, 38.019558, 26.988411>,  <37.839344, 37.913044, 27.050573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.633453, 38.019558, 26.988411>,  <37.290302, 38.197083, 26.884808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633453, 38.019558, 26.988411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382591, -0.215161, 0.898516,
		-0.343043, -0.869906, -0.354379,
		0.857873, -0.443812, 0.259009,
		37.890816, 37.886414, 27.066114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103527, 37.532604, 27.095463>,  <37.290302, 38.197083, 26.884808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103527, 37.532604, 27.095463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.464550, 37.605507, 27.251495>,  <37.681164, 37.649250, 27.345116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.464550, 37.605507, 27.251495>,  <37.103527, 37.532604, 27.095463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464550, 37.605507, 27.251495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295031, -0.398063, 0.868621,
		0.313593, -0.899070, -0.305504,
		0.902561, 0.182260, 0.390083,
		37.735317, 37.660187, 27.368521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333557, 36.915264, 27.390785>,  <37.103527, 37.532604, 27.095463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333557, 36.915264, 27.390785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.556175, 37.175014, 27.598082>,  <37.689747, 37.330864, 27.722460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.556175, 37.175014, 27.598082>,  <37.333557, 36.915264, 27.390785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556175, 37.175014, 27.598082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349916, -0.382542, 0.855114,
		0.753538, -0.657248, 0.014325,
		0.556542, 0.649374, 0.518242,
		37.723137, 37.369827, 27.753553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604469, 36.491825, 27.856812>,  <37.333557, 36.915264, 27.390785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604469, 36.491825, 27.856812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.692314, 36.848827, 28.014399>,  <37.745022, 37.063026, 28.108950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.692314, 36.848827, 28.014399>,  <37.604469, 36.491825, 27.856812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692314, 36.848827, 28.014399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168309, -0.363108, 0.916419,
		0.960959, -0.267565, 0.070473,
		0.219613, 0.892503, 0.393966,
		37.758198, 37.116577, 28.132589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141907, 36.385742, 28.411186>,  <37.604469, 36.491825, 27.856812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141907, 36.385742, 28.411186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.928616, 36.718128, 28.474636>,  <37.800640, 36.917561, 28.512705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.928616, 36.718128, 28.474636>,  <38.141907, 36.385742, 28.411186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928616, 36.718128, 28.474636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274372, -0.347243, 0.896739,
		0.800240, 0.434649, 0.413155,
		-0.533232, 0.830965, 0.158623,
		37.768646, 36.967419, 28.522223>
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
