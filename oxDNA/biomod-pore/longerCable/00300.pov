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
	<24.528290, 35.205654, 34.723297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.443275, 34.821388, 34.794804>,  <24.392267, 34.590828, 34.837708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.443275, 34.821388, 34.794804>,  <24.528290, 35.205654, 34.723297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.443275, 34.821388, 34.794804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772300, -0.053062, 0.633039,
		-0.598649, 0.272609, 0.753196,
		-0.212538, -0.960661, 0.178770,
		24.379515, 34.533192, 34.848434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.315086, 35.123062, 35.393902>,  <24.528290, 35.205654, 34.723297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.315086, 35.123062, 35.393902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.482143, 34.786198, 35.257465>,  <24.582378, 34.584080, 35.175606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.482143, 34.786198, 35.257465>,  <24.315086, 35.123062, 35.393902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.482143, 34.786198, 35.257465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740342, 0.097782, 0.665081,
		-0.526752, -0.530290, 0.664323,
		0.417644, -0.842159, -0.341089,
		24.607437, 34.533550, 35.155140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.459322, 34.577633, 35.923767>,  <24.315086, 35.123062, 35.393902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.459322, 34.577633, 35.923767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.715527, 34.564327, 35.616875>,  <24.869249, 34.556343, 35.432739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.715527, 34.564327, 35.616875>,  <24.459322, 34.577633, 35.923767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.715527, 34.564327, 35.616875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719028, 0.376860, 0.583931,
		0.269715, -0.925673, 0.265300,
		0.640509, -0.033264, -0.767229,
		24.907679, 34.554348, 35.386707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.027208, 34.194649, 36.196564>,  <24.459322, 34.577633, 35.923767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.027208, 34.194649, 36.196564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.199610, 34.372814, 35.882660>,  <25.303051, 34.479713, 35.694317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.199610, 34.372814, 35.882660>,  <25.027208, 34.194649, 36.196564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.199610, 34.372814, 35.882660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625549, 0.479296, 0.615600,
		0.650326, -0.756231, -0.072047,
		0.431004, 0.445410, -0.784758,
		25.328911, 34.506435, 35.647232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.730877, 34.014061, 36.192730>,  <25.027208, 34.194649, 36.196564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.730877, 34.014061, 36.192730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.723015, 34.352829, 35.980186>,  <25.718298, 34.556091, 35.852661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.723015, 34.352829, 35.980186>,  <25.730877, 34.014061, 36.192730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.723015, 34.352829, 35.980186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757385, 0.359547, 0.545063,
		0.652672, -0.391727, -0.648513,
		-0.019655, 0.846922, -0.531354,
		25.717119, 34.606907, 35.820782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.379122, 34.109665, 35.976330>,  <25.730877, 34.014061, 36.192730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.379122, 34.109665, 35.976330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185402, 34.459396, 35.989029>,  <26.069170, 34.669235, 35.996651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185402, 34.459396, 35.989029>,  <26.379122, 34.109665, 35.976330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.185402, 34.459396, 35.989029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719894, 0.377611, 0.582377,
		0.497196, 0.304904, -0.812299,
		-0.484302, 0.874325, 0.031752,
		26.040112, 34.721695, 35.998554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.758781, 34.707424, 35.816029>,  <26.379122, 34.109665, 35.976330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.758781, 34.707424, 35.816029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.482176, 34.892628, 36.037815>,  <26.316214, 35.003750, 36.170887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.482176, 34.892628, 36.037815>,  <26.758781, 34.707424, 35.816029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.482176, 34.892628, 36.037815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720051, 0.380423, 0.580349,
		0.057773, 0.800564, -0.596455,
		-0.691512, 0.463007, 0.554469,
		26.274723, 35.031528, 36.204155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.795469, 35.438843, 35.736763>,  <26.758781, 34.707424, 35.816029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.795469, 35.438843, 35.736763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.642418, 35.332878, 36.090805>,  <26.550587, 35.269299, 36.303230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.642418, 35.332878, 36.090805>,  <26.795469, 35.438843, 35.736763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.642418, 35.332878, 36.090805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702245, 0.539147, 0.464944,
		-0.600374, 0.799463, -0.020258,
		-0.382627, -0.264914, 0.885108,
		26.527630, 35.253403, 36.356339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.964859, 36.006592, 36.098553>,  <26.795469, 35.438843, 35.736763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.964859, 36.006592, 36.098553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.873289, 35.758133, 36.398357>,  <26.818346, 35.609058, 36.578239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.873289, 35.758133, 36.398357>,  <26.964859, 36.006592, 36.098553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.873289, 35.758133, 36.398357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708130, 0.422054, 0.566059,
		-0.667941, 0.660337, 0.343234,
		-0.228926, -0.621148, 0.749512,
		26.804611, 35.571789, 36.623211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.970045, 36.459469, 36.676910>,  <26.964859, 36.006592, 36.098553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.970045, 36.459469, 36.676910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.992571, 36.091278, 36.831600>,  <27.006086, 35.870365, 36.924412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.992571, 36.091278, 36.831600>,  <26.970045, 36.459469, 36.676910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.992571, 36.091278, 36.831600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727411, 0.303143, 0.615612,
		-0.683888, 0.246637, 0.686635,
		0.056316, -0.920475, 0.386722,
		27.009466, 35.815136, 36.947617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.875065, 36.497086, 37.472324>,  <26.970045, 36.459469, 36.676910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.875065, 36.497086, 37.472324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069674, 36.162331, 37.371990>,  <27.186438, 35.961479, 37.311790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069674, 36.162331, 37.371990>,  <26.875065, 36.497086, 37.472324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.069674, 36.162331, 37.371990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749712, 0.252503, 0.611698,
		-0.448587, -0.485655, 0.750273,
		0.486520, -0.836888, -0.250831,
		27.215630, 35.911263, 37.296741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.260921, 36.276047, 38.059010>,  <26.875065, 36.497086, 37.472324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.260921, 36.276047, 38.059010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.438101, 36.118290, 37.736954>,  <27.544409, 36.023636, 37.543720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.438101, 36.118290, 37.736954>,  <27.260921, 36.276047, 38.059010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.438101, 36.118290, 37.736954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888304, 0.071567, 0.453645,
		-0.121291, -0.916153, 0.382038,
		0.442949, -0.394389, -0.805142,
		27.570986, 35.999973, 37.495411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.814157, 36.332035, 38.619816>,  <27.260921, 36.276047, 38.059010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.814157, 36.332035, 38.619816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.176155, 36.500431, 38.595295>,  <28.393353, 36.601467, 38.580582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.176155, 36.500431, 38.595295>,  <27.814157, 36.332035, 38.619816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.176155, 36.500431, 38.595295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353517, -0.824333, -0.442154,
		-0.236676, 0.378474, -0.894842,
		0.904992, 0.420989, -0.061303,
		28.447653, 36.626728, 38.576904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039310, 36.269859, 37.959961>,  <27.814157, 36.332035, 38.619816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.039310, 36.269859, 37.959961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.395628, 36.315090, 38.136005>,  <28.609419, 36.342228, 38.241634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.395628, 36.315090, 38.136005>,  <28.039310, 36.269859, 37.959961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.395628, 36.315090, 38.136005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361248, -0.763768, -0.534938,
		0.275658, 0.635509, -0.721208,
		0.890793, 0.113075, 0.440115,
		28.662867, 36.349014, 38.268040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.389790, 35.983875, 37.375038>,  <28.039310, 36.269859, 37.959961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.389790, 35.983875, 37.375038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213900, 35.706928, 37.603867>,  <28.108366, 35.540760, 37.741165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213900, 35.706928, 37.603867>,  <28.389790, 35.983875, 37.375038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213900, 35.706928, 37.603867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741511, -0.079521, -0.666211,
		0.506755, -0.717148, -0.478432,
		-0.439727, -0.692369, 0.572071,
		28.081982, 35.499218, 37.775490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208895, 35.201912, 37.025852>,  <28.389790, 35.983875, 37.375038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.208895, 35.201912, 37.025852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.952595, 35.327686, 37.306015>,  <27.798815, 35.403152, 37.474113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.952595, 35.327686, 37.306015>,  <28.208895, 35.201912, 37.025852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.952595, 35.327686, 37.306015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750023, -0.061450, -0.658552,
		-0.164038, -0.947285, 0.275214,
		-0.640748, 0.314444, 0.700405,
		27.760370, 35.422020, 37.516136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.684994, 34.718975, 36.992443>,  <28.208895, 35.201912, 37.025852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.684994, 34.718975, 36.992443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.550066, 35.073620, 37.119022>,  <27.469109, 35.286407, 37.194969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.550066, 35.073620, 37.119022>,  <27.684994, 34.718975, 36.992443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.550066, 35.073620, 37.119022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902138, -0.208390, -0.377785,
		-0.269003, -0.412913, 0.870138,
		-0.337321, 0.886609, 0.316447,
		27.448870, 35.339603, 37.213959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044746, 34.540268, 37.313095>,  <27.684994, 34.718975, 36.992443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044746, 34.540268, 37.313095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049873, 34.924770, 37.202953>,  <27.052950, 35.155472, 37.136868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049873, 34.924770, 37.202953>,  <27.044746, 34.540268, 37.313095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.049873, 34.924770, 37.202953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861281, -0.129281, -0.491407,
		-0.507967, 0.243458, 0.826255,
		0.012818, 0.961257, -0.275356,
		27.053719, 35.213146, 37.120346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.522585, 34.820423, 37.665447>,  <27.044746, 34.540268, 37.313095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.522585, 34.820423, 37.665447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.605900, 35.039894, 37.341579>,  <26.655890, 35.171577, 37.147259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.605900, 35.039894, 37.341579>,  <26.522585, 34.820423, 37.665447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.605900, 35.039894, 37.341579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907907, -0.199420, -0.368696,
		-0.363759, 0.811902, 0.456612,
		0.208287, 0.548677, -0.809672,
		26.668386, 35.204498, 37.098679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.959793, 35.153934, 37.538403>,  <26.522585, 34.820423, 37.665447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.959793, 35.153934, 37.538403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.136040, 35.171417, 37.179749>,  <26.241787, 35.181908, 36.964558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.136040, 35.171417, 37.179749>,  <25.959793, 35.153934, 37.538403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.136040, 35.171417, 37.179749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818660, -0.390235, -0.421322,
		-0.368311, 0.919678, -0.136164,
		0.440617, 0.043705, -0.896631,
		26.268225, 35.184528, 36.910759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.584692, 35.507896, 37.077412>,  <25.959793, 35.153934, 37.538403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.584692, 35.507896, 37.077412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.782940, 35.297092, 36.801258>,  <25.901888, 35.170612, 36.635567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.782940, 35.297092, 36.801258>,  <25.584692, 35.507896, 37.077412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.782940, 35.297092, 36.801258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865489, -0.233096, -0.443392,
		0.072746, 0.817269, -0.571646,
		0.495619, -0.527008, -0.690380,
		25.931625, 35.138988, 36.594143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.562416, 35.827232, 36.348274>,  <25.584692, 35.507896, 37.077412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.562416, 35.827232, 36.348274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.888123, 35.668491, 36.178814>,  <26.083546, 35.573246, 36.077137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.888123, 35.668491, 36.178814>,  <25.562416, 35.827232, 36.348274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.888123, 35.668491, 36.178814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580444, -0.547267, -0.602979,
		0.007440, 0.736892, -0.675970,
		0.814266, -0.396848, -0.423653,
		26.132402, 35.549438, 36.051720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.605354, 35.913033, 35.638695>,  <25.562416, 35.827232, 36.348274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.605354, 35.913033, 35.638695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762140, 35.551292, 35.706249>,  <25.856213, 35.334248, 35.746780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762140, 35.551292, 35.706249>,  <25.605354, 35.913033, 35.638695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.762140, 35.551292, 35.706249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664870, -0.405340, -0.627413,
		0.635855, 0.133636, -0.760152,
		0.391965, -0.904346, 0.168887,
		25.879730, 35.279987, 35.756916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.300821, 36.222908, 34.948666>,  <25.605354, 35.913033, 35.638695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.300821, 36.222908, 34.948666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.911657, 36.253391, 35.035973>,  <24.678160, 36.271683, 35.088356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.911657, 36.253391, 35.035973>,  <25.300821, 36.222908, 34.948666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.911657, 36.253391, 35.035973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231043, -0.354522, -0.906054,
		0.008331, -0.931937, 0.362525,
		-0.972908, 0.076211, 0.218271,
		24.619785, 36.276257, 35.101456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.731113, 35.590408, 34.998821>,  <25.300821, 36.222908, 34.948666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.731113, 35.590408, 34.998821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.706165, 35.284752, 35.255630>,  <25.691196, 35.101357, 35.409718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.706165, 35.284752, 35.255630>,  <25.731113, 35.590408, 34.998821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.706165, 35.284752, 35.255630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683482, -0.436065, -0.585406,
		0.727298, -0.475325, -0.495080,
		-0.062371, -0.764143, 0.642025,
		25.687454, 35.055508, 35.448238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.731745, 35.082241, 34.577148>,  <25.731113, 35.590408, 34.998821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.731745, 35.082241, 34.577148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.596746, 34.919827, 34.916851>,  <25.515747, 34.822380, 35.120674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.596746, 34.919827, 34.916851>,  <25.731745, 35.082241, 34.577148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.596746, 34.919827, 34.916851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716175, -0.474737, -0.511584,
		0.610893, -0.780873, -0.130569,
		-0.337496, -0.406033, 0.849255,
		25.495499, 34.798016, 35.171627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.729807, 34.354122, 34.400330>,  <25.731745, 35.082241, 34.577148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.729807, 34.354122, 34.400330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478642, 34.425072, 34.703449>,  <25.327942, 34.467640, 34.885323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478642, 34.425072, 34.703449>,  <25.729807, 34.354122, 34.400330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.478642, 34.425072, 34.703449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643054, -0.666721, -0.376784,
		0.438412, -0.723895, 0.532702,
		-0.627915, 0.177369, 0.757801,
		25.290268, 34.478283, 34.930790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.554167, 33.715149, 34.745464>,  <25.729807, 34.354122, 34.400330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.554167, 33.715149, 34.745464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.250950, 33.970169, 34.800449>,  <25.069019, 34.123180, 34.833439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.250950, 33.970169, 34.800449>,  <25.554167, 33.715149, 34.745464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.250950, 33.970169, 34.800449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635898, -0.675656, -0.372992,
		-0.144927, -0.370154, 0.917596,
		-0.758043, 0.637554, 0.137459,
		25.023537, 34.161434, 34.841686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.867416, 33.424427, 34.237850>,  <25.554167, 33.715149, 34.745464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.867416, 33.424427, 34.237850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.159401, 33.697079, 34.258026>,  <26.334591, 33.860668, 34.270134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.159401, 33.697079, 34.258026>,  <25.867416, 33.424427, 34.237850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.159401, 33.697079, 34.258026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675441, -0.730690, 0.099352,
		0.104578, -0.038452, -0.993773,
		0.729961, 0.681625, 0.050442,
		26.378389, 33.901566, 34.273159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.488844, 33.096558, 33.985809>,  <25.867416, 33.424427, 34.237850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.488844, 33.096558, 33.985809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.645691, 33.385857, 34.213196>,  <26.739799, 33.559437, 34.349628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.645691, 33.385857, 34.213196>,  <26.488844, 33.096558, 33.985809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.645691, 33.385857, 34.213196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815732, -0.559027, 0.148562,
		0.425236, 0.405465, -0.809180,
		0.392117, 0.723248, 0.568469,
		26.763327, 33.602833, 34.383736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.672876, 33.323353, 33.438736>,  <26.488844, 33.096558, 33.985809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.672876, 33.323353, 33.438736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.016783, 33.310928, 33.642632>,  <27.223127, 33.303474, 33.764969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.016783, 33.310928, 33.642632>,  <26.672876, 33.323353, 33.438736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.016783, 33.310928, 33.642632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488841, -0.238742, -0.839069,
		0.147761, 0.970586, -0.190077,
		0.859768, -0.031065, 0.509739,
		27.274714, 33.301609, 33.795551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.069632, 33.776829, 33.098717>,  <26.672876, 33.323353, 33.438736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.069632, 33.776829, 33.098717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.269314, 33.487572, 33.289654>,  <27.389124, 33.314018, 33.404217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.269314, 33.487572, 33.289654>,  <27.069632, 33.776829, 33.098717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.269314, 33.487572, 33.289654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512770, -0.197525, -0.835494,
		0.698470, 0.661850, 0.272202,
		0.499205, -0.723145, 0.477342,
		27.419075, 33.270630, 33.432858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.801451, 33.901775, 32.945053>,  <27.069632, 33.776829, 33.098717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.801451, 33.901775, 32.945053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.785587, 33.514782, 33.044979>,  <27.776070, 33.282585, 33.104935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.785587, 33.514782, 33.044979>,  <27.801451, 33.901775, 32.945053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.785587, 33.514782, 33.044979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565748, -0.227818, -0.792482,
		0.823624, 0.109901, 0.556387,
		-0.039661, -0.967482, 0.249812,
		27.773689, 33.224537, 33.119923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510162, 33.527294, 32.743923>,  <27.801451, 33.901775, 32.945053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.510162, 33.527294, 32.743923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.215454, 33.258945, 32.777634>,  <28.038630, 33.097939, 32.797859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.215454, 33.258945, 32.777634>,  <28.510162, 33.527294, 32.743923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.215454, 33.258945, 32.777634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416154, -0.548173, -0.725480,
		0.532900, -0.499441, 0.683063,
		-0.736772, -0.670868, 0.084277,
		27.994423, 33.057686, 32.802917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932480, 32.974323, 32.491333>,  <28.510162, 33.527294, 32.743923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.932480, 32.974323, 32.491333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556873, 32.841183, 32.525864>,  <28.331509, 32.761299, 32.546581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556873, 32.841183, 32.525864>,  <28.932480, 32.974323, 32.491333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556873, 32.841183, 32.525864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190354, -0.712229, -0.675644,
		0.286374, -0.618010, 0.732156,
		-0.939018, -0.332856, 0.086323,
		28.275167, 32.741325, 32.551762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.836636, 32.223793, 32.331234>,  <28.932480, 32.974323, 32.491333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.836636, 32.223793, 32.331234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.446465, 32.299706, 32.375992>,  <28.212360, 32.345253, 32.402847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.446465, 32.299706, 32.375992>,  <28.836636, 32.223793, 32.331234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.446465, 32.299706, 32.375992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215772, -0.720384, -0.659158,
		-0.044483, -0.667107, 0.743632,
		-0.975430, 0.189776, 0.111898,
		28.153835, 32.356640, 32.409561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.523014, 31.702585, 32.490257>,  <28.836636, 32.223793, 32.331234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.523014, 31.702585, 32.490257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197561, 31.906815, 32.379032>,  <28.002289, 32.029350, 32.312298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197561, 31.906815, 32.379032>,  <28.523014, 31.702585, 32.490257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.197561, 31.906815, 32.379032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346751, -0.810070, -0.472811,
		-0.466653, -0.288277, 0.836141,
		-0.813633, 0.510572, -0.278061,
		27.953472, 32.059986, 32.295612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.841530, 31.153244, 32.475712>,  <28.523014, 31.702585, 32.490257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.841530, 31.153244, 32.475712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.741392, 31.446716, 32.223034>,  <27.681311, 31.622801, 32.071426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.741392, 31.446716, 32.223034>,  <27.841530, 31.153244, 32.475712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.741392, 31.446716, 32.223034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364303, -0.675904, -0.640654,
		-0.897002, 0.069746, 0.436490,
		-0.250342, 0.733682, -0.631696,
		27.666290, 31.666821, 32.033524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225103, 31.119106, 32.310806>,  <27.841530, 31.153244, 32.475712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.225103, 31.119106, 32.310806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.377071, 31.329033, 32.006115>,  <27.468252, 31.454988, 31.823301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.377071, 31.329033, 32.006115>,  <27.225103, 31.119106, 32.310806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.377071, 31.329033, 32.006115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351662, -0.679699, -0.643695,
		-0.855566, 0.512424, -0.073675,
		0.379922, 0.524815, -0.761727,
		27.491049, 31.486477, 31.777597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.752113, 30.926920, 31.805632>,  <27.225103, 31.119106, 32.310806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.752113, 30.926920, 31.805632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.495701, 30.831573, 31.513807>,  <27.341852, 30.774366, 31.338713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.495701, 30.831573, 31.513807>,  <27.752113, 30.926920, 31.805632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.495701, 30.831573, 31.513807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254146, 0.831004, -0.494816,
		0.724215, -0.502608, -0.472121,
		-0.641033, -0.238365, -0.729561,
		27.303391, 30.760063, 31.294939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090992, 30.975782, 31.126812>,  <27.752113, 30.926920, 31.805632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090992, 30.975782, 31.126812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.702547, 31.050327, 31.186432>,  <27.469481, 31.095055, 31.222204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.702547, 31.050327, 31.186432>,  <28.090992, 30.975782, 31.126812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.702547, 31.050327, 31.186432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172380, 0.979747, -0.101885,
		-0.165016, -0.073249, -0.983567,
		-0.971110, 0.186361, 0.149048,
		27.411215, 31.106236, 31.231146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.869764, 31.571024, 30.675381>,  <28.090992, 30.975782, 31.126812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.869764, 31.571024, 30.675381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633831, 31.535938, 30.996479>,  <27.492271, 31.514887, 31.189138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633831, 31.535938, 30.996479>,  <27.869764, 31.571024, 30.675381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.633831, 31.535938, 30.996479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148929, 0.965215, 0.214896,
		-0.793674, 0.246305, -0.556252,
		-0.589832, -0.087715, 0.802748,
		27.456881, 31.509624, 31.237303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.446772, 32.202202, 30.807116>,  <27.869764, 31.571024, 30.675381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.446772, 32.202202, 30.807116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.453459, 32.004993, 31.155058>,  <27.457470, 31.886669, 31.363823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.453459, 32.004993, 31.155058>,  <27.446772, 32.202202, 30.807116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.453459, 32.004993, 31.155058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139948, 0.862568, 0.486201,
		-0.990018, 0.113608, 0.083416,
		0.016716, -0.493022, 0.869856,
		27.458473, 31.857086, 31.416016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.472626, 32.712029, 31.293886>,  <27.446772, 32.202202, 30.807116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.472626, 32.712029, 31.293886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505659, 32.395809, 31.536606>,  <27.525480, 32.206078, 31.682238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505659, 32.395809, 31.536606>,  <27.472626, 32.712029, 31.293886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505659, 32.395809, 31.536606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202360, 0.609499, 0.766526,
		-0.975823, 0.059489, 0.210311,
		0.082585, -0.790552, 0.606801,
		27.530434, 32.158642, 31.718647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.003468, 32.818848, 31.836771>,  <27.472626, 32.712029, 31.293886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.003468, 32.818848, 31.836771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.288311, 32.575600, 31.977106>,  <27.459217, 32.429649, 32.061306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.288311, 32.575600, 31.977106>,  <27.003468, 32.818848, 31.836771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.288311, 32.575600, 31.977106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054583, 0.546160, 0.835901,
		-0.699944, -0.576103, 0.422118,
		0.712109, -0.608124, 0.350836,
		27.501944, 32.393162, 32.082355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.881323, 32.564735, 32.462502>,  <27.003468, 32.818848, 31.836771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.881323, 32.564735, 32.462502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.281115, 32.551937, 32.464054>,  <27.520990, 32.544258, 32.464985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.281115, 32.551937, 32.464054>,  <26.881323, 32.564735, 32.462502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.281115, 32.551937, 32.464054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008954, 0.391247, 0.920242,
		-0.030960, -0.919729, 0.391331,
		0.999481, -0.031995, 0.003878,
		27.580959, 32.542339, 32.465218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.135468, 32.173054, 33.026249>,  <26.881323, 32.564735, 32.462502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.135468, 32.173054, 33.026249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.422661, 32.437237, 32.938343>,  <27.594976, 32.595745, 32.885597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.422661, 32.437237, 32.938343>,  <27.135468, 32.173054, 33.026249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.422661, 32.437237, 32.938343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002916, 0.312875, 0.949790,
		0.696053, -0.682575, 0.222714,
		0.717984, 0.660455, -0.219768,
		27.638056, 32.635372, 32.872414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.734262, 31.988396, 33.429169>,  <27.135468, 32.173054, 33.026249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.734262, 31.988396, 33.429169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.755880, 32.373825, 33.324394>,  <27.768850, 32.605083, 33.261532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.755880, 32.373825, 33.324394>,  <27.734262, 31.988396, 33.429169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755880, 32.373825, 33.324394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077683, 0.257464, 0.963160,
		0.995512, -0.072401, -0.060938,
		0.054045, 0.963572, -0.261933,
		27.772095, 32.662895, 33.245815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.230886, 32.409378, 33.950863>,  <27.734262, 31.988396, 33.429169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.230886, 32.409378, 33.950863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.977278, 32.679207, 33.799618>,  <27.825111, 32.841103, 33.708870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.977278, 32.679207, 33.799618>,  <28.230886, 32.409378, 33.950863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.977278, 32.679207, 33.799618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151940, 0.370756, 0.916217,
		0.758240, 0.638354, -0.132574,
		-0.634024, 0.674569, -0.378114,
		27.787071, 32.881577, 33.686184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336411, 33.036957, 34.366066>,  <28.230886, 32.409378, 33.950863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336411, 33.036957, 34.366066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967003, 33.018993, 34.213703>,  <27.745358, 33.008217, 34.122284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967003, 33.018993, 34.213703>,  <28.336411, 33.036957, 34.366066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.967003, 33.018993, 34.213703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374444, 0.320662, 0.870039,
		0.083072, 0.946129, -0.312954,
		-0.923521, -0.044908, -0.380910,
		27.689947, 33.005520, 34.099430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668358, 32.754971, 35.006290>,  <28.336411, 33.036957, 34.366066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668358, 32.754971, 35.006290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.943630, 32.943043, 34.785259>,  <29.108793, 33.055885, 34.652641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.943630, 32.943043, 34.785259>,  <28.668358, 32.754971, 35.006290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.943630, 32.943043, 34.785259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725266, -0.424822, 0.541771,
		0.019983, -0.773600, -0.633359,
		0.688179, 0.470179, -0.552576,
		29.150084, 33.084095, 34.619488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177959, 32.363796, 34.879482>,  <28.668358, 32.754971, 35.006290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177959, 32.363796, 34.879482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.324400, 32.736023, 34.880623>,  <29.412266, 32.959358, 34.881306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.324400, 32.736023, 34.880623>,  <29.177959, 32.363796, 34.879482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324400, 32.736023, 34.880623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797297, -0.315249, 0.514718,
		0.479881, -0.186166, -0.857355,
		0.366104, 0.930570, 0.002852,
		29.434231, 33.015194, 34.881477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.809095, 32.340221, 34.545197>,  <29.177959, 32.363796, 34.879482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.809095, 32.340221, 34.545197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801630, 32.618073, 34.832844>,  <29.797150, 32.784782, 35.005432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801630, 32.618073, 34.832844>,  <29.809095, 32.340221, 34.545197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801630, 32.618073, 34.832844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810270, -0.410870, 0.417908,
		0.585759, 0.590484, -0.555171,
		-0.018664, 0.694632, 0.719123,
		29.796030, 32.826462, 35.048580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475864, 32.723587, 34.559784>,  <29.809095, 32.340221, 34.545197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475864, 32.723587, 34.559784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864250, 32.804176, 34.611382>,  <31.097281, 32.852531, 34.642342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864250, 32.804176, 34.611382>,  <30.475864, 32.723587, 34.559784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864250, 32.804176, 34.611382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133473, 0.903713, -0.406802,
		-0.198537, 0.377772, 0.904363,
		0.970962, 0.201474, 0.128998,
		31.155539, 32.864620, 34.650082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629438, 33.417625, 34.831478>,  <30.475864, 32.723587, 34.559784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629438, 33.417625, 34.831478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942286, 33.293102, 34.615562>,  <31.129993, 33.218388, 34.486012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942286, 33.293102, 34.615562>,  <30.629438, 33.417625, 34.831478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.942286, 33.293102, 34.615562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020994, 0.852605, -0.522135,
		0.622776, 0.419704, 0.660302,
		0.782119, -0.311310, -0.539793,
		31.176922, 33.199711, 34.453625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021431, 33.971016, 34.804642>,  <30.629438, 33.417625, 34.831478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021431, 33.971016, 34.804642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.110773, 33.754169, 34.480614>,  <31.164379, 33.624062, 34.286198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.110773, 33.754169, 34.480614>,  <31.021431, 33.971016, 34.804642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110773, 33.754169, 34.480614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035280, 0.826029, -0.562522,
		0.974099, 0.154221, 0.165372,
		0.223355, -0.542118, -0.810075,
		31.177780, 33.591534, 34.237591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.401327, 34.401867, 34.514896>,  <31.021431, 33.971016, 34.804642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.401327, 34.401867, 34.514896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334059, 34.150383, 34.211201>,  <31.293697, 33.999493, 34.028984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334059, 34.150383, 34.211201>,  <31.401327, 34.401867, 34.514896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334059, 34.150383, 34.211201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178434, 0.776903, -0.603808,
		0.969474, 0.033933, -0.242833,
		-0.168168, -0.628706, -0.759242,
		31.283607, 33.961773, 33.983429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687801, 34.770214, 33.950260>,  <31.401327, 34.401867, 34.514896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687801, 34.770214, 33.950260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406979, 34.517338, 33.819138>,  <31.238485, 34.365612, 33.740463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406979, 34.517338, 33.819138>,  <31.687801, 34.770214, 33.950260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406979, 34.517338, 33.819138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530513, 0.771383, -0.351459,
		0.475050, -0.072840, -0.876939,
		-0.702056, -0.632188, -0.327804,
		31.196362, 34.327682, 33.720795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735880, 34.787476, 33.196075>,  <31.687801, 34.770214, 33.950260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735880, 34.787476, 33.196075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383644, 34.690388, 33.358875>,  <31.172302, 34.632133, 33.456554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383644, 34.690388, 33.358875>,  <31.735880, 34.787476, 33.196075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383644, 34.690388, 33.358875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434225, 0.757219, -0.487923,
		-0.189756, -0.606388, -0.772196,
		-0.880592, -0.242720, 0.406996,
		31.119467, 34.617573, 33.480972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359552, 35.161587, 32.530499>,  <31.735880, 34.787476, 33.196075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359552, 35.161587, 32.530499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.112825, 34.874390, 32.401489>,  <30.964788, 34.702072, 32.324085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.112825, 34.874390, 32.401489>,  <31.359552, 35.161587, 32.530499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112825, 34.874390, 32.401489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394340, -0.636513, 0.662833,
		-0.681197, 0.281666, 0.675747,
		-0.616820, -0.717994, -0.322519,
		30.927780, 34.658993, 32.304733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974760, 34.991879, 33.117409>,  <31.359552, 35.161587, 32.530499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974760, 34.991879, 33.117409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017273, 34.694622, 32.853153>,  <31.042782, 34.516270, 32.694599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017273, 34.694622, 32.853153>,  <30.974760, 34.991879, 33.117409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017273, 34.694622, 32.853153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352565, -0.593069, 0.723855,
		-0.929732, -0.309852, 0.198972,
		0.106284, -0.743142, -0.660639,
		31.049158, 34.471680, 32.654961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.482506, 34.349770, 33.197296>,  <30.974760, 34.991879, 33.117409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.482506, 34.349770, 33.197296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825256, 34.211369, 33.044430>,  <31.030907, 34.128330, 32.952709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825256, 34.211369, 33.044430>,  <30.482506, 34.349770, 33.197296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825256, 34.211369, 33.044430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110623, -0.600641, 0.791829,
		-0.503516, -0.720775, -0.476398,
		0.856875, -0.345998, -0.382166,
		31.082319, 34.107571, 32.929779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447351, 33.614662, 33.150021>,  <30.482506, 34.349770, 33.197296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447351, 33.614662, 33.150021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819809, 33.743992, 33.217464>,  <31.043283, 33.821590, 33.257931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819809, 33.743992, 33.217464>,  <30.447351, 33.614662, 33.150021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819809, 33.743992, 33.217464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151804, -0.764123, 0.626954,
		0.331550, -0.558189, -0.760591,
		0.931144, 0.323328, 0.168610,
		31.099152, 33.840992, 33.268047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.914049, 33.082462, 33.075356>,  <30.447351, 33.614662, 33.150021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.914049, 33.082462, 33.075356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062368, 33.346306, 33.336868>,  <31.151360, 33.504612, 33.493774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062368, 33.346306, 33.336868>,  <30.914049, 33.082462, 33.075356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062368, 33.346306, 33.336868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229098, -0.747175, 0.623895,
		0.900014, -0.081558, -0.428163,
		0.370796, 0.659605, 0.653782,
		31.173607, 33.544186, 33.533005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542145, 32.860542, 33.245750>,  <30.914049, 33.082462, 33.075356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.542145, 32.860542, 33.245750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434563, 33.091095, 33.554409>,  <31.370012, 33.229427, 33.739605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434563, 33.091095, 33.554409>,  <31.542145, 32.860542, 33.245750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434563, 33.091095, 33.554409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327153, -0.698865, 0.636049,
		0.905888, 0.423517, -0.000602,
		-0.268957, 0.576386, 0.771648,
		31.353876, 33.264011, 33.785904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108944, 32.790791, 33.683002>,  <31.542145, 32.860542, 33.245750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108944, 32.790791, 33.683002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796854, 32.898937, 33.908623>,  <31.609600, 32.963825, 34.043995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796854, 32.898937, 33.908623>,  <32.108944, 32.790791, 33.683002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796854, 32.898937, 33.908623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210593, -0.735568, 0.643886,
		0.588979, 0.621162, 0.516974,
		-0.780227, 0.270364, 0.564047,
		31.562786, 32.980045, 34.077835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328465, 32.788185, 34.353867>,  <32.108944, 32.790791, 33.683002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328465, 32.788185, 34.353867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929455, 32.760159, 34.356033>,  <31.690048, 32.743343, 34.357334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929455, 32.760159, 34.356033>,  <32.328465, 32.788185, 34.353867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929455, 32.760159, 34.356033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052093, -0.685443, 0.726260,
		-0.047173, 0.724747, 0.687399,
		-0.997528, -0.070068, 0.005420,
		31.630196, 32.739140, 34.357658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587692, 33.533825, 34.400398>,  <32.328465, 32.788185, 34.353867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587692, 33.533825, 34.400398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761646, 33.893379, 34.378956>,  <32.866020, 34.109112, 34.366093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761646, 33.893379, 34.378956>,  <32.587692, 33.533825, 34.400398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761646, 33.893379, 34.378956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552036, -0.313160, -0.772779,
		-0.711428, 0.306480, -0.632408,
		0.434886, 0.898889, -0.053603,
		32.892113, 34.163044, 34.362873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734787, 33.757183, 33.661022>,  <32.587692, 33.533825, 34.400398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734787, 33.757183, 33.661022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014423, 33.925320, 33.892399>,  <33.182205, 34.026203, 34.031223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014423, 33.925320, 33.892399>,  <32.734787, 33.757183, 33.661022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014423, 33.925320, 33.892399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713591, -0.358727, -0.601749,
		-0.045439, 0.833443, -0.550734,
		0.699087, 0.420342, 0.578437,
		33.224148, 34.051422, 34.065929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104099, 34.154110, 33.199745>,  <32.734787, 33.757183, 33.661022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104099, 34.154110, 33.199745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360229, 34.109570, 33.503738>,  <33.513908, 34.082844, 33.686134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360229, 34.109570, 33.503738>,  <33.104099, 34.154110, 33.199745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360229, 34.109570, 33.503738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709780, -0.292403, -0.640869,
		0.293583, 0.949790, -0.108200,
		0.640329, -0.111350, 0.759987,
		33.552330, 34.076164, 33.731735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720921, 34.412727, 33.005505>,  <33.104099, 34.154110, 33.199745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720921, 34.412727, 33.005505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815529, 34.185337, 33.320690>,  <33.872292, 34.048904, 33.509804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815529, 34.185337, 33.320690>,  <33.720921, 34.412727, 33.005505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815529, 34.185337, 33.320690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816817, -0.322850, -0.478097,
		0.526183, 0.756705, 0.387982,
		0.236518, -0.568477, 0.787968,
		33.886486, 34.014793, 33.557079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424595, 34.568764, 33.273796>,  <33.720921, 34.412727, 33.005505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424595, 34.568764, 33.273796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338604, 34.199612, 33.401592>,  <34.287010, 33.978119, 33.478271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338604, 34.199612, 33.401592>,  <34.424595, 34.568764, 33.273796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338604, 34.199612, 33.401592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904867, -0.311301, -0.290359,
		0.367426, 0.226680, 0.902006,
		-0.214976, -0.922880, 0.319495,
		34.274113, 33.922749, 33.497440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038181, 34.312023, 33.402847>,  <34.424595, 34.568764, 33.273796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038181, 34.312023, 33.402847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802197, 33.989254, 33.391460>,  <34.660606, 33.795593, 33.384628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802197, 33.989254, 33.391460>,  <35.038181, 34.312023, 33.402847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802197, 33.989254, 33.391460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693316, -0.488200, -0.530069,
		0.413830, -0.332458, 0.847476,
		-0.589964, -0.806927, -0.028466,
		34.625206, 33.747177, 33.382919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528164, 33.785473, 33.441864>,  <35.038181, 34.312023, 33.402847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528164, 33.785473, 33.441864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198627, 33.597023, 33.315800>,  <35.000904, 33.483955, 33.240162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198627, 33.597023, 33.315800>,  <35.528164, 33.785473, 33.441864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198627, 33.597023, 33.315800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551386, -0.537254, -0.638225,
		0.131359, -0.699573, 0.702383,
		-0.823844, -0.471121, -0.315162,
		34.951473, 33.455688, 33.221252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975075, 33.209068, 33.224560>,  <35.528164, 33.785473, 33.441864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975075, 33.209068, 33.224560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618805, 33.204391, 33.042767>,  <35.405041, 33.201584, 32.933689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618805, 33.204391, 33.042767>,  <35.975075, 33.209068, 33.224560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618805, 33.204391, 33.042767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390993, -0.529808, -0.752614,
		-0.231988, -0.848037, 0.476460,
		-0.890677, -0.011695, -0.454486,
		35.351601, 33.200882, 32.906422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950970, 32.587666, 32.880920>,  <35.975075, 33.209068, 33.224560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950970, 32.587666, 32.880920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670715, 32.813267, 32.706100>,  <35.502563, 32.948627, 32.601208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670715, 32.813267, 32.706100>,  <35.950970, 32.587666, 32.880920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670715, 32.813267, 32.706100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262533, -0.365779, -0.892907,
		-0.663464, -0.740342, 0.108208,
		-0.700637, 0.564003, -0.437045,
		35.460526, 32.982468, 32.574986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676186, 32.205963, 32.253281>,  <35.950970, 32.587666, 32.880920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676186, 32.205963, 32.253281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596706, 32.592678, 32.188984>,  <35.549019, 32.824707, 32.150406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596706, 32.592678, 32.188984>,  <35.676186, 32.205963, 32.253281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596706, 32.592678, 32.188984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380314, -0.075100, -0.921803,
		-0.903261, -0.244294, -0.352761,
		-0.198699, 0.966789, -0.160744,
		35.537098, 32.882713, 32.140762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316547, 32.199818, 31.722347>,  <35.676186, 32.205963, 32.253281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316547, 32.199818, 31.722347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495712, 32.555550, 31.759165>,  <35.603210, 32.768990, 31.781256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495712, 32.555550, 31.759165>,  <35.316547, 32.199818, 31.722347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495712, 32.555550, 31.759165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237794, -0.019254, -0.971125,
		-0.861875, 0.456866, -0.220101,
		0.447912, 0.889327, 0.092045,
		35.630085, 32.822350, 31.786777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092209, 32.571320, 31.220093>,  <35.316547, 32.199818, 31.722347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092209, 32.571320, 31.220093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434761, 32.754284, 31.315916>,  <35.640293, 32.864063, 31.373409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434761, 32.754284, 31.315916>,  <35.092209, 32.571320, 31.220093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434761, 32.754284, 31.315916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276625, -0.014674, -0.960866,
		-0.435999, 0.889132, -0.139099,
		0.856378, 0.457415, 0.239559,
		35.691673, 32.891510, 31.387783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124737, 33.157524, 30.811396>,  <35.092209, 32.571320, 31.220093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124737, 33.157524, 30.811396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514526, 33.134315, 30.898148>,  <35.748402, 33.120392, 30.950199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514526, 33.134315, 30.898148>,  <35.124737, 33.157524, 30.811396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514526, 33.134315, 30.898148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224272, 0.295593, -0.928615,
		-0.010230, 0.953550, 0.301060,
		0.974473, -0.058020, 0.216879,
		35.806870, 33.116909, 30.963211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342304, 33.495617, 30.292675>,  <35.124737, 33.157524, 30.811396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342304, 33.495617, 30.292675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682468, 33.382732, 30.470285>,  <35.886566, 33.315002, 30.576851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682468, 33.382732, 30.470285>,  <35.342304, 33.495617, 30.292675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682468, 33.382732, 30.470285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504164, 0.195876, -0.841101,
		0.150394, 0.939143, 0.308856,
		0.850412, -0.282211, 0.444024,
		35.937592, 33.298069, 30.603493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917053, 33.952579, 30.089869>,  <35.342304, 33.495617, 30.292675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917053, 33.952579, 30.089869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103363, 33.614010, 30.193110>,  <36.215149, 33.410866, 30.255054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103363, 33.614010, 30.193110>,  <35.917053, 33.952579, 30.089869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103363, 33.614010, 30.193110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517469, 0.023928, -0.855367,
		0.717830, 0.531968, 0.449144,
		0.465775, -0.846426, 0.258100,
		36.243095, 33.360081, 30.270540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724014, 34.065323, 29.996904>,  <35.917053, 33.952579, 30.089869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724014, 34.065323, 29.996904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612476, 33.681210, 29.992769>,  <36.545555, 33.450741, 29.990288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612476, 33.681210, 29.992769>,  <36.724014, 34.065323, 29.996904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612476, 33.681210, 29.992769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389577, -0.103269, -0.915186,
		0.877769, -0.259219, 0.402900,
		-0.278840, -0.960282, -0.010339,
		36.528824, 33.393124, 29.989668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166721, 33.777878, 29.622812>,  <36.724014, 34.065323, 29.996904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166721, 33.777878, 29.622812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899971, 33.482239, 29.584843>,  <36.739922, 33.304855, 29.562061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899971, 33.482239, 29.584843>,  <37.166721, 33.777878, 29.622812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899971, 33.482239, 29.584843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287791, -0.137950, -0.947706,
		0.687352, -0.659321, 0.304701,
		-0.666876, -0.739098, -0.094926,
		36.699909, 33.260509, 29.556364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481377, 33.271736, 29.336281>,  <37.166721, 33.777878, 29.622812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481377, 33.271736, 29.336281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094582, 33.191734, 29.273115>,  <36.862507, 33.143734, 29.235216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094582, 33.191734, 29.273115>,  <37.481377, 33.271736, 29.336281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094582, 33.191734, 29.273115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171248, -0.051110, -0.983901,
		0.188716, -0.978460, 0.083673,
		-0.966985, -0.200007, -0.157914,
		36.804485, 33.131733, 29.225740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510395, 32.653999, 28.993809>,  <37.481377, 33.271736, 29.336281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510395, 32.653999, 28.993809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135765, 32.772453, 28.918839>,  <36.910988, 32.843525, 28.873856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135765, 32.772453, 28.918839>,  <37.510395, 32.653999, 28.993809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135765, 32.772453, 28.918839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131515, -0.198731, -0.971190,
		-0.324854, -0.934242, 0.147180,
		-0.936576, 0.296138, -0.187426,
		36.854794, 32.861294, 28.862612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118580, 32.094101, 28.643021>,  <37.510395, 32.653999, 28.993809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118580, 32.094101, 28.643021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.942078, 32.446793, 28.576273>,  <36.836174, 32.658409, 28.536224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.942078, 32.446793, 28.576273>,  <37.118580, 32.094101, 28.643021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942078, 32.446793, 28.576273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048908, -0.162045, -0.985571,
		-0.896046, -0.443053, 0.028381,
		-0.441259, 0.881729, -0.166869,
		36.809700, 32.711311, 28.526213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812939, 32.038551, 28.059217>,  <37.118580, 32.094101, 28.643021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812939, 32.038551, 28.059217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802834, 32.438370, 28.065691>,  <36.796772, 32.678261, 28.069576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802834, 32.438370, 28.065691>,  <36.812939, 32.038551, 28.059217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802834, 32.438370, 28.065691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109511, 0.018860, -0.993807,
		-0.993664, -0.023335, -0.109938,
		-0.025264, 0.999550, 0.016185,
		36.795254, 32.738235, 28.070547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279575, 32.236992, 27.687405>,  <36.812939, 32.038551, 28.059217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279575, 32.236992, 27.687405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526436, 32.551731, 27.686937>,  <36.674553, 32.740574, 27.686657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526436, 32.551731, 27.686937>,  <36.279575, 32.236992, 27.687405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526436, 32.551731, 27.686937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027648, -0.023171, -0.999349,
		-0.786360, 0.616715, -0.036055,
		0.617149, 0.786845, -0.001170,
		36.711582, 32.787785, 27.686586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054897, 32.806618, 27.174015>,  <36.279575, 32.236992, 27.687405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054897, 32.806618, 27.174015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447899, 32.844952, 27.237886>,  <36.683701, 32.867950, 27.276209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447899, 32.844952, 27.237886>,  <36.054897, 32.806618, 27.174015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447899, 32.844952, 27.237886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167596, -0.081190, -0.982507,
		-0.081190, 0.992081, -0.095831,
		0.982507, 0.095831, 0.159677,
		36.742649, 32.873699, 27.285789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227016, 33.281425, 26.651108>,  <36.054897, 32.806618, 27.174015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227016, 33.281425, 26.651108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596397, 33.168694, 26.755272>,  <36.818024, 33.101055, 26.817770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596397, 33.168694, 26.755272>,  <36.227016, 33.281425, 26.651108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596397, 33.168694, 26.755272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295876, 0.090840, -0.950897,
		0.244339, 0.955153, 0.167274,
		0.923448, -0.281834, 0.260412,
		36.873432, 33.084145, 26.833395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705627, 33.790634, 26.191607>,  <36.227016, 33.281425, 26.651108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705627, 33.790634, 26.191607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882881, 33.449024, 26.300621>,  <36.989235, 33.244057, 26.366030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882881, 33.449024, 26.300621>,  <36.705627, 33.790634, 26.191607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882881, 33.449024, 26.300621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373646, -0.100392, -0.922123,
		0.814875, 0.510456, 0.274615,
		0.443134, -0.854023, 0.272537,
		37.015820, 33.192818, 26.382381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204754, 33.869625, 25.766068>,  <36.705627, 33.790634, 26.191607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204754, 33.869625, 25.766068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212296, 33.492012, 25.897793>,  <37.216820, 33.265446, 25.976828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212296, 33.492012, 25.897793>,  <37.204754, 33.869625, 25.766068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212296, 33.492012, 25.897793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329850, -0.305056, -0.893387,
		0.943845, 0.125471, 0.305637,
		0.018858, -0.944033, 0.329312,
		37.217953, 33.208801, 25.996586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914192, 33.596699, 25.608234>,  <37.204754, 33.869625, 25.766068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914192, 33.596699, 25.608234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659836, 33.291084, 25.651842>,  <37.507221, 33.107716, 25.678007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659836, 33.291084, 25.651842>,  <37.914192, 33.596699, 25.608234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659836, 33.291084, 25.651842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352990, -0.413545, -0.839273,
		0.686320, -0.495206, 0.532668,
		-0.635895, -0.764036, 0.109022,
		37.469067, 33.061874, 25.684549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433674, 33.009193, 25.800724>,  <37.914192, 33.596699, 25.608234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433674, 33.009193, 25.800724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105976, 32.893078, 25.602909>,  <37.909355, 32.823410, 25.484221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105976, 32.893078, 25.602909>,  <38.433674, 33.009193, 25.800724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105976, 32.893078, 25.602909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571251, -0.488425, -0.659632,
		-0.050060, -0.822906, 0.565968,
		-0.819248, -0.290288, -0.494536,
		37.860203, 32.805992, 25.454548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541168, 32.398369, 25.455086>,  <38.433674, 33.009193, 25.800724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541168, 32.398369, 25.455086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217480, 32.529972, 25.260389>,  <38.023266, 32.608932, 25.143572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217480, 32.529972, 25.260389>,  <38.541168, 32.398369, 25.455086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217480, 32.529972, 25.260389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337246, -0.418266, -0.843397,
		-0.481071, -0.846645, 0.227513,
		-0.809219, 0.329006, -0.486743,
		37.974712, 32.628674, 25.114367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142338, 31.798838, 25.207563>,  <38.541168, 32.398369, 25.455086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142338, 31.798838, 25.207563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056351, 32.108234, 24.969070>,  <38.004757, 32.293873, 24.825974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056351, 32.108234, 24.969070>,  <38.142338, 31.798838, 25.207563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056351, 32.108234, 24.969070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129028, -0.582661, -0.802408,
		-0.968060, -0.249425, 0.025453,
		-0.214971, 0.773494, -0.596233,
		37.991859, 32.340282, 24.790201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765919, 31.546059, 24.594893>,  <38.142338, 31.798838, 25.207563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765919, 31.546059, 24.594893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.890778, 31.900057, 24.456703>,  <37.965691, 32.112453, 24.373789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.890778, 31.900057, 24.456703>,  <37.765919, 31.546059, 24.594893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890778, 31.900057, 24.456703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135621, -0.401429, -0.905794,
		-0.940305, 0.235883, -0.245327,
		0.312143, 0.884994, -0.345475,
		37.984421, 32.165554, 24.353062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357784, 31.718727, 23.995621>,  <37.765919, 31.546059, 24.594893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357784, 31.718727, 23.995621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.686798, 31.945641, 23.979509>,  <37.884205, 32.081791, 23.969843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.686798, 31.945641, 23.979509>,  <37.357784, 31.718727, 23.995621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686798, 31.945641, 23.979509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141864, -0.273246, -0.951426,
		-0.550736, 0.776868, -0.305231,
		0.822536, 0.567286, -0.040277,
		37.933559, 32.115826, 23.967426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225647, 32.225098, 23.421116>,  <37.357784, 31.718727, 23.995621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225647, 32.225098, 23.421116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619717, 32.265125, 23.476849>,  <37.856159, 32.289143, 23.510288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619717, 32.265125, 23.476849>,  <37.225647, 32.225098, 23.421116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619717, 32.265125, 23.476849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148817, -0.094543, -0.984335,
		-0.085326, 0.990479, -0.108033,
		0.985177, 0.100066, 0.139333,
		37.915268, 32.295147, 23.518648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527309, 32.790028, 23.007523>,  <37.225647, 32.225098, 23.421116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527309, 32.790028, 23.007523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832489, 32.543537, 23.085667>,  <38.015598, 32.395641, 23.132553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832489, 32.543537, 23.085667>,  <37.527309, 32.790028, 23.007523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832489, 32.543537, 23.085667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311408, 0.085511, -0.946421,
		0.566508, 0.782910, 0.257140,
		0.762951, -0.616230, 0.195362,
		38.061375, 32.358669, 23.144276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082001, 33.018642, 22.577673>,  <37.527309, 32.790028, 23.007523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082001, 33.018642, 22.577673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190075, 32.639076, 22.642857>,  <38.254921, 32.411335, 22.681967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190075, 32.639076, 22.642857>,  <38.082001, 33.018642, 22.577673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190075, 32.639076, 22.642857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286591, -0.082319, -0.954510,
		0.919165, 0.304599, 0.249709,
		0.270187, -0.948917, 0.162960,
		38.271130, 32.354401, 22.691744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718414, 33.002449, 22.214411>,  <38.082001, 33.018642, 22.577673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718414, 33.002449, 22.214411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596252, 32.623611, 22.253893>,  <38.522957, 32.396309, 22.277582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596252, 32.623611, 22.253893>,  <38.718414, 33.002449, 22.214411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596252, 32.623611, 22.253893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297960, -0.193499, -0.934761,
		0.904406, -0.256066, 0.341291,
		-0.305400, -0.947095, 0.098704,
		38.504631, 32.339481, 22.283504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233021, 32.582111, 21.944073>,  <38.718414, 33.002449, 22.214411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233021, 32.582111, 21.944073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897221, 32.365776, 21.923145>,  <38.695740, 32.235973, 21.910589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897221, 32.365776, 21.923145>,  <39.233021, 32.582111, 21.944073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897221, 32.365776, 21.923145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227936, -0.263121, -0.937450,
		0.493246, -0.798910, 0.344167,
		-0.839496, -0.540842, -0.052317,
		38.645370, 32.203522, 21.907450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409119, 32.004017, 21.625278>,  <39.233021, 32.582111, 21.944073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409119, 32.004017, 21.625278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016346, 32.037643, 21.557459>,  <38.780682, 32.057819, 21.516768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016346, 32.037643, 21.557459>,  <39.409119, 32.004017, 21.625278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016346, 32.037643, 21.557459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132727, -0.332709, -0.933643,
		-0.134894, -0.939275, 0.315539,
		-0.981930, 0.084062, -0.169548,
		38.721767, 32.062862, 21.506594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251305, 31.453272, 21.270935>,  <39.409119, 32.004017, 21.625278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251305, 31.453272, 21.270935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936085, 31.686478, 21.191872>,  <38.746952, 31.826401, 21.144434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936085, 31.686478, 21.191872>,  <39.251305, 31.453272, 21.270935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936085, 31.686478, 21.191872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082413, -0.218275, -0.972401,
		-0.610070, -0.782590, 0.123963,
		-0.788049, 0.583017, -0.197659,
		38.699669, 31.861383, 21.132574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795403, 30.961617, 20.957560>,  <39.251305, 31.453272, 21.270935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795403, 30.961617, 20.957560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598454, 31.301430, 20.881811>,  <38.480282, 31.505318, 20.836361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598454, 31.301430, 20.881811>,  <38.795403, 30.961617, 20.957560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598454, 31.301430, 20.881811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139718, -0.291898, -0.946189,
		-0.859095, -0.439423, 0.262419,
		-0.492376, 0.849531, -0.189372,
		38.450741, 31.556290, 20.824999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188423, 30.831249, 20.568657>,  <38.795403, 30.961617, 20.957560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188423, 30.831249, 20.568657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246685, 31.222307, 20.507999>,  <38.281643, 31.456942, 20.471605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246685, 31.222307, 20.507999>,  <38.188423, 30.831249, 20.568657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246685, 31.222307, 20.507999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297751, -0.102854, -0.949087,
		-0.943466, 0.183394, 0.276113,
		0.145658, 0.977644, -0.151645,
		38.290382, 31.515600, 20.462505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525402, 31.098124, 20.131744>,  <38.188423, 30.831249, 20.568657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525402, 31.098124, 20.131744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835491, 31.349840, 20.109768>,  <38.021545, 31.500870, 20.096582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835491, 31.349840, 20.109768>,  <37.525402, 31.098124, 20.131744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835491, 31.349840, 20.109768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051377, -0.149498, -0.987426,
		-0.629590, 0.762657, -0.148226,
		0.775227, 0.629289, -0.054940,
		38.068058, 31.538628, 20.093287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284504, 31.773186, 19.689344>,  <37.525402, 31.098124, 20.131744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284504, 31.773186, 19.689344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668106, 31.664967, 19.655615>,  <37.898266, 31.600035, 19.635378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668106, 31.664967, 19.655615>,  <37.284504, 31.773186, 19.689344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668106, 31.664967, 19.655615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146619, -0.219063, -0.964632,
		0.242507, 0.937451, -0.249750,
		0.959006, -0.270548, -0.084324,
		37.955807, 31.583801, 19.630318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898647, 32.229820, 19.891401>,  <37.284504, 31.773186, 19.689344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898647, 32.229820, 19.891401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717159, 32.508022, 19.668545>,  <36.608269, 32.674946, 19.534830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717159, 32.508022, 19.668545>,  <36.898647, 32.229820, 19.891401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717159, 32.508022, 19.668545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035242, -0.638712, -0.768639,
		-0.890448, -0.329110, 0.314307,
		-0.453718, 0.695510, -0.557141,
		36.581043, 32.716675, 19.501402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502941, 31.803085, 19.487818>,  <36.898647, 32.229820, 19.891401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502941, 31.803085, 19.487818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522972, 32.153896, 19.296690>,  <36.534992, 32.364384, 19.182013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522972, 32.153896, 19.296690>,  <36.502941, 31.803085, 19.487818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522972, 32.153896, 19.296690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013664, -0.478977, -0.877721,
		-0.998652, 0.037428, -0.035971,
		0.050080, 0.877029, -0.477819,
		36.537994, 32.417004, 19.153343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835388, 31.809792, 19.164989>,  <36.502941, 31.803085, 19.487818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835388, 31.809792, 19.164989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132767, 32.011871, 18.989687>,  <36.311192, 32.133118, 18.884506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132767, 32.011871, 18.989687>,  <35.835388, 31.809792, 19.164989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132767, 32.011871, 18.989687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056398, -0.605596, -0.793771,
		-0.666418, 0.614840, -0.421734,
		0.743443, 0.505198, -0.438256,
		36.355801, 32.163429, 18.858210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637493, 32.184181, 18.521894>,  <35.835388, 31.809792, 19.164989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637493, 32.184181, 18.521894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999420, 32.022495, 18.575438>,  <36.216576, 31.925484, 18.607563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999420, 32.022495, 18.575438>,  <35.637493, 32.184181, 18.521894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999420, 32.022495, 18.575438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175475, -0.640408, -0.747720,
		0.387959, 0.653063, -0.650382,
		0.904818, -0.404211, 0.133856,
		36.270866, 31.901232, 18.615595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942268, 32.081680, 17.791788>,  <35.637493, 32.184181, 18.521894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942268, 32.081680, 17.791788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083538, 31.828514, 18.067379>,  <36.168301, 31.676615, 18.232733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083538, 31.828514, 18.067379>,  <35.942268, 32.081680, 17.791788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083538, 31.828514, 18.067379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109208, -0.759290, -0.641524,
		0.929161, 0.151329, -0.337283,
		0.353177, -0.632913, 0.688976,
		36.189491, 31.638639, 18.274073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536285, 31.736118, 17.523802>,  <35.942268, 32.081680, 17.791788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536285, 31.736118, 17.523802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397797, 31.500586, 17.815943>,  <36.314705, 31.359266, 17.991226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397797, 31.500586, 17.815943>,  <36.536285, 31.736118, 17.523802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397797, 31.500586, 17.815943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169191, -0.726543, -0.665965,
		0.922771, -0.354138, 0.151918,
		-0.346219, -0.588830, 0.730350,
		36.293930, 31.323936, 18.035048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231174, 31.915365, 17.814608>,  <36.536285, 31.736118, 17.523802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231174, 31.915365, 17.814608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865147, 32.071201, 17.856316>,  <36.645531, 32.164703, 17.881340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865147, 32.071201, 17.856316>,  <37.231174, 31.915365, 17.814608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865147, 32.071201, 17.856316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216761, 0.257066, 0.941771,
		0.340100, 0.884385, -0.319680,
		-0.915066, 0.389591, 0.104272,
		36.590626, 32.188080, 17.887598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356941, 32.380795, 18.307676>,  <37.231174, 31.915365, 17.814608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356941, 32.380795, 18.307676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.957081, 32.388294, 18.300144>,  <36.717167, 32.392796, 18.295624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.957081, 32.388294, 18.300144>,  <37.356941, 32.380795, 18.307676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957081, 32.388294, 18.300144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006109, 0.527491, 0.849539,
		0.025865, 0.849354, -0.527190,
		-0.999647, 0.018753, -0.018832,
		36.657188, 32.393921, 18.294495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135777, 33.012108, 18.255520>,  <37.356941, 32.380795, 18.307676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135777, 33.012108, 18.255520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894901, 32.768356, 18.461834>,  <36.750378, 32.622105, 18.585623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894901, 32.768356, 18.461834>,  <37.135777, 33.012108, 18.255520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894901, 32.768356, 18.461834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002008, 0.644901, 0.764263,
		-0.798355, 0.461263, -0.387126,
		-0.602184, -0.609376, 0.515786,
		36.714245, 32.585545, 18.616570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569626, 33.503857, 18.440678>,  <37.135777, 33.012108, 18.255520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569626, 33.503857, 18.440678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585186, 33.169113, 18.659092>,  <36.594521, 32.968266, 18.790140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585186, 33.169113, 18.659092>,  <36.569626, 33.503857, 18.440678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585186, 33.169113, 18.659092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141241, 0.536358, 0.832088,
		-0.989211, -0.109491, -0.097334,
		0.038900, -0.836858, 0.546035,
		36.596855, 32.918056, 18.822903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999966, 33.594971, 18.794487>,  <36.569626, 33.503857, 18.440678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999966, 33.594971, 18.794487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.194572, 33.331181, 19.023708>,  <36.311337, 33.172905, 19.161242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.194572, 33.331181, 19.023708>,  <35.999966, 33.594971, 18.794487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194572, 33.331181, 19.023708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190843, 0.559858, 0.806311,
		-0.852573, -0.501648, 0.146524,
		0.486517, -0.659476, 0.573056,
		36.340527, 33.133339, 19.195625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571579, 33.641167, 19.400799>,  <35.999966, 33.594971, 18.794487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571579, 33.641167, 19.400799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911648, 33.469692, 19.523071>,  <36.115688, 33.366806, 19.596436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911648, 33.469692, 19.523071>,  <35.571579, 33.641167, 19.400799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911648, 33.469692, 19.523071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146851, 0.364476, 0.919561,
		-0.505619, -0.826670, 0.246912,
		0.850167, -0.428688, 0.305683,
		36.166698, 33.341087, 19.614777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364529, 33.136189, 20.037418>,  <35.571579, 33.641167, 19.400799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364529, 33.136189, 20.037418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745712, 33.247898, 20.084522>,  <35.974422, 33.314922, 20.112783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745712, 33.247898, 20.084522>,  <35.364529, 33.136189, 20.037418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745712, 33.247898, 20.084522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172602, 0.180689, 0.968277,
		0.249142, -0.943056, 0.220394,
		0.952962, 0.279279, 0.117756,
		36.031601, 33.331680, 20.119850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568977, 32.882141, 20.699974>,  <35.364529, 33.136189, 20.037418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568977, 32.882141, 20.699974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864792, 33.132206, 20.600164>,  <36.042278, 33.282246, 20.540277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864792, 33.132206, 20.600164>,  <35.568977, 32.882141, 20.699974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864792, 33.132206, 20.600164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098504, 0.266196, 0.958872,
		0.665872, -0.733698, 0.135280,
		0.739534, 0.625161, -0.249525,
		36.086651, 33.319756, 20.525307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129040, 32.717930, 21.224682>,  <35.568977, 32.882141, 20.699974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129040, 32.717930, 21.224682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221329, 33.071381, 21.061724>,  <36.276703, 33.283451, 20.963947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221329, 33.071381, 21.061724>,  <36.129040, 32.717930, 21.224682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221329, 33.071381, 21.061724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152968, 0.380548, 0.912022,
		0.960919, -0.272747, -0.047364,
		0.230727, 0.883624, -0.407398,
		36.290546, 33.336468, 20.939505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804665, 33.026001, 21.467985>,  <36.129040, 32.717930, 21.224682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804665, 33.026001, 21.467985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583595, 33.336445, 21.346523>,  <36.450954, 33.522709, 21.273645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583595, 33.336445, 21.346523>,  <36.804665, 33.026001, 21.467985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583595, 33.336445, 21.346523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117362, 0.433208, 0.893620,
		0.825091, 0.458245, -0.330509,
		-0.552676, 0.776108, -0.303655,
		36.417793, 33.569279, 21.255426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212688, 33.570862, 21.632910>,  <36.804665, 33.026001, 21.467985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212688, 33.570862, 21.632910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849323, 33.730175, 21.582058>,  <36.631306, 33.825764, 21.551546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849323, 33.730175, 21.582058>,  <37.212688, 33.570862, 21.632910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849323, 33.730175, 21.582058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125423, 0.549692, 0.825898,
		0.398823, 0.734309, -0.549300,
		-0.908410, 0.398282, -0.127131,
		36.576801, 33.849659, 21.543919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234467, 34.346321, 21.925165>,  <37.212688, 33.570862, 21.632910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234467, 34.346321, 21.925165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840786, 34.278603, 21.904470>,  <36.604576, 34.237972, 21.892054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840786, 34.278603, 21.904470>,  <37.234467, 34.346321, 21.925165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840786, 34.278603, 21.904470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138715, 0.555962, 0.819552,
		-0.109988, 0.813784, -0.570665,
		-0.984206, -0.169300, -0.051735,
		36.545525, 34.227814, 21.888950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911568, 34.999344, 22.070599>,  <37.234467, 34.346321, 21.925165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911568, 34.999344, 22.070599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622913, 34.730309, 22.136166>,  <36.449722, 34.568886, 22.175505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622913, 34.730309, 22.136166>,  <36.911568, 34.999344, 22.070599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622913, 34.730309, 22.136166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205674, 0.434387, 0.876930,
		-0.661016, 0.599109, -0.451803,
		-0.721634, -0.672589, 0.163916,
		36.406422, 34.528530, 22.185341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301880, 35.399548, 22.281437>,  <36.911568, 34.999344, 22.070599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301880, 35.399548, 22.281437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235798, 35.023781, 22.401569>,  <36.196148, 34.798321, 22.473648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235798, 35.023781, 22.401569>,  <36.301880, 35.399548, 22.281437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235798, 35.023781, 22.401569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069442, 0.314837, 0.946602,
		-0.983811, 0.135529, -0.117248,
		-0.165206, -0.939420, 0.300329,
		36.186237, 34.741955, 22.491669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719315, 35.495663, 22.630098>,  <36.301880, 35.399548, 22.281437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719315, 35.495663, 22.630098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879765, 35.154469, 22.763672>,  <35.976036, 34.949753, 22.843817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879765, 35.154469, 22.763672>,  <35.719315, 35.495663, 22.630098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879765, 35.154469, 22.763672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233589, 0.257249, 0.937688,
		-0.885740, -0.454134, -0.096059,
		0.401125, -0.852986, 0.333936,
		36.000103, 34.898571, 22.863853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333191, 35.373798, 23.107082>,  <35.719315, 35.495663, 22.630098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333191, 35.373798, 23.107082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659027, 35.155312, 23.185146>,  <35.854530, 35.024220, 23.231985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659027, 35.155312, 23.185146>,  <35.333191, 35.373798, 23.107082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659027, 35.155312, 23.185146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103355, 0.194388, 0.975464,
		-0.570754, -0.814775, 0.101892,
		0.814590, -0.546219, 0.195158,
		35.903404, 34.991447, 23.243694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203926, 35.012650, 23.714495>,  <35.333191, 35.373798, 23.107082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203926, 35.012650, 23.714495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597187, 35.057610, 23.656830>,  <35.833141, 35.084583, 23.622231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597187, 35.057610, 23.656830>,  <35.203926, 35.012650, 23.714495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597187, 35.057610, 23.656830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135593, 0.080513, 0.987488,
		0.122604, -0.990395, 0.063915,
		0.983149, 0.112404, -0.144162,
		35.892132, 35.091328, 23.613581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524529, 34.500710, 24.079458>,  <35.203926, 35.012650, 23.714495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524529, 34.500710, 24.079458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826962, 34.761536, 24.057045>,  <36.008423, 34.918034, 24.043596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826962, 34.761536, 24.057045>,  <35.524529, 34.500710, 24.079458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826962, 34.761536, 24.057045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063033, 0.012668, 0.997931,
		0.651429, -0.758055, -0.031524,
		0.756087, 0.652068, -0.056035,
		36.053787, 34.957157, 24.040234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010788, 34.178490, 24.534359>,  <35.524529, 34.500710, 24.079458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010788, 34.178490, 24.534359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118027, 34.562225, 24.499052>,  <36.182369, 34.792465, 24.477867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118027, 34.562225, 24.499052>,  <36.010788, 34.178490, 24.534359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118027, 34.562225, 24.499052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012935, 0.095200, 0.995374,
		0.963306, -0.265711, 0.037932,
		0.268093, 0.959341, -0.088269,
		36.198456, 34.850029, 24.472570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493252, 34.294224, 25.055460>,  <36.010788, 34.178490, 24.534359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493252, 34.294224, 25.055460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355072, 34.659420, 24.968647>,  <36.272163, 34.878540, 24.916559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355072, 34.659420, 24.968647>,  <36.493252, 34.294224, 25.055460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355072, 34.659420, 24.968647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100648, 0.193889, 0.975847,
		0.933023, 0.358954, 0.024911,
		-0.345454, 0.912995, -0.217031,
		36.251434, 34.933319, 24.903538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781151, 34.714058, 25.557178>,  <36.493252, 34.294224, 25.055460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781151, 34.714058, 25.557178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490395, 34.955120, 25.425459>,  <36.315941, 35.099758, 25.346426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490395, 34.955120, 25.425459>,  <36.781151, 34.714058, 25.557178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490395, 34.955120, 25.425459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204151, 0.268205, 0.941482,
		0.655708, 0.751581, -0.071923,
		-0.726890, 0.602654, -0.329300,
		36.272327, 35.135918, 25.326670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850487, 35.436237, 25.848204>,  <36.781151, 34.714058, 25.557178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850487, 35.436237, 25.848204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466690, 35.403481, 25.740370>,  <36.236412, 35.383827, 25.675669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466690, 35.403481, 25.740370>,  <36.850487, 35.436237, 25.848204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466690, 35.403481, 25.740370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275322, 0.475702, 0.835407,
		0.059830, 0.875787, -0.478977,
		-0.959489, -0.081890, -0.269585,
		36.178844, 35.378914, 25.659494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468185, 36.078823, 25.844723>,  <36.850487, 35.436237, 25.848204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468185, 36.078823, 25.844723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189713, 35.795658, 25.892378>,  <36.022629, 35.625759, 25.920971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189713, 35.795658, 25.892378>,  <36.468185, 36.078823, 25.844723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189713, 35.795658, 25.892378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380003, 0.504214, 0.775478,
		-0.609041, 0.494600, -0.620032,
		-0.696180, -0.707912, 0.119138,
		35.980858, 35.583286, 25.928120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913975, 36.470257, 26.334688>,  <36.468185, 36.078823, 25.844723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913975, 36.470257, 26.334688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745827, 36.110340, 26.287939>,  <35.644936, 35.894390, 26.259890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745827, 36.110340, 26.287939>,  <35.913975, 36.470257, 26.334688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745827, 36.110340, 26.287939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459817, 0.100217, 0.882341,
		-0.782211, 0.424653, -0.455869,
		-0.420374, -0.899793, -0.116871,
		35.619713, 35.840401, 26.252878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124924, 36.515247, 26.324869>,  <35.913975, 36.470257, 26.334688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124924, 36.515247, 26.324869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230648, 36.144268, 26.430679>,  <35.294083, 35.921680, 26.494165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230648, 36.144268, 26.430679>,  <35.124924, 36.515247, 26.324869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230648, 36.144268, 26.430679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448022, 0.124812, 0.885268,
		-0.854058, -0.352501, -0.382529,
		0.264313, -0.927451, 0.264524,
		35.309940, 35.866032, 26.510036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451427, 36.016541, 26.564119>,  <35.124924, 36.515247, 26.324869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451427, 36.016541, 26.564119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797146, 35.884083, 26.715563>,  <35.004578, 35.804607, 26.806429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797146, 35.884083, 26.715563>,  <34.451427, 36.016541, 26.564119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797146, 35.884083, 26.715563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398766, 0.007676, 0.917021,
		-0.306569, -0.943550, -0.125413,
		0.864293, -0.331140, 0.378609,
		35.056435, 35.784740, 26.829145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257408, 35.334229, 26.836277>,  <34.451427, 36.016541, 26.564119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257408, 35.334229, 26.836277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597305, 35.441307, 27.017948>,  <34.801243, 35.505554, 27.126951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597305, 35.441307, 27.017948>,  <34.257408, 35.334229, 26.836277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597305, 35.441307, 27.017948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375020, -0.298569, 0.877620,
		0.370544, -0.916075, -0.153312,
		0.849740, 0.267701, 0.454179,
		34.852226, 35.521618, 27.154202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367046, 34.770016, 27.223930>,  <34.257408, 35.334229, 26.836277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367046, 34.770016, 27.223930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616558, 35.025139, 27.404638>,  <34.766266, 35.178211, 27.513063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616558, 35.025139, 27.404638>,  <34.367046, 34.770016, 27.223930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616558, 35.025139, 27.404638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400640, -0.235372, 0.885487,
		0.671105, -0.733348, 0.108711,
		0.623783, 0.637809, 0.451768,
		34.803692, 35.216480, 27.540169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403248, 34.462826, 27.869751>,  <34.367046, 34.770016, 27.223930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403248, 34.462826, 27.869751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553349, 34.829082, 27.927422>,  <34.643410, 35.048836, 27.962023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553349, 34.829082, 27.927422>,  <34.403248, 34.462826, 27.869751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553349, 34.829082, 27.927422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429238, 0.033798, 0.902559,
		0.821547, -0.400574, 0.405711,
		0.375254, 0.915641, 0.144175,
		34.665924, 35.103775, 27.970675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841667, 34.493629, 28.570427>,  <34.403248, 34.462826, 27.869751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841667, 34.493629, 28.570427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735390, 34.873466, 28.503868>,  <34.671623, 35.101368, 28.463932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735390, 34.873466, 28.503868>,  <34.841667, 34.493629, 28.570427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735390, 34.873466, 28.503868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394057, 0.050551, 0.917694,
		0.879843, 0.309397, 0.360761,
		-0.265695, 0.949588, -0.166397,
		34.655682, 35.158344, 28.453949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069748, 34.831150, 29.194342>,  <34.841667, 34.493629, 28.570427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069748, 34.831150, 29.194342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795147, 35.062572, 29.018164>,  <34.630386, 35.201424, 28.912457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795147, 35.062572, 29.018164>,  <35.069748, 34.831150, 29.194342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795147, 35.062572, 29.018164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408214, 0.194613, 0.891900,
		0.601728, 0.792088, 0.102571,
		-0.686502, 0.578552, -0.440446,
		34.589195, 35.236137, 28.886030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113644, 35.507904, 29.559731>,  <35.069748, 34.831150, 29.194342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113644, 35.507904, 29.559731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751797, 35.458118, 29.396673>,  <34.534687, 35.428246, 29.298840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751797, 35.458118, 29.396673>,  <35.113644, 35.507904, 29.559731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751797, 35.458118, 29.396673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423324, 0.373722, 0.825305,
		0.049621, 0.919151, -0.390766,
		-0.904618, -0.124468, -0.407643,
		34.480412, 35.420776, 29.274380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872204, 36.232960, 29.526945>,  <35.113644, 35.507904, 29.559731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872204, 36.232960, 29.526945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533466, 36.021751, 29.501484>,  <34.330223, 35.895027, 29.486206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533466, 36.021751, 29.501484>,  <34.872204, 36.232960, 29.526945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533466, 36.021751, 29.501484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361686, 0.484013, 0.796815,
		-0.389927, 0.697799, -0.600861,
		-0.846842, -0.528022, -0.063655,
		34.279415, 35.863346, 29.482388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278233, 36.733253, 29.429035>,  <34.872204, 36.232960, 29.526945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278233, 36.733253, 29.429035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187630, 36.390942, 29.615084>,  <34.133270, 36.185555, 29.726713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187630, 36.390942, 29.615084>,  <34.278233, 36.733253, 29.429035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187630, 36.390942, 29.615084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188482, 0.507018, 0.841075,
		-0.955599, 0.102840, -0.276141,
		-0.226505, -0.855778, 0.465122,
		34.119678, 36.134209, 29.754620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927284, 36.910004, 30.101137>,  <34.278233, 36.733253, 29.429035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927284, 36.910004, 30.101137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943218, 36.514553, 30.159157>,  <33.952778, 36.277283, 30.193968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943218, 36.514553, 30.159157>,  <33.927284, 36.910004, 30.101137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943218, 36.514553, 30.159157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114004, 0.139718, 0.983607,
		-0.992681, -0.055713, -0.107142,
		0.039830, -0.988622, 0.145047,
		33.955166, 36.217968, 30.202671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330841, 36.699387, 30.529509>,  <33.927284, 36.910004, 30.101137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330841, 36.699387, 30.529509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626156, 36.431919, 30.564863>,  <33.803345, 36.271439, 30.586077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626156, 36.431919, 30.564863>,  <33.330841, 36.699387, 30.529509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626156, 36.431919, 30.564863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118323, 0.000612, 0.992975,
		-0.664027, -0.743559, -0.078667,
		0.738287, -0.668671, 0.088386,
		33.847641, 36.231319, 30.591379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052254, 36.235783, 31.009478>,  <33.330841, 36.699387, 30.529509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052254, 36.235783, 31.009478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448811, 36.185101, 30.996330>,  <33.686745, 36.154694, 30.988441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448811, 36.185101, 30.996330>,  <33.052254, 36.235783, 31.009478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448811, 36.185101, 30.996330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046386, 0.105265, 0.993362,
		-0.122403, -0.986340, 0.110237,
		0.991396, -0.126703, -0.032868,
		33.746231, 36.147091, 30.986469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311028, 35.662079, 31.499117>,  <33.052254, 36.235783, 31.009478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311028, 35.662079, 31.499117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634666, 35.894150, 31.461704>,  <33.828850, 36.033394, 31.439257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634666, 35.894150, 31.461704>,  <33.311028, 35.662079, 31.499117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634666, 35.894150, 31.461704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062895, 0.072751, 0.995365,
		0.584295, -0.811233, 0.022372,
		0.809100, 0.580180, -0.093531,
		33.877396, 36.068203, 31.433645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697472, 35.492851, 32.104797>,  <33.311028, 35.662079, 31.499117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697472, 35.492851, 32.104797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879669, 35.835117, 32.006516>,  <33.988987, 36.040478, 31.947546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879669, 35.835117, 32.006516>,  <33.697472, 35.492851, 32.104797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879669, 35.835117, 32.006516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339640, 0.088095, 0.936421,
		0.822905, -0.509982, -0.250491,
		0.455490, 0.855662, -0.245704,
		34.016315, 36.091816, 31.932804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426971, 35.385147, 32.236763>,  <33.697472, 35.492851, 32.104797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426971, 35.385147, 32.236763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358608, 35.779240, 32.240971>,  <34.317593, 36.015694, 32.243496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358608, 35.779240, 32.240971>,  <34.426971, 35.385147, 32.236763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358608, 35.779240, 32.240971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413844, 0.062096, 0.908228,
		0.894161, 0.159573, -0.418344,
		-0.170906, 0.985231, 0.010515,
		34.307335, 36.074810, 32.244125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013275, 35.752384, 32.610676>,  <34.426971, 35.385147, 32.236763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013275, 35.752384, 32.610676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729488, 36.031914, 32.647137>,  <34.559216, 36.199631, 32.669014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729488, 36.031914, 32.647137>,  <35.013275, 35.752384, 32.610676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729488, 36.031914, 32.647137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186277, 0.061205, 0.980589,
		0.679679, 0.712671, -0.173597,
		-0.709463, 0.698823, 0.091155,
		34.516651, 36.241562, 32.674484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261036, 36.274303, 32.921852>,  <35.013275, 35.752384, 32.610676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261036, 36.274303, 32.921852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872967, 36.350040, 32.982399>,  <34.640125, 36.395481, 33.018726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872967, 36.350040, 32.982399>,  <35.261036, 36.274303, 32.921852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872967, 36.350040, 32.982399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207583, 0.326420, 0.922149,
		0.125190, 0.926067, -0.355988,
		-0.970174, 0.189341, 0.151371,
		34.581913, 36.406841, 33.027809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220097, 36.897713, 33.438782>,  <35.261036, 36.274303, 32.921852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220097, 36.897713, 33.438782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861382, 36.721218, 33.425598>,  <34.646152, 36.615322, 33.417690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861382, 36.721218, 33.425598>,  <35.220097, 36.897713, 33.438782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861382, 36.721218, 33.425598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067647, 0.063122, 0.995710,
		-0.437260, 0.895170, -0.086455,
		-0.896787, -0.441233, -0.032955,
		34.592346, 36.588848, 33.415710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825462, 37.229912, 33.655670>,  <35.220097, 36.897713, 33.438782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825462, 37.229912, 33.655670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207306, 37.158852, 33.751301>,  <36.436413, 37.116215, 33.808678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207306, 37.158852, 33.751301>,  <35.825462, 37.229912, 33.655670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207306, 37.158852, 33.751301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264547, 0.136868, -0.954611,
		0.136868, 0.974529, 0.177653,
		0.954611, -0.177653, 0.239076,
		36.493690, 37.105556, 33.823025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094208, 37.694912, 33.271095>,  <35.825462, 37.229912, 33.655670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094208, 37.694912, 33.271095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376884, 37.434937, 33.382931>,  <36.546490, 37.278954, 33.450031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376884, 37.434937, 33.382931>,  <36.094208, 37.694912, 33.271095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376884, 37.434937, 33.382931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321303, -0.057260, -0.945244,
		0.630356, 0.757830, 0.168361,
		0.706694, -0.649934, 0.279588,
		36.588894, 37.239956, 33.466808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727982, 37.922913, 32.920971>,  <36.094208, 37.694912, 33.271095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727982, 37.922913, 32.920971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.798294, 37.539368, 33.010128>,  <36.840481, 37.309242, 33.063622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.798294, 37.539368, 33.010128>,  <36.727982, 37.922913, 32.920971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798294, 37.539368, 33.010128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395644, -0.138516, -0.907898,
		0.901424, 0.247781, 0.355019,
		0.175784, -0.958863, 0.222895,
		36.851028, 37.251709, 33.076996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432869, 37.852329, 32.755749>,  <36.727982, 37.922913, 32.920971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432869, 37.852329, 32.755749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.272049, 37.486168, 32.747868>,  <37.175556, 37.266472, 32.743137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.272049, 37.486168, 32.747868>,  <37.432869, 37.852329, 32.755749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272049, 37.486168, 32.747868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440916, -0.174705, -0.880382,
		0.802462, -0.362649, 0.473857,
		-0.402055, -0.915404, -0.019703,
		37.151432, 37.211548, 32.741955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957005, 37.348690, 32.576023>,  <37.432869, 37.852329, 32.755749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957005, 37.348690, 32.576023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608654, 37.175171, 32.483597>,  <37.399643, 37.071060, 32.428143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608654, 37.175171, 32.483597>,  <37.957005, 37.348690, 32.576023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608654, 37.175171, 32.483597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333749, -0.176820, -0.925930,
		0.360810, -0.883489, 0.298769,
		-0.870878, -0.433799, -0.231065,
		37.347389, 37.045033, 32.414276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134937, 36.693806, 32.172062>,  <37.957005, 37.348690, 32.576023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134937, 36.693806, 32.172062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751495, 36.770882, 32.088211>,  <37.521431, 36.817127, 32.037903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751495, 36.770882, 32.088211>,  <38.134937, 36.693806, 32.172062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751495, 36.770882, 32.088211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165965, -0.220079, -0.961260,
		-0.231374, -0.956258, 0.178986,
		-0.958604, 0.192705, -0.209626,
		37.463913, 36.828690, 32.025326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004452, 36.162098, 31.806248>,  <38.134937, 36.693806, 32.172062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004452, 36.162098, 31.806248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722740, 36.426727, 31.703239>,  <37.553715, 36.585506, 31.641436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722740, 36.426727, 31.703239>,  <38.004452, 36.162098, 31.806248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722740, 36.426727, 31.703239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182168, -0.182185, -0.966242,
		-0.686155, -0.727413, 0.007792,
		-0.704277, 0.661573, -0.257519,
		37.511456, 36.625198, 31.625984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759380, 35.866608, 31.305363>,  <38.004452, 36.162098, 31.806248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759380, 35.866608, 31.305363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619648, 36.237766, 31.253241>,  <37.535809, 36.460461, 31.221968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619648, 36.237766, 31.253241>,  <37.759380, 35.866608, 31.305363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619648, 36.237766, 31.253241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038565, -0.124712, -0.991443,
		-0.936206, -0.351367, 0.007782,
		-0.349331, 0.927895, -0.130307,
		37.514851, 36.516136, 31.214149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412216, 35.765450, 30.728251>,  <37.759380, 35.866608, 31.305363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412216, 35.765450, 30.728251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474579, 36.159058, 30.762665>,  <37.511997, 36.395222, 30.783314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474579, 36.159058, 30.762665>,  <37.412216, 35.765450, 30.728251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474579, 36.159058, 30.762665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243023, 0.046212, -0.968919,
		-0.957409, 0.171974, -0.231934,
		0.155911, 0.984017, 0.086037,
		37.521351, 36.454262, 30.788475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017513, 36.115757, 30.203228>,  <37.412216, 35.765450, 30.728251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017513, 36.115757, 30.203228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311024, 36.375828, 30.282057>,  <37.487129, 36.531872, 30.329353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311024, 36.375828, 30.282057>,  <37.017513, 36.115757, 30.203228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311024, 36.375828, 30.282057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184263, 0.088739, -0.978863,
		-0.653924, 0.754581, -0.054690,
		0.733778, 0.650179, 0.197070,
		37.531158, 36.570881, 30.341177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849720, 36.765438, 29.805649>,  <37.017513, 36.115757, 30.203228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849720, 36.765438, 29.805649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237438, 36.804165, 29.896065>,  <37.470070, 36.827400, 29.950315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237438, 36.804165, 29.896065>,  <36.849720, 36.765438, 29.805649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237438, 36.804165, 29.896065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209997, 0.152376, -0.965755,
		-0.127947, 0.983569, 0.127365,
		0.969294, 0.096819, 0.226042,
		37.528225, 36.833210, 29.963877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090801, 37.368938, 29.514576>,  <36.849720, 36.765438, 29.805649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090801, 37.368938, 29.514576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431038, 37.174828, 29.595566>,  <37.635181, 37.058361, 29.644159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431038, 37.174828, 29.595566>,  <37.090801, 37.368938, 29.514576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431038, 37.174828, 29.595566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302919, 0.137481, -0.943048,
		0.429807, 0.863482, 0.263941,
		0.850591, -0.485281, 0.202475,
		37.686214, 37.029243, 29.656309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538532, 37.662853, 29.054495>,  <37.090801, 37.368938, 29.514576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538532, 37.662853, 29.054495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714169, 37.319584, 29.160879>,  <37.819550, 37.113621, 29.224710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714169, 37.319584, 29.160879>,  <37.538532, 37.662853, 29.054495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714169, 37.319584, 29.160879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490944, -0.018738, -0.870989,
		0.752446, 0.513014, 0.413089,
		0.439089, -0.858176, 0.265961,
		37.845894, 37.062130, 29.240667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318718, 37.736580, 29.025463>,  <37.538532, 37.662853, 29.054495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318718, 37.736580, 29.025463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217346, 37.352592, 28.977739>,  <38.156525, 37.122200, 28.949106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217346, 37.352592, 28.977739>,  <38.318718, 37.736580, 29.025463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217346, 37.352592, 28.977739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398302, 0.008844, -0.917212,
		0.881549, -0.279969, 0.380116,
		-0.253429, -0.959968, -0.119308,
		38.141319, 37.064602, 28.941946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933384, 37.436962, 28.750652>,  <38.318718, 37.736580, 29.025463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933384, 37.436962, 28.750652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630802, 37.191940, 28.658953>,  <38.449253, 37.044926, 28.603933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630802, 37.191940, 28.658953>,  <38.933384, 37.436962, 28.750652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630802, 37.191940, 28.658953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501851, -0.318822, -0.804051,
		0.419439, -0.723274, 0.548586,
		-0.756451, -0.612558, -0.229249,
		38.403866, 37.008171, 28.590178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235165, 36.906418, 28.382042>,  <38.933384, 37.436962, 28.750652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235165, 36.906418, 28.382042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869488, 36.819557, 28.245161>,  <38.650082, 36.767441, 28.163033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869488, 36.819557, 28.245161>,  <39.235165, 36.906418, 28.382042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869488, 36.819557, 28.245161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387235, -0.218808, -0.895641,
		0.119612, -0.951298, 0.284120,
		-0.914190, -0.217151, -0.342203,
		38.595230, 36.754414, 28.142500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313007, 36.423901, 27.915056>,  <39.235165, 36.906418, 28.382042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313007, 36.423901, 27.915056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943493, 36.546810, 27.823660>,  <38.721786, 36.620556, 27.768822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943493, 36.546810, 27.823660>,  <39.313007, 36.423901, 27.915056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943493, 36.546810, 27.823660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142115, -0.278978, -0.949723,
		-0.355569, -0.909810, 0.214048,
		-0.923783, 0.307273, -0.228493,
		38.666359, 36.638992, 27.755112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011158, 36.059704, 27.346870>,  <39.313007, 36.423901, 27.915056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011158, 36.059704, 27.346870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746979, 36.356339, 27.299789>,  <38.588470, 36.534321, 27.271542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746979, 36.356339, 27.299789>,  <39.011158, 36.059704, 27.346870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746979, 36.356339, 27.299789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042724, -0.193614, -0.980147,
		-0.749656, -0.642307, 0.159556,
		-0.660448, 0.741590, -0.117702,
		38.548843, 36.578815, 27.264479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793308, 35.869473, 26.759037>,  <39.011158, 36.059704, 27.346870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793308, 35.869473, 26.759037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605270, 36.222195, 26.774168>,  <38.492447, 36.433826, 26.783247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605270, 36.222195, 26.774168>,  <38.793308, 35.869473, 26.759037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605270, 36.222195, 26.774168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103118, -0.012308, -0.994593,
		-0.876572, -0.471452, 0.096716,
		-0.470093, 0.881806, 0.037826,
		38.464241, 36.486736, 26.785517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193752, 35.757942, 26.365919>,  <38.793308, 35.869473, 26.759037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193752, 35.757942, 26.365919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287251, 36.146847, 26.362455>,  <38.343349, 36.380188, 26.360376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287251, 36.146847, 26.362455>,  <38.193752, 35.757942, 26.365919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287251, 36.146847, 26.362455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209100, 0.041569, -0.977010,
		-0.949548, 0.230181, 0.213016,
		0.233744, 0.972260, -0.008659,
		38.357372, 36.438526, 26.359858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679104, 36.142357, 26.043964>,  <38.193752, 35.757942, 26.365919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679104, 36.142357, 26.043964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004490, 36.367386, 25.984928>,  <38.199722, 36.502403, 25.949507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004490, 36.367386, 25.984928>,  <37.679104, 36.142357, 26.043964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004490, 36.367386, 25.984928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182933, 0.006599, -0.983103,
		-0.552091, 0.826723, 0.108281,
		0.813469, 0.562571, -0.147592,
		38.248531, 36.536156, 25.940651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464619, 36.599663, 25.588209>,  <37.679104, 36.142357, 26.043964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464619, 36.599663, 25.588209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863598, 36.625359, 25.575720>,  <38.102985, 36.640778, 25.568226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863598, 36.625359, 25.575720>,  <37.464619, 36.599663, 25.588209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863598, 36.625359, 25.575720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025545, -0.087345, -0.995851,
		-0.066703, 0.994104, -0.085481,
		0.997446, 0.064243, -0.031221,
		38.162830, 36.644630, 25.566353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555656, 37.045586, 25.046101>,  <37.464619, 36.599663, 25.588209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555656, 37.045586, 25.046101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907635, 36.862026, 25.095282>,  <38.118820, 36.751892, 25.124790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907635, 36.862026, 25.095282>,  <37.555656, 37.045586, 25.046101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907635, 36.862026, 25.095282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063258, -0.143328, -0.987652,
		0.470850, 0.876854, -0.097091,
		0.879942, -0.458894, 0.122954,
		38.171616, 36.724358, 25.132168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951141, 37.316193, 24.548590>,  <37.555656, 37.045586, 25.046101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951141, 37.316193, 24.548590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140850, 36.977627, 24.645458>,  <38.254677, 36.774487, 24.703579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140850, 36.977627, 24.645458>,  <37.951141, 37.316193, 24.548590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140850, 36.977627, 24.645458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108641, -0.216704, -0.970173,
		0.873648, 0.486438, -0.010822,
		0.474274, -0.846414, 0.242171,
		38.283131, 36.723701, 24.718109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677895, 37.177197, 24.134657>,  <37.951141, 37.316193, 24.548590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677895, 37.177197, 24.134657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555588, 36.821266, 24.270140>,  <38.482204, 36.607708, 24.351429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555588, 36.821266, 24.270140>,  <38.677895, 37.177197, 24.134657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555588, 36.821266, 24.270140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196577, -0.407077, -0.891990,
		0.931594, -0.206156, 0.299388,
		-0.305763, -0.889825, 0.338705,
		38.463860, 36.554317, 24.371752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259918, 36.751297, 23.951208>,  <38.677895, 37.177197, 24.134657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259918, 36.751297, 23.951208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966125, 36.489071, 24.021366>,  <38.789848, 36.331734, 24.063461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966125, 36.489071, 24.021366>,  <39.259918, 36.751297, 23.951208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966125, 36.489071, 24.021366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321906, -0.564095, -0.760377,
		0.597419, -0.502023, 0.625350,
		-0.734484, -0.655568, 0.175397,
		38.745781, 36.292400, 24.073986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562397, 36.074780, 23.943005>,  <39.259918, 36.751297, 23.951208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562397, 36.074780, 23.943005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170143, 36.030800, 23.878166>,  <38.934792, 36.004410, 23.839264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170143, 36.030800, 23.878166>,  <39.562397, 36.074780, 23.943005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170143, 36.030800, 23.878166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195658, -0.511640, -0.836626,
		0.009057, -0.852135, 0.523243,
		-0.980630, -0.109954, -0.162094,
		38.875954, 35.997814, 23.829538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565392, 35.430061, 23.850878>,  <39.562397, 36.074780, 23.943005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565392, 35.430061, 23.850878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238163, 35.568596, 23.667223>,  <39.041824, 35.651714, 23.557030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238163, 35.568596, 23.667223>,  <39.565392, 35.430061, 23.850878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238163, 35.568596, 23.667223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271116, -0.471828, -0.838972,
		-0.507201, -0.810820, 0.292092,
		-0.818073, 0.346337, -0.459138,
		38.992741, 35.672497, 23.529482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195431, 34.868340, 23.469088>,  <39.565392, 35.430061, 23.850878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195431, 34.868340, 23.469088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036018, 35.191551, 23.295528>,  <38.940372, 35.385479, 23.191393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036018, 35.191551, 23.295528>,  <39.195431, 34.868340, 23.469088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036018, 35.191551, 23.295528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053377, -0.451856, -0.890493,
		-0.915602, -0.378045, 0.136947,
		-0.398526, 0.808027, -0.433899,
		38.916462, 35.433960, 23.165359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695103, 34.604641, 22.967451>,  <39.195431, 34.868340, 23.469088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695103, 34.604641, 22.967451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785877, 34.974377, 22.844749>,  <38.840340, 35.196217, 22.771128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785877, 34.974377, 22.844749>,  <38.695103, 34.604641, 22.967451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785877, 34.974377, 22.844749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235314, -0.357682, -0.903709,
		-0.945055, 0.132898, -0.298680,
		0.226934, 0.924339, -0.306756,
		38.853958, 35.251678, 22.752722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387978, 34.639622, 22.334057>,  <38.695103, 34.604641, 22.967451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387978, 34.639622, 22.334057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687279, 34.904930, 22.339508>,  <38.866859, 35.064114, 22.342779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687279, 34.904930, 22.339508>,  <38.387978, 34.639622, 22.334057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687279, 34.904930, 22.339508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315750, -0.337991, -0.886603,
		-0.583452, 0.667708, -0.462331,
		0.748255, 0.663271, 0.013628,
		38.911755, 35.103912, 22.343596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312019, 35.001095, 21.700230>,  <38.387978, 34.639622, 22.334057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312019, 35.001095, 21.700230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692528, 35.042744, 21.816326>,  <38.920834, 35.067734, 21.885984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692528, 35.042744, 21.816326>,  <38.312019, 35.001095, 21.700230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692528, 35.042744, 21.816326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308315, -0.335786, -0.890050,
		0.004787, 0.936166, -0.351526,
		0.951272, 0.104121, 0.290242,
		38.977909, 35.073978, 21.903399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651638, 35.248379, 21.096970>,  <38.312019, 35.001095, 21.700230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651638, 35.248379, 21.096970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988728, 35.152412, 21.289738>,  <39.190983, 35.094833, 21.405399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988728, 35.152412, 21.289738>,  <38.651638, 35.248379, 21.096970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988728, 35.152412, 21.289738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380381, -0.368098, -0.848418,
		0.380948, 0.898299, -0.218945,
		0.842727, -0.239920, 0.481923,
		39.241547, 35.080437, 21.434315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348217, 35.594318, 20.775335>,  <38.651638, 35.248379, 21.096970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348217, 35.594318, 20.775335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448051, 35.250355, 20.953442>,  <39.507954, 35.043976, 21.060307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448051, 35.250355, 20.953442>,  <39.348217, 35.594318, 20.775335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448051, 35.250355, 20.953442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499756, -0.279468, -0.819843,
		0.829428, 0.427148, 0.359993,
		0.249587, -0.859909, 0.445268,
		39.522926, 34.992382, 21.087023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080437, 35.486965, 20.580191>,  <39.348217, 35.594318, 20.775335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080437, 35.486965, 20.580191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916859, 35.138351, 20.688400>,  <39.818710, 34.929184, 20.753326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916859, 35.138351, 20.688400>,  <40.080437, 35.486965, 20.580191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916859, 35.138351, 20.688400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509918, -0.464088, -0.724297,
		0.756799, -0.158255, 0.634200,
		-0.408948, -0.871538, 0.270524,
		39.794174, 34.876888, 20.769558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610817, 35.045681, 20.543663>,  <40.080437, 35.486965, 20.580191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610817, 35.045681, 20.543663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273453, 34.834301, 20.504898>,  <40.071033, 34.707474, 20.481640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273453, 34.834301, 20.504898>,  <40.610817, 35.045681, 20.543663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273453, 34.834301, 20.504898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418979, -0.534027, -0.734351,
		0.336315, -0.659966, 0.671816,
		-0.843415, -0.528450, -0.096910,
		40.020428, 34.675766, 20.475824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938339, 34.400623, 20.335844>,  <40.610817, 35.045681, 20.543663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938339, 34.400623, 20.335844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551319, 34.365116, 20.241220>,  <40.319107, 34.343811, 20.184446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551319, 34.365116, 20.241220>,  <40.938339, 34.400623, 20.335844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551319, 34.365116, 20.241220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250010, -0.471751, -0.845545,
		-0.036541, -0.877252, 0.478637,
		-0.967554, -0.088767, -0.236560,
		40.261055, 34.338486, 20.170252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885956, 33.733768, 20.029327>,  <40.938339, 34.400623, 20.335844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885956, 33.733768, 20.029327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520222, 33.864765, 19.934044>,  <40.300781, 33.943363, 19.876873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520222, 33.864765, 19.934044>,  <40.885956, 33.733768, 20.029327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520222, 33.864765, 19.934044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040836, -0.510668, -0.858807,
		-0.402894, -0.794965, 0.453549,
		-0.914335, 0.327487, -0.238209,
		40.245922, 33.963013, 19.862581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126053, 33.123802, 20.458136>,  <40.885956, 33.733768, 20.029327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126053, 33.123802, 20.458136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.475910, 32.932381, 20.489098>,  <41.685825, 32.817528, 20.507675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.475910, 32.932381, 20.489098>,  <41.126053, 33.123802, 20.458136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475910, 32.932381, 20.489098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048947, 0.071677, 0.996226,
		-0.482298, -0.875126, 0.039267,
		0.874639, -0.478556, 0.077404,
		41.738300, 32.788815, 20.512320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093517, 32.540470, 20.821941>,  <41.126053, 33.123802, 20.458136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093517, 32.540470, 20.821941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.475048, 32.640869, 20.887918>,  <41.703968, 32.701111, 20.927504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.475048, 32.640869, 20.887918>,  <41.093517, 32.540470, 20.821941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475048, 32.640869, 20.887918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183524, 0.052357, 0.981620,
		0.237753, -0.966569, 0.096005,
		0.953830, 0.251002, 0.164941,
		41.761196, 32.716167, 20.937401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339424, 32.216805, 21.523119>,  <41.093517, 32.540470, 20.821941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339424, 32.216805, 21.523119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607006, 32.502850, 21.442007>,  <41.767555, 32.674477, 21.393341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607006, 32.502850, 21.442007>,  <41.339424, 32.216805, 21.523119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607006, 32.502850, 21.442007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069934, 0.211044, 0.974971,
		0.740005, -0.666394, 0.091168,
		0.668955, 0.715108, -0.202778,
		41.807693, 32.717381, 21.381174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921448, 32.175190, 21.974157>,  <41.339424, 32.216805, 21.523119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.921448, 32.175190, 21.974157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904068, 32.559849, 21.865824>,  <41.893639, 32.790642, 21.800823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904068, 32.559849, 21.865824>,  <41.921448, 32.175190, 21.974157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904068, 32.559849, 21.865824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004439, 0.271274, 0.962492,
		0.999046, 0.040618, -0.016056,
		-0.043450, 0.961645, -0.270835,
		41.891033, 32.848343, 21.784573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420052, 32.506973, 22.429270>,  <41.921448, 32.175190, 21.974157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.420052, 32.506973, 22.429270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.156708, 32.788422, 22.322325>,  <41.998703, 32.957291, 22.258158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.156708, 32.788422, 22.322325>,  <42.420052, 32.506973, 22.429270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.156708, 32.788422, 22.322325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048485, 0.314825, 0.947911,
		0.751143, 0.637027, -0.173152,
		-0.658357, 0.703621, -0.267364,
		41.959202, 32.999508, 22.242115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.414291, 32.936279, 22.965616>,  <42.420052, 32.506973, 22.429270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.414291, 32.936279, 22.965616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112587, 33.101570, 22.761522>,  <41.931564, 33.200745, 22.639067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112587, 33.101570, 22.761522>,  <42.414291, 32.936279, 22.965616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112587, 33.101570, 22.761522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300179, 0.474113, 0.827713,
		0.583940, 0.777472, -0.233563,
		-0.754259, 0.413224, -0.510235,
		41.886311, 33.225536, 22.608452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.459446, 33.610592, 23.062199>,  <42.414291, 32.936279, 22.965616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.459446, 33.610592, 23.062199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.074913, 33.549656, 22.970432>,  <41.844193, 33.513096, 22.915373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.074913, 33.549656, 22.970432>,  <42.459446, 33.610592, 23.062199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.074913, 33.549656, 22.970432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268144, 0.327978, 0.905831,
		-0.062747, 0.932322, -0.356144,
		-0.961333, -0.152336, -0.229417,
		41.786514, 33.503956, 22.901608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020390, 34.276749, 23.165815>,  <42.459446, 33.610592, 23.062199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.020390, 34.276749, 23.165815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.751869, 33.980637, 23.180498>,  <41.590759, 33.802971, 23.189308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.751869, 33.980637, 23.180498>,  <42.020390, 34.276749, 23.165815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.751869, 33.980637, 23.180498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368553, 0.376357, 0.850014,
		-0.643063, 0.557083, -0.525479,
		-0.671296, -0.740280, 0.036706,
		41.550480, 33.758553, 23.191509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498402, 34.566261, 23.415316>,  <42.020390, 34.276749, 23.165815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498402, 34.566261, 23.415316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.455086, 34.173710, 23.478779>,  <41.429096, 33.938179, 23.516857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.455086, 34.173710, 23.478779>,  <41.498402, 34.566261, 23.415316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455086, 34.173710, 23.478779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262368, 0.182149, 0.947621,
		-0.958873, 0.060990, -0.277207,
		-0.108288, -0.981378, 0.158656,
		41.422600, 33.879295, 23.526375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947079, 34.595280, 23.882078>,  <41.498402, 34.566261, 23.415316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.947079, 34.595280, 23.882078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.086197, 34.224308, 23.937103>,  <41.169666, 34.001724, 23.970119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.086197, 34.224308, 23.937103>,  <40.947079, 34.595280, 23.882078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086197, 34.224308, 23.937103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376931, -0.003965, 0.926233,
		-0.858466, -0.373989, -0.350954,
		0.347792, -0.927425, 0.137564,
		41.190536, 33.946079, 23.978373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417797, 34.230766, 24.112511>,  <40.947079, 34.595280, 23.882078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417797, 34.230766, 24.112511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734562, 34.015358, 24.227661>,  <40.924622, 33.886112, 24.296751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734562, 34.015358, 24.227661>,  <40.417797, 34.230766, 24.112511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734562, 34.015358, 24.227661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310604, 0.050655, 0.949189,
		-0.525739, -0.841089, -0.127152,
		0.791911, -0.538520, 0.287877,
		40.972134, 33.853802, 24.314024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047390, 33.666046, 24.420063>,  <40.417797, 34.230766, 24.112511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047390, 33.666046, 24.420063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430630, 33.671383, 24.534515>,  <40.660572, 33.674587, 24.603188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430630, 33.671383, 24.534515>,  <40.047390, 33.666046, 24.420063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430630, 33.671383, 24.534515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286111, -0.003558, 0.958190,
		0.013807, -0.999905, 0.000410,
		0.958097, 0.013347, 0.286133,
		40.718060, 33.675388, 24.620356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115440, 33.064938, 24.847973>,  <40.047390, 33.666046, 24.420063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115440, 33.064938, 24.847973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.384583, 33.345417, 24.942284>,  <40.546066, 33.513702, 24.998871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.384583, 33.345417, 24.942284>,  <40.115440, 33.064938, 24.847973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384583, 33.345417, 24.942284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256958, -0.077347, 0.963322,
		0.693715, -0.708760, 0.128135,
		0.672853, 0.701197, 0.235778,
		40.586437, 33.555775, 25.013018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335785, 32.861382, 25.516941>,  <40.115440, 33.064938, 24.847973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335785, 32.861382, 25.516941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457760, 33.240612, 25.480812>,  <40.530945, 33.468151, 25.459135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457760, 33.240612, 25.480812>,  <40.335785, 32.861382, 25.516941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457760, 33.240612, 25.480812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085613, 0.121747, 0.988862,
		0.948515, -0.293811, 0.118294,
		0.304941, 0.948078, -0.090325,
		40.549244, 33.525036, 25.453714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850460, 32.978729, 25.988968>,  <40.335785, 32.861382, 25.516941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850460, 32.978729, 25.988968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700214, 33.339725, 25.904654>,  <40.610065, 33.556324, 25.854065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700214, 33.339725, 25.904654>,  <40.850460, 32.978729, 25.988968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700214, 33.339725, 25.904654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077688, 0.195979, 0.977526,
		0.923514, 0.383548, -0.003500,
		-0.375614, 0.902487, -0.210787,
		40.587532, 33.610470, 25.841417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170391, 33.385769, 26.486013>,  <40.850460, 32.978729, 25.988968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170391, 33.385769, 26.486013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.851742, 33.592907, 26.361288>,  <40.660553, 33.717190, 26.286453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.851742, 33.592907, 26.361288>,  <41.170391, 33.385769, 26.486013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851742, 33.592907, 26.361288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150935, 0.329094, 0.932157,
		0.585333, 0.789639, -0.184001,
		-0.796620, 0.517850, -0.311814,
		40.612755, 33.748260, 26.267744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213894, 34.019016, 26.840611>,  <41.170391, 33.385769, 26.486013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213894, 34.019016, 26.840611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841446, 33.996338, 26.696501>,  <40.617977, 33.982731, 26.610035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841446, 33.996338, 26.696501>,  <41.213894, 34.019016, 26.840611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841446, 33.996338, 26.696501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347560, 0.437278, 0.829452,
		0.110514, 0.897538, -0.426865,
		-0.931122, -0.056695, -0.360274,
		40.562111, 33.979328, 26.588419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960823, 34.666004, 26.692720>,  <41.213894, 34.019016, 26.840611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960823, 34.666004, 26.692720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640514, 34.435898, 26.759459>,  <40.448330, 34.297832, 26.799501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640514, 34.435898, 26.759459>,  <40.960823, 34.666004, 26.692720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640514, 34.435898, 26.759459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303950, 0.630290, 0.714387,
		-0.516126, 0.521345, -0.679569,
		-0.800767, -0.575269, 0.166846,
		40.400284, 34.263317, 26.809513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449421, 35.181446, 26.868319>,  <40.960823, 34.666004, 26.692720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449421, 35.181446, 26.868319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334267, 34.830853, 27.022665>,  <40.265175, 34.620495, 27.115273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334267, 34.830853, 27.022665>,  <40.449421, 35.181446, 26.868319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334267, 34.830853, 27.022665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347099, 0.471027, 0.810960,
		-0.892549, 0.099531, -0.439830,
		-0.287887, -0.876486, 0.385868,
		40.247902, 34.567905, 27.138426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846611, 35.326515, 27.108200>,  <40.449421, 35.181446, 26.868319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846611, 35.326515, 27.108200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948261, 34.984947, 27.289854>,  <40.009251, 34.780006, 27.398846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948261, 34.984947, 27.289854>,  <39.846611, 35.326515, 27.108200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948261, 34.984947, 27.289854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490239, 0.291031, 0.821563,
		-0.833719, -0.431412, -0.344669,
		0.254123, -0.853923, 0.454133,
		40.024498, 34.728771, 27.426094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276810, 35.095985, 27.445473>,  <39.846611, 35.326515, 27.108200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276810, 35.095985, 27.445473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575657, 34.902279, 27.627594>,  <39.754967, 34.786057, 27.736866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575657, 34.902279, 27.627594>,  <39.276810, 35.095985, 27.445473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575657, 34.902279, 27.627594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312095, 0.349206, 0.883545,
		-0.586865, -0.802211, 0.109761,
		0.747119, -0.484265, 0.455303,
		39.799793, 34.757000, 27.764185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006516, 34.834061, 28.020500>,  <39.276810, 35.095985, 27.445473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006516, 34.834061, 28.020500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389870, 34.799179, 28.129238>,  <39.619881, 34.778252, 28.194481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389870, 34.799179, 28.129238>,  <39.006516, 34.834061, 28.020500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389870, 34.799179, 28.129238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233661, 0.307511, 0.922410,
		-0.164033, -0.947540, 0.274337,
		0.958381, -0.087204, 0.271845,
		39.677383, 34.773018, 28.210793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999592, 34.372433, 28.596008>,  <39.006516, 34.834061, 28.020500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999592, 34.372433, 28.596008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339249, 34.582584, 28.617659>,  <39.543045, 34.708675, 28.630650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339249, 34.582584, 28.617659>,  <38.999592, 34.372433, 28.596008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339249, 34.582584, 28.617659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202396, 0.229026, 0.952147,
		0.487845, -0.819464, 0.300811,
		0.849143, 0.525382, 0.054127,
		39.593990, 34.740200, 28.633896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200508, 34.181690, 29.300243>,  <38.999592, 34.372433, 28.596008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200508, 34.181690, 29.300243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432606, 34.495140, 29.211479>,  <39.571865, 34.683212, 29.158220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432606, 34.495140, 29.211479>,  <39.200508, 34.181690, 29.300243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432606, 34.495140, 29.211479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153576, 0.372859, 0.915091,
		0.799831, -0.496896, 0.336696,
		0.580245, 0.783627, -0.221913,
		39.606678, 34.730228, 29.144905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645084, 34.277969, 29.831028>,  <39.200508, 34.181690, 29.300243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645084, 34.277969, 29.831028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625919, 34.632893, 29.647552>,  <39.614418, 34.845844, 29.537468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625919, 34.632893, 29.647552>,  <39.645084, 34.277969, 29.831028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625919, 34.632893, 29.647552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140100, 0.460646, 0.876457,
		0.988977, -0.022265, -0.146384,
		-0.047917, 0.887305, -0.458688,
		39.611546, 34.899082, 29.509947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254345, 34.464840, 29.953197>,  <39.645084, 34.277969, 29.831028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254345, 34.464840, 29.953197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011436, 34.776516, 29.891113>,  <39.865692, 34.963520, 29.853863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011436, 34.776516, 29.891113>,  <40.254345, 34.464840, 29.953197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011436, 34.776516, 29.891113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248045, 0.371532, 0.894672,
		0.754781, 0.504810, -0.418894,
		-0.607272, 0.779186, -0.155210,
		39.829254, 35.010273, 29.844551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609936, 35.036701, 30.172209>,  <40.254345, 34.464840, 29.953197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609936, 35.036701, 30.172209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.233501, 35.171883, 30.167288>,  <40.007641, 35.252991, 30.164335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.233501, 35.171883, 30.167288>,  <40.609936, 35.036701, 30.172209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233501, 35.171883, 30.167288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213606, 0.622246, 0.753115,
		0.262171, 0.706116, -0.657773,
		-0.941084, 0.337949, -0.012304,
		39.951176, 35.273266, 30.163597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609852, 35.834618, 30.103647>,  <40.609936, 35.036701, 30.172209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609852, 35.834618, 30.103647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275780, 35.711411, 30.285902>,  <40.075336, 35.637486, 30.395254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275780, 35.711411, 30.285902>,  <40.609852, 35.834618, 30.103647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275780, 35.711411, 30.285902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303728, 0.432355, 0.849010,
		-0.458502, 0.847465, -0.267542,
		-0.835179, -0.308013, 0.455635,
		40.025227, 35.619007, 30.422592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490379, 36.263763, 30.618610>,  <40.609852, 35.834618, 30.103647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490379, 36.263763, 30.618610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219131, 35.986679, 30.716837>,  <40.056381, 35.820427, 30.775772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219131, 35.986679, 30.716837>,  <40.490379, 36.263763, 30.618610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219131, 35.986679, 30.716837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099742, 0.244293, 0.964558,
		-0.728153, 0.678578, -0.096567,
		-0.678119, -0.692714, 0.245565,
		40.015697, 35.778866, 30.790506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968376, 36.573956, 31.031965>,  <40.490379, 36.263763, 30.618610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968376, 36.573956, 31.031965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905846, 36.192154, 31.133547>,  <39.868328, 35.963074, 31.194496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905846, 36.192154, 31.133547>,  <39.968376, 36.573956, 31.031965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905846, 36.192154, 31.133547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025142, 0.260876, 0.965045,
		-0.987386, 0.144474, -0.064779,
		-0.156323, -0.954500, 0.253953,
		39.858948, 35.905804, 31.209732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411030, 36.643139, 31.529745>,  <39.968376, 36.573956, 31.031965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411030, 36.643139, 31.529745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.599594, 36.295185, 31.587795>,  <39.712734, 36.086411, 31.622625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.599594, 36.295185, 31.587795>,  <39.411030, 36.643139, 31.529745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599594, 36.295185, 31.587795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053060, 0.136285, 0.989248,
		-0.880314, -0.474046, 0.018091,
		0.471414, -0.869889, 0.145127,
		39.741020, 36.034218, 31.631332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231281, 36.325073, 32.210205>,  <39.411030, 36.643139, 31.529745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231281, 36.325073, 32.210205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.533443, 36.072571, 32.139912>,  <39.714741, 35.921070, 32.097736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.533443, 36.072571, 32.139912>,  <39.231281, 36.325073, 32.210205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533443, 36.072571, 32.139912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144897, -0.100630, 0.984316,
		-0.639036, -0.769021, 0.015450,
		0.755405, -0.631253, -0.175735,
		39.760067, 35.883194, 32.087193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150272, 35.691235, 32.655170>,  <39.231281, 36.325073, 32.210205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150272, 35.691235, 32.655170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540241, 35.714329, 32.569195>,  <39.774223, 35.728188, 32.517609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540241, 35.714329, 32.569195>,  <39.150272, 35.691235, 32.655170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540241, 35.714329, 32.569195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214924, 0.006510, 0.976609,
		0.057787, -0.998310, -0.006063,
		0.974919, 0.057739, -0.214937,
		39.832718, 35.731651, 32.504715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505302, 35.155190, 32.985142>,  <39.150272, 35.691235, 32.655170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505302, 35.155190, 32.985142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806042, 35.410103, 32.917500>,  <39.986485, 35.563049, 32.876915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806042, 35.410103, 32.917500>,  <39.505302, 35.155190, 32.985142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806042, 35.410103, 32.917500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249427, -0.037492, 0.967668,
		0.610336, -0.769719, -0.187144,
		0.751848, 0.637281, -0.169106,
		40.031597, 35.601288, 32.866768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063122, 34.839577, 33.299011>,  <39.505302, 35.155190, 32.985142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063122, 34.839577, 33.299011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153679, 35.227062, 33.258347>,  <40.208012, 35.459553, 33.233948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153679, 35.227062, 33.258347>,  <40.063122, 34.839577, 33.299011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153679, 35.227062, 33.258347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166828, 0.064267, 0.983889,
		0.959644, -0.239703, -0.147059,
		0.226390, 0.968717, -0.101663,
		40.221596, 35.517677, 33.227848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631958, 34.957851, 33.622070>,  <40.063122, 34.839577, 33.299011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631958, 34.957851, 33.622070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504814, 35.336754, 33.605736>,  <40.428528, 35.564095, 33.595936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504814, 35.336754, 33.605736>,  <40.631958, 34.957851, 33.622070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504814, 35.336754, 33.605736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215498, 0.114125, 0.969812,
		0.923324, 0.299461, -0.240408,
		-0.317858, 0.947258, -0.040841,
		40.409458, 35.620930, 33.593483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191849, 35.385143, 33.827969>,  <40.631958, 34.957851, 33.622070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191849, 35.385143, 33.827969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877396, 35.628117, 33.873619>,  <40.688725, 35.773899, 33.901009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877396, 35.628117, 33.873619>,  <41.191849, 35.385143, 33.827969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877396, 35.628117, 33.873619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323409, 0.246917, 0.913476,
		0.526694, 0.755021, -0.390558,
		-0.786129, 0.607433, 0.114131,
		40.641556, 35.810345, 33.907860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487553, 35.969067, 34.065796>,  <41.191849, 35.385143, 33.827969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.487553, 35.969067, 34.065796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.100994, 36.003475, 34.162693>,  <40.869061, 36.024120, 34.220833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.100994, 36.003475, 34.162693>,  <41.487553, 35.969067, 34.065796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.100994, 36.003475, 34.162693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255617, 0.221749, 0.941004,
		0.027231, 0.971302, -0.236286,
		-0.966395, 0.086023, 0.242242,
		40.811077, 36.029282, 34.235367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346214, 36.598949, 34.299068>,  <41.487553, 35.969067, 34.065796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346214, 36.598949, 34.299068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087456, 36.347195, 34.471298>,  <40.932201, 36.196144, 34.574638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087456, 36.347195, 34.471298>,  <41.346214, 36.598949, 34.299068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087456, 36.347195, 34.471298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158245, 0.441551, 0.883171,
		-0.745977, 0.639459, -0.186041,
		-0.646898, -0.629385, 0.430578,
		40.893387, 36.158379, 34.600471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053856, 36.933250, 34.829330>,  <41.346214, 36.598949, 34.299068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053856, 36.933250, 34.829330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970306, 36.551739, 34.915745>,  <40.920177, 36.322830, 34.967594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970306, 36.551739, 34.915745>,  <41.053856, 36.933250, 34.829330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970306, 36.551739, 34.915745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009235, 0.222819, 0.974816,
		-0.977900, 0.201615, -0.055348,
		-0.208870, -0.953784, 0.216033,
		40.907646, 36.265602, 34.980556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438778, 36.959282, 35.315159>,  <41.053856, 36.933250, 34.829330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438778, 36.959282, 35.315159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.633362, 36.614365, 35.371468>,  <40.750111, 36.407413, 35.405251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.633362, 36.614365, 35.371468>,  <40.438778, 36.959282, 35.315159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633362, 36.614365, 35.371468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044558, 0.136422, 0.989648,
		-0.872569, -0.487692, 0.027941,
		0.486455, -0.862291, 0.140768,
		40.779297, 36.355679, 35.413696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063679, 36.655636, 35.902302>,  <40.438778, 36.959282, 35.315159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063679, 36.655636, 35.902302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394699, 36.431557, 35.887684>,  <40.593311, 36.297112, 35.878914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394699, 36.431557, 35.887684>,  <40.063679, 36.655636, 35.902302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394699, 36.431557, 35.887684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047355, 0.004794, 0.998866,
		-0.559386, -0.828346, 0.030496,
		0.827553, -0.560196, -0.036545,
		40.642963, 36.263496, 35.876720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930218, 35.952034, 36.187111>,  <40.063679, 36.655636, 35.902302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930218, 35.952034, 36.187111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325127, 36.012798, 36.205914>,  <40.562073, 36.049255, 36.217194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325127, 36.012798, 36.205914>,  <39.930218, 35.952034, 36.187111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325127, 36.012798, 36.205914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021576, -0.164904, 0.986074,
		0.157546, -0.974541, -0.159528,
		0.987276, 0.151910, 0.047006,
		40.621311, 36.058372, 36.220016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103928, 35.397125, 36.495197>,  <39.930218, 35.952034, 36.187111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103928, 35.397125, 36.495197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393570, 35.669125, 36.541264>,  <40.567356, 35.832325, 36.568905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393570, 35.669125, 36.541264>,  <40.103928, 35.397125, 36.495197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393570, 35.669125, 36.541264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124658, -0.035194, 0.991575,
		0.678325, -0.732366, 0.059283,
		0.724110, 0.680001, 0.115168,
		40.610802, 35.873123, 36.575813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375561, 35.223965, 37.104946>,  <40.103928, 35.397125, 36.495197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375561, 35.223965, 37.104946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569309, 35.572460, 37.073128>,  <40.685558, 35.781559, 37.054039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569309, 35.572460, 37.073128>,  <40.375561, 35.223965, 37.104946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569309, 35.572460, 37.073128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076561, 0.132783, 0.988184,
		0.871507, -0.472556, 0.131019,
		0.484369, 0.871240, -0.079542,
		40.714619, 35.833832, 37.049267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932880, 35.234604, 37.614948>,  <40.375561, 35.223965, 37.104946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932880, 35.234604, 37.614948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889297, 35.612492, 37.491253>,  <40.863148, 35.839226, 37.417038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889297, 35.612492, 37.491253>,  <40.932880, 35.234604, 37.614948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889297, 35.612492, 37.491253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033726, 0.314421, 0.948684,
		0.993474, 0.092937, -0.066120,
		-0.108957, 0.944724, -0.309234,
		40.856609, 35.895908, 37.398483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518520, 35.701553, 37.912743>,  <40.932880, 35.234604, 37.614948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.518520, 35.701553, 37.912743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198135, 35.928585, 37.836517>,  <41.005905, 36.064804, 37.790783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198135, 35.928585, 37.836517>,  <41.518520, 35.701553, 37.912743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198135, 35.928585, 37.836517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050660, 0.381391, 0.923025,
		0.596570, 0.729652, -0.334233,
		-0.800960, 0.567581, -0.190562,
		40.957848, 36.098858, 37.779350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636154, 36.479218, 38.214813>,  <41.518520, 35.701553, 37.912743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.636154, 36.479218, 38.214813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241486, 36.428772, 38.173672>,  <41.004684, 36.398502, 38.148987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241486, 36.428772, 38.173672>,  <41.636154, 36.479218, 38.214813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241486, 36.428772, 38.173672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145157, 0.396225, 0.906606,
		-0.073586, 0.909450, -0.409250,
		-0.986668, -0.126118, -0.102856,
		40.945484, 36.390938, 38.142815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.381607, 36.869263, 38.767727>,  <41.636154, 36.479218, 38.214813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.381607, 36.869263, 38.767727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041340, 36.755169, 38.591087>,  <40.837181, 36.686710, 38.485104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041340, 36.755169, 38.591087>,  <41.381607, 36.869263, 38.767727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041340, 36.755169, 38.591087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505086, 0.210482, 0.837010,
		-0.145798, 0.935060, -0.323119,
		-0.850665, -0.285237, -0.441598,
		40.786140, 36.669598, 38.458607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930485, 37.412033, 38.852348>,  <41.381607, 36.869263, 38.767727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.930485, 37.412033, 38.852348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.733135, 37.067299, 38.805305>,  <40.614727, 36.860458, 38.777081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.733135, 37.067299, 38.805305>,  <40.930485, 37.412033, 38.852348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.733135, 37.067299, 38.805305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490698, 0.164135, 0.855731,
		-0.718193, 0.479902, -0.503878,
		-0.493371, -0.861832, -0.117607,
		40.585125, 36.808750, 38.770023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146854, 37.509823, 38.840900>,  <40.930485, 37.412033, 38.852348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146854, 37.509823, 38.840900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263332, 37.142933, 38.949642>,  <40.333218, 36.922798, 39.014889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263332, 37.142933, 38.949642>,  <40.146854, 37.509823, 38.840900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263332, 37.142933, 38.949642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304461, 0.180546, 0.935257,
		-0.906924, -0.355109, -0.226686,
		0.291191, -0.917225, 0.271859,
		40.350689, 36.867767, 39.031200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649288, 37.333000, 39.372963>,  <40.146854, 37.509823, 38.840900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649288, 37.333000, 39.372963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925030, 37.047009, 39.419609>,  <40.090477, 36.875416, 39.447598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925030, 37.047009, 39.419609>,  <39.649288, 37.333000, 39.372963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925030, 37.047009, 39.419609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002880, 0.163677, 0.986510,
		-0.724417, -0.679720, 0.114891,
		0.689356, -0.714976, 0.116612,
		40.131836, 36.832516, 39.454594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372215, 36.714581, 39.787144>,  <39.649288, 37.333000, 39.372963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372215, 36.714581, 39.787144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768093, 36.739231, 39.838844>,  <40.005619, 36.754021, 39.869865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768093, 36.739231, 39.838844>,  <39.372215, 36.714581, 39.787144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768093, 36.739231, 39.838844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119489, -0.141991, 0.982630,
		0.078907, -0.987948, -0.133164,
		0.989695, 0.061625, 0.129253,
		40.065002, 36.757717, 39.877621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657486, 36.066093, 39.933571>,  <39.372215, 36.714581, 39.787144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657486, 36.066093, 39.933571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940994, 36.299355, 40.092354>,  <40.111099, 36.439312, 40.187622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940994, 36.299355, 40.092354>,  <39.657486, 36.066093, 39.933571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940994, 36.299355, 40.092354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264091, -0.302445, 0.915851,
		0.654136, -0.753965, -0.060361,
		0.708775, 0.583150, 0.396955,
		40.153625, 36.474300, 40.211441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129265, 35.723137, 40.467216>,  <39.657486, 36.066093, 39.933571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129265, 35.723137, 40.467216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139889, 36.111076, 40.564121>,  <40.146263, 36.343842, 40.622265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139889, 36.111076, 40.564121>,  <40.129265, 35.723137, 40.467216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139889, 36.111076, 40.564121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160313, -0.235076, 0.958665,
		0.986709, -0.064301, 0.149235,
		0.026562, 0.969848, 0.242260,
		40.147858, 36.402031, 40.636799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466434, 35.642250, 41.172138>,  <40.129265, 35.723137, 40.467216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466434, 35.642250, 41.172138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285286, 35.987808, 41.083969>,  <40.176598, 36.195145, 41.031067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285286, 35.987808, 41.083969>,  <40.466434, 35.642250, 41.172138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285286, 35.987808, 41.083969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326855, 0.069141, 0.942542,
		0.829500, 0.498899, 0.251057,
		-0.452875, 0.863897, -0.220421,
		40.149422, 36.246979, 41.017841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542099, 36.088097, 41.762295>,  <40.466434, 35.642250, 41.172138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542099, 36.088097, 41.762295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.223034, 36.237232, 41.572678>,  <40.031593, 36.326714, 41.458908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.223034, 36.237232, 41.572678>,  <40.542099, 36.088097, 41.762295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223034, 36.237232, 41.572678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457965, 0.136997, 0.878351,
		0.392430, 0.917725, 0.061472,
		-0.797663, 0.372843, -0.474047,
		39.983734, 36.349087, 41.430462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473392, 36.822670, 41.779255>,  <40.542099, 36.088097, 41.762295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473392, 36.822670, 41.779255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108208, 36.662098, 41.749992>,  <39.889095, 36.565754, 41.732433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108208, 36.662098, 41.749992>,  <40.473392, 36.822670, 41.779255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108208, 36.662098, 41.749992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213334, 0.316749, 0.924207,
		-0.347827, 0.859376, -0.374819,
		-0.912965, -0.401426, -0.073160,
		39.834320, 36.541672, 41.728043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988106, 37.308384, 42.124161>,  <40.473392, 36.822670, 41.779255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988106, 37.308384, 42.124161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763165, 36.982319, 42.068634>,  <39.628201, 36.786678, 42.035316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763165, 36.982319, 42.068634>,  <39.988106, 37.308384, 42.124161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763165, 36.982319, 42.068634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514278, 0.213320, 0.830670,
		-0.647518, 0.538521, -0.539181,
		-0.562351, -0.815163, -0.138821,
		39.594460, 36.737770, 42.026989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277500, 37.427197, 42.029934>,  <39.988106, 37.308384, 42.124161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277500, 37.427197, 42.029934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336109, 37.068699, 42.197403>,  <39.371273, 36.853600, 42.297882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336109, 37.068699, 42.197403>,  <39.277500, 37.427197, 42.029934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336109, 37.068699, 42.197403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507135, 0.295329, 0.809688,
		-0.849321, -0.330956, -0.411245,
		0.146518, -0.896242, 0.418669,
		39.380066, 36.799828, 42.323002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599606, 37.054058, 42.221008>,  <39.277500, 37.427197, 42.029934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599606, 37.054058, 42.221008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912067, 36.966984, 42.455070>,  <39.099545, 36.914738, 42.595509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912067, 36.966984, 42.455070>,  <38.599606, 37.054058, 42.221008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912067, 36.966984, 42.455070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510546, 0.316747, 0.799384,
		-0.359362, -0.923192, 0.136290,
		0.781154, -0.217686, 0.585158,
		39.146416, 36.901680, 42.630619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306381, 36.917316, 42.967121>,  <38.599606, 37.054058, 42.221008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306381, 36.917316, 42.967121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689980, 37.029716, 42.981930>,  <38.920139, 37.097157, 42.990814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689980, 37.029716, 42.981930>,  <38.306381, 36.917316, 42.967121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689980, 37.029716, 42.981930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173187, 0.477551, 0.861366,
		0.224366, -0.832455, 0.506634,
		0.958992, 0.281003, 0.037024,
		38.977676, 37.114017, 42.993038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713531, 37.230858, 43.410389>,  <38.306381, 36.917316, 42.967121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713531, 37.230858, 43.410389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557480, 36.863743, 43.380829>,  <38.463848, 36.643475, 43.363091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557480, 36.863743, 43.380829>,  <38.713531, 37.230858, 43.410389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557480, 36.863743, 43.380829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585241, -0.185203, -0.789426,
		0.710839, -0.351229, 0.609381,
		-0.390129, -0.917789, -0.073904,
		38.440441, 36.588406, 43.358658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260380, 36.825104, 43.393703>,  <38.713531, 37.230858, 43.410389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260380, 36.825104, 43.393703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962685, 36.638184, 43.202812>,  <38.784069, 36.526031, 43.088280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962685, 36.638184, 43.202812>,  <39.260380, 36.825104, 43.393703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962685, 36.638184, 43.202812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617651, -0.209574, -0.758015,
		0.254206, -0.858901, 0.444599,
		-0.744236, -0.467299, -0.477226,
		38.739414, 36.497993, 43.059643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492615, 36.147743, 43.192654>,  <39.260380, 36.825104, 43.393703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492615, 36.147743, 43.192654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213531, 36.299019, 42.949284>,  <39.046082, 36.389786, 42.803261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213531, 36.299019, 42.949284>,  <39.492615, 36.147743, 43.192654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213531, 36.299019, 42.949284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615861, -0.117203, -0.779089,
		-0.365952, -0.918279, -0.151138,
		-0.697707, 0.378188, -0.608423,
		39.004219, 36.412476, 42.766758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277538, 35.693829, 42.690659>,  <39.492615, 36.147743, 43.192654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277538, 35.693829, 42.690659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233807, 36.060711, 42.537407>,  <39.207565, 36.280838, 42.445457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233807, 36.060711, 42.537407>,  <39.277538, 35.693829, 42.690659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233807, 36.060711, 42.537407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327928, -0.330576, -0.884976,
		-0.938355, -0.222395, -0.264633,
		-0.109333, 0.917202, -0.383127,
		39.201008, 36.335873, 42.422470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991989, 35.648071, 42.023495>,  <39.277538, 35.693829, 42.690659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991989, 35.648071, 42.023495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168633, 36.006699, 42.009911>,  <39.274616, 36.221874, 42.001762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168633, 36.006699, 42.009911>,  <38.991989, 35.648071, 42.023495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168633, 36.006699, 42.009911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272811, -0.170237, -0.946886,
		-0.854727, 0.408887, -0.319771,
		0.441606, 0.896566, -0.033957,
		39.301113, 36.275669, 41.999722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704193, 35.985664, 41.424934>,  <38.991989, 35.648071, 42.023495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704193, 35.985664, 41.424934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054047, 36.158085, 41.513668>,  <39.263958, 36.261536, 41.566910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054047, 36.158085, 41.513668>,  <38.704193, 35.985664, 41.424934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054047, 36.158085, 41.513668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207854, 0.079965, -0.974886,
		-0.437963, 0.898778, -0.019655,
		0.874634, 0.431049, 0.221836,
		39.316437, 36.287399, 41.580219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786724, 36.566715, 40.966629>,  <38.704193, 35.985664, 41.424934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786724, 36.566715, 40.966629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153145, 36.470264, 41.094822>,  <39.372997, 36.412395, 41.171738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153145, 36.470264, 41.094822>,  <38.786724, 36.566715, 40.966629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153145, 36.470264, 41.094822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318938, -0.046500, -0.946634,
		0.243162, 0.969379, 0.034308,
		0.916052, -0.241128, 0.320478,
		39.427959, 36.397926, 41.190964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381401, 37.053589, 40.805721>,  <38.786724, 36.566715, 40.966629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381401, 37.053589, 40.805721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563644, 36.699787, 40.845860>,  <39.672989, 36.487507, 40.869942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563644, 36.699787, 40.845860>,  <39.381401, 37.053589, 40.805721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563644, 36.699787, 40.845860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196210, -0.010173, -0.980509,
		0.868287, 0.466418, 0.168914,
		0.455609, -0.884506, 0.100349,
		39.700329, 36.434437, 40.875965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921055, 37.076294, 41.273052>,  <39.381401, 37.053589, 40.805721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921055, 37.076294, 41.273052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.187191, 36.777695, 41.269718>,  <40.346870, 36.598537, 41.267719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.187191, 36.777695, 41.269718>,  <39.921055, 37.076294, 41.273052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187191, 36.777695, 41.269718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236206, 0.221091, -0.946217,
		0.708189, 0.627586, 0.323427,
		0.665338, -0.746496, -0.008334,
		40.386791, 36.553745, 41.267220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511112, 37.472214, 40.799030>,  <39.921055, 37.076294, 41.273052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511112, 37.472214, 40.799030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487652, 37.074318, 40.765434>,  <40.473576, 36.835579, 40.745277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487652, 37.074318, 40.765434>,  <40.511112, 37.472214, 40.799030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487652, 37.074318, 40.765434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311744, 0.061676, -0.948162,
		0.948354, -0.081798, 0.306487,
		-0.058655, -0.994739, -0.083991,
		40.470055, 36.775898, 40.740238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145863, 37.189163, 40.541248>,  <40.511112, 37.472214, 40.799030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145863, 37.189163, 40.541248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828152, 36.963840, 40.450203>,  <40.637524, 36.828648, 40.395576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828152, 36.963840, 40.450203>,  <41.145863, 37.189163, 40.541248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828152, 36.963840, 40.450203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221004, 0.081089, -0.971896,
		0.565930, -0.822261, 0.060085,
		-0.794280, -0.563304, -0.227614,
		40.589867, 36.794849, 40.381920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372620, 36.597733, 40.009357>,  <41.145863, 37.189163, 40.541248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.372620, 36.597733, 40.009357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978363, 36.656300, 39.975731>,  <40.741810, 36.691441, 39.955555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978363, 36.656300, 39.975731>,  <41.372620, 36.597733, 40.009357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978363, 36.656300, 39.975731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068201, -0.110186, -0.991568,
		-0.154443, -0.983068, 0.098618,
		-0.985645, 0.146415, -0.084064,
		40.682671, 36.700226, 39.950512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171646, 36.107334, 39.626022>,  <41.372620, 36.597733, 40.009357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171646, 36.107334, 39.626022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.863380, 36.360302, 39.594738>,  <40.678421, 36.512081, 39.575966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.863380, 36.360302, 39.594738>,  <41.171646, 36.107334, 39.626022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863380, 36.360302, 39.594738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156250, -0.306524, -0.938951,
		-0.617785, -0.711398, 0.335043,
		-0.770667, 0.632420, -0.078210,
		40.632179, 36.550030, 39.571274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775337, 35.703587, 39.308472>,  <41.171646, 36.107334, 39.626022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775337, 35.703587, 39.308472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640873, 36.075520, 39.248589>,  <40.560192, 36.298679, 39.212658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640873, 36.075520, 39.248589>,  <40.775337, 35.703587, 39.308472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640873, 36.075520, 39.248589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165768, -0.214893, -0.962467,
		-0.927100, -0.298730, 0.226376,
		-0.336165, 0.929829, -0.149707,
		40.540024, 36.354469, 39.203678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189392, 35.586983, 38.915272>,  <40.775337, 35.703587, 39.308472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189392, 35.586983, 38.915272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329884, 35.957211, 38.858776>,  <40.414177, 36.179348, 38.824879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329884, 35.957211, 38.858776>,  <40.189392, 35.586983, 38.915272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329884, 35.957211, 38.858776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232531, -0.059897, -0.970743,
		-0.906955, 0.373798, 0.194187,
		0.351230, 0.925574, -0.141243,
		40.435253, 36.234882, 38.816402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700863, 35.945789, 38.518311>,  <40.189392, 35.586983, 38.915272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700863, 35.945789, 38.518311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.050949, 36.133327, 38.470665>,  <40.261002, 36.245850, 38.442078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.050949, 36.133327, 38.470665>,  <39.700863, 35.945789, 38.518311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050949, 36.133327, 38.470665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158485, 0.045275, -0.986323,
		-0.457040, 0.882120, 0.113930,
		0.875213, 0.468845, -0.119110,
		40.313515, 36.273979, 38.434933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657619, 36.284039, 37.915138>,  <39.700863, 35.945789, 38.518311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657619, 36.284039, 37.915138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047424, 36.314960, 37.999378>,  <40.281307, 36.333511, 38.049923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047424, 36.314960, 37.999378>,  <39.657619, 36.284039, 37.915138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047424, 36.314960, 37.999378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214878, -0.051916, -0.975260,
		-0.064455, 0.995655, -0.067202,
		0.974512, 0.077300, 0.210598,
		40.339779, 36.338150, 38.062557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853340, 36.724472, 37.462074>,  <39.657619, 36.284039, 37.915138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853340, 36.724472, 37.462074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.176170, 36.511513, 37.564190>,  <40.369869, 36.383736, 37.625458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.176170, 36.511513, 37.564190>,  <39.853340, 36.724472, 37.462074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176170, 36.511513, 37.564190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277070, -0.040309, -0.960004,
		0.521397, 0.845532, 0.114979,
		0.807080, -0.532400, 0.255289,
		40.418293, 36.351791, 37.640778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486027, 37.038506, 37.271523>,  <39.853340, 36.724472, 37.462074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486027, 37.038506, 37.271523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532078, 36.641712, 37.292381>,  <40.559708, 36.403637, 37.304897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532078, 36.641712, 37.292381>,  <40.486027, 37.038506, 37.271523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532078, 36.641712, 37.292381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371482, -0.005687, -0.928423,
		0.921274, 0.126260, 0.367848,
		0.115131, -0.991981, 0.052142,
		40.566616, 36.344116, 37.308025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128426, 37.018723, 36.969318>,  <40.486027, 37.038506, 37.271523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128426, 37.018723, 36.969318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023460, 36.635002, 37.011028>,  <40.960480, 36.404770, 37.036053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023460, 36.635002, 37.011028>,  <41.128426, 37.018723, 36.969318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023460, 36.635002, 37.011028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448367, -0.216902, -0.867134,
		0.854463, -0.180794, 0.487039,
		-0.262412, -0.959305, 0.104273,
		40.944736, 36.347210, 37.042309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.777328, 36.611206, 36.759510>,  <41.128426, 37.018723, 36.969318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.777328, 36.611206, 36.759510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437473, 36.402420, 36.729389>,  <41.233562, 36.277149, 36.711319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437473, 36.402420, 36.729389>,  <41.777328, 36.611206, 36.759510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437473, 36.402420, 36.729389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152073, -0.105775, -0.982693,
		0.504970, -0.846381, 0.169247,
		-0.849635, -0.521968, -0.075298,
		41.182583, 36.245831, 36.706799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943993, 35.957233, 36.382046>,  <41.777328, 36.611206, 36.759510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943993, 35.957233, 36.382046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.551224, 36.019901, 36.339569>,  <41.315563, 36.057503, 36.314083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.551224, 36.019901, 36.339569>,  <41.943993, 35.957233, 36.382046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.551224, 36.019901, 36.339569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097078, -0.064716, -0.993171,
		-0.162470, -0.985529, 0.048337,
		-0.981926, 0.156668, -0.106188,
		41.256645, 36.066902, 36.307713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732391, 35.559307, 35.831398>,  <41.943993, 35.957233, 36.382046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.732391, 35.559307, 35.831398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410778, 35.796501, 35.848846>,  <41.217812, 35.938816, 35.859314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410778, 35.796501, 35.848846>,  <41.732391, 35.559307, 35.831398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410778, 35.796501, 35.848846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143482, -0.122312, -0.982066,
		-0.577011, -0.795873, 0.183425,
		-0.804034, 0.592981, 0.043618,
		41.169567, 35.974396, 35.861931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277439, 35.150818, 35.446892>,  <41.732391, 35.559307, 35.831398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.277439, 35.150818, 35.446892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118637, 35.517933, 35.444206>,  <41.023354, 35.738201, 35.442596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118637, 35.517933, 35.444206>,  <41.277439, 35.150818, 35.446892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118637, 35.517933, 35.444206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255601, -0.117584, -0.959605,
		-0.881505, -0.379256, 0.281270,
		-0.397009, 0.917790, -0.006713,
		40.999535, 35.793270, 35.442192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.840527, 34.846657, 35.669746>,  <41.277439, 35.150818, 35.446892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.840527, 34.846657, 35.669746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789989, 34.639103, 35.331566>,  <41.759666, 34.514568, 35.128658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789989, 34.639103, 35.331566>,  <41.840527, 34.846657, 35.669746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789989, 34.639103, 35.331566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806448, 0.442574, -0.392135,
		0.577650, -0.731358, 0.362541,
		-0.126340, -0.518887, -0.845455,
		41.752087, 34.483437, 35.077930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.486710, 34.518360, 35.527058>,  <41.840527, 34.846657, 35.669746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.486710, 34.518360, 35.527058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289669, 34.620506, 35.194279>,  <42.171444, 34.681793, 34.994614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289669, 34.620506, 35.194279>,  <42.486710, 34.518360, 35.527058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.289669, 34.620506, 35.194279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846456, 0.362629, -0.389888,
		0.202124, -0.896264, -0.394787,
		-0.492604, 0.255364, -0.831944,
		42.141888, 34.697117, 34.944695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779152, 34.189857, 34.926559>,  <42.486710, 34.518360, 35.527058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779152, 34.189857, 34.926559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614819, 34.550594, 34.873058>,  <42.516216, 34.767036, 34.840958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614819, 34.550594, 34.873058>,  <42.779152, 34.189857, 34.926559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.614819, 34.550594, 34.873058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898814, 0.376057, -0.225201,
		-0.152797, -0.212741, -0.965088,
		-0.410837, 0.901844, -0.133754,
		42.491566, 34.821148, 34.832932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.112461, 34.425007, 34.350155>,  <42.779152, 34.189857, 34.926559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.112461, 34.425007, 34.350155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.971539, 34.729748, 34.567581>,  <42.886986, 34.912590, 34.698036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.971539, 34.729748, 34.567581>,  <43.112461, 34.425007, 34.350155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.971539, 34.729748, 34.567581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882575, 0.463683, -0.077847,
		-0.311350, 0.452312, -0.835748,
		-0.352311, 0.761848, 0.543566,
		42.865845, 34.958302, 34.730652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.079956, 35.125389, 34.111290>,  <43.112461, 34.425007, 34.350155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.079956, 35.125389, 34.111290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.147202, 35.185787, 34.500942>,  <43.187550, 35.222027, 34.734734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.147202, 35.185787, 34.500942>,  <43.079956, 35.125389, 34.111290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.147202, 35.185787, 34.500942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763530, 0.605099, -0.225561,
		-0.623506, 0.781701, -0.013563,
		0.168114, 0.150994, 0.974135,
		43.197636, 35.231087, 34.793182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.198624, 35.860203, 34.236660>,  <43.079956, 35.125389, 34.111290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.198624, 35.860203, 34.236660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.422691, 35.656723, 34.498173>,  <43.557133, 35.534634, 34.655083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.422691, 35.656723, 34.498173>,  <43.198624, 35.860203, 34.236660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.422691, 35.656723, 34.498173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778296, 0.593459, -0.205089,
		-0.283665, 0.623723, 0.728357,
		0.560169, -0.508701, 0.653785,
		43.590740, 35.504112, 34.694309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.432137, 36.311993, 34.842319>,  <43.198624, 35.860203, 34.236660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.432137, 36.311993, 34.842319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.727318, 36.054863, 34.760155>,  <43.904427, 35.900585, 34.710854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.727318, 36.054863, 34.760155>,  <43.432137, 36.311993, 34.842319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.727318, 36.054863, 34.760155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616371, 0.765966, -0.182709,
		0.274792, 0.008220, 0.961469,
		0.737955, -0.642828, -0.205415,
		43.948704, 35.862015, 34.698532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.718807, 37.006023, 34.515991>,  <43.432137, 36.311993, 34.842319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.718807, 37.006023, 34.515991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.038731, 37.076443, 34.286449>,  <44.230686, 37.118694, 34.148724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.038731, 37.076443, 34.286449>,  <43.718807, 37.006023, 34.515991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.038731, 37.076443, 34.286449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582807, -0.456550, 0.672234,
		-0.143647, -0.872106, -0.467756,
		0.799813, 0.176047, -0.573852,
		44.278675, 37.129257, 34.114292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.218872, 36.462826, 34.697765>,  <43.718807, 37.006023, 34.515991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.218872, 36.462826, 34.697765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.422535, 36.738232, 34.491196>,  <44.544735, 36.903477, 34.367252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.422535, 36.738232, 34.491196>,  <44.218872, 36.462826, 34.697765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.422535, 36.738232, 34.491196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851815, -0.317264, 0.416839,
		0.123157, -0.652139, -0.748029,
		0.509159, 0.688519, -0.516429,
		44.575283, 36.944786, 34.336266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.656410, 36.273716, 34.162098>,  <44.218872, 36.462826, 34.697765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.656410, 36.273716, 34.162098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.743732, 36.590145, 34.390678>,  <44.796127, 36.780003, 34.527824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.743732, 36.590145, 34.390678>,  <44.656410, 36.273716, 34.162098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.743732, 36.590145, 34.390678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532675, -0.587238, 0.609434,
		0.817679, 0.171352, -0.549581,
		0.218307, 0.791069, 0.571447,
		44.809223, 36.827465, 34.562111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.302677, 36.139217, 34.357761>,  <44.656410, 36.273716, 34.162098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.302677, 36.139217, 34.357761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.201908, 36.440662, 34.600613>,  <45.141449, 36.621529, 34.746323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.201908, 36.440662, 34.600613>,  <45.302677, 36.139217, 34.357761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.201908, 36.440662, 34.600613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771582, -0.222253, 0.596041,
		0.584121, 0.618601, -0.525487,
		-0.251920, 0.753616, 0.607124,
		45.126331, 36.666748, 34.782749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.864925, 36.272667, 34.038807>,  <45.302677, 36.139217, 34.357761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.864925, 36.272667, 34.038807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.930454, 36.665016, 33.996769>,  <45.969772, 36.900425, 33.971546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.930454, 36.665016, 33.996769>,  <45.864925, 36.272667, 34.038807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.930454, 36.665016, 33.996769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982984, -0.153341, 0.101142,
		0.083093, -0.119876, -0.989305,
		0.163825, 0.980875, -0.105094,
		45.979603, 36.959278, 33.965240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.435738, 35.863529, 33.588425>,  <45.864925, 36.272667, 34.038807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.435738, 35.863529, 33.588425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.596413, 35.924366, 33.227200>,  <45.692818, 35.960869, 33.010464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.596413, 35.924366, 33.227200>,  <45.435738, 35.863529, 33.588425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.596413, 35.924366, 33.227200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874890, -0.355099, 0.329352,
		-0.270582, -0.922373, -0.275706,
		0.401688, 0.152096, -0.903058,
		45.716919, 35.969994, 32.956284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.774891, 35.148308, 33.367859>,  <45.435738, 35.863529, 33.588425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.774891, 35.148308, 33.367859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.892715, 35.453686, 33.137943>,  <45.963409, 35.636913, 32.999992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.892715, 35.453686, 33.137943>,  <45.774891, 35.148308, 33.367859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.892715, 35.453686, 33.137943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941879, -0.333613, 0.039567,
		-0.161549, -0.553035, -0.817345,
		0.294559, 0.763449, -0.574787,
		45.981083, 35.682720, 32.965508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.105518, 34.865707, 32.854828>,  <45.774891, 35.148308, 33.367859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.105518, 34.865707, 32.854828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.234463, 35.238636, 32.920380>,  <46.311829, 35.462395, 32.959709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.234463, 35.238636, 32.920380>,  <46.105518, 34.865707, 32.854828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.234463, 35.238636, 32.920380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939965, -0.335752, 0.061128,
		0.112014, 0.134334, -0.984585,
		0.322365, 0.932322, 0.163878,
		46.331173, 35.518333, 32.969543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.741257, 35.127609, 32.565014>,  <46.105518, 34.865707, 32.854828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.741257, 35.127609, 32.565014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.956692, 35.450310, 32.662231>,  <47.085953, 35.643932, 32.720562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.956692, 35.450310, 32.662231>,  <46.741257, 35.127609, 32.565014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.956692, 35.450310, 32.662231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459943, 0.039815, 0.887055,
		0.705960, -0.589542, 0.392506,
		0.538584, 0.806756, 0.243048,
		47.118267, 35.692337, 32.735146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.939430, 35.060387, 33.268471>,  <46.741257, 35.127609, 32.565014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.939430, 35.060387, 33.268471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.974724, 35.453758, 33.205132>,  <46.995899, 35.689781, 33.167126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.974724, 35.453758, 33.205132>,  <46.939430, 35.060387, 33.268471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.974724, 35.453758, 33.205132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029956, 0.156280, 0.987258,
		0.995649, -0.091854, -0.015670,
		0.088235, 0.983432, -0.158352,
		47.001194, 35.748787, 33.157627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.416550, 35.301991, 33.711575>,  <46.939430, 35.060387, 33.268471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.416550, 35.301991, 33.711575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.156437, 35.589256, 33.612473>,  <47.000370, 35.761616, 33.553009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.156437, 35.589256, 33.612473>,  <47.416550, 35.301991, 33.711575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.156437, 35.589256, 33.612473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175630, 0.175180, 0.968745,
		0.739116, 0.673468, 0.012215,
		-0.650278, 0.718160, -0.247759,
		46.961353, 35.804703, 33.538143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.032154, 35.588551, 34.384331>,  <47.416550, 35.301991, 33.711575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.032154, 35.588551, 34.384331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.050640, 35.621162, 34.782570>,  <47.061733, 35.640732, 35.021515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.050640, 35.621162, 34.782570>,  <47.032154, 35.588551, 34.384331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.050640, 35.621162, 34.782570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537070, -0.842387, 0.044052,
		0.842270, 0.532670, -0.082723,
		0.046219, 0.081532, 0.995598,
		47.064507, 35.645622, 35.081249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.750664, 35.487640, 34.556732>,  <47.032154, 35.588551, 34.384331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.750664, 35.487640, 34.556732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.513813, 35.402451, 34.867611>,  <47.371704, 35.351337, 35.054138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.513813, 35.402451, 34.867611>,  <47.750664, 35.487640, 34.556732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.513813, 35.402451, 34.867611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538550, -0.822023, 0.185044,
		0.599461, 0.528127, 0.601439,
		-0.592124, -0.212978, 0.777194,
		47.336178, 35.338558, 35.100769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.218502, 35.205742, 35.075508>,  <47.750664, 35.487640, 34.556732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.218502, 35.205742, 35.075508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.850639, 35.079521, 35.169022>,  <47.629921, 35.003788, 35.225132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.850639, 35.079521, 35.169022>,  <48.218502, 35.205742, 35.075508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.850639, 35.079521, 35.169022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376196, -0.878711, 0.293843,
		0.112709, 0.358185, 0.926823,
		-0.919659, -0.315548, 0.233787,
		47.574741, 34.984856, 35.239159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.946320, 30.809311, 27.717911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.573948, 30.794460, 27.572584>,  <39.350525, 30.785549, 27.485388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.573948, 30.794460, 27.572584>,  <39.946320, 30.809311, 27.717911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573948, 30.794460, 27.572584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362500, 0.214818, 0.906888,
		0.044377, 0.975948, -0.213438,
		-0.930926, -0.037126, -0.363315,
		39.294670, 30.783323, 27.463591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637356, 31.427118, 27.856382>,  <39.946320, 30.809311, 27.717911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637356, 31.427118, 27.856382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.330067, 31.173565, 27.820545>,  <39.145695, 31.021433, 27.799044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.330067, 31.173565, 27.820545>,  <39.637356, 31.427118, 27.856382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330067, 31.173565, 27.820545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399166, 0.364874, 0.841150,
		-0.500502, 0.681951, -0.533329,
		-0.768221, -0.633884, -0.089592,
		39.099602, 30.983400, 27.793667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127750, 31.832642, 27.955542>,  <39.637356, 31.427118, 27.856382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127750, 31.832642, 27.955542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.981995, 31.466019, 28.021439>,  <38.894539, 31.246044, 28.060976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.981995, 31.466019, 28.021439>,  <39.127750, 31.832642, 27.955542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981995, 31.466019, 28.021439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408352, 0.316254, 0.856289,
		-0.836939, 0.244753, -0.489519,
		-0.364392, -0.916558, 0.164740,
		38.872677, 31.191051, 28.070860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354504, 31.902174, 28.155163>,  <39.127750, 31.832642, 27.955542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354504, 31.902174, 28.155163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.466209, 31.536999, 28.274197>,  <38.533234, 31.317894, 28.345617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.466209, 31.536999, 28.274197>,  <38.354504, 31.902174, 28.155163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466209, 31.536999, 28.274197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537307, 0.108280, 0.836407,
		-0.795810, -0.393473, -0.460289,
		0.279264, -0.912937, 0.297586,
		38.549988, 31.263117, 28.363472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728313, 31.707943, 28.275696>,  <38.354504, 31.902174, 28.155163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728313, 31.707943, 28.275696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.033779, 31.538183, 28.470304>,  <38.217060, 31.436327, 28.587069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.033779, 31.538183, 28.470304>,  <37.728313, 31.707943, 28.275696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033779, 31.538183, 28.470304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499998, 0.087957, 0.861548,
		-0.408432, -0.901194, -0.145028,
		0.763666, -0.424397, 0.486520,
		38.262878, 31.410864, 28.616261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409065, 31.272102, 28.745111>,  <37.728313, 31.707943, 28.275696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409065, 31.272102, 28.745111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.770985, 31.301889, 28.912823>,  <37.988136, 31.319761, 29.013449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.770985, 31.301889, 28.912823>,  <37.409065, 31.272102, 28.745111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770985, 31.301889, 28.912823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424371, 0.076035, 0.902290,
		0.035313, -0.994320, 0.100399,
		0.904799, 0.074469, 0.419276,
		38.042423, 31.324230, 29.038605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427162, 30.827494, 29.376072>,  <37.409065, 31.272102, 28.745111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427162, 30.827494, 29.376072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.723618, 31.089087, 29.436754>,  <37.901493, 31.246042, 29.473164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.723618, 31.089087, 29.436754>,  <37.427162, 30.827494, 29.376072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723618, 31.089087, 29.436754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298988, 0.119207, 0.946782,
		0.601095, -0.747058, 0.283882,
		0.741141, 0.653983, 0.151707,
		37.945961, 31.285282, 29.482265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640797, 30.737877, 30.143528>,  <37.427162, 30.827494, 29.376072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640797, 30.737877, 30.143528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.789970, 31.087654, 30.019421>,  <37.879475, 31.297520, 29.944956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.789970, 31.087654, 30.019421>,  <37.640797, 30.737877, 30.143528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789970, 31.087654, 30.019421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059078, 0.356094, 0.932581,
		0.925974, -0.329464, 0.184461,
		0.372937, 0.874443, -0.310270,
		37.901852, 31.349987, 29.926340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143452, 30.844273, 30.659224>,  <37.640797, 30.737877, 30.143528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143452, 30.844273, 30.659224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.088726, 31.199903, 30.484491>,  <38.055889, 31.413282, 30.379652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.088726, 31.199903, 30.484491>,  <38.143452, 30.844273, 30.659224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088726, 31.199903, 30.484491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105857, 0.451574, 0.885932,
		0.984924, 0.074968, -0.155898,
		-0.136816, 0.889079, -0.436830,
		38.047680, 31.466627, 30.353443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685410, 31.363823, 30.984247>,  <38.143452, 30.844273, 30.659224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685410, 31.363823, 30.984247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.382107, 31.581594, 30.840784>,  <38.200123, 31.712257, 30.754705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.382107, 31.581594, 30.840784>,  <38.685410, 31.363823, 30.984247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382107, 31.581594, 30.840784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006544, 0.556460, 0.830849,
		0.651918, 0.627653, -0.425505,
		-0.758261, 0.544430, -0.358659,
		38.154629, 31.744923, 30.733187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810482, 32.140663, 30.967232>,  <38.685410, 31.363823, 30.984247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810482, 32.140663, 30.967232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.428963, 32.030716, 31.015768>,  <38.200050, 31.964748, 31.044889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.428963, 32.030716, 31.015768>,  <38.810482, 32.140663, 30.967232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428963, 32.030716, 31.015768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001866, 0.409271, 0.912411,
		-0.300451, 0.870027, -0.390873,
		-0.953796, -0.274864, 0.121342,
		38.142822, 31.948257, 31.052170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594849, 32.696613, 31.390839>,  <38.810482, 32.140663, 30.967232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594849, 32.696613, 31.390839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.312870, 32.415112, 31.426111>,  <38.143681, 32.246212, 31.447275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.312870, 32.415112, 31.426111>,  <38.594849, 32.696613, 31.390839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312870, 32.415112, 31.426111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213106, 0.328749, 0.920060,
		-0.676486, 0.629803, -0.381726,
		-0.704948, -0.703756, 0.088180,
		38.101387, 32.203983, 31.452564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003716, 33.046539, 31.660032>,  <38.594849, 32.696613, 31.390839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003716, 33.046539, 31.660032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.953331, 32.659264, 31.746519>,  <37.923100, 32.426899, 31.798412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.953331, 32.659264, 31.746519>,  <38.003716, 33.046539, 31.660032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953331, 32.659264, 31.746519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226832, 0.240290, 0.943826,
		-0.965754, 0.069838, -0.249883,
		-0.125959, -0.968186, 0.216219,
		37.915543, 32.368809, 31.811384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429527, 33.001881, 32.170849>,  <38.003716, 33.046539, 31.660032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429527, 33.001881, 32.170849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.568855, 32.629017, 32.210350>,  <37.652454, 32.405300, 32.234051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.568855, 32.629017, 32.210350>,  <37.429527, 33.001881, 32.170849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568855, 32.629017, 32.210350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200327, 0.028888, 0.979303,
		-0.915719, -0.360895, -0.176674,
		0.348322, -0.932159, 0.098750,
		37.673351, 32.349369, 32.239975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872723, 32.662258, 32.586861>,  <37.429527, 33.001881, 32.170849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872723, 32.662258, 32.586861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.235432, 32.495949, 32.614868>,  <37.453056, 32.396164, 32.631672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.235432, 32.495949, 32.614868>,  <36.872723, 32.662258, 32.586861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235432, 32.495949, 32.614868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147548, -0.157343, 0.976459,
		-0.394967, -0.895755, -0.204020,
		0.906770, -0.415772, 0.070022,
		37.507462, 32.371216, 32.635876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754826, 32.117710, 33.044685>,  <36.872723, 32.662258, 32.586861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754826, 32.117710, 33.044685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.152496, 32.160339, 33.051117>,  <37.391098, 32.185917, 33.054977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.152496, 32.160339, 33.051117>,  <36.754826, 32.117710, 33.044685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152496, 32.160339, 33.051117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008990, -0.066699, 0.997733,
		0.107409, -0.992065, -0.065353,
		0.994175, 0.106578, 0.016083,
		37.450748, 32.192314, 33.055943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066750, 31.488768, 33.435268>,  <36.754826, 32.117710, 33.044685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066750, 31.488768, 33.435268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.343769, 31.776237, 33.460190>,  <37.509979, 31.948719, 33.475143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.343769, 31.776237, 33.460190>,  <37.066750, 31.488768, 33.435268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343769, 31.776237, 33.460190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158757, -0.236094, 0.958674,
		0.703685, -0.654037, -0.277601,
		0.692549, 0.718676, 0.062302,
		37.551533, 31.991840, 33.478882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653496, 31.229982, 33.850449>,  <37.066750, 31.488768, 33.435268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653496, 31.229982, 33.850449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.714291, 31.625263, 33.858059>,  <37.750767, 31.862431, 33.862625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.714291, 31.625263, 33.858059>,  <37.653496, 31.229982, 33.850449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714291, 31.625263, 33.858059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411967, -0.080831, 0.907607,
		0.898434, -0.130105, -0.419390,
		0.151984, 0.988200, 0.019022,
		37.759888, 31.921722, 33.863766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185917, 31.283669, 34.286442>,  <37.653496, 31.229982, 33.850449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185917, 31.283669, 34.286442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.047825, 31.658728, 34.302582>,  <37.964970, 31.883764, 34.312263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.047825, 31.658728, 34.302582>,  <38.185917, 31.283669, 34.286442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047825, 31.658728, 34.302582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399444, 0.107898, 0.910386,
		0.849269, 0.330412, -0.411788,
		-0.345233, 0.937649, 0.040346,
		37.944256, 31.940022, 34.314686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725761, 31.672739, 34.654922>,  <38.185917, 31.283669, 34.286442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725761, 31.672739, 34.654922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.373276, 31.861662, 34.662807>,  <38.161785, 31.975016, 34.667538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.373276, 31.861662, 34.662807>,  <38.725761, 31.672739, 34.654922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373276, 31.861662, 34.662807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093686, 0.133619, 0.986595,
		0.463339, 0.871249, -0.161995,
		-0.881215, 0.472305, 0.019713,
		38.108910, 32.003353, 34.668720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841648, 32.330135, 34.875443>,  <38.725761, 31.672739, 34.654922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841648, 32.330135, 34.875443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.453480, 32.296566, 34.965984>,  <38.220577, 32.276424, 35.020309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.453480, 32.296566, 34.965984>,  <38.841648, 32.330135, 34.875443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453480, 32.296566, 34.965984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189601, 0.315480, 0.929798,
		-0.149442, 0.945214, -0.290237,
		-0.970422, -0.083922, 0.226359,
		38.162354, 32.271389, 35.033894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523335, 33.013565, 35.167061>,  <38.841648, 32.330135, 34.875443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523335, 33.013565, 35.167061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.300686, 32.702427, 35.283772>,  <38.167095, 32.515743, 35.353798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.300686, 32.702427, 35.283772>,  <38.523335, 33.013565, 35.167061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300686, 32.702427, 35.283772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174761, 0.233717, 0.956470,
		-0.812177, 0.583383, 0.005845,
		-0.556622, -0.777844, 0.291772,
		38.133698, 32.469074, 35.371304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024605, 33.384060, 34.743290>,  <38.523335, 33.013565, 35.167061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024605, 33.384060, 34.743290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.354076, 33.365181, 34.969326>,  <39.551758, 33.353855, 35.104946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.354076, 33.365181, 34.969326>,  <39.024605, 33.384060, 34.743290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354076, 33.365181, 34.969326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453814, -0.542655, -0.706808,
		0.340009, 0.838628, -0.425554,
		0.823679, -0.047199, 0.565089,
		39.601181, 33.351021, 35.138851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512138, 33.608067, 34.393959>,  <39.024605, 33.384060, 34.743290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512138, 33.608067, 34.393959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.760529, 33.412197, 34.638779>,  <39.909565, 33.294674, 34.785671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.760529, 33.412197, 34.638779>,  <39.512138, 33.608067, 34.393959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760529, 33.412197, 34.638779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512602, -0.337018, -0.789720,
		0.592978, 0.804137, 0.041728,
		0.620980, -0.489677, 0.612046,
		39.946823, 33.265293, 34.822392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240463, 33.733749, 34.183819>,  <39.512138, 33.608067, 34.393959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240463, 33.733749, 34.183819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.243065, 33.387909, 34.384785>,  <40.244625, 33.180405, 34.505363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.243065, 33.387909, 34.384785>,  <40.240463, 33.733749, 34.183819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243065, 33.387909, 34.384785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464136, -0.442421, -0.767360,
		0.885740, 0.238177, 0.398417,
		0.006499, -0.864601, 0.502417,
		40.245014, 33.128529, 34.535511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931824, 33.472569, 34.119198>,  <40.240463, 33.733749, 34.183819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931824, 33.472569, 34.119198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.694630, 33.160240, 34.197884>,  <40.552315, 32.972843, 34.245094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.694630, 33.160240, 34.197884>,  <40.931824, 33.472569, 34.119198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694630, 33.160240, 34.197884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374757, -0.483841, -0.790857,
		0.712693, -0.395244, 0.579526,
		-0.592980, -0.780820, 0.196710,
		40.516735, 32.925995, 34.256897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469009, 32.899651, 33.974384>,  <40.931824, 33.472569, 34.119198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469009, 32.899651, 33.974384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.108341, 32.727100, 33.986385>,  <40.891941, 32.623569, 33.993584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.108341, 32.727100, 33.986385>,  <41.469009, 32.899651, 33.974384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.108341, 32.727100, 33.986385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275907, -0.627342, -0.728229,
		0.332963, -0.648346, 0.684677,
		-0.901671, -0.431380, 0.029999,
		40.837841, 32.597687, 33.995384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572140, 32.233833, 33.768505>,  <41.469009, 32.899651, 33.974384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.572140, 32.233833, 33.768505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.172722, 32.230347, 33.747219>,  <40.933071, 32.228252, 33.734447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.172722, 32.230347, 33.747219>,  <41.572140, 32.233833, 33.768505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.172722, 32.230347, 33.747219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047918, -0.596104, -0.801476,
		-0.024733, -0.802860, 0.595654,
		-0.998545, -0.008719, -0.053215,
		40.873158, 32.227730, 33.731255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348835, 31.552448, 33.678726>,  <41.572140, 32.233833, 33.768505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348835, 31.552448, 33.678726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.071003, 31.792227, 33.519619>,  <40.904305, 31.936094, 33.424156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.071003, 31.792227, 33.519619>,  <41.348835, 31.552448, 33.678726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071003, 31.792227, 33.519619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178032, -0.392483, -0.902365,
		-0.697038, -0.697580, 0.165890,
		-0.694581, 0.599449, -0.397767,
		40.862629, 31.972061, 33.400288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095196, 31.157883, 33.176163>,  <41.348835, 31.552448, 33.678726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095196, 31.157883, 33.176163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.926872, 31.490232, 33.030521>,  <40.825878, 31.689642, 32.943138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.926872, 31.490232, 33.030521>,  <41.095196, 31.157883, 33.176163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926872, 31.490232, 33.030521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309383, -0.245856, -0.918606,
		-0.852763, -0.499200, -0.153602,
		-0.420805, 0.830875, -0.364101,
		40.800632, 31.739494, 32.921291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517441, 31.101059, 32.597435>,  <41.095196, 31.157883, 33.176163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517441, 31.101059, 32.597435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.679722, 31.461954, 32.538963>,  <40.777092, 31.678492, 32.503880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.679722, 31.461954, 32.538963>,  <40.517441, 31.101059, 32.597435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679722, 31.461954, 32.538963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137021, -0.218163, -0.966245,
		-0.903674, 0.371983, -0.212136,
		0.405707, 0.902238, -0.146179,
		40.801434, 31.732626, 32.495110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143566, 31.426817, 32.117886>,  <40.517441, 31.101059, 32.597435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143566, 31.426817, 32.117886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.497601, 31.612970, 32.115570>,  <40.710022, 31.724663, 32.114182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.497601, 31.612970, 32.115570>,  <40.143566, 31.426817, 32.117886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497601, 31.612970, 32.115570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043550, -0.095203, -0.994505,
		-0.463379, 0.879974, -0.104531,
		0.885090, 0.465384, -0.005792,
		40.763126, 31.752586, 32.113831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147316, 31.920416, 31.598669>,  <40.143566, 31.426817, 32.117886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147316, 31.920416, 31.598669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.533554, 31.843822, 31.669058>,  <40.765297, 31.797867, 31.711292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.533554, 31.843822, 31.669058>,  <40.147316, 31.920416, 31.598669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533554, 31.843822, 31.669058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142803, -0.175125, -0.974135,
		0.217346, 0.965747, -0.141755,
		0.965592, -0.191481, 0.175974,
		40.823231, 31.786379, 31.721849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550224, 32.314285, 31.113531>,  <40.147316, 31.920416, 31.598669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550224, 32.314285, 31.113531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.845837, 32.065868, 31.217941>,  <41.023205, 31.916819, 31.280586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.845837, 32.065868, 31.217941>,  <40.550224, 32.314285, 31.113531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845837, 32.065868, 31.217941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276493, -0.073702, -0.958186,
		0.614314, 0.780303, 0.117246,
		0.739034, -0.621044, 0.261024,
		41.067547, 31.879555, 31.296247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139194, 32.574142, 30.744577>,  <40.550224, 32.314285, 31.113531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139194, 32.574142, 30.744577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.229523, 32.199364, 30.851269>,  <41.283718, 31.974497, 30.915283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.229523, 32.199364, 30.851269>,  <41.139194, 32.574142, 30.744577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229523, 32.199364, 30.851269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490659, -0.127142, -0.862026,
		0.841581, 0.325535, 0.431009,
		0.225820, -0.936943, 0.266727,
		41.297268, 31.918282, 30.931286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.867340, 32.502705, 30.621935>,  <41.139194, 32.574142, 30.744577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.867340, 32.502705, 30.621935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.722206, 32.130013, 30.615812>,  <41.635124, 31.906399, 30.612139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.722206, 32.130013, 30.615812>,  <41.867340, 32.502705, 30.621935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.722206, 32.130013, 30.615812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403231, -0.142175, -0.903986,
		0.840092, -0.334172, 0.427287,
		-0.362836, -0.931727, -0.015309,
		41.613354, 31.850494, 30.611219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303162, 32.143108, 30.247341>,  <41.867340, 32.502705, 30.621935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303162, 32.143108, 30.247341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.021141, 31.859825, 30.261997>,  <41.851929, 31.689854, 30.270792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.021141, 31.859825, 30.261997>,  <42.303162, 32.143108, 30.247341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.021141, 31.859825, 30.261997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309907, -0.354174, -0.882337,
		0.637858, -0.610736, 0.469189,
		-0.705049, -0.708211, 0.036642,
		41.809628, 31.647362, 30.272989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.607826, 31.520544, 29.959784>,  <42.303162, 32.143108, 30.247341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.607826, 31.520544, 29.959784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.210972, 31.503635, 29.912661>,  <41.972858, 31.493490, 29.884386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.210972, 31.503635, 29.912661>,  <42.607826, 31.520544, 29.959784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.210972, 31.503635, 29.912661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125129, -0.313502, -0.941307,
		0.002859, -0.948646, 0.316326,
		-0.992136, -0.042272, -0.117807,
		41.913330, 31.490953, 29.877319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538895, 31.068752, 29.435089>,  <42.607826, 31.520544, 29.959784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.538895, 31.068752, 29.435089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.163773, 31.202526, 29.472353>,  <41.938702, 31.282789, 29.494711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.163773, 31.202526, 29.472353>,  <42.538895, 31.068752, 29.435089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.163773, 31.202526, 29.472353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186372, -0.258580, -0.947841,
		-0.292906, -0.906248, 0.304827,
		-0.937801, 0.334440, 0.093159,
		41.882431, 31.302856, 29.500301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193829, 30.579603, 29.232679>,  <42.538895, 31.068752, 29.435089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.193829, 30.579603, 29.232679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.981045, 30.911448, 29.164835>,  <41.853374, 31.110554, 29.124128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.981045, 30.911448, 29.164835>,  <42.193829, 30.579603, 29.232679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.981045, 30.911448, 29.164835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123990, -0.274458, -0.953572,
		-0.837645, -0.486229, 0.248863,
		-0.531957, 0.829611, -0.169610,
		41.821457, 31.160330, 29.113953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.592953, 30.382978, 28.798235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.576782, 30.782141, 28.778032>,  <41.567081, 31.021639, 28.765911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.576782, 30.782141, 28.778032>,  <41.592953, 30.382978, 28.798235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576782, 30.782141, 28.778032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118818, -0.054988, -0.991392,
		-0.992093, -0.034075, 0.120792,
		-0.040424, 0.997906, -0.050504,
		41.564655, 31.081512, 28.762880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931961, 30.581615, 28.532764>,  <41.592953, 30.382978, 28.798235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931961, 30.581615, 28.532764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.173897, 30.891703, 28.459881>,  <41.319057, 31.077755, 28.416151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.173897, 30.891703, 28.459881>,  <40.931961, 30.581615, 28.532764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173897, 30.891703, 28.459881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293033, 0.003905, -0.956094,
		-0.740472, 0.631679, 0.229527,
		0.604841, 0.775220, -0.182211,
		41.355350, 31.124269, 28.405218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503971, 31.155710, 28.148432>,  <40.931961, 30.581615, 28.532764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503971, 31.155710, 28.148432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.891903, 31.208120, 28.066195>,  <41.124660, 31.239567, 28.016853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.891903, 31.208120, 28.066195>,  <40.503971, 31.155710, 28.148432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.891903, 31.208120, 28.066195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204926, -0.018682, -0.978599,
		-0.132062, 0.991203, 0.008732,
		0.969827, 0.131025, -0.205591,
		41.182850, 31.247427, 28.004517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522041, 31.493673, 27.561983>,  <40.503971, 31.155710, 28.148432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522041, 31.493673, 27.561983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.904251, 31.377556, 27.541212>,  <41.133579, 31.307886, 27.528749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.904251, 31.377556, 27.541212>,  <40.522041, 31.493673, 27.561983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904251, 31.377556, 27.541212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038327, 0.052346, -0.997893,
		0.292401, 0.955505, 0.038892,
		0.955527, -0.290294, -0.051928,
		41.190910, 31.290468, 27.525633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695850, 31.895519, 26.975262>,  <40.522041, 31.493673, 27.561983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695850, 31.895519, 26.975262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.995686, 31.632904, 27.008917>,  <41.175587, 31.475334, 27.029110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.995686, 31.632904, 27.008917>,  <40.695850, 31.895519, 26.975262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.995686, 31.632904, 27.008917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152551, 0.047663, -0.987146,
		0.644091, 0.752784, 0.135883,
		0.749584, -0.656540, 0.084139,
		41.220562, 31.435942, 27.034159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313015, 32.228779, 26.783489>,  <40.695850, 31.895519, 26.975262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313015, 32.228779, 26.783489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.377811, 31.836403, 26.740564>,  <41.416687, 31.600977, 26.714809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.377811, 31.836403, 26.740564>,  <41.313015, 32.228779, 26.783489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377811, 31.836403, 26.740564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238110, 0.144391, -0.960445,
		0.957634, 0.130030, 0.256961,
		0.161989, -0.980940, -0.107312,
		41.426407, 31.542120, 26.708370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.899036, 32.214851, 26.247965>,  <41.313015, 32.228779, 26.783489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.899036, 32.214851, 26.247965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.764439, 31.838493, 26.263416>,  <41.683681, 31.612679, 26.272686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.764439, 31.838493, 26.263416>,  <41.899036, 32.214851, 26.247965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.764439, 31.838493, 26.263416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059440, -0.062160, -0.996295,
		0.939809, -0.332948, 0.076843,
		-0.336491, -0.940894, 0.038628,
		41.663490, 31.556225, 26.275005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.381920, 31.747051, 25.904961>,  <41.899036, 32.214851, 26.247965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.381920, 31.747051, 25.904961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.036026, 31.546165, 25.903996>,  <41.828487, 31.425634, 25.903416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.036026, 31.546165, 25.903996>,  <42.381920, 31.747051, 25.904961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.036026, 31.546165, 25.903996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238762, -0.406872, -0.881730,
		0.441837, -0.763042, 0.471748,
		-0.864738, -0.502217, -0.002414,
		41.776604, 31.395500, 25.903271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.590786, 30.975765, 25.755938>,  <42.381920, 31.747051, 25.904961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.590786, 30.975765, 25.755938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.202267, 31.024611, 25.674294>,  <41.969154, 31.053919, 25.625307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.202267, 31.024611, 25.674294>,  <42.590786, 30.975765, 25.755938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.202267, 31.024611, 25.674294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149911, -0.351942, -0.923939,
		-0.184660, -0.928022, 0.323536,
		-0.971302, 0.122113, -0.204110,
		41.910877, 31.061245, 25.613060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465721, 30.418886, 25.280668>,  <42.590786, 30.975765, 25.755938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465721, 30.418886, 25.280668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.149357, 30.657869, 25.227745>,  <41.959538, 30.801258, 25.195992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.149357, 30.657869, 25.227745>,  <42.465721, 30.418886, 25.280668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.149357, 30.657869, 25.227745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009201, -0.227797, -0.973665,
		-0.611862, -0.768865, 0.185665,
		-0.790911, 0.597456, -0.132306,
		41.912083, 30.837107, 25.188053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.013481, 30.045750, 24.826313>,  <42.465721, 30.418886, 25.280668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.013481, 30.045750, 24.826313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.929974, 30.436901, 24.821144>,  <41.879868, 30.671593, 24.818043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.929974, 30.436901, 24.821144>,  <42.013481, 30.045750, 24.826313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929974, 30.436901, 24.821144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243625, -0.064800, -0.967702,
		-0.947133, -0.198880, 0.251764,
		-0.208771, 0.977879, -0.012922,
		41.867344, 30.730265, 24.817268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443012, 30.037056, 24.505363>,  <42.013481, 30.045750, 24.826313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.443012, 30.037056, 24.505363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.546268, 30.420456, 24.456964>,  <41.608223, 30.650496, 24.427925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.546268, 30.420456, 24.456964>,  <41.443012, 30.037056, 24.505363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546268, 30.420456, 24.456964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048563, -0.137956, -0.989247,
		-0.964887, 0.249486, -0.082159,
		0.258137, 0.958502, -0.120996,
		41.623711, 30.708006, 24.420666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947865, 30.382130, 24.036192>,  <41.443012, 30.037056, 24.505363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.947865, 30.382130, 24.036192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.267776, 30.622038, 24.026133>,  <41.459724, 30.765984, 24.020098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.267776, 30.622038, 24.026133>,  <40.947865, 30.382130, 24.036192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.267776, 30.622038, 24.026133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115358, -0.194667, -0.974062,
		-0.589109, 0.776132, -0.224878,
		0.799777, 0.599770, -0.025146,
		41.507710, 30.801970, 24.018589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883064, 30.769573, 23.424021>,  <40.947865, 30.382130, 24.036192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883064, 30.769573, 23.424021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.268295, 30.836250, 23.508585>,  <41.499435, 30.876257, 23.559322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.268295, 30.836250, 23.508585>,  <40.883064, 30.769573, 23.424021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.268295, 30.836250, 23.508585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241400, -0.187036, -0.952231,
		-0.119191, 0.968107, -0.220370,
		0.963078, 0.166695, 0.211408,
		41.557220, 30.886259, 23.572008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099972, 31.290657, 22.977604>,  <40.883064, 30.769573, 23.424021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.099972, 31.290657, 22.977604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.429752, 31.082184, 23.065830>,  <41.627621, 30.957100, 23.118767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.429752, 31.082184, 23.065830>,  <41.099972, 31.290657, 22.977604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429752, 31.082184, 23.065830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164765, -0.151805, -0.974581,
		0.541418, 0.839835, -0.039282,
		0.824450, -0.521183, 0.220565,
		41.677086, 30.925829, 23.132000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554150, 31.472080, 22.475712>,  <41.099972, 31.290657, 22.977604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554150, 31.472080, 22.475712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.701973, 31.128773, 22.618147>,  <41.790665, 30.922789, 22.703608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.701973, 31.128773, 22.618147>,  <41.554150, 31.472080, 22.475712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.701973, 31.128773, 22.618147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190124, -0.305269, -0.933093,
		0.909550, 0.412531, 0.050364,
		0.369555, -0.858271, 0.356090,
		41.812840, 30.871292, 22.724974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086365, 31.385565, 22.062366>,  <41.554150, 31.472080, 22.475712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086365, 31.385565, 22.062366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.000053, 31.031425, 22.227093>,  <41.948265, 30.818941, 22.325930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.000053, 31.031425, 22.227093>,  <42.086365, 31.385565, 22.062366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.000053, 31.031425, 22.227093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089504, -0.437912, -0.894551,
		0.972331, -0.156167, 0.173735,
		-0.215780, -0.885350, 0.411818,
		41.935318, 30.765820, 22.350637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.601135, 31.005842, 21.765053>,  <42.086365, 31.385565, 22.062366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.601135, 31.005842, 21.765053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.317196, 30.749628, 21.882240>,  <42.146832, 30.595900, 21.952553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.317196, 30.749628, 21.882240>,  <42.601135, 31.005842, 21.765053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.317196, 30.749628, 21.882240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168256, -0.558102, -0.812534,
		0.683962, -0.527483, 0.503942,
		-0.709849, -0.640534, 0.292969,
		42.104240, 30.557468, 21.970131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.819630, 30.345442, 21.695097>,  <42.601135, 31.005842, 21.765053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.819630, 30.345442, 21.695097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.424156, 30.286198, 21.685558>,  <42.186871, 30.250650, 21.679834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.424156, 30.286198, 21.685558>,  <42.819630, 30.345442, 21.695097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.424156, 30.286198, 21.685558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115395, -0.649259, -0.751763,
		0.095861, -0.746007, 0.659003,
		-0.988683, -0.148110, -0.023846,
		42.127552, 30.241764, 21.678404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.673302, 29.615778, 21.366114>,  <42.819630, 30.345442, 21.695097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.673302, 29.615778, 21.366114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.325989, 29.811874, 21.335804>,  <42.117599, 29.929533, 21.317619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.325989, 29.811874, 21.335804>,  <42.673302, 29.615778, 21.366114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.325989, 29.811874, 21.335804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135438, -0.381227, -0.914507,
		-0.477219, -0.783790, 0.397411,
		-0.868285, 0.490244, -0.075774,
		42.065502, 29.958948, 21.313072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.325367, 29.045172, 21.013027>,  <42.673302, 29.615778, 21.366114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.325367, 29.045172, 21.013027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.108368, 29.378275, 20.968828>,  <41.978168, 29.578136, 20.942308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.108368, 29.378275, 20.968828>,  <42.325367, 29.045172, 21.013027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.108368, 29.378275, 20.968828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161743, -0.232617, -0.959025,
		-0.824339, -0.502398, 0.260887,
		-0.542499, 0.832758, -0.110496,
		41.945618, 29.628101, 20.935680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702927, 28.813587, 20.815178>,  <42.325367, 29.045172, 21.013027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.702927, 28.813587, 20.815178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.748001, 29.192513, 20.695244>,  <41.775047, 29.419867, 20.623283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.748001, 29.192513, 20.695244>,  <41.702927, 28.813587, 20.815178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748001, 29.192513, 20.695244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042054, -0.296939, -0.953970,
		-0.992740, 0.120112, 0.006376,
		0.112690, 0.947312, -0.299834,
		41.781807, 29.476706, 20.605293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116112, 29.005941, 20.311872>,  <41.702927, 28.813587, 20.815178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116112, 29.005941, 20.311872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.427490, 29.238403, 20.216978>,  <41.614315, 29.377880, 20.160042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.427490, 29.238403, 20.216978>,  <41.116112, 29.005941, 20.311872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.427490, 29.238403, 20.216978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052217, -0.316676, -0.947095,
		-0.625538, 0.749649, -0.216168,
		0.778444, 0.581157, -0.237238,
		41.661022, 29.412750, 20.145807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929028, 29.452845, 19.739075>,  <41.116112, 29.005941, 20.311872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929028, 29.452845, 19.739075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.295341, 29.305325, 19.802729>,  <41.515129, 29.216812, 19.840921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.295341, 29.305325, 19.802729>,  <40.929028, 29.452845, 19.739075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295341, 29.305325, 19.802729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035228, -0.468406, -0.882811,
		0.400121, 0.802859, -0.441952,
		0.915785, -0.368800, 0.159136,
		41.570076, 29.194685, 19.850470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336452, 29.021227, 19.453632>,  <40.929028, 29.452845, 19.739075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336452, 29.021227, 19.453632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.945465, 28.939537, 19.475008>,  <39.710873, 28.890524, 19.487833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.945465, 28.939537, 19.475008>,  <40.336452, 29.021227, 19.453632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945465, 28.939537, 19.475008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045678, 0.451772, 0.890964,
		-0.206099, 0.868444, -0.450919,
		-0.977464, -0.204224, 0.053441,
		39.652225, 28.878269, 19.491041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962849, 29.573339, 19.702356>,  <40.336452, 29.021227, 19.453632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962849, 29.573339, 19.702356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.701145, 29.281647, 19.782528>,  <39.544125, 29.106632, 19.830631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.701145, 29.281647, 19.782528>,  <39.962849, 29.573339, 19.702356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701145, 29.281647, 19.782528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147850, 0.383242, 0.911738,
		-0.741681, 0.566876, -0.358555,
		-0.654255, -0.729231, 0.200430,
		39.504868, 29.062878, 19.842657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520859, 30.030624, 20.041742>,  <39.962849, 29.573339, 19.702356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520859, 30.030624, 20.041742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.377567, 29.664894, 20.117292>,  <39.291592, 29.445456, 20.162622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.377567, 29.664894, 20.117292>,  <39.520859, 30.030624, 20.041742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377567, 29.664894, 20.117292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271510, 0.295580, 0.915923,
		-0.893281, 0.276833, -0.354136,
		-0.358233, -0.914328, 0.188873,
		39.270096, 29.390596, 20.173954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772316, 30.066040, 20.258047>,  <39.520859, 30.030624, 20.041742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772316, 30.066040, 20.258047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.918236, 29.719576, 20.394686>,  <39.005787, 29.511698, 20.476669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.918236, 29.719576, 20.394686>,  <38.772316, 30.066040, 20.258047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918236, 29.719576, 20.394686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274462, 0.250542, 0.928386,
		-0.889716, -0.432427, -0.146331,
		0.364797, -0.866162, 0.341596,
		39.027676, 29.459728, 20.497164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281887, 29.767666, 20.669880>,  <38.772316, 30.066040, 20.258047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281887, 29.767666, 20.669880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.619930, 29.596479, 20.798025>,  <38.822758, 29.493769, 20.874912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.619930, 29.596479, 20.798025>,  <38.281887, 29.767666, 20.669880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619930, 29.596479, 20.798025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186126, 0.326223, 0.926788,
		-0.501142, -0.842867, 0.196039,
		0.845112, -0.427964, 0.320364,
		38.873463, 29.468090, 20.894135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151562, 29.470842, 21.270897>,  <38.281887, 29.767666, 20.669880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151562, 29.470842, 21.270897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.549095, 29.510609, 21.290564>,  <38.787613, 29.534468, 21.302362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.549095, 29.510609, 21.290564>,  <38.151562, 29.470842, 21.270897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549095, 29.510609, 21.290564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080279, 0.338960, 0.937369,
		0.076522, -0.935534, 0.344850,
		0.993831, 0.099413, 0.049166,
		38.847244, 29.540432, 21.305313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359665, 29.163683, 21.866331>,  <38.151562, 29.470842, 21.270897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359665, 29.163683, 21.866331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.665173, 29.402458, 21.768085>,  <38.848476, 29.545723, 21.709139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.665173, 29.402458, 21.768085>,  <38.359665, 29.163683, 21.866331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665173, 29.402458, 21.768085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051030, 0.323477, 0.944859,
		0.643471, -0.734187, 0.216599,
		0.763768, 0.596936, -0.245614,
		38.894302, 29.581539, 21.694401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931957, 29.046068, 22.364553>,  <38.359665, 29.163683, 21.866331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931957, 29.046068, 22.364553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.023483, 29.410767, 22.228106>,  <39.078400, 29.629585, 22.146236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.023483, 29.410767, 22.228106>,  <38.931957, 29.046068, 22.364553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023483, 29.410767, 22.228106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161780, 0.309928, 0.936895,
		0.959934, -0.269558, -0.076587,
		0.228811, 0.911747, -0.341120,
		39.092125, 29.684290, 22.125771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470428, 29.215979, 22.730015>,  <38.931957, 29.046068, 22.364553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470428, 29.215979, 22.730015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.347466, 29.575125, 22.603943>,  <39.273685, 29.790613, 22.528299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.347466, 29.575125, 22.603943>,  <39.470428, 29.215979, 22.730015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347466, 29.575125, 22.603943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354102, 0.415368, 0.837903,
		0.883239, 0.145974, -0.445624,
		-0.307410, 0.897865, -0.315179,
		39.255241, 29.844484, 22.509390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012241, 29.699150, 22.805534>,  <39.470428, 29.215979, 22.730015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012241, 29.699150, 22.805534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.662899, 29.877565, 22.883816>,  <39.453293, 29.984615, 22.930784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.662899, 29.877565, 22.883816>,  <40.012241, 29.699150, 22.805534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662899, 29.877565, 22.883816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303286, 0.183579, 0.935049,
		0.381142, 0.875983, -0.295608,
		-0.873355, 0.446040, 0.195704,
		39.400894, 30.011377, 22.942528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178650, 30.292015, 23.194389>,  <40.012241, 29.699150, 22.805534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178650, 30.292015, 23.194389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.794518, 30.197071, 23.252943>,  <39.564037, 30.140104, 23.288074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.794518, 30.197071, 23.252943>,  <40.178650, 30.292015, 23.194389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794518, 30.197071, 23.252943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115836, 0.137966, 0.983640,
		-0.253675, 0.961574, -0.104998,
		-0.960329, -0.237362, 0.146383,
		39.506420, 30.125862, 23.296858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818748, 30.883274, 23.522356>,  <40.178650, 30.292015, 23.194389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818748, 30.883274, 23.522356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.608967, 30.562588, 23.637041>,  <39.483097, 30.370176, 23.705853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.608967, 30.562588, 23.637041>,  <39.818748, 30.883274, 23.522356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608967, 30.562588, 23.637041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119966, 0.263799, 0.957089,
		-0.842947, 0.536341, -0.042170,
		-0.524451, -0.801716, 0.286711,
		39.451633, 30.322073, 23.723055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402008, 31.067169, 24.087088>,  <39.818748, 30.883274, 23.522356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402008, 31.067169, 24.087088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.365814, 30.669142, 24.103342>,  <39.344097, 30.430325, 24.113094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.365814, 30.669142, 24.103342>,  <39.402008, 31.067169, 24.087088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365814, 30.669142, 24.103342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178506, 0.056348, 0.982324,
		-0.979770, 0.081627, -0.182724,
		-0.090480, -0.995069, 0.040637,
		39.338669, 30.370621, 24.115534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840118, 31.074171, 24.526825>,  <39.402008, 31.067169, 24.087088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840118, 31.074171, 24.526825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.005424, 30.709982, 24.533148>,  <39.104607, 30.491468, 24.536942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.005424, 30.709982, 24.533148>,  <38.840118, 31.074171, 24.526825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005424, 30.709982, 24.533148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132572, -0.042985, 0.990241,
		-0.900910, -0.411325, -0.138467,
		0.413263, -0.910475, 0.015805,
		39.129402, 30.436840, 24.537889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293205, 30.643715, 24.804693>,  <38.840118, 31.074171, 24.526825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293205, 30.643715, 24.804693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.652390, 30.480272, 24.870060>,  <38.867901, 30.382206, 24.909281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.652390, 30.480272, 24.870060>,  <38.293205, 30.643715, 24.804693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652390, 30.480272, 24.870060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146066, 0.073558, 0.986536,
		-0.415126, -0.909742, 0.006369,
		0.897962, -0.408607, 0.163419,
		38.921780, 30.357691, 24.919086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239979, 30.285395, 25.367821>,  <38.293205, 30.643715, 24.804693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239979, 30.285395, 25.367821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.636440, 30.338087, 25.361242>,  <38.874317, 30.369701, 25.357296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.636440, 30.338087, 25.361242>,  <38.239979, 30.285395, 25.367821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636440, 30.338087, 25.361242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024099, -0.056718, 0.998099,
		0.130548, -0.989662, -0.059391,
		0.991149, 0.131731, -0.016445,
		38.933784, 30.377605, 25.356308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588554, 29.863115, 25.893101>,  <38.239979, 30.285395, 25.367821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588554, 29.863115, 25.893101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.867867, 30.141186, 25.824827>,  <39.035454, 30.308027, 25.783863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.867867, 30.141186, 25.824827>,  <38.588554, 29.863115, 25.893101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867867, 30.141186, 25.824827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157644, 0.083246, 0.983981,
		0.698249, -0.714003, -0.051462,
		0.698281, 0.695176, -0.170685,
		39.077351, 30.349739, 25.773623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054211, 29.625252, 26.330912>,  <38.588554, 29.863115, 25.893101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054211, 29.625252, 26.330912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.176537, 30.002943, 26.282068>,  <39.249931, 30.229557, 26.252762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.176537, 30.002943, 26.282068>,  <39.054211, 29.625252, 26.330912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176537, 30.002943, 26.282068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091564, 0.098490, 0.990917,
		0.947678, -0.314219, -0.056337,
		0.305816, 0.944228, -0.122108,
		39.268280, 30.286211, 26.245436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687939, 29.759970, 26.700186>,  <39.054211, 29.625252, 26.330912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687939, 29.759970, 26.700186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.490650, 30.104136, 26.648939>,  <39.372276, 30.310635, 26.618191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.490650, 30.104136, 26.648939>,  <39.687939, 29.759970, 26.700186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490650, 30.104136, 26.648939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003792, 0.149402, 0.988769,
		0.869893, 0.487201, -0.076951,
		-0.493226, 0.860415, -0.128116,
		39.342682, 30.362261, 26.610504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897392, 30.240168, 27.257732>,  <39.687939, 29.759970, 26.700186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897392, 30.240168, 27.257732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.562580, 30.436649, 27.161322>,  <39.361691, 30.554539, 27.103476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.562580, 30.436649, 27.161322>,  <39.897392, 30.240168, 27.257732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562580, 30.436649, 27.161322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178212, 0.171743, 0.968888,
		0.517316, 0.853946, -0.056216,
		-0.837033, 0.491203, -0.241029,
		39.311470, 30.584011, 27.089012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.894871, 31.042532, 31.753139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.613888, 31.291664, 31.615364>,  <41.445297, 31.441143, 31.532698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.613888, 31.291664, 31.615364>,  <41.894871, 31.042532, 31.753139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613888, 31.291664, 31.615364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074069, 0.417347, 0.905724,
		0.707865, 0.661741, -0.247035,
		-0.702454, 0.622832, -0.344440,
		41.403152, 31.478514, 31.512032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057621, 31.660435, 31.986252>,  <41.894871, 31.042532, 31.753139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.057621, 31.660435, 31.986252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.666523, 31.680571, 31.904776>,  <41.431866, 31.692652, 31.855890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.666523, 31.680571, 31.904776>,  <42.057621, 31.660435, 31.986252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.666523, 31.680571, 31.904776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154902, 0.481613, 0.862586,
		0.141522, 0.874937, -0.463094,
		-0.977741, 0.050341, -0.203689,
		41.373199, 31.695673, 31.843670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854084, 32.448555, 32.064430>,  <42.057621, 31.660435, 31.986252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854084, 32.448555, 32.064430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.519810, 32.229900, 32.085659>,  <41.319244, 32.098705, 32.098396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.519810, 32.229900, 32.085659>,  <41.854084, 32.448555, 32.064430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.519810, 32.229900, 32.085659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172100, 0.352402, 0.919888,
		-0.521550, 0.759603, -0.388574,
		-0.835684, -0.546641, 0.053068,
		41.269104, 32.065907, 32.101578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327713, 32.907455, 32.343246>,  <41.854084, 32.448555, 32.064430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327713, 32.907455, 32.343246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.174164, 32.542294, 32.398735>,  <41.082035, 32.323196, 32.432030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.174164, 32.542294, 32.398735>,  <41.327713, 32.907455, 32.343246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174164, 32.542294, 32.398735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478545, 0.325170, 0.815635,
		-0.789705, 0.246719, -0.561691,
		-0.383877, -0.912904, 0.138722,
		41.059002, 32.268421, 32.440353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592140, 32.985859, 32.609592>,  <41.327713, 32.907455, 32.343246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592140, 32.985859, 32.609592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.678062, 32.606766, 32.703972>,  <40.729614, 32.379311, 32.760597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.678062, 32.606766, 32.703972>,  <40.592140, 32.985859, 32.609592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678062, 32.606766, 32.703972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399122, 0.135309, 0.906859,
		-0.891382, -0.288966, -0.349195,
		0.214802, -0.947729, 0.235945,
		40.742504, 32.322449, 32.774754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014187, 32.799709, 32.927437>,  <40.592140, 32.985859, 32.609592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014187, 32.799709, 32.927437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.265667, 32.524445, 33.072304>,  <40.416553, 32.359283, 33.159225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.265667, 32.524445, 33.072304>,  <40.014187, 32.799709, 32.927437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265667, 32.524445, 33.072304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399576, 0.113675, 0.909625,
		-0.667141, -0.716595, -0.203506,
		0.628699, -0.688164, 0.362171,
		40.454277, 32.317997, 33.180954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663616, 32.423706, 33.385914>,  <40.014187, 32.799709, 32.927437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663616, 32.423706, 33.385914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.039639, 32.350513, 33.501022>,  <40.265251, 32.306599, 33.570087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.039639, 32.350513, 33.501022>,  <39.663616, 32.423706, 33.385914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039639, 32.350513, 33.501022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261588, 0.154443, 0.952743,
		-0.218779, -0.970909, 0.097319,
		0.940057, -0.182983, 0.287767,
		40.321655, 32.295620, 33.587353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648586, 31.934336, 33.963970>,  <39.663616, 32.423706, 33.385914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648586, 31.934336, 33.963970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.980694, 32.153336, 34.005741>,  <40.179958, 32.284737, 34.030804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.980694, 32.153336, 34.005741>,  <39.648586, 31.934336, 33.963970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980694, 32.153336, 34.005741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282488, 0.251828, 0.925626,
		0.480481, -0.798015, 0.363745,
		0.830265, 0.547499, 0.104431,
		40.229774, 32.317585, 34.037071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816399, 31.886728, 34.701267>,  <39.648586, 31.934336, 33.963970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816399, 31.886728, 34.701267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.043335, 32.186668, 34.565121>,  <40.179497, 32.366631, 34.483433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.043335, 32.186668, 34.565121>,  <39.816399, 31.886728, 34.701267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043335, 32.186668, 34.565121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157295, 0.504393, 0.849026,
		0.808319, -0.428152, 0.404112,
		0.567344, 0.749848, -0.340365,
		40.213539, 32.411621, 34.463013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276894, 31.993107, 35.186096>,  <39.816399, 31.886728, 34.701267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276894, 31.993107, 35.186096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.252380, 32.336269, 34.982040>,  <40.237671, 32.542168, 34.859608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.252380, 32.336269, 34.982040>,  <40.276894, 31.993107, 35.186096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252380, 32.336269, 34.982040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139307, 0.498746, 0.855480,
		0.988351, 0.123496, 0.088945,
		-0.061288, 0.857905, -0.510140,
		40.233994, 32.593639, 34.828999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445301, 32.508415, 35.689823>,  <40.276894, 31.993107, 35.186096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445301, 32.508415, 35.689823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.307713, 32.757301, 35.408527>,  <40.225159, 32.906631, 35.239750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.307713, 32.757301, 35.408527>,  <40.445301, 32.508415, 35.689823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307713, 32.757301, 35.408527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270754, 0.651400, 0.708781,
		0.899099, 0.434202, -0.055595,
		-0.343968, 0.622211, -0.703235,
		40.204521, 32.943966, 35.197556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762913, 33.209717, 35.724041>,  <40.445301, 32.508415, 35.689823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762913, 33.209717, 35.724041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.398834, 33.251263, 35.563667>,  <40.180386, 33.276188, 35.467442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.398834, 33.251263, 35.563667>,  <40.762913, 33.209717, 35.724041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398834, 33.251263, 35.563667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180713, 0.771443, 0.610097,
		0.372664, 0.627765, -0.683399,
		-0.910200, 0.103862, -0.400934,
		40.125774, 33.282421, 35.443386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605343, 33.856430, 35.566818>,  <40.762913, 33.209717, 35.724041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605343, 33.856430, 35.566818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.267742, 33.664619, 35.662914>,  <40.065182, 33.549534, 35.720570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.267742, 33.664619, 35.662914>,  <40.605343, 33.856430, 35.566818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267742, 33.664619, 35.662914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262038, 0.759493, 0.595404,
		-0.467972, 0.439571, -0.766668,
		-0.844002, -0.479529, 0.240237,
		40.014542, 33.520760, 35.734985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094528, 34.343201, 35.348518>,  <40.605343, 33.856430, 35.566818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094528, 34.343201, 35.348518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.998043, 34.128841, 35.672153>,  <39.940151, 34.000225, 35.866333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.998043, 34.128841, 35.672153>,  <40.094528, 34.343201, 35.348518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998043, 34.128841, 35.672153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139064, 0.806016, 0.575326,
		-0.960457, 0.251292, -0.119898,
		-0.241214, -0.535902, 0.809089,
		39.925678, 33.968071, 35.914879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335258, 35.091824, 35.314846>,  <40.094528, 34.343201, 35.348518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335258, 35.091824, 35.314846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.523129, 35.427887, 35.206375>,  <40.635853, 35.629524, 35.141293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.523129, 35.427887, 35.206375>,  <40.335258, 35.091824, 35.314846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523129, 35.427887, 35.206375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447457, -0.038247, -0.893487,
		-0.761041, 0.540993, 0.357970,
		0.469679, 0.840157, -0.271179,
		40.664032, 35.679935, 35.125023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867786, 35.456429, 34.942207>,  <40.335258, 35.091824, 35.314846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867786, 35.456429, 34.942207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.206776, 35.637836, 34.831856>,  <40.410168, 35.746681, 34.765644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.206776, 35.637836, 34.831856>,  <39.867786, 35.456429, 34.942207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206776, 35.637836, 34.831856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347012, 0.080010, -0.934442,
		-0.401713, 0.887648, 0.225182,
		0.847473, 0.453518, -0.275883,
		40.461018, 35.773891, 34.749092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522465, 36.085384, 34.604607>,  <39.867786, 35.456429, 34.942207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522465, 36.085384, 34.604607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.906586, 36.050213, 34.498711>,  <40.137058, 36.029110, 34.435173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.906586, 36.050213, 34.498711>,  <39.522465, 36.085384, 34.604607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906586, 36.050213, 34.498711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265232, 0.006307, -0.964164,
		0.086450, 0.996106, -0.017266,
		0.960301, -0.087931, -0.264744,
		40.194675, 36.023834, 34.419289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538902, 36.459400, 34.029480>,  <39.522465, 36.085384, 34.604607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538902, 36.459400, 34.029480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.888519, 36.267044, 34.001789>,  <40.098289, 36.151630, 33.985172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.888519, 36.267044, 34.001789>,  <39.538902, 36.459400, 34.029480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888519, 36.267044, 34.001789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108063, -0.053496, -0.992704,
		0.473682, 0.875145, -0.098725,
		0.874041, -0.480894, -0.069230,
		40.150730, 36.122776, 33.981022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951813, 36.806370, 33.465199>,  <39.538902, 36.459400, 34.029480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951813, 36.806370, 33.465199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.078693, 36.432152, 33.527355>,  <40.154819, 36.207623, 33.564648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.078693, 36.432152, 33.527355>,  <39.951813, 36.806370, 33.465199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078693, 36.432152, 33.527355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053324, -0.181184, -0.982002,
		0.946859, 0.303203, -0.107358,
		0.317197, -0.935543, 0.155388,
		40.173851, 36.151489, 33.573971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525146, 36.777111, 33.015724>,  <39.951813, 36.806370, 33.465199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525146, 36.777111, 33.015724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.447506, 36.392281, 33.092388>,  <40.400921, 36.161381, 33.138386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.447506, 36.392281, 33.092388>,  <40.525146, 36.777111, 33.015724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447506, 36.392281, 33.092388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066469, -0.207821, -0.975906,
		0.978728, -0.176682, 0.104286,
		-0.194098, -0.962078, 0.191656,
		40.389278, 36.103657, 33.149883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037178, 36.363792, 32.674850>,  <40.525146, 36.777111, 33.015724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.037178, 36.363792, 32.674850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.720985, 36.126461, 32.735661>,  <40.531269, 35.984062, 32.772144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.720985, 36.126461, 32.735661>,  <41.037178, 36.363792, 32.674850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720985, 36.126461, 32.735661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100671, -0.118966, -0.987782,
		0.604162, -0.796122, 0.034309,
		-0.790477, -0.593326, 0.152021,
		40.483841, 35.948463, 32.781265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077885, 35.817684, 32.146416>,  <41.037178, 36.363792, 32.674850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077885, 35.817684, 32.146416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.696770, 35.779633, 32.261761>,  <40.468102, 35.756802, 32.330967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.696770, 35.779633, 32.261761>,  <41.077885, 35.817684, 32.146416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696770, 35.779633, 32.261761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254883, -0.265565, -0.929790,
		0.165029, -0.959388, 0.228780,
		-0.952785, -0.095130, 0.288358,
		40.410934, 35.751095, 32.348267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843109, 35.187023, 31.920540>,  <41.077885, 35.817684, 32.146416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843109, 35.187023, 31.920540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.505352, 35.399506, 31.948309>,  <40.302696, 35.526993, 31.964970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.505352, 35.399506, 31.948309>,  <40.843109, 35.187023, 31.920540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.505352, 35.399506, 31.948309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256825, -0.287665, -0.922654,
		-0.470148, -0.796913, 0.379329,
		-0.844394, 0.531205, 0.069422,
		40.252033, 35.558868, 31.969135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388645, 34.865990, 31.652685>,  <40.843109, 35.187023, 31.920540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.388645, 34.865990, 31.652685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.176926, 35.205200, 31.663260>,  <40.049892, 35.408726, 31.669603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.176926, 35.205200, 31.663260>,  <40.388645, 34.865990, 31.652685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176926, 35.205200, 31.663260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369542, -0.202382, -0.906907,
		-0.763729, -0.489792, 0.420501,
		-0.529298, 0.848025, 0.026434,
		40.018135, 35.459606, 31.671190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804588, 34.588184, 31.278521>,  <40.388645, 34.865990, 31.652685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804588, 34.588184, 31.278521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.828640, 34.987453, 31.276361>,  <39.843071, 35.227016, 31.275066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.828640, 34.987453, 31.276361>,  <39.804588, 34.588184, 31.278521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828640, 34.987453, 31.276361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390047, 0.018521, -0.920609,
		-0.918829, 0.057463, 0.390449,
		0.060133, 0.998176, -0.005396,
		39.846680, 35.286907, 31.274742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139954, 34.850574, 31.101879>,  <39.804588, 34.588184, 31.278521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139954, 34.850574, 31.101879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.397243, 35.143223, 31.011555>,  <39.551617, 35.318813, 30.957361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.397243, 35.143223, 31.011555>,  <39.139954, 34.850574, 31.101879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397243, 35.143223, 31.011555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433558, 0.104939, -0.894994,
		-0.631103, 0.673583, 0.384701,
		0.643223, 0.731624, -0.225810,
		39.590210, 35.362709, 30.943811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807632, 35.348820, 30.706921>,  <39.139954, 34.850574, 31.101879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807632, 35.348820, 30.706921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.196922, 35.399406, 30.630142>,  <39.430496, 35.429760, 30.584074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.196922, 35.399406, 30.630142>,  <38.807632, 35.348820, 30.706921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196922, 35.399406, 30.630142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184556, -0.067882, -0.980475,
		-0.137028, 0.989645, -0.042724,
		0.973223, 0.126467, -0.191947,
		39.488888, 35.437347, 30.572557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731636, 35.701340, 30.083958>,  <38.807632, 35.348820, 30.706921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731636, 35.701340, 30.083958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.102608, 35.559040, 30.130133>,  <39.325191, 35.473660, 30.157837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.102608, 35.559040, 30.130133>,  <38.731636, 35.701340, 30.083958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102608, 35.559040, 30.130133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042666, -0.205997, -0.977622,
		0.371566, 0.911597, -0.175868,
		0.927426, -0.355747, 0.115436,
		39.380836, 35.452316, 30.164762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748295, 36.396530, 29.953102>,  <38.731636, 35.701340, 30.083958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748295, 36.396530, 29.953102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.426849, 36.599987, 29.829491>,  <38.233982, 36.722061, 29.755323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.426849, 36.599987, 29.829491>,  <38.748295, 36.396530, 29.953102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426849, 36.599987, 29.829491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213924, 0.237675, 0.947495,
		0.555380, 0.827525, -0.082188,
		-0.803610, 0.508638, -0.309028,
		38.185768, 36.752579, 29.736782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768135, 36.876106, 30.358238>,  <38.748295, 36.396530, 29.953102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768135, 36.876106, 30.358238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.393982, 36.893459, 30.217848>,  <38.169491, 36.903870, 30.133614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.393982, 36.893459, 30.217848>,  <38.768135, 36.876106, 30.358238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393982, 36.893459, 30.217848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332485, 0.230276, 0.914564,
		0.120495, 0.972158, -0.200972,
		-0.935379, 0.043380, -0.350975,
		38.113369, 36.906475, 30.112555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399441, 37.418690, 30.735916>,  <38.768135, 36.876106, 30.358238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399441, 37.418690, 30.735916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.112175, 37.182991, 30.587845>,  <37.939816, 37.041573, 30.499002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.112175, 37.182991, 30.587845>,  <38.399441, 37.418690, 30.735916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112175, 37.182991, 30.587845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473448, 0.023882, 0.880498,
		-0.509987, 0.807603, -0.296127,
		-0.718164, -0.589243, -0.370179,
		37.896725, 37.006218, 30.476791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780968, 37.715984, 30.788851>,  <38.399441, 37.418690, 30.735916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780968, 37.715984, 30.788851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.690338, 37.326591, 30.801439>,  <37.635960, 37.092957, 30.808992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.690338, 37.326591, 30.801439>,  <37.780968, 37.715984, 30.788851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690338, 37.326591, 30.801439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501973, 0.144397, 0.852744,
		-0.834679, 0.177408, -0.521380,
		-0.226569, -0.973486, 0.031471,
		37.622368, 37.034546, 30.810881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141266, 37.715096, 30.940325>,  <37.780968, 37.715984, 30.788851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141266, 37.715096, 30.940325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.250553, 37.342735, 31.037300>,  <37.316124, 37.119320, 31.095486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.250553, 37.342735, 31.037300>,  <37.141266, 37.715096, 30.940325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250553, 37.342735, 31.037300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554522, 0.053527, 0.830446,
		-0.786040, -0.361327, -0.501581,
		0.273215, -0.930901, 0.242438,
		37.332516, 37.063465, 31.110031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645744, 37.533508, 31.311407>,  <37.141266, 37.715096, 30.940325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645744, 37.533508, 31.311407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.919651, 37.262157, 31.417913>,  <37.083996, 37.099346, 31.481817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.919651, 37.262157, 31.417913>,  <36.645744, 37.533508, 31.311407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919651, 37.262157, 31.417913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354274, 0.009422, 0.935094,
		-0.636858, -0.734650, -0.233881,
		0.684763, -0.678381, 0.266268,
		37.125080, 37.058643, 31.497793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223099, 36.987041, 31.654703>,  <36.645744, 37.533508, 31.311407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223099, 36.987041, 31.654703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.606865, 36.966389, 31.765593>,  <36.837124, 36.953999, 31.832127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.606865, 36.966389, 31.765593>,  <36.223099, 36.987041, 31.654703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606865, 36.966389, 31.765593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281535, -0.119678, 0.952058,
		-0.015977, -0.991469, -0.129357,
		0.959418, -0.051630, 0.277222,
		36.894691, 36.950901, 31.848759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205219, 36.479393, 32.163578>,  <36.223099, 36.987041, 31.654703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205219, 36.479393, 32.163578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.560097, 36.649494, 32.235184>,  <36.773022, 36.751556, 32.278149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.560097, 36.649494, 32.235184>,  <36.205219, 36.479393, 32.163578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560097, 36.649494, 32.235184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164097, -0.071810, 0.983827,
		0.431231, -0.902221, 0.006073,
		0.887193, 0.425254, 0.179018,
		36.826256, 36.777069, 32.288891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607731, 36.076920, 32.635075>,  <36.205219, 36.479393, 32.163578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607731, 36.076920, 32.635075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.766739, 36.440998, 32.681595>,  <36.862144, 36.659443, 32.709507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.766739, 36.440998, 32.681595>,  <36.607731, 36.076920, 32.635075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766739, 36.440998, 32.681595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030586, -0.113535, 0.993063,
		0.917083, -0.398321, -0.017293,
		0.397521, 0.910192, 0.116304,
		36.885994, 36.714054, 32.716488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009068, 35.987095, 33.190506>,  <36.607731, 36.076920, 32.635075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009068, 35.987095, 33.190506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.964680, 36.384285, 33.174049>,  <36.938046, 36.622597, 33.164173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.964680, 36.384285, 33.174049>,  <37.009068, 35.987095, 33.190506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964680, 36.384285, 33.174049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199468, 0.018304, 0.979734,
		0.973600, 0.116931, 0.196034,
		-0.110973, 0.992971, -0.041145,
		36.931389, 36.682175, 33.161705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454315, 36.261379, 33.753914>,  <37.009068, 35.987095, 33.190506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454315, 36.261379, 33.753914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.190212, 36.549408, 33.668537>,  <37.031750, 36.722225, 33.617310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.190212, 36.549408, 33.668537>,  <37.454315, 36.261379, 33.753914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190212, 36.549408, 33.668537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072565, 0.221706, 0.972409,
		0.747526, 0.657528, -0.094132,
		-0.660257, 0.720071, -0.213445,
		36.992134, 36.765430, 33.604504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781750, 36.818623, 33.974300>,  <37.454315, 36.261379, 33.753914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781750, 36.818623, 33.974300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.389172, 36.893822, 33.959244>,  <37.153625, 36.938942, 33.950211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.389172, 36.893822, 33.959244>,  <37.781750, 36.818623, 33.974300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389172, 36.893822, 33.959244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021716, 0.086080, 0.996051,
		0.190494, 0.978390, -0.080400,
		-0.981448, 0.187996, -0.037645,
		37.094738, 36.950222, 33.947948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.176048, 37.433552, 25.940752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885902, 37.158257, 25.946159>,  <38.711815, 36.993080, 25.949404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885902, 37.158257, 25.946159>,  <39.176048, 37.433552, 25.940752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885902, 37.158257, 25.946159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138732, 0.165396, 0.976421,
		-0.674243, 0.706383, -0.215452,
		-0.725362, -0.688235, 0.013519,
		38.668293, 36.951786, 25.950214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859615, 37.580700, 26.500532>,  <39.176048, 37.433552, 25.940752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859615, 37.580700, 26.500532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655270, 37.241993, 26.441204>,  <38.532661, 37.038769, 26.405607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655270, 37.241993, 26.441204>,  <38.859615, 37.580700, 26.500532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655270, 37.241993, 26.441204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260492, -0.011942, 0.965402,
		-0.819246, 0.531824, -0.214476,
		-0.510863, -0.846771, -0.148319,
		38.502010, 36.987961, 26.396708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188519, 37.755817, 26.719538>,  <38.859615, 37.580700, 26.500532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188519, 37.755817, 26.719538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258091, 37.362579, 26.742434>,  <38.299835, 37.126637, 26.756170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258091, 37.362579, 26.742434>,  <38.188519, 37.755817, 26.719538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258091, 37.362579, 26.742434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242177, 0.013637, 0.970136,
		-0.954515, -0.182596, -0.235710,
		0.173928, -0.983094, 0.057237,
		38.310268, 37.067650, 26.759605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643620, 37.487709, 27.028076>,  <38.188519, 37.755817, 26.719538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643620, 37.487709, 27.028076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944527, 37.229122, 27.078949>,  <38.125069, 37.073971, 27.109472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944527, 37.229122, 27.078949>,  <37.643620, 37.487709, 27.028076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944527, 37.229122, 27.078949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249024, -0.100262, 0.963294,
		-0.609988, -0.756323, -0.236410,
		0.752264, -0.646470, 0.127184,
		38.170204, 37.035183, 27.117104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432541, 37.092007, 27.518322>,  <37.643620, 37.487709, 27.028076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432541, 37.092007, 27.518322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795925, 36.932674, 27.568966>,  <38.013954, 36.837074, 27.599352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795925, 36.932674, 27.568966>,  <37.432541, 37.092007, 27.518322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795925, 36.932674, 27.568966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241008, -0.251733, 0.937308,
		-0.341487, -0.882022, -0.324691,
		0.908461, -0.398332, 0.126611,
		38.068462, 36.813175, 27.606949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421158, 36.470562, 27.766010>,  <37.432541, 37.092007, 27.518322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421158, 36.470562, 27.766010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781704, 36.570744, 27.907326>,  <37.998032, 36.630852, 27.992115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781704, 36.570744, 27.907326>,  <37.421158, 36.470562, 27.766010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781704, 36.570744, 27.907326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298296, -0.232326, 0.925767,
		0.313942, -0.939838, -0.134701,
		0.901366, 0.250456, 0.353287,
		38.052113, 36.645882, 28.013311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427399, 36.203575, 28.356007>,  <37.421158, 36.470562, 27.766010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427399, 36.203575, 28.356007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740139, 36.446068, 28.414230>,  <37.927784, 36.591564, 28.449165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740139, 36.446068, 28.414230>,  <37.427399, 36.203575, 28.356007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740139, 36.446068, 28.414230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137769, -0.059706, 0.988663,
		0.608053, -0.793041, 0.036840,
		0.781851, 0.606235, 0.145561,
		37.974693, 36.627937, 28.457899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860123, 35.829601, 28.872526>,  <37.427399, 36.203575, 28.356007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860123, 35.829601, 28.872526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945015, 36.220329, 28.883741>,  <37.995949, 36.454765, 28.890471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945015, 36.220329, 28.883741>,  <37.860123, 35.829601, 28.872526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945015, 36.220329, 28.883741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043494, -0.019219, 0.998869,
		0.976252, -0.213207, 0.038407,
		0.212228, 0.976818, 0.028036,
		38.008682, 36.513374, 28.892153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344467, 35.887794, 29.364126>,  <37.860123, 35.829601, 28.872526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344467, 35.887794, 29.364126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186726, 36.254108, 29.333612>,  <38.092079, 36.473896, 29.315304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186726, 36.254108, 29.333612>,  <38.344467, 35.887794, 29.364126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186726, 36.254108, 29.333612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061244, 0.056635, 0.996515,
		0.916915, 0.397654, 0.033752,
		-0.394356, 0.915786, -0.076283,
		38.068420, 36.528843, 29.310728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100864, 36.045700, 29.451727>,  <38.344467, 35.887794, 29.364126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100864, 36.045700, 29.451727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341396, 35.756500, 29.587770>,  <39.485714, 35.582981, 29.669397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341396, 35.756500, 29.587770>,  <39.100864, 36.045700, 29.451727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341396, 35.756500, 29.587770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293925, -0.195655, -0.935589,
		0.742973, 0.662566, 0.094853,
		0.601331, -0.722998, 0.340111,
		39.521797, 35.539600, 29.689804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626522, 36.078671, 28.982691>,  <39.100864, 36.045700, 29.451727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626522, 36.078671, 28.982691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651360, 35.720436, 29.158901>,  <39.666260, 35.505493, 29.264627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651360, 35.720436, 29.158901>,  <39.626522, 36.078671, 28.982691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651360, 35.720436, 29.158901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401152, -0.381762, -0.832667,
		0.913905, 0.228419, 0.335564,
		0.062091, -0.895591, 0.440525,
		39.669987, 35.451759, 29.291059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251709, 35.770546, 28.787384>,  <39.626522, 36.078671, 28.982691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251709, 35.770546, 28.787384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039600, 35.451740, 28.903030>,  <39.912334, 35.260456, 28.972418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039600, 35.451740, 28.903030>,  <40.251709, 35.770546, 28.787384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039600, 35.451740, 28.903030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335597, -0.510471, -0.791704,
		0.778583, -0.322787, 0.538161,
		-0.530267, -0.797012, 0.289117,
		39.880520, 35.212635, 28.989765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731453, 35.249527, 28.744892>,  <40.251709, 35.770546, 28.787384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731453, 35.249527, 28.744892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365658, 35.090626, 28.714178>,  <40.146179, 34.995285, 28.695749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365658, 35.090626, 28.714178>,  <40.731453, 35.249527, 28.744892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365658, 35.090626, 28.714178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302101, -0.544155, -0.782707,
		0.269153, -0.738974, 0.617636,
		-0.914490, -0.397256, -0.076784,
		40.091312, 34.971447, 28.691143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893993, 34.552147, 28.528378>,  <40.731453, 35.249527, 28.744892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.893993, 34.552147, 28.528378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507690, 34.611980, 28.443588>,  <40.275909, 34.647881, 28.392715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507690, 34.611980, 28.443588>,  <40.893993, 34.552147, 28.528378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507690, 34.611980, 28.443588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072829, -0.627886, -0.774891,
		-0.249004, -0.763797, 0.595494,
		-0.965761, 0.149581, -0.211972,
		40.217964, 34.656857, 28.379997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648811, 33.960514, 28.325890>,  <40.893993, 34.552147, 28.528378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648811, 33.960514, 28.325890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369247, 34.199017, 28.167900>,  <40.201508, 34.342117, 28.073107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369247, 34.199017, 28.167900>,  <40.648811, 33.960514, 28.325890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369247, 34.199017, 28.167900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090111, -0.474437, -0.875665,
		-0.709511, -0.647602, 0.277859,
		-0.698909, 0.596256, -0.394975,
		40.159576, 34.377892, 28.049408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350258, 33.510834, 27.945240>,  <40.648811, 33.960514, 28.325890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350258, 33.510834, 27.945240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251472, 33.870300, 27.800236>,  <40.192200, 34.085979, 27.713234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251472, 33.870300, 27.800236>,  <40.350258, 33.510834, 27.945240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251472, 33.870300, 27.800236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127975, -0.340572, -0.931468,
		-0.960537, -0.276432, -0.030897,
		-0.246965, 0.898663, -0.362509,
		40.177383, 34.139900, 27.691483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659737, 33.522457, 27.676506>,  <40.350258, 33.510834, 27.945240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659737, 33.522457, 27.676506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840332, 33.832355, 27.499447>,  <39.948689, 34.018295, 27.393211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840332, 33.832355, 27.499447>,  <39.659737, 33.522457, 27.676506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840332, 33.832355, 27.499447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096216, -0.450922, -0.887362,
		-0.887076, 0.443220, -0.129042,
		0.451484, 0.774742, -0.442647,
		39.975777, 34.064777, 27.366653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355305, 33.480701, 26.967186>,  <39.659737, 33.522457, 27.676506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355305, 33.480701, 26.967186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625954, 33.769463, 26.909168>,  <39.788345, 33.942719, 26.874357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625954, 33.769463, 26.909168>,  <39.355305, 33.480701, 26.967186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625954, 33.769463, 26.909168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138582, -0.318315, -0.937801,
		-0.723169, 0.614439, -0.315422,
		0.676625, 0.721901, -0.145045,
		39.828941, 33.986034, 26.865654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240730, 33.975555, 26.311798>,  <39.355305, 33.480701, 26.967186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240730, 33.975555, 26.311798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629276, 33.972641, 26.406796>,  <39.862404, 33.970894, 26.463793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629276, 33.972641, 26.406796>,  <39.240730, 33.975555, 26.311798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629276, 33.972641, 26.406796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236059, -0.084197, -0.968084,
		0.027050, 0.996423, -0.080066,
		0.971362, -0.007286, 0.237492,
		39.920685, 33.970455, 26.478043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532978, 34.391666, 25.869852>,  <39.240730, 33.975555, 26.311798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532978, 34.391666, 25.869852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843330, 34.171768, 25.993652>,  <40.029541, 34.039829, 26.067932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843330, 34.171768, 25.993652>,  <39.532978, 34.391666, 25.869852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843330, 34.171768, 25.993652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277763, -0.142803, -0.949976,
		0.566439, 0.823038, 0.041900,
		0.775883, -0.549742, 0.309499,
		40.076096, 34.006847, 26.086502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065311, 34.816738, 25.532360>,  <39.532978, 34.391666, 25.869852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065311, 34.816738, 25.532360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225842, 34.467815, 25.644093>,  <40.322159, 34.258461, 25.711132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225842, 34.467815, 25.644093>,  <40.065311, 34.816738, 25.532360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225842, 34.467815, 25.644093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466282, -0.067918, -0.882025,
		0.788364, 0.484227, 0.379481,
		0.401327, -0.872302, 0.279330,
		40.346241, 34.206123, 25.727892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906498, 34.787941, 25.372097>,  <40.065311, 34.816738, 25.532360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906498, 34.787941, 25.372097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785130, 34.407036, 25.385565>,  <40.712307, 34.178493, 25.393646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785130, 34.407036, 25.385565>,  <40.906498, 34.787941, 25.372097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.785130, 34.407036, 25.385565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516046, -0.193930, -0.834319,
		0.801020, -0.235773, 0.550254,
		-0.303420, -0.952262, 0.033672,
		40.694103, 34.121357, 25.395666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539471, 34.500076, 25.177086>,  <40.906498, 34.787941, 25.372097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.539471, 34.500076, 25.177086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243271, 34.236111, 25.126198>,  <41.065552, 34.077732, 25.095665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243271, 34.236111, 25.126198>,  <41.539471, 34.500076, 25.177086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243271, 34.236111, 25.126198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329505, -0.191508, -0.924528,
		0.585742, -0.726528, 0.359254,
		-0.740495, -0.659911, -0.127220,
		41.021122, 34.038139, 25.088032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.718552, 32.332783, 24.969994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.075436, 32.445400, 25.111238>,  <37.289566, 32.512970, 25.195986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.075436, 32.445400, 25.111238>,  <36.718552, 32.332783, 24.969994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075436, 32.445400, 25.111238> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392136, 0.095121, 0.914976,
		0.224016, -0.954823, 0.195271,
		0.892215, 0.281542, 0.353111,
		37.343102, 32.529861, 25.217173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772968, 31.971241, 25.609455>,  <36.718552, 32.332783, 24.969994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772968, 31.971241, 25.609455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.011936, 32.288551, 25.656441>,  <37.155319, 32.478939, 25.684633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.011936, 32.288551, 25.656441>,  <36.772968, 31.971241, 25.609455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011936, 32.288551, 25.656441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395291, 0.163863, 0.903822,
		0.697732, -0.586397, 0.411471,
		0.597423, 0.793276, 0.117465,
		37.191162, 32.526535, 25.691681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047173, 31.942205, 26.308012>,  <36.772968, 31.971241, 25.609455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047173, 31.942205, 26.308012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.150070, 32.317348, 26.214844>,  <37.211807, 32.542435, 26.158943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.150070, 32.317348, 26.214844>,  <37.047173, 31.942205, 26.308012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150070, 32.317348, 26.214844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124380, 0.271159, 0.954465,
		0.958309, -0.216556, 0.186404,
		0.257240, 0.937857, -0.232919,
		37.227242, 32.598705, 26.144968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662937, 32.158508, 26.681717>,  <37.047173, 31.942205, 26.308012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662937, 32.158508, 26.681717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.430077, 32.469292, 26.585859>,  <37.290359, 32.655762, 26.528345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.430077, 32.469292, 26.585859>,  <37.662937, 32.158508, 26.681717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430077, 32.469292, 26.585859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036001, 0.269818, 0.962238,
		0.812281, 0.568798, -0.129105,
		-0.582154, 0.776960, -0.239645,
		37.255432, 32.702381, 26.513966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998627, 32.549255, 27.234238>,  <37.662937, 32.158508, 26.681717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998627, 32.549255, 27.234238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.665474, 32.730385, 27.106956>,  <37.465580, 32.839062, 27.030588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.665474, 32.730385, 27.106956>,  <37.998627, 32.549255, 27.234238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665474, 32.730385, 27.106956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248577, 0.207624, 0.946098,
		0.494479, 0.867091, -0.060366,
		-0.832887, 0.452820, -0.318205,
		37.415607, 32.866230, 27.011496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954262, 33.175907, 27.540510>,  <37.998627, 32.549255, 27.234238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954262, 33.175907, 27.540510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.573162, 33.093857, 27.450897>,  <37.344501, 33.044628, 27.397129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.573162, 33.093857, 27.450897>,  <37.954262, 33.175907, 27.540510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573162, 33.093857, 27.450897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281051, 0.315512, 0.906346,
		-0.115226, 0.926486, -0.358254,
		-0.952750, -0.205122, -0.224035,
		37.287338, 33.032322, 27.383686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626472, 33.751080, 27.705839>,  <37.954262, 33.175907, 27.540510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626472, 33.751080, 27.705839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.339886, 33.472050, 27.702778>,  <37.167934, 33.304630, 27.700941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.339886, 33.472050, 27.702778>,  <37.626472, 33.751080, 27.705839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339886, 33.472050, 27.702778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360638, 0.360966, 0.860026,
		-0.597173, 0.618940, -0.510194,
		-0.716467, -0.697579, -0.007654,
		37.124947, 33.262775, 27.700481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037033, 34.018837, 28.062950>,  <37.626472, 33.751080, 27.705839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037033, 34.018837, 28.062950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.954956, 33.627361, 28.066303>,  <36.905708, 33.392475, 28.068316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.954956, 33.627361, 28.066303>,  <37.037033, 34.018837, 28.062950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954956, 33.627361, 28.066303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518676, 0.116003, 0.847064,
		-0.829982, 0.169464, -0.531424,
		-0.205194, -0.978685, 0.008383,
		36.893398, 33.333755, 28.068819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233971, 33.846268, 28.163105>,  <37.037033, 34.018837, 28.062950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233971, 33.846268, 28.163105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.437756, 33.521900, 28.278240>,  <36.560028, 33.327278, 28.347321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.437756, 33.521900, 28.278240>,  <36.233971, 33.846268, 28.163105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437756, 33.521900, 28.278240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458664, 0.027109, 0.888196,
		-0.728062, -0.584524, -0.358130,
		0.509464, -0.810923, 0.287837,
		36.590595, 33.278622, 28.364592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744568, 33.402214, 28.426861>,  <36.233971, 33.846268, 28.163105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744568, 33.402214, 28.426861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.085064, 33.261906, 28.582987>,  <36.289360, 33.177719, 28.676662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.085064, 33.261906, 28.582987>,  <35.744568, 33.402214, 28.426861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085064, 33.261906, 28.582987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472309, -0.187936, 0.861165,
		-0.228722, -0.917407, -0.325653,
		0.851240, -0.350776, 0.390315,
		36.340435, 33.156673, 28.700083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590782, 32.824215, 28.786474>,  <35.744568, 33.402214, 28.426861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590782, 32.824215, 28.786474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.937756, 32.942871, 28.946257>,  <36.145939, 33.014065, 29.042126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.937756, 32.942871, 28.946257>,  <35.590782, 32.824215, 28.786474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937756, 32.942871, 28.946257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284153, -0.363690, 0.887123,
		0.408432, -0.883027, -0.231186,
		0.867433, 0.296637, 0.399458,
		36.197987, 33.031860, 29.066093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729919, 32.371902, 29.358368>,  <35.590782, 32.824215, 28.786474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729919, 32.371902, 29.358368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.015186, 32.646381, 29.415674>,  <36.186344, 32.811069, 29.450058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.015186, 32.646381, 29.415674>,  <35.729919, 32.371902, 29.358368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015186, 32.646381, 29.415674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073717, -0.276656, 0.958137,
		0.697110, -0.672748, -0.247886,
		0.713165, 0.686200, 0.143267,
		36.229137, 32.852242, 29.458654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229710, 32.104359, 29.783998>,  <35.729919, 32.371902, 29.358368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229710, 32.104359, 29.783998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.325832, 32.485352, 29.858868>,  <36.383507, 32.713947, 29.903790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.325832, 32.485352, 29.858868>,  <36.229710, 32.104359, 29.783998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325832, 32.485352, 29.858868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040929, -0.202594, 0.978407,
		0.969833, -0.227460, -0.087669,
		0.240310, 0.952480, 0.187173,
		36.397926, 32.771095, 29.915020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599850, 32.170643, 30.424507>,  <36.229710, 32.104359, 29.783998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599850, 32.170643, 30.424507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.487663, 32.553249, 30.392462>,  <36.420353, 32.782814, 30.373234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.487663, 32.553249, 30.392462>,  <36.599850, 32.170643, 30.424507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487663, 32.553249, 30.392462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062862, 0.064980, 0.995905,
		0.957804, 0.284352, 0.041904,
		-0.280464, 0.956515, -0.080113,
		36.403522, 32.840202, 30.368427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218449, 32.404503, 30.170416>,  <36.599850, 32.170643, 30.424507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218449, 32.404503, 30.170416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.537178, 32.242332, 30.349613>,  <37.728416, 32.145031, 30.457132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.537178, 32.242332, 30.349613>,  <37.218449, 32.404503, 30.170416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537178, 32.242332, 30.349613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316451, -0.351594, -0.881045,
		0.514710, 0.843808, -0.151862,
		0.796826, -0.405426, 0.447993,
		37.776226, 32.120705, 30.484011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760529, 32.615818, 29.757235>,  <37.218449, 32.404503, 30.170416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760529, 32.615818, 29.757235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.842575, 32.273319, 29.946873>,  <37.891804, 32.067822, 30.060656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.842575, 32.273319, 29.946873>,  <37.760529, 32.615818, 29.757235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842575, 32.273319, 29.946873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322526, -0.398204, -0.858726,
		0.924069, 0.329050, 0.194482,
		0.205120, -0.856247, 0.474095,
		37.904110, 32.016445, 30.089102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415569, 32.466629, 29.534256>,  <37.760529, 32.615818, 29.757235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415569, 32.466629, 29.534256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.266758, 32.121281, 29.670597>,  <38.177471, 31.914072, 29.752401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.266758, 32.121281, 29.670597>,  <38.415569, 32.466629, 29.534256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266758, 32.121281, 29.670597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358385, -0.472342, -0.805266,
		0.856243, -0.177428, 0.485146,
		-0.372031, -0.863373, 0.340852,
		38.155148, 31.862268, 29.772852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948517, 32.108177, 29.521828>,  <38.415569, 32.466629, 29.534256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948517, 32.108177, 29.521828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.628769, 31.867916, 29.515816>,  <38.436920, 31.723759, 29.512209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.628769, 31.867916, 29.515816>,  <38.948517, 32.108177, 29.521828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628769, 31.867916, 29.515816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401194, -0.514959, -0.757536,
		0.447278, -0.611579, 0.652621,
		-0.799366, -0.600657, -0.015032,
		38.388958, 31.687719, 29.511307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239555, 31.427519, 29.528866>,  <38.948517, 32.108177, 29.521828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239555, 31.427519, 29.528866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.870804, 31.386959, 29.379272>,  <38.649555, 31.362623, 29.289516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.870804, 31.386959, 29.379272>,  <39.239555, 31.427519, 29.528866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870804, 31.386959, 29.379272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361430, -0.572977, -0.735572,
		-0.139696, -0.813275, 0.564863,
		-0.921875, -0.101401, -0.373985,
		38.594242, 31.356539, 29.267076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182796, 30.711824, 29.333410>,  <39.239555, 31.427519, 29.528866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182796, 30.711824, 29.333410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.913258, 30.922363, 29.125994>,  <38.751534, 31.048687, 29.001543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.913258, 30.922363, 29.125994>,  <39.182796, 30.711824, 29.333410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913258, 30.922363, 29.125994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225303, -0.522005, -0.822648,
		-0.703680, -0.671169, 0.233165,
		-0.673849, 0.526348, -0.518541,
		38.711102, 31.080267, 28.970432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865528, 30.157166, 28.919153>,  <39.182796, 30.711824, 29.333410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865528, 30.157166, 28.919153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.785183, 30.501730, 28.732552>,  <38.736977, 30.708469, 28.620590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.785183, 30.501730, 28.732552>,  <38.865528, 30.157166, 28.919153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785183, 30.501730, 28.732552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224454, -0.423072, -0.877856,
		-0.953560, -0.281035, -0.108369,
		-0.200860, 0.861412, -0.466504,
		38.724926, 30.760153, 28.592600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530251, 29.927341, 28.145159>,  <38.865528, 30.157166, 28.919153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530251, 29.927341, 28.145159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.609272, 30.319366, 28.136700>,  <38.656685, 30.554583, 28.131624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.609272, 30.319366, 28.136700>,  <38.530251, 29.927341, 28.145159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609272, 30.319366, 28.136700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164385, -0.054388, -0.984895,
		-0.966411, 0.191090, -0.171852,
		0.197550, 0.980064, -0.021149,
		38.668537, 30.613386, 28.130356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041611, 30.259712, 27.643789>,  <38.530251, 29.927341, 28.145159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041611, 30.259712, 27.643789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.371273, 30.479874, 27.697184>,  <38.569073, 30.611971, 27.729219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.371273, 30.479874, 27.697184>,  <38.041611, 30.259712, 27.643789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371273, 30.479874, 27.697184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191174, -0.048501, -0.980357,
		-0.533117, 0.833489, -0.145195,
		0.824159, 0.550402, 0.133485,
		38.618523, 30.644995, 27.737228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021561, 30.657192, 27.095728>,  <38.041611, 30.259712, 27.643789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021561, 30.657192, 27.095728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.403088, 30.698793, 27.208452>,  <38.632004, 30.723753, 27.276087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.403088, 30.698793, 27.208452>,  <38.021561, 30.657192, 27.095728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403088, 30.698793, 27.208452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291090, -0.088382, -0.952604,
		-0.074165, 0.990642, -0.114574,
		0.953817, 0.104001, 0.281811,
		38.689232, 30.729994, 27.292995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264080, 31.168682, 26.677202>,  <38.021561, 30.657192, 27.095728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264080, 31.168682, 26.677202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.598713, 30.995857, 26.811935>,  <38.799492, 30.892162, 26.892775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.598713, 30.995857, 26.811935>,  <38.264080, 31.168682, 26.677202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598713, 30.995857, 26.811935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422296, 0.116900, -0.898889,
		0.349000, 0.894235, 0.280254,
		0.836579, -0.432062, 0.336834,
		38.849686, 30.866238, 26.912985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930641, 31.579102, 26.621750>,  <38.264080, 31.168682, 26.677202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930641, 31.579102, 26.621750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.050705, 31.197731, 26.609852>,  <39.122742, 30.968908, 26.602713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.050705, 31.197731, 26.609852>,  <38.930641, 31.579102, 26.621750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050705, 31.197731, 26.609852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339078, 0.135793, -0.930906,
		0.891589, 0.269333, 0.364045,
		0.300158, -0.953425, -0.029746,
		39.140751, 30.911703, 26.600927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498825, 31.537191, 26.208065>,  <38.930641, 31.579102, 26.621750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498825, 31.537191, 26.208065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.447453, 31.140507, 26.206823>,  <39.416630, 30.902496, 26.206079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.447453, 31.140507, 26.206823>,  <39.498825, 31.537191, 26.208065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447453, 31.140507, 26.206823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327768, -0.039495, -0.943932,
		0.935988, -0.122250, 0.330124,
		-0.128434, -0.991713, -0.003103,
		39.408924, 30.842993, 26.205893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039574, 31.168629, 25.856197>,  <39.498825, 31.537191, 26.208065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039574, 31.168629, 25.856197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.722282, 30.928934, 25.812918>,  <39.531910, 30.785118, 25.786949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.722282, 30.928934, 25.812918>,  <40.039574, 31.168629, 25.856197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722282, 30.928934, 25.812918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226516, -0.125438, -0.965896,
		0.565228, -0.790683, 0.235238,
		-0.793226, -0.599237, -0.108201,
		39.484314, 30.749163, 25.780457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670879, 30.793821, 26.011852>,  <40.039574, 31.168629, 25.856197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670879, 30.793821, 26.011852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.032005, 30.959297, 25.964874>,  <41.248680, 31.058582, 25.936687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.032005, 30.959297, 25.964874>,  <40.670879, 30.793821, 26.011852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032005, 30.959297, 25.964874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057674, 0.154163, 0.986361,
		0.426153, -0.897271, 0.115322,
		0.902811, 0.413689, -0.117446,
		41.302849, 31.083405, 25.929640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162338, 30.349977, 26.311949>,  <40.670879, 30.793821, 26.011852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162338, 30.349977, 26.311949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.319214, 30.717691, 26.298664>,  <41.413338, 30.938320, 26.290693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.319214, 30.717691, 26.298664>,  <41.162338, 30.349977, 26.311949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319214, 30.717691, 26.298664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095852, -0.004932, 0.995383,
		0.914877, -0.393563, -0.090049,
		0.392190, 0.919284, -0.033212,
		41.436871, 30.993477, 26.288700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810925, 30.297882, 26.572285>,  <41.162338, 30.349977, 26.311949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810925, 30.297882, 26.572285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.691513, 30.677633, 26.611404>,  <41.619865, 30.905483, 26.634876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.691513, 30.677633, 26.611404>,  <41.810925, 30.297882, 26.572285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691513, 30.677633, 26.611404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137095, -0.058754, 0.988814,
		0.944503, 0.308598, -0.112615,
		-0.298529, 0.949376, 0.097801,
		41.601955, 30.962446, 26.640745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080669, 30.426933, 27.159576>,  <41.810925, 30.297882, 26.572285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080669, 30.426933, 27.159576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.836575, 30.741148, 27.118507>,  <41.690117, 30.929676, 27.093866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.836575, 30.741148, 27.118507>,  <42.080669, 30.426933, 27.159576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.836575, 30.741148, 27.118507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054567, 0.087616, 0.994659,
		0.790336, 0.612581, -0.010602,
		-0.610238, 0.785537, -0.102672,
		41.653503, 30.976809, 27.087706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.394123, 30.926481, 27.533968>,  <42.080669, 30.426933, 27.159576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.394123, 30.926481, 27.533968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.026054, 31.082794, 27.543541>,  <41.805214, 31.176582, 27.549284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.026054, 31.082794, 27.543541>,  <42.394123, 30.926481, 27.533968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026054, 31.082794, 27.543541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170954, 0.346053, 0.922509,
		0.352217, 0.852958, -0.385234,
		-0.920173, 0.390780, 0.023931,
		41.750004, 31.200027, 27.550720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402527, 31.547249, 27.818232>,  <42.394123, 30.926481, 27.533968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402527, 31.547249, 27.818232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.015862, 31.455959, 27.864651>,  <41.783863, 31.401186, 27.892502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.015862, 31.455959, 27.864651>,  <42.402527, 31.547249, 27.818232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015862, 31.455959, 27.864651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026404, 0.361977, 0.931813,
		-0.254668, 0.903818, -0.343886,
		-0.966668, -0.228223, 0.116048,
		41.725861, 31.387493, 27.899466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.179077, 32.086872, 28.130203>,  <42.402527, 31.547249, 27.818232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.179077, 32.086872, 28.130203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.924385, 31.789494, 28.212036>,  <41.771568, 31.611065, 28.261135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.924385, 31.789494, 28.212036>,  <42.179077, 32.086872, 28.130203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924385, 31.789494, 28.212036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020764, 0.281750, 0.959263,
		-0.770806, 0.606545, -0.194837,
		-0.636732, -0.743451, 0.204580,
		41.733364, 31.566458, 28.273411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.602798, 32.358112, 28.539267>,  <42.179077, 32.086872, 28.130203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.602798, 32.358112, 28.539267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.587082, 31.964695, 28.609814>,  <41.577652, 31.728645, 28.652142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.587082, 31.964695, 28.609814>,  <41.602798, 32.358112, 28.539267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.587082, 31.964695, 28.609814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018668, 0.177198, 0.983998,
		-0.999053, 0.035374, -0.025324,
		-0.039295, -0.983539, 0.176370,
		41.575294, 31.669634, 28.662725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075474, 32.204132, 28.996386>,  <41.602798, 32.358112, 28.539267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075474, 32.204132, 28.996386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.321949, 31.891596, 29.036024>,  <41.469833, 31.704075, 29.059807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.321949, 31.891596, 29.036024>,  <41.075474, 32.204132, 28.996386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321949, 31.891596, 29.036024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146253, 0.010117, 0.989196,
		-0.773902, -0.624022, -0.108040,
		0.616187, -0.781342, 0.099095,
		41.506805, 31.657194, 29.065752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783970, 31.975508, 29.512499>,  <41.075474, 32.204132, 28.996386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783970, 31.975508, 29.512499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.116821, 31.753742, 29.507015>,  <41.316532, 31.620682, 29.503725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.116821, 31.753742, 29.507015>,  <40.783970, 31.975508, 29.512499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116821, 31.753742, 29.507015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097870, -0.171134, 0.980375,
		-0.545881, -0.814455, -0.196666,
		0.832127, -0.554416, -0.013708,
		41.366459, 31.587418, 29.502903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616383, 31.408545, 29.769999>,  <40.783970, 31.975508, 29.512499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616383, 31.408545, 29.769999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.012630, 31.417259, 29.823963>,  <41.250378, 31.422487, 29.856342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.012630, 31.417259, 29.823963>,  <40.616383, 31.408545, 29.769999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012630, 31.417259, 29.823963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126752, -0.222592, 0.966637,
		0.051091, -0.974668, -0.217742,
		0.990618, 0.021787, 0.134914,
		41.309814, 31.423796, 29.864437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838482, 30.844244, 30.077593>,  <40.616383, 31.408545, 29.769999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838482, 30.844244, 30.077593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.107296, 31.130140, 30.155064>,  <41.268585, 31.301678, 30.201546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.107296, 31.130140, 30.155064>,  <40.838482, 30.844244, 30.077593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107296, 31.130140, 30.155064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120196, -0.152789, 0.980922,
		0.730696, -0.682497, -0.016771,
		0.672039, 0.714740, 0.193675,
		41.308907, 31.344563, 30.213167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197300, 30.596180, 30.663532>,  <40.838482, 30.844244, 30.077593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197300, 30.596180, 30.663532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.304901, 30.981321, 30.654140>,  <41.369461, 31.212406, 30.648506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.304901, 30.981321, 30.654140>,  <41.197300, 30.596180, 30.663532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304901, 30.981321, 30.654140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045852, 0.037151, 0.998257,
		0.962047, -0.267457, 0.054142,
		0.269002, 0.962853, -0.023478,
		41.385601, 31.270178, 30.647097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.721458, 30.684025, 31.160358>,  <41.197300, 30.596180, 30.663532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.721458, 30.684025, 31.160358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.570663, 31.050056, 31.103071>,  <41.480186, 31.269674, 31.068699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.570663, 31.050056, 31.103071>,  <41.721458, 30.684025, 31.160358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570663, 31.050056, 31.103071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099957, 0.193918, 0.975912,
		0.920808, 0.353594, -0.164573,
		-0.376991, 0.915078, -0.143217,
		41.457565, 31.324579, 31.060106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.909801, 33.846268, 24.976427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.532570, 33.799374, 24.851936>,  <41.306232, 33.771236, 24.777243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.532570, 33.799374, 24.851936>,  <41.909801, 33.846268, 24.976427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532570, 33.799374, 24.851936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328335, -0.179280, -0.927391,
		0.052926, -0.976788, 0.207568,
		-0.943077, -0.117235, -0.311226,
		41.249645, 33.764202, 24.758568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.965752, 33.137108, 24.670637>,  <41.909801, 33.846268, 24.976427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.965752, 33.137108, 24.670637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.647129, 33.341976, 24.542152>,  <41.455956, 33.464897, 24.465061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.647129, 33.341976, 24.542152>,  <41.965752, 33.137108, 24.670637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647129, 33.341976, 24.542152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223704, -0.243895, -0.943648,
		-0.561654, -0.823525, 0.079701,
		-0.796556, 0.512174, -0.321210,
		41.408161, 33.495628, 24.445789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.799019, 32.792618, 24.134960>,  <41.965752, 33.137108, 24.670637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.799019, 32.792618, 24.134960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.609612, 33.136032, 24.056269>,  <41.495968, 33.342079, 24.009054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.609612, 33.136032, 24.056269>,  <41.799019, 32.792618, 24.134960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609612, 33.136032, 24.056269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072657, -0.184519, -0.980140,
		-0.877781, -0.478409, 0.024994,
		-0.473520, 0.858532, -0.196727,
		41.467556, 33.393593, 23.997252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308395, 32.565430, 23.683891>,  <41.799019, 32.792618, 24.134960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.308395, 32.565430, 23.683891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.335094, 32.961891, 23.638004>,  <41.351112, 33.199768, 23.610472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.335094, 32.961891, 23.638004>,  <41.308395, 32.565430, 23.683891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335094, 32.961891, 23.638004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056461, -0.118540, -0.991343,
		-0.996171, 0.059692, -0.063874,
		0.066747, 0.991153, -0.114716,
		41.355118, 33.259235, 23.603590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728050, 32.774128, 23.273903>,  <41.308395, 32.565430, 23.683891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728050, 32.774128, 23.273903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.985252, 33.080204, 23.261074>,  <41.139572, 33.263851, 23.253378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.985252, 33.080204, 23.261074>,  <40.728050, 32.774128, 23.273903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.985252, 33.080204, 23.261074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093648, -0.120116, -0.988333,
		-0.760116, 0.632499, -0.148894,
		0.643004, 0.765191, -0.032070,
		41.178154, 33.309761, 23.251453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536240, 33.367554, 22.793581>,  <40.728050, 32.774128, 23.273903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536240, 33.367554, 22.793581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.935844, 33.382549, 22.803108>,  <41.175606, 33.391544, 22.808825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.935844, 33.382549, 22.803108>,  <40.536240, 33.367554, 22.793581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935844, 33.382549, 22.803108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022375, 0.038508, -0.999008,
		-0.038365, 0.998555, 0.037632,
		0.999013, 0.037485, 0.023820,
		41.235550, 33.393795, 22.810255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708450, 33.639957, 22.160177>,  <40.536240, 33.367554, 22.793581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708450, 33.639957, 22.160177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.070713, 33.529953, 22.289270>,  <41.288071, 33.463951, 22.366726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.070713, 33.529953, 22.289270>,  <40.708450, 33.639957, 22.160177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070713, 33.529953, 22.289270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346086, 0.039691, -0.937363,
		0.244979, 0.960620, 0.131125,
		0.905654, -0.275015, 0.322734,
		41.342411, 33.447449, 22.386091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190643, 34.061420, 21.775988>,  <40.708450, 33.639957, 22.160177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.190643, 34.061420, 21.775988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.395538, 33.741505, 21.901180>,  <41.518475, 33.549557, 21.976295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.395538, 33.741505, 21.901180>,  <41.190643, 34.061420, 21.775988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395538, 33.741505, 21.901180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547850, 0.023627, -0.836243,
		0.661421, 0.599820, 0.450265,
		0.512234, -0.799786, 0.312983,
		41.549210, 33.501568, 21.995075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957993, 34.095970, 21.544432>,  <41.190643, 34.061420, 21.775988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957993, 34.095970, 21.544432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.884422, 33.705521, 21.590652>,  <41.840279, 33.471252, 21.618385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.884422, 33.705521, 21.590652>,  <41.957993, 34.095970, 21.544432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884422, 33.705521, 21.590652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263866, -0.162275, -0.950811,
		0.946861, -0.144390, 0.287413,
		-0.183928, -0.976124, 0.115552,
		41.829243, 33.412682, 21.625319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.622799, 33.710232, 21.223894>,  <41.957993, 34.095970, 21.544432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.622799, 33.710232, 21.223894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.336197, 33.431690, 21.240427>,  <42.164234, 33.264565, 21.250347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.336197, 33.431690, 21.240427>,  <42.622799, 33.710232, 21.223894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336197, 33.431690, 21.240427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315111, -0.375953, -0.871415,
		0.622356, -0.611348, 0.488802,
		-0.716504, -0.696357, 0.041334,
		42.121246, 33.222782, 21.252827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.958961, 33.117874, 20.962080>,  <42.622799, 33.710232, 21.223894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.958961, 33.117874, 20.962080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.572178, 33.017006, 20.947132>,  <42.340107, 32.956486, 20.938164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.572178, 33.017006, 20.947132>,  <42.958961, 33.117874, 20.962080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.572178, 33.017006, 20.947132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149931, -0.444011, -0.883388,
		0.206175, -0.859804, 0.467149,
		-0.966961, -0.252173, -0.037368,
		42.282089, 32.941353, 20.935923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.903019, 32.285484, 20.816446>,  <42.958961, 33.117874, 20.962080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.903019, 32.285484, 20.816446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.608742, 32.538559, 20.719732>,  <42.432175, 32.690403, 20.661703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.608742, 32.538559, 20.719732>,  <42.903019, 32.285484, 20.816446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.608742, 32.538559, 20.719732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204617, -0.132689, -0.969807,
		-0.645666, -0.762956, -0.031840,
		-0.735695, 0.632686, -0.241787,
		42.388035, 32.728363, 20.647196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.455242, 31.974997, 20.248737>,  <42.903019, 32.285484, 20.816446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.455242, 31.974997, 20.248737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.484543, 32.372684, 20.217340>,  <42.502125, 32.611298, 20.198503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.484543, 32.372684, 20.217340>,  <42.455242, 31.974997, 20.248737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.484543, 32.372684, 20.217340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305458, -0.097288, -0.947223,
		-0.949384, 0.045414, -0.310819,
		0.073256, 0.994220, -0.078491,
		42.506519, 32.670952, 20.193792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879681, 31.522671, 20.036388>,  <42.455242, 31.974997, 20.248737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879681, 31.522671, 20.036388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.787609, 31.680698, 19.680651>,  <41.732365, 31.775515, 19.467207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.787609, 31.680698, 19.680651>,  <41.879681, 31.522671, 20.036388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787609, 31.680698, 19.680651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287373, 0.845535, 0.449985,
		0.929749, 0.359152, -0.081094,
		-0.230181, 0.395069, -0.889347,
		41.718555, 31.799219, 19.413847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730350, 30.747898, 20.209141>,  <41.879681, 31.522671, 20.036388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730350, 30.747898, 20.209141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.704147, 30.370907, 20.340256>,  <41.688427, 30.144712, 20.418924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.704147, 30.370907, 20.340256>,  <41.730350, 30.747898, 20.209141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704147, 30.370907, 20.340256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050479, 0.324943, 0.944385,
		-0.996574, 0.078409, 0.026289,
		-0.065506, -0.942477, 0.327788,
		41.684494, 30.088163, 20.438593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182236, 30.699978, 20.817072>,  <41.730350, 30.747898, 20.209141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.182236, 30.699978, 20.817072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.428963, 30.386585, 20.847244>,  <41.577000, 30.198549, 20.865349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.428963, 30.386585, 20.847244>,  <41.182236, 30.699978, 20.817072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428963, 30.386585, 20.847244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085307, 0.028727, 0.995940,
		-0.782470, -0.620748, -0.049118,
		0.616817, -0.783483, 0.075432,
		41.614010, 30.151541, 20.869873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855949, 30.299562, 21.273075>,  <41.182236, 30.699978, 20.817072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855949, 30.299562, 21.273075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.239712, 30.187885, 21.289057>,  <41.469967, 30.120878, 21.298647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.239712, 30.187885, 21.289057>,  <40.855949, 30.299562, 21.273075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239712, 30.187885, 21.289057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041133, 0.278662, 0.959508,
		-0.279024, -0.918911, 0.278833,
		0.959403, -0.279195, 0.039956,
		41.527534, 30.104126, 21.301044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930275, 29.882820, 21.868168>,  <40.855949, 30.299562, 21.273075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.930275, 29.882820, 21.868168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.305706, 30.003202, 21.800652>,  <41.530964, 30.075432, 21.760141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.305706, 30.003202, 21.800652>,  <40.930275, 29.882820, 21.868168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305706, 30.003202, 21.800652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079936, 0.286222, 0.954823,
		0.335676, -0.909670, 0.244585,
		0.938580, 0.300960, -0.168793,
		41.587280, 30.093491, 21.750013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139145, 29.807627, 22.468567>,  <40.930275, 29.882820, 21.868168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139145, 29.807627, 22.468567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.447445, 30.012951, 22.317593>,  <41.632423, 30.136145, 22.227009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.447445, 30.012951, 22.317593>,  <41.139145, 29.807627, 22.468567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447445, 30.012951, 22.317593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234252, 0.322597, 0.917091,
		0.592511, -0.795264, 0.128398,
		0.770751, 0.513309, -0.377435,
		41.678669, 30.166945, 22.204363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.606247, 29.726202, 22.978573>,  <41.139145, 29.807627, 22.468567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.606247, 29.726202, 22.978573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.764885, 30.027554, 22.768761>,  <41.860069, 30.208364, 22.642874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.764885, 30.027554, 22.768761>,  <41.606247, 29.726202, 22.978573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.764885, 30.027554, 22.768761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277410, 0.446315, 0.850792,
		0.875074, -0.482930, -0.031988,
		0.396596, 0.753380, -0.524529,
		41.883865, 30.253567, 22.611403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227406, 29.801739, 23.264641>,  <41.606247, 29.726202, 22.978573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227406, 29.801739, 23.264641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.147091, 30.147491, 23.080235>,  <42.098904, 30.354942, 22.969591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.147091, 30.147491, 23.080235>,  <42.227406, 29.801739, 23.264641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.147091, 30.147491, 23.080235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066747, 0.457433, 0.886735,
		0.977359, 0.208813, -0.034150,
		-0.200783, 0.864379, -0.461014,
		42.086857, 30.406805, 22.941931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.719337, 30.277401, 23.546906>,  <42.227406, 29.801739, 23.264641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.719337, 30.277401, 23.546906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.415642, 30.501959, 23.415215>,  <42.233425, 30.636694, 23.336201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.415642, 30.501959, 23.415215>,  <42.719337, 30.277401, 23.546906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.415642, 30.501959, 23.415215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015163, 0.490475, 0.871324,
		0.650635, 0.666536, -0.363875,
		-0.759240, 0.561396, -0.329226,
		42.187870, 30.670378, 23.316446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.816303, 30.904669, 23.777819>,  <42.719337, 30.277401, 23.546906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.816303, 30.904669, 23.777819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.420227, 30.890055, 23.723886>,  <42.182579, 30.881287, 23.691528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.420227, 30.890055, 23.723886>,  <42.816303, 30.904669, 23.777819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.420227, 30.890055, 23.723886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137814, 0.413179, 0.900161,
		0.022821, 0.909917, -0.414162,
		-0.990195, -0.036535, -0.134828,
		42.123169, 30.879095, 23.683437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.608597, 31.574211, 24.002657>,  <42.816303, 30.904669, 23.777819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.608597, 31.574211, 24.002657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.285992, 31.338795, 24.025108>,  <42.092426, 31.197544, 24.038578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.285992, 31.338795, 24.025108>,  <42.608597, 31.574211, 24.002657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285992, 31.338795, 24.025108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084964, 0.209333, 0.974146,
		-0.585074, 0.780897, -0.218835,
		-0.806517, -0.588540, 0.056127,
		42.044037, 31.162233, 24.041946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982075, 32.047295, 24.303701>,  <42.608597, 31.574211, 24.002657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982075, 32.047295, 24.303701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.896111, 31.658323, 24.339912>,  <41.844532, 31.424940, 24.361639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.896111, 31.658323, 24.339912>,  <41.982075, 32.047295, 24.303701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.896111, 31.658323, 24.339912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236410, 0.141734, 0.961260,
		-0.947588, 0.185183, -0.260352,
		-0.214910, -0.972429, 0.090527,
		41.831638, 31.366594, 24.367071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434132, 31.951399, 24.680540>,  <41.982075, 32.047295, 24.303701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.434132, 31.951399, 24.680540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.575409, 31.579515, 24.722288>,  <41.660175, 31.356384, 24.747337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.575409, 31.579515, 24.722288>,  <41.434132, 31.951399, 24.680540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575409, 31.579515, 24.722288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220192, 0.025820, 0.975115,
		-0.909269, -0.367385, -0.195596,
		0.353192, -0.929711, 0.104372,
		41.681366, 31.300602, 24.753599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896618, 31.629908, 25.065817>,  <41.434132, 31.951399, 24.680540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896618, 31.629908, 25.065817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.215240, 31.391521, 25.106443>,  <41.406414, 31.248489, 25.130819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.215240, 31.391521, 25.106443>,  <40.896618, 31.629908, 25.065817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215240, 31.391521, 25.106443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111400, 0.020430, 0.993566,
		-0.594207, -0.802749, -0.050118,
		0.796560, -0.595967, 0.101566,
		41.454208, 31.212732, 25.136913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615963, 31.138588, 25.355854>,  <40.896618, 31.629908, 25.065817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615963, 31.138588, 25.355854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.004890, 31.128422, 25.448761>,  <41.238247, 31.122322, 25.504505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.004890, 31.128422, 25.448761>,  <40.615963, 31.138588, 25.355854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.004890, 31.128422, 25.448761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231439, 0.031848, 0.972328,
		-0.032116, -0.999169, 0.025083,
		0.972319, -0.025422, 0.232270,
		41.296585, 31.120796, 25.518442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233315, 30.492802, 25.454338>,  <40.615963, 31.138588, 25.355854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233315, 30.492802, 25.454338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.836185, 30.476313, 25.409441>,  <39.597908, 30.466419, 25.382502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.836185, 30.476313, 25.409441>,  <40.233315, 30.492802, 25.454338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836185, 30.476313, 25.409441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119368, -0.286622, -0.950578,
		0.007012, -0.957157, 0.289486,
		-0.992825, -0.041221, -0.112244,
		39.538338, 30.463947, 25.375767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178883, 29.872034, 25.013607>,  <40.233315, 30.492802, 25.454338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178883, 29.872034, 25.013607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.803364, 30.005018, 24.977528>,  <39.578053, 30.084808, 24.955879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.803364, 30.005018, 24.977528>,  <40.178883, 29.872034, 25.013607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803364, 30.005018, 24.977528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011680, -0.230973, -0.972890,
		-0.344282, -0.914396, 0.212953,
		-0.938793, 0.332462, -0.090200,
		39.521725, 30.104755, 24.950468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795925, 29.323668, 24.748453>,  <40.178883, 29.872034, 25.013607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795925, 29.323668, 24.748453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.580841, 29.652283, 24.672615>,  <39.451790, 29.849451, 24.627113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.580841, 29.652283, 24.672615>,  <39.795925, 29.323668, 24.748453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580841, 29.652283, 24.672615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116453, -0.295081, -0.948349,
		-0.835049, -0.487858, 0.254338,
		-0.537710, 0.821536, -0.189594,
		39.419529, 29.898743, 24.615736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250702, 29.145542, 24.314613>,  <39.795925, 29.323668, 24.748453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250702, 29.145542, 24.314613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.236839, 29.542410, 24.266615>,  <39.228523, 29.780531, 24.237816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.236839, 29.542410, 24.266615>,  <39.250702, 29.145542, 24.314613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236839, 29.542410, 24.266615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279964, -0.124898, -0.951851,
		-0.959385, 0.000608, 0.282100,
		-0.034655, 0.992169, -0.119996,
		39.226444, 29.840061, 24.230616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680454, 29.335548, 24.020512>,  <39.250702, 29.145542, 24.314613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680454, 29.335548, 24.020512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.923000, 29.641161, 23.932354>,  <39.068527, 29.824530, 23.879459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.923000, 29.641161, 23.932354>,  <38.680454, 29.335548, 24.020512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923000, 29.641161, 23.932354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220441, -0.104788, -0.969755,
		-0.764020, 0.636610, 0.104885,
		0.606366, 0.764033, -0.220395,
		39.104912, 29.870371, 23.866236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264771, 29.770136, 23.534716>,  <38.680454, 29.335548, 24.020512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264771, 29.770136, 23.534716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.652405, 29.841345, 23.466385>,  <38.884987, 29.884071, 23.425386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.652405, 29.841345, 23.466385>,  <38.264771, 29.770136, 23.534716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652405, 29.841345, 23.466385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184873, 0.065437, -0.980582,
		-0.163388, 0.981848, 0.096326,
		0.969085, 0.178024, -0.170825,
		38.943130, 29.894753, 23.415136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405437, 30.473085, 23.276192>,  <38.264771, 29.770136, 23.534716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405437, 30.473085, 23.276192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.636715, 30.165529, 23.167013>,  <38.775482, 29.980995, 23.101505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.636715, 30.165529, 23.167013>,  <38.405437, 30.473085, 23.276192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636715, 30.165529, 23.167013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332680, 0.083290, -0.939355,
		0.744994, 0.633934, -0.207637,
		0.578194, -0.768890, -0.272947,
		38.810173, 29.934862, 23.085129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607838, 31.186033, 22.967323>,  <38.405437, 30.473085, 23.276192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607838, 31.186033, 22.967323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.507915, 31.560575, 22.868660>,  <38.447964, 31.785301, 22.809462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.507915, 31.560575, 22.868660>,  <38.607838, 31.186033, 22.967323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507915, 31.560575, 22.868660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041905, 0.244043, 0.968859,
		0.967390, 0.252360, -0.021725,
		-0.249803, 0.936354, -0.246660,
		38.432976, 31.841482, 22.794662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062420, 31.630167, 23.414461>,  <38.607838, 31.186033, 22.967323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062420, 31.630167, 23.414461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.752777, 31.861559, 23.311602>,  <38.566994, 32.000393, 23.249886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.752777, 31.861559, 23.311602>,  <39.062420, 31.630167, 23.414461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752777, 31.861559, 23.311602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035618, 0.445359, 0.894643,
		0.632055, 0.683388, -0.365359,
		-0.774104, 0.578478, -0.257150,
		38.520546, 32.035103, 23.234457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221268, 32.332867, 23.620724>,  <39.062420, 31.630167, 23.414461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221268, 32.332867, 23.620724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.822819, 32.308445, 23.595392>,  <38.583748, 32.293793, 23.580193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.822819, 32.308445, 23.595392>,  <39.221268, 32.332867, 23.620724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822819, 32.308445, 23.595392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078954, 0.303069, 0.949692,
		-0.038790, 0.951011, -0.306715,
		-0.996123, -0.061054, -0.063330,
		38.523983, 32.290127, 23.576393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898697, 32.963810, 23.814072>,  <39.221268, 32.332867, 23.620724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898697, 32.963810, 23.814072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.605469, 32.697330, 23.868883>,  <38.429531, 32.537441, 23.901770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.605469, 32.697330, 23.868883>,  <38.898697, 32.963810, 23.814072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605469, 32.697330, 23.868883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287715, 0.486303, 0.825063,
		-0.616297, 0.565407, -0.548172,
		-0.733074, -0.666202, 0.137031,
		38.385548, 32.497471, 23.909992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327374, 33.328953, 24.013939>,  <38.898697, 32.963810, 23.814072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327374, 33.328953, 24.013939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.208828, 32.961212, 24.117441>,  <38.137699, 32.740566, 24.179543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.208828, 32.961212, 24.117441>,  <38.327374, 33.328953, 24.013939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208828, 32.961212, 24.117441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482189, 0.377894, 0.790374,
		-0.824415, 0.109472, -0.555298,
		-0.296368, -0.919354, 0.258755,
		38.119919, 32.685406, 24.195068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587296, 33.360836, 24.068842>,  <38.327374, 33.328953, 24.013939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587296, 33.360836, 24.068842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.702965, 33.037727, 24.274323>,  <37.772366, 32.843864, 24.397612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.702965, 33.037727, 24.274323>,  <37.587296, 33.360836, 24.068842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702965, 33.037727, 24.274323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586349, 0.274723, 0.762051,
		-0.756686, -0.521574, -0.394192,
		0.289173, -0.807767, 0.513703,
		37.789715, 32.795399, 24.428434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985909, 33.152607, 24.445679>,  <37.587296, 33.360836, 24.068842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985909, 33.152607, 24.445679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.295300, 33.011066, 24.656021>,  <37.480934, 32.926144, 24.782227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.295300, 33.011066, 24.656021>,  <36.985909, 33.152607, 24.445679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295300, 33.011066, 24.656021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421455, 0.332534, 0.843680,
		-0.473400, -0.874192, 0.108076,
		0.773477, -0.353849, 0.525855,
		37.527344, 32.904911, 24.813778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.179329, 34.636551, 19.574558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.519474, 34.442558, 19.656216>,  <39.723560, 34.326164, 19.705210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.519474, 34.442558, 19.656216>,  <39.179329, 34.636551, 19.574558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519474, 34.442558, 19.656216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084501, 0.257066, 0.962692,
		-0.519363, -0.835891, 0.177619,
		0.850366, -0.484977, 0.204144,
		39.774586, 34.297066, 19.717459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989735, 34.086685, 20.025242>,  <39.179329, 34.636551, 19.574558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989735, 34.086685, 20.025242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.372719, 34.190968, 20.074730>,  <39.602509, 34.253536, 20.104422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.372719, 34.190968, 20.074730>,  <38.989735, 34.086685, 20.025242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372719, 34.190968, 20.074730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155190, 0.103728, 0.982424,
		0.243296, -0.959828, 0.139774,
		0.957456, 0.260711, 0.123719,
		39.659954, 34.269180, 20.111845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161343, 33.709431, 20.528130>,  <38.989735, 34.086685, 20.025242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161343, 33.709431, 20.528130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.411182, 34.021809, 20.529478>,  <39.561085, 34.209236, 20.530287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.411182, 34.021809, 20.529478>,  <39.161343, 33.709431, 20.528130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411182, 34.021809, 20.529478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375945, 0.296889, 0.877794,
		0.684503, -0.549535, 0.479027,
		0.624596, 0.780941, 0.003373,
		39.598560, 34.256092, 20.530491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392307, 33.680355, 21.161367>,  <39.161343, 33.709431, 20.528130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392307, 33.680355, 21.161367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.515911, 34.043282, 21.047327>,  <39.590073, 34.261040, 20.978903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.515911, 34.043282, 21.047327>,  <39.392307, 33.680355, 21.161367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515911, 34.043282, 21.047327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242576, 0.365049, 0.898830,
		0.919604, -0.208586, 0.332897,
		0.309007, 0.907321, -0.285103,
		39.608612, 34.315479, 20.961796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868938, 33.955151, 21.749660>,  <39.392307, 33.680355, 21.161367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868938, 33.955151, 21.749660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.763767, 34.275829, 21.534945>,  <39.700665, 34.468239, 21.406115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.763767, 34.275829, 21.534945>,  <39.868938, 33.955151, 21.749660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763767, 34.275829, 21.534945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186935, 0.503492, 0.843534,
		0.946532, 0.322137, 0.017481,
		-0.262932, 0.801700, -0.536790,
		39.684887, 34.516338, 21.373907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192562, 34.584419, 22.114948>,  <39.868938, 33.955151, 21.749660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192562, 34.584419, 22.114948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.898212, 34.751621, 21.901869>,  <39.721603, 34.851944, 21.774021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.898212, 34.751621, 21.901869>,  <40.192562, 34.584419, 22.114948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898212, 34.751621, 21.901869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293980, 0.511471, 0.807449,
		0.609977, 0.750780, -0.253492,
		-0.735870, 0.418003, -0.532699,
		39.677452, 34.877022, 21.742060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234097, 35.324444, 22.229740>,  <40.192562, 34.584419, 22.114948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234097, 35.324444, 22.229740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.856411, 35.231499, 22.136381>,  <39.629799, 35.175732, 22.080366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.856411, 35.231499, 22.136381>,  <40.234097, 35.324444, 22.229740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856411, 35.231499, 22.136381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327579, 0.589384, 0.738457,
		-0.034028, 0.773715, -0.632619,
		-0.944211, -0.232361, -0.233397,
		39.573147, 35.161789, 22.066362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816864, 36.003258, 22.329109>,  <40.234097, 35.324444, 22.229740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816864, 36.003258, 22.329109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.524342, 35.730705, 22.341221>,  <39.348827, 35.567173, 22.348488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.524342, 35.730705, 22.341221>,  <39.816864, 36.003258, 22.329109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524342, 35.730705, 22.341221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416349, 0.481137, 0.771467,
		-0.540231, 0.551569, -0.635548,
		-0.731303, -0.681380, 0.030280,
		39.304951, 35.526291, 22.350306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188828, 36.418427, 22.407988>,  <39.816864, 36.003258, 22.329109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188828, 36.418427, 22.407988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.071419, 36.051968, 22.517181>,  <39.000973, 35.832092, 22.582697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.071419, 36.051968, 22.517181>,  <39.188828, 36.418427, 22.407988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071419, 36.051968, 22.517181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432278, 0.381901, 0.816877,
		-0.852631, 0.121768, -0.508127,
		-0.293523, -0.916146, 0.272983,
		38.983360, 35.777122, 22.599075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510933, 36.504089, 22.610788>,  <39.188828, 36.418427, 22.407988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510933, 36.504089, 22.610788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.616997, 36.157120, 22.779198>,  <38.680634, 35.948936, 22.880243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.616997, 36.157120, 22.779198>,  <38.510933, 36.504089, 22.610788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616997, 36.157120, 22.779198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440993, 0.279207, 0.852976,
		-0.857448, -0.411841, -0.308496,
		0.265156, -0.867427, 0.421025,
		38.696545, 35.896893, 22.905506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929211, 36.212967, 22.957840>,  <38.510933, 36.504089, 22.610788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929211, 36.212967, 22.957840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.232903, 36.021454, 23.134176>,  <38.415115, 35.906544, 23.239977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.232903, 36.021454, 23.134176>,  <37.929211, 36.212967, 22.957840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232903, 36.021454, 23.134176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395669, 0.198245, 0.896741,
		-0.516743, -0.855255, -0.038929,
		0.759225, -0.478788, 0.440840,
		38.460670, 35.877819, 23.266428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664356, 35.726727, 23.488928>,  <37.929211, 36.212967, 22.957840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664356, 35.726727, 23.488928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.040062, 35.823479, 23.586321>,  <38.265484, 35.881531, 23.644756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.040062, 35.823479, 23.586321>,  <37.664356, 35.726727, 23.488928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040062, 35.823479, 23.586321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290533, 0.182706, 0.939260,
		0.182707, -0.952948, 0.241884,
		-0.939260, -0.241884, -0.243481,
		38.321838, 35.896046, 23.659365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146015, 35.188831, 23.573393>,  <37.664356, 35.726727, 23.488928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146015, 35.188831, 23.573393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.758251, 35.103046, 23.621157>,  <36.525593, 35.051575, 23.649815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.758251, 35.103046, 23.621157>,  <37.146015, 35.188831, 23.573393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758251, 35.103046, 23.621157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034214, -0.599774, -0.799438,
		0.243066, -0.770894, 0.588762,
		-0.969406, -0.214460, 0.119409,
		36.467430, 35.038708, 23.656979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040077, 34.398476, 23.460075>,  <37.146015, 35.188831, 23.573393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040077, 34.398476, 23.460075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.682827, 34.566502, 23.395739>,  <36.468475, 34.667316, 23.357136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.682827, 34.566502, 23.395739>,  <37.040077, 34.398476, 23.460075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682827, 34.566502, 23.395739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068084, -0.479713, -0.874780,
		-0.444614, -0.770342, 0.457046,
		-0.893131, 0.420056, -0.160839,
		36.414890, 34.692520, 23.347486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563686, 33.799755, 23.326429>,  <37.040077, 34.398476, 23.460075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563686, 33.799755, 23.326429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.379135, 34.123825, 23.181793>,  <36.268406, 34.318268, 23.095013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.379135, 34.123825, 23.181793>,  <36.563686, 33.799755, 23.326429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379135, 34.123825, 23.181793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049419, -0.430394, -0.901287,
		-0.885828, -0.397961, 0.238611,
		-0.461374, 0.810177, -0.361589,
		36.240723, 34.366879, 23.073317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973969, 33.594460, 22.978617>,  <36.563686, 33.799755, 23.326429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973969, 33.594460, 22.978617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.055744, 33.954178, 22.823971>,  <36.104809, 34.170010, 22.731182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.055744, 33.954178, 22.823971>,  <35.973969, 33.594460, 22.978617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055744, 33.954178, 22.823971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029034, -0.400356, -0.915899,
		-0.978449, 0.176020, -0.107959,
		0.204439, 0.899295, -0.386617,
		36.117077, 34.223965, 22.707985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501850, 33.617455, 22.356848>,  <35.973969, 33.594460, 22.978617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501850, 33.617455, 22.356848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.780815, 33.900452, 22.311123>,  <35.948196, 34.070251, 22.283688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.780815, 33.900452, 22.311123>,  <35.501850, 33.617455, 22.356848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780815, 33.900452, 22.311123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121729, -0.274131, -0.953957,
		-0.706253, 0.651389, -0.277306,
		0.697415, 0.707491, -0.114313,
		35.990040, 34.112698, 22.276829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302460, 33.969704, 21.757927>,  <35.501850, 33.617455, 22.356848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302460, 33.969704, 21.757927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.690868, 34.048756, 21.811686>,  <35.923912, 34.096188, 21.843941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.690868, 34.048756, 21.811686>,  <35.302460, 33.969704, 21.757927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690868, 34.048756, 21.811686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186302, -0.273660, -0.943611,
		-0.149708, 0.941303, -0.302549,
		0.971020, 0.197631, 0.134398,
		35.982174, 34.108044, 21.852005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435444, 34.422352, 21.256165>,  <35.302460, 33.969704, 21.757927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435444, 34.422352, 21.256165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.786152, 34.248219, 21.337902>,  <35.996578, 34.143738, 21.386944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.786152, 34.248219, 21.337902>,  <35.435444, 34.422352, 21.256165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786152, 34.248219, 21.337902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063896, -0.315691, -0.946708,
		0.476647, 0.843102, -0.248972,
		0.876769, -0.435338, 0.204344,
		36.049183, 34.117619, 21.399204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781044, 34.525501, 20.658379>,  <35.435444, 34.422352, 21.256165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781044, 34.525501, 20.658379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.982594, 34.239471, 20.852196>,  <36.103523, 34.067852, 20.968487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.982594, 34.239471, 20.852196>,  <35.781044, 34.525501, 20.658379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982594, 34.239471, 20.852196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295267, -0.384580, -0.874595,
		0.811747, 0.583752, 0.017360,
		0.503870, -0.715075, 0.484544,
		36.133755, 34.024948, 20.997559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434467, 34.525410, 20.379974>,  <35.781044, 34.525501, 20.658379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434467, 34.525410, 20.379974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.403873, 34.172035, 20.564882>,  <36.385517, 33.960011, 20.675827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.403873, 34.172035, 20.564882>,  <36.434467, 34.525410, 20.379974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403873, 34.172035, 20.564882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190797, -0.468028, -0.862871,
		0.978646, 0.022207, 0.204351,
		-0.076480, -0.883435, 0.462270,
		36.380928, 33.907005, 20.703564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029499, 34.150398, 20.261742>,  <36.434467, 34.525410, 20.379974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029499, 34.150398, 20.261742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.724121, 33.907597, 20.350004>,  <36.540894, 33.761913, 20.402962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.724121, 33.907597, 20.350004>,  <37.029499, 34.150398, 20.261742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724121, 33.907597, 20.350004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155905, -0.504738, -0.849078,
		0.626770, -0.613825, 0.479977,
		-0.763448, -0.607007, 0.220656,
		36.495087, 33.725494, 20.416201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348305, 33.468414, 20.244879>,  <37.029499, 34.150398, 20.261742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348305, 33.468414, 20.244879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.952240, 33.454567, 20.190643>,  <36.714603, 33.446259, 20.158102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.952240, 33.454567, 20.190643>,  <37.348305, 33.468414, 20.244879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952240, 33.454567, 20.190643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135456, -0.480345, -0.866556,
		-0.035133, -0.876396, 0.480308,
		-0.990160, -0.034616, -0.135590,
		36.655193, 33.444183, 20.149967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317764, 32.813255, 20.013271>,  <37.348305, 33.468414, 20.244879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317764, 32.813255, 20.013271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.962551, 32.948868, 19.889038>,  <36.749424, 33.030235, 19.814499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.962551, 32.948868, 19.889038>,  <37.317764, 32.813255, 20.013271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962551, 32.948868, 19.889038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085100, -0.542625, -0.835653,
		-0.451844, -0.768515, 0.453015,
		-0.888029, 0.339033, -0.310583,
		36.696144, 33.050579, 19.795864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960499, 32.444889, 19.822374>,  <37.317764, 32.813255, 20.013271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960499, 32.444889, 19.822374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.829292, 32.332947, 19.461468>,  <37.750568, 32.265781, 19.244925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.829292, 32.332947, 19.461468>,  <37.960499, 32.444889, 19.822374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829292, 32.332947, 19.461468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495011, 0.762565, -0.416484,
		0.804592, -0.583245, -0.111604,
		-0.328017, -0.279855, -0.902267,
		37.730888, 32.248989, 19.190788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544514, 32.085602, 19.490717>,  <37.960499, 32.444889, 19.822374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544514, 32.085602, 19.490717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.274403, 32.289513, 19.277500>,  <38.112335, 32.411858, 19.149570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.274403, 32.289513, 19.277500>,  <38.544514, 32.085602, 19.490717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274403, 32.289513, 19.277500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697368, 0.676613, -0.236374,
		0.240166, -0.531344, -0.812401,
		-0.675277, 0.509773, -0.533041,
		38.071819, 32.442444, 19.117588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111034, 32.318020, 19.934572>,  <38.544514, 32.085602, 19.490717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111034, 32.318020, 19.934572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.786053, 32.087048, 19.966806>,  <38.591064, 31.948463, 19.986147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.786053, 32.087048, 19.966806>,  <39.111034, 32.318020, 19.934572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786053, 32.087048, 19.966806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097357, 0.270641, 0.957745,
		-0.574845, 0.770275, -0.276099,
		-0.812450, -0.577435, 0.080585,
		38.542316, 31.913816, 19.990982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663536, 32.733852, 20.210226>,  <39.111034, 32.318020, 19.934572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663536, 32.733852, 20.210226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.537739, 32.362228, 20.288145>,  <38.462261, 32.139256, 20.334896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.537739, 32.362228, 20.288145>,  <38.663536, 32.733852, 20.210226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537739, 32.362228, 20.288145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189653, 0.262566, 0.946092,
		-0.930122, 0.260592, -0.258773,
		-0.314490, -0.929059, 0.194797,
		38.443394, 32.083511, 20.346584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044548, 32.772907, 20.552862>,  <38.663536, 32.733852, 20.210226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044548, 32.772907, 20.552862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.185921, 32.408207, 20.636578>,  <38.270744, 32.189388, 20.686808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.185921, 32.408207, 20.636578>,  <38.044548, 32.772907, 20.552862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185921, 32.408207, 20.636578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202398, 0.143897, 0.968674,
		-0.913301, -0.384723, -0.133678,
		0.353436, -0.911747, 0.209289,
		38.291950, 32.134682, 20.699364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593548, 32.488678, 21.050930>,  <38.044548, 32.772907, 20.552862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593548, 32.488678, 21.050930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.942932, 32.293926, 21.052378>,  <38.152561, 32.177074, 21.053246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.942932, 32.293926, 21.052378>,  <37.593548, 32.488678, 21.050930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942932, 32.293926, 21.052378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035517, -0.056303, 0.997782,
		-0.485600, -0.871650, -0.066471,
		0.873459, -0.486884, 0.003618,
		38.204971, 32.147861, 21.053463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509102, 31.805710, 21.366476>,  <37.593548, 32.488678, 21.050930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509102, 31.805710, 21.366476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.898697, 31.880766, 21.417290>,  <38.132454, 31.925798, 21.447779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.898697, 31.880766, 21.417290>,  <37.509102, 31.805710, 21.366476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898697, 31.880766, 21.417290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108330, -0.106821, 0.988359,
		0.199025, -0.976412, -0.083715,
		0.973989, 0.187639, 0.127035,
		38.190895, 31.937057, 21.455400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846931, 31.257200, 21.791023>,  <37.509102, 31.805710, 21.366476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846931, 31.257200, 21.791023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.071308, 31.585970, 21.830585>,  <38.205933, 31.783232, 21.854322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.071308, 31.585970, 21.830585>,  <37.846931, 31.257200, 21.791023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071308, 31.585970, 21.830585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070334, -0.166354, 0.983554,
		0.824861, -0.544762, -0.151124,
		0.560943, 0.821925, 0.098904,
		38.239590, 31.832548, 21.860256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183746, 31.068209, 22.409786>,  <37.846931, 31.257200, 21.791023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183746, 31.068209, 22.409786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.257084, 31.459541, 22.371307>,  <38.301086, 31.694342, 22.348221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.257084, 31.459541, 22.371307>,  <38.183746, 31.068209, 22.409786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257084, 31.459541, 22.371307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066217, 0.109922, 0.991732,
		0.980816, -0.175459, 0.084936,
		0.183344, 0.978331, -0.096195,
		38.312088, 31.753040, 22.342449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882828, 30.968723, 22.085363>,  <38.183746, 31.068209, 22.409786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882828, 30.968723, 22.085363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.028114, 30.623837, 22.226591>,  <39.115284, 30.416904, 22.311327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.028114, 30.623837, 22.226591>,  <38.882828, 30.968723, 22.085363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028114, 30.623837, 22.226591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177799, -0.436126, -0.882146,
		0.914584, 0.257632, -0.311708,
		0.363213, -0.862218, 0.353067,
		39.137077, 30.365171, 22.332512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420918, 30.741447, 21.545845>,  <38.882828, 30.968723, 22.085363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420918, 30.741447, 21.545845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.344086, 30.397181, 21.734463>,  <39.297985, 30.190620, 21.847633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.344086, 30.397181, 21.734463>,  <39.420918, 30.741447, 21.545845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344086, 30.397181, 21.734463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136232, -0.499223, -0.855697,
		0.971877, -0.100126, 0.213143,
		-0.192083, -0.860669, 0.471543,
		39.286461, 30.138981, 21.875925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911911, 30.317389, 21.312111>,  <39.420918, 30.741447, 21.545845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911911, 30.317389, 21.312111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.624855, 30.071419, 21.442871>,  <39.452621, 29.923838, 21.521328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.624855, 30.071419, 21.442871>,  <39.911911, 30.317389, 21.312111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624855, 30.071419, 21.442871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098660, -0.554440, -0.826355,
		0.689392, -0.560772, 0.458556,
		-0.717639, -0.614923, 0.326901,
		39.409565, 29.886942, 21.540941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137821, 29.637537, 21.402943>,  <39.911911, 30.317389, 21.312111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137821, 29.637537, 21.402943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.740711, 29.609346, 21.364079>,  <39.502445, 29.592432, 21.340759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.740711, 29.609346, 21.364079>,  <40.137821, 29.637537, 21.402943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740711, 29.609346, 21.364079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118727, -0.695503, -0.708646,
		-0.017632, -0.715058, 0.698842,
		-0.992770, -0.070477, -0.097160,
		39.442879, 29.588203, 21.334930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019203, 28.951241, 21.239340>,  <40.137821, 29.637537, 21.402943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019203, 28.951241, 21.239340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.670403, 29.113251, 21.129385>,  <39.461121, 29.210457, 21.063412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.670403, 29.113251, 21.129385>,  <40.019203, 28.951241, 21.239340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670403, 29.113251, 21.129385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042997, -0.622777, -0.781217,
		-0.487606, -0.669406, 0.560479,
		-0.872005, 0.405025, -0.274888,
		39.408802, 29.234758, 21.046919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681587, 28.390135, 20.933815>,  <40.019203, 28.951241, 21.239340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681587, 28.390135, 20.933815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.469753, 28.706747, 20.811819>,  <39.342651, 28.896713, 20.738623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.469753, 28.706747, 20.811819>,  <39.681587, 28.390135, 20.933815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469753, 28.706747, 20.811819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115213, -0.423337, -0.898616,
		-0.840394, -0.440757, 0.315389,
		-0.529588, 0.791529, -0.304989,
		39.310879, 28.944206, 20.720322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162857, 28.105085, 20.554251>,  <39.681587, 28.390135, 20.933815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162857, 28.105085, 20.554251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.162800, 28.486788, 20.434654>,  <39.162766, 28.715809, 20.362896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.162800, 28.486788, 20.434654>,  <39.162857, 28.105085, 20.554251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162800, 28.486788, 20.434654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236008, -0.290578, -0.927289,
		-0.971751, 0.070430, 0.225254,
		-0.000145, 0.954256, -0.298992,
		39.162758, 28.773064, 20.344957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554161, 28.195848, 20.022015>,  <39.162857, 28.105085, 20.554251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554161, 28.195848, 20.022015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.863609, 28.445187, 19.976479>,  <39.049278, 28.594790, 19.949158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.863609, 28.445187, 19.976479>,  <38.554161, 28.195848, 20.022015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863609, 28.445187, 19.976479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011685, -0.193656, -0.981000,
		-0.633546, 0.757587, -0.157099,
		0.773616, 0.623345, -0.113838,
		39.095695, 28.632191, 19.942327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393902, 28.701479, 19.433033>,  <38.554161, 28.195848, 20.022015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393902, 28.701479, 19.433033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.792751, 28.725689, 19.451242>,  <39.032063, 28.740215, 19.462168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.792751, 28.725689, 19.451242>,  <38.393902, 28.701479, 19.433033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792751, 28.725689, 19.451242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055789, -0.180465, -0.981998,
		-0.051221, 0.981717, -0.183324,
		0.997128, 0.060526, 0.045525,
		39.091888, 28.743847, 19.464901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.124615, 31.655205, 35.682755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.416924, 31.909931, 35.584415>,  <37.592308, 32.062767, 35.525414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.416924, 31.909931, 35.584415>,  <37.124615, 31.655205, 35.682755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416924, 31.909931, 35.584415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316335, -0.003225, -0.948642,
		-0.604902, 0.771010, 0.199090,
		0.730770, 0.636815, -0.245849,
		37.636154, 32.100975, 35.510662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856705, 32.084057, 35.176838>,  <37.124615, 31.655205, 35.682755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856705, 32.084057, 35.176838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.252544, 32.127617, 35.139248>,  <37.490047, 32.153751, 35.116692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.252544, 32.127617, 35.139248>,  <36.856705, 32.084057, 35.176838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252544, 32.127617, 35.139248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106116, 0.111627, -0.988068,
		-0.097107, 0.987766, 0.122022,
		0.989601, 0.108896, -0.093978,
		37.549423, 32.160286, 35.111053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929188, 32.674404, 34.743217>,  <36.856705, 32.084057, 35.176838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929188, 32.674404, 34.743217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.278156, 32.479053, 34.735439>,  <37.487537, 32.361843, 34.730774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.278156, 32.479053, 34.735439>,  <36.929188, 32.674404, 34.743217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278156, 32.479053, 34.735439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120018, 0.252623, -0.960092,
		0.473795, 0.835269, 0.279006,
		0.872418, -0.488373, -0.019444,
		37.539883, 32.332542, 34.729607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520748, 33.147720, 34.427486>,  <36.929188, 32.674404, 34.743217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520748, 33.147720, 34.427486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.635334, 32.766624, 34.387043>,  <37.704086, 32.537968, 34.362778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.635334, 32.766624, 34.387043>,  <37.520748, 33.147720, 34.427486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635334, 32.766624, 34.387043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241753, 0.173996, -0.954610,
		0.927087, 0.249023, 0.280172,
		0.286469, -0.952740, -0.101107,
		37.721275, 32.480804, 34.356712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987179, 33.177715, 33.921509>,  <37.520748, 33.147720, 34.427486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987179, 33.177715, 33.921509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.882015, 32.791821, 33.916412>,  <37.818916, 32.560284, 33.913353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.882015, 32.791821, 33.916412>,  <37.987179, 33.177715, 33.921509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882015, 32.791821, 33.916412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062537, -0.003857, -0.998035,
		0.962793, -0.263186, 0.061346,
		-0.262906, -0.964737, -0.012745,
		37.803143, 32.502399, 33.912590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430901, 32.975739, 33.416119>,  <37.987179, 33.177715, 33.921509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430901, 32.975739, 33.416119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.175041, 32.669113, 33.438858>,  <38.021526, 32.485138, 33.452503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.175041, 32.669113, 33.438858>,  <38.430901, 32.975739, 33.416119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175041, 32.669113, 33.438858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143146, -0.191459, -0.971006,
		0.755225, -0.612960, 0.232196,
		-0.639644, -0.766566, 0.056852,
		37.983147, 32.439144, 33.455914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740967, 32.344311, 33.172276>,  <38.430901, 32.975739, 33.416119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740967, 32.344311, 33.172276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.344517, 32.319946, 33.125004>,  <38.106647, 32.305328, 33.096642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.344517, 32.319946, 33.125004>,  <38.740967, 32.344311, 33.172276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344517, 32.319946, 33.125004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126005, -0.146656, -0.981129,
		0.042426, -0.987311, 0.153029,
		-0.991122, -0.060908, -0.118184,
		38.047180, 32.301674, 33.089550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689953, 31.771328, 32.777027>,  <38.740967, 32.344311, 33.172276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689953, 31.771328, 32.777027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.327175, 31.933701, 32.731998>,  <38.109509, 32.031124, 32.704983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.327175, 31.933701, 32.731998>,  <38.689953, 31.771328, 32.777027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327175, 31.933701, 32.731998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016688, -0.301646, -0.953274,
		-0.420920, -0.862688, 0.280351,
		-0.906945, 0.405930, -0.112572,
		38.055092, 32.055481, 32.698227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251419, 31.221268, 32.416519>,  <38.689953, 31.771328, 32.777027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251419, 31.221268, 32.416519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.074265, 31.576376, 32.366367>,  <37.967972, 31.789440, 32.336277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.074265, 31.576376, 32.366367>,  <38.251419, 31.221268, 32.416519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074265, 31.576376, 32.366367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027183, -0.153072, -0.987841,
		-0.896167, -0.434091, 0.091926,
		-0.442884, 0.887769, -0.125378,
		37.941399, 31.842707, 32.328754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641209, 31.120214, 32.011623>,  <38.251419, 31.221268, 32.416519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641209, 31.120214, 32.011623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.701458, 31.512844, 31.964596>,  <37.737606, 31.748423, 31.936378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.701458, 31.512844, 31.964596>,  <37.641209, 31.120214, 32.011623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701458, 31.512844, 31.964596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204560, -0.085410, -0.975121,
		-0.967196, 0.170928, 0.187926,
		0.150625, 0.981575, -0.117574,
		37.746647, 31.807316, 31.929323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207100, 31.227802, 31.532137>,  <37.641209, 31.120214, 32.011623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207100, 31.227802, 31.532137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.457691, 31.538296, 31.503878>,  <37.608044, 31.724592, 31.486921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.457691, 31.538296, 31.503878>,  <37.207100, 31.227802, 31.532137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457691, 31.538296, 31.503878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148409, 0.029812, -0.988477,
		-0.765182, 0.629742, 0.133876,
		0.626476, 0.776232, -0.070648,
		37.645634, 31.771166, 31.482683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868912, 31.864212, 31.150204>,  <37.207100, 31.227802, 31.532137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868912, 31.864212, 31.150204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.267094, 31.848770, 31.115370>,  <37.506001, 31.839504, 31.094469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.267094, 31.848770, 31.115370>,  <36.868912, 31.864212, 31.150204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267094, 31.848770, 31.115370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083832, 0.079071, -0.993338,
		0.045233, 0.996121, 0.075475,
		0.995453, -0.038604, -0.087084,
		37.565731, 31.837189, 31.089245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966908, 32.646191, 31.100241>,  <36.868912, 31.864212, 31.150204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966908, 32.646191, 31.100241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.641399, 32.841305, 30.973845>,  <36.446095, 32.958374, 30.898006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.641399, 32.841305, 30.973845>,  <36.966908, 32.646191, 31.100241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641399, 32.841305, 30.973845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151297, 0.347154, 0.925523,
		0.561153, 0.800969, -0.208702,
		-0.813767, 0.487784, -0.315990,
		36.397270, 32.987640, 30.879047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993958, 33.297497, 31.381845>,  <36.966908, 32.646191, 31.100241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993958, 33.297497, 31.381845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.616184, 33.215328, 31.279198>,  <36.389523, 33.166027, 31.217609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.616184, 33.215328, 31.279198>,  <36.993958, 33.297497, 31.381845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616184, 33.215328, 31.279198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304431, 0.252113, 0.918564,
		-0.123997, 0.945643, -0.300640,
		-0.944429, -0.205424, -0.256622,
		36.332855, 33.153702, 31.202211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623726, 33.760483, 31.696838>,  <36.993958, 33.297497, 31.381845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623726, 33.760483, 31.696838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.347157, 33.495403, 31.581760>,  <36.181213, 33.336357, 31.512714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.347157, 33.495403, 31.581760>,  <36.623726, 33.760483, 31.696838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347157, 33.495403, 31.581760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516608, 0.175152, 0.838116,
		-0.505026, 0.728117, -0.463458,
		-0.691422, -0.662697, -0.287695,
		36.139729, 33.296593, 31.495451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974579, 34.161045, 31.725807>,  <36.623726, 33.760483, 31.696838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974579, 34.161045, 31.725807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.895397, 33.771538, 31.770681>,  <35.847889, 33.537834, 31.797606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.895397, 33.771538, 31.770681>,  <35.974579, 34.161045, 31.725807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895397, 33.771538, 31.770681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603872, 0.211307, 0.768562,
		-0.772108, 0.084396, -0.629862,
		-0.197957, -0.973769, 0.112188,
		35.836010, 33.479408, 31.804338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286293, 34.109516, 31.867928>,  <35.974579, 34.161045, 31.725807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286293, 34.109516, 31.867928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.367588, 33.727333, 31.953531>,  <35.416363, 33.498024, 32.004894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.367588, 33.727333, 31.953531>,  <35.286293, 34.109516, 31.867928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367588, 33.727333, 31.953531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548983, 0.069789, 0.832915,
		-0.810749, -0.286764, -0.510345,
		0.203233, -0.955456, 0.214010,
		35.428558, 33.440697, 32.017735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656456, 33.785858, 31.908722>,  <35.286293, 34.109516, 31.867928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656456, 33.785858, 31.908722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.906353, 33.552940, 32.116810>,  <35.056290, 33.413189, 32.241661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.906353, 33.552940, 32.116810>,  <34.656456, 33.785858, 31.908722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906353, 33.552940, 32.116810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602896, 0.063651, 0.795277,
		-0.496199, -0.810481, -0.311299,
		0.624742, -0.582297, 0.520219,
		35.093777, 33.378250, 32.272877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285713, 33.179081, 32.202526>,  <34.656456, 33.785858, 31.908722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285713, 33.179081, 32.202526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.612343, 33.210529, 32.431271>,  <34.808323, 33.229401, 32.568516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.612343, 33.210529, 32.431271>,  <34.285713, 33.179081, 32.202526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612343, 33.210529, 32.431271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576998, 0.139737, 0.804703,
		-0.016641, -0.987062, 0.159471,
		0.816576, 0.078623, 0.571858,
		34.857315, 33.234116, 32.602829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893250, 32.880692, 32.728424>,  <34.285713, 33.179081, 32.202526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893250, 32.880692, 32.728424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.229328, 33.028175, 32.887482>,  <34.430977, 33.116665, 32.982918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.229328, 33.028175, 32.887482>,  <33.893250, 32.880692, 32.728424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229328, 33.028175, 32.887482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507568, 0.276552, 0.816023,
		0.190901, -0.887455, 0.419501,
		0.840197, 0.368705, 0.397650,
		34.481388, 33.138790, 33.006775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899994, 32.652901, 33.464886>,  <33.893250, 32.880692, 32.728424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899994, 32.652901, 33.464886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.123913, 32.982647, 33.431305>,  <34.258266, 33.180492, 33.411156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.123913, 32.982647, 33.431305>,  <33.899994, 32.652901, 33.464886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123913, 32.982647, 33.431305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489436, 0.410708, 0.769267,
		0.668637, -0.389545, 0.633387,
		0.559802, 0.824363, -0.083957,
		34.291855, 33.229954, 33.406116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760624, 32.898045, 34.085205>,  <33.899994, 32.652901, 33.464886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760624, 32.898045, 34.085205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.955807, 33.195515, 33.902409>,  <34.072918, 33.373997, 33.792732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.955807, 33.195515, 33.902409>,  <33.760624, 32.898045, 34.085205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955807, 33.195515, 33.902409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503663, 0.667489, 0.548436,
		0.712895, -0.037445, 0.700270,
		0.487959, 0.743678, -0.456990,
		34.102196, 33.418617, 33.765312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182323, 33.278343, 34.556618>,  <33.760624, 32.898045, 34.085205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182323, 33.278343, 34.556618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.102806, 33.515717, 34.244640>,  <34.055096, 33.658142, 34.057453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.102806, 33.515717, 34.244640>,  <34.182323, 33.278343, 34.556618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102806, 33.515717, 34.244640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368877, 0.692000, 0.620537,
		0.907972, 0.411061, 0.081342,
		-0.198790, 0.593436, -0.779947,
		34.043171, 33.693748, 34.010658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407639, 33.984859, 34.705128>,  <34.182323, 33.278343, 34.556618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407639, 33.984859, 34.705128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.123428, 34.011204, 34.424896>,  <33.952900, 34.027012, 34.256756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.123428, 34.011204, 34.424896>,  <34.407639, 33.984859, 34.705128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123428, 34.011204, 34.424896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454325, 0.717343, 0.528212,
		0.537343, 0.693601, -0.479771,
		-0.710529, 0.065859, -0.700579,
		33.910271, 34.030960, 34.214722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315277, 34.668617, 34.567585>,  <34.407639, 33.984859, 34.705128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315277, 34.668617, 34.567585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.978168, 34.490986, 34.445911>,  <33.775902, 34.384407, 34.372910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.978168, 34.490986, 34.445911>,  <34.315277, 34.668617, 34.567585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978168, 34.490986, 34.445911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537095, 0.656485, 0.529676,
		-0.035530, 0.609770, -0.791782,
		-0.842773, -0.444081, -0.304180,
		33.725338, 34.357761, 34.354656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819698, 35.247021, 34.364132>,  <34.315277, 34.668617, 34.567585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819698, 35.247021, 34.364132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.596203, 34.919987, 34.419788>,  <33.462105, 34.723766, 34.453182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.596203, 34.919987, 34.419788>,  <33.819698, 35.247021, 34.364132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596203, 34.919987, 34.419788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658606, 0.539385, 0.524692,
		-0.504033, 0.201527, -0.839844,
		-0.558739, -0.817588, 0.139142,
		33.428581, 34.674709, 34.461533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376167, 35.419205, 33.948162>,  <33.819698, 35.247021, 34.364132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376167, 35.419205, 33.948162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.289539, 35.794926, 34.054604>,  <34.237560, 36.020359, 34.118469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.289539, 35.794926, 34.054604>,  <34.376167, 35.419205, 33.948162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289539, 35.794926, 34.054604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176957, 0.230291, -0.956897,
		-0.960095, -0.254328, 0.116341,
		-0.216573, 0.939300, 0.266106,
		34.224567, 36.076717, 34.134434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833031, 35.613182, 33.563854>,  <34.376167, 35.419205, 33.948162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833031, 35.613182, 33.563854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.997971, 35.965889, 33.655460>,  <34.096935, 36.177513, 33.710423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.997971, 35.965889, 33.655460>,  <33.833031, 35.613182, 33.563854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997971, 35.965889, 33.655460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148304, 0.312999, -0.938103,
		-0.898875, 0.352860, 0.259835,
		0.412347, 0.881772, 0.229017,
		34.121674, 36.230419, 33.724167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322639, 36.138851, 33.394279>,  <33.833031, 35.613182, 33.563854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322639, 36.138851, 33.394279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.705166, 36.255772, 33.396278>,  <33.934681, 36.325924, 33.397476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.705166, 36.255772, 33.396278>,  <33.322639, 36.138851, 33.394279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705166, 36.255772, 33.396278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128252, 0.434833, -0.891331,
		-0.262709, 0.851752, 0.453325,
		0.956314, 0.292301, 0.004996,
		33.992062, 36.343460, 33.397778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310337, 36.781990, 33.029583>,  <33.322639, 36.138851, 33.394279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310337, 36.781990, 33.029583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.689720, 36.655819, 33.041794>,  <33.917351, 36.580116, 33.049122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.689720, 36.655819, 33.041794>,  <33.310337, 36.781990, 33.029583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689720, 36.655819, 33.041794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045653, 0.040669, -0.998129,
		0.313596, 0.948078, 0.052973,
		0.948458, -0.315428, 0.030529,
		33.974258, 36.561192, 33.050953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610672, 37.187496, 32.569595>,  <33.310337, 36.781990, 33.029583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610672, 37.187496, 32.569595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.858360, 36.874596, 32.596863>,  <34.006973, 36.686855, 32.613224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.858360, 36.874596, 32.596863>,  <33.610672, 37.187496, 32.569595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858360, 36.874596, 32.596863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115764, 0.005075, -0.993264,
		0.776634, 0.622945, 0.093699,
		0.619224, -0.782249, 0.068173,
		34.044128, 36.639919, 32.617313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240761, 37.374901, 32.194176>,  <33.610672, 37.187496, 32.569595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240761, 37.374901, 32.194176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.226711, 36.975754, 32.216171>,  <34.218281, 36.736267, 32.229370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.226711, 36.975754, 32.216171>,  <34.240761, 37.374901, 32.194176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226711, 36.975754, 32.216171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006164, -0.054805, -0.998478,
		0.999364, -0.035412, -0.004225,
		-0.035126, -0.997869, 0.054989,
		34.216175, 36.676392, 32.232666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540131, 37.210468, 31.608965>,  <34.240761, 37.374901, 32.194176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540131, 37.210468, 31.608965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.381504, 36.857880, 31.711527>,  <34.286327, 36.646328, 31.773064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.381504, 36.857880, 31.711527>,  <34.540131, 37.210468, 31.608965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381504, 36.857880, 31.711527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042419, -0.261414, -0.964294,
		0.917024, -0.393286, 0.066277,
		-0.396569, -0.881470, 0.256406,
		34.262535, 36.593437, 31.788448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904865, 36.719585, 31.124849>,  <34.540131, 37.210468, 31.608965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904865, 36.719585, 31.124849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.580044, 36.524754, 31.253422>,  <34.385151, 36.407856, 31.330566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.580044, 36.524754, 31.253422>,  <34.904865, 36.719585, 31.124849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580044, 36.524754, 31.253422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076629, -0.457028, -0.886145,
		0.578526, -0.744231, 0.333808,
		-0.812057, -0.487079, 0.321432,
		34.336426, 36.378632, 31.349852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000305, 36.028877, 31.051659>,  <34.904865, 36.719585, 31.124849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000305, 36.028877, 31.051659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.603924, 36.078678, 31.031603>,  <34.366096, 36.108559, 31.019569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.603924, 36.078678, 31.031603>,  <35.000305, 36.028877, 31.051659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603924, 36.078678, 31.031603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003819, -0.399578, -0.916691,
		-0.134163, -0.908206, 0.396438,
		-0.990952, 0.124500, -0.050140,
		34.306637, 36.116028, 31.016562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803150, 35.413406, 30.739103>,  <35.000305, 36.028877, 31.051659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803150, 35.413406, 30.739103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.510113, 35.680569, 30.686644>,  <34.334290, 35.840866, 30.655169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.510113, 35.680569, 30.686644>,  <34.803150, 35.413406, 30.739103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510113, 35.680569, 30.686644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004838, -0.197782, -0.980234,
		-0.680646, -0.717482, 0.148125,
		-0.732597, 0.667909, -0.131148,
		34.290333, 35.880939, 30.647299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376953, 35.006195, 30.379307>,  <34.803150, 35.413406, 30.739103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376953, 35.006195, 30.379307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.258400, 35.386002, 30.338163>,  <34.187267, 35.613884, 30.313477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.258400, 35.386002, 30.338163>,  <34.376953, 35.006195, 30.379307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258400, 35.386002, 30.338163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226731, -0.174573, -0.958184,
		-0.927766, -0.260669, 0.267025,
		-0.296384, 0.949513, -0.102861,
		34.169483, 35.670856, 30.307304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701069, 34.936668, 30.025494>,  <34.376953, 35.006195, 30.379307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701069, 34.936668, 30.025494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.850311, 35.301189, 29.955845>,  <33.939857, 35.519901, 29.914057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.850311, 35.301189, 29.955845>,  <33.701069, 34.936668, 30.025494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850311, 35.301189, 29.955845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161451, -0.121036, -0.979430,
		-0.913633, 0.393543, 0.101972,
		0.373106, 0.911303, -0.174121,
		33.962242, 35.574581, 29.903608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155128, 35.199444, 29.559786>,  <33.701069, 34.936668, 30.025494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155128, 35.199444, 29.559786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.514381, 35.373314, 29.533195>,  <33.729931, 35.477638, 29.517241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.514381, 35.373314, 29.533195>,  <33.155128, 35.199444, 29.559786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514381, 35.373314, 29.533195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110056, 0.075833, -0.991028,
		-0.425738, 0.897387, 0.115947,
		0.898128, 0.434679, -0.066478,
		33.783821, 35.503719, 29.513252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223701, 35.695599, 28.825563>,  <33.155128, 35.199444, 29.559786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223701, 35.695599, 28.825563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.609425, 35.642151, 28.917007>,  <33.840858, 35.610081, 28.971874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.609425, 35.642151, 28.917007>,  <33.223701, 35.695599, 28.825563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609425, 35.642151, 28.917007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236285, 0.044515, -0.970664,
		0.119527, 0.990032, 0.074499,
		0.964304, -0.133623, 0.228609,
		33.898716, 35.602062, 28.985590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630493, 35.979092, 28.358976>,  <33.223701, 35.695599, 28.825563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630493, 35.979092, 28.358976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.940151, 35.771492, 28.503941>,  <34.125946, 35.646931, 28.590919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.940151, 35.771492, 28.503941>,  <33.630493, 35.979092, 28.358976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940151, 35.771492, 28.503941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418918, -0.009172, -0.907978,
		0.474563, 0.854726, 0.210317,
		0.774144, -0.518998, 0.362413,
		34.172394, 35.615791, 28.612665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254272, 36.379551, 28.262089>,  <33.630493, 35.979092, 28.358976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254272, 36.379551, 28.262089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.374828, 36.001484, 28.312387>,  <34.447163, 35.774643, 28.342566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.374828, 36.001484, 28.312387>,  <34.254272, 36.379551, 28.262089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374828, 36.001484, 28.312387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588890, 0.080798, -0.804164,
		0.749914, 0.316419, 0.580954,
		0.301393, -0.945172, 0.125744,
		34.465248, 35.717934, 28.350111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896698, 36.344334, 28.179331>,  <34.254272, 36.379551, 28.262089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896698, 36.344334, 28.179331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.828259, 35.957203, 28.105543>,  <34.787193, 35.724922, 28.061270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.828259, 35.957203, 28.105543>,  <34.896698, 36.344334, 28.179331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828259, 35.957203, 28.105543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639332, 0.033395, -0.768206,
		0.749653, -0.249377, 0.613051,
		-0.171100, -0.967831, -0.184469,
		34.776928, 35.666855, 28.050201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460621, 36.230061, 27.910084>,  <34.896698, 36.344334, 28.179331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460621, 36.230061, 27.910084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.237736, 35.915009, 27.804901>,  <35.104004, 35.725975, 27.741791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.237736, 35.915009, 27.804901>,  <35.460621, 36.230061, 27.910084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237736, 35.915009, 27.804901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552339, -0.115110, -0.825634,
		0.620028, -0.605295, 0.499182,
		-0.557213, -0.787634, -0.262956,
		35.070572, 35.678719, 27.726015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974190, 35.721733, 27.752636>,  <35.460621, 36.230061, 27.910084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974190, 35.721733, 27.752636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.634510, 35.647694, 27.554810>,  <35.430702, 35.603271, 27.436113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.634510, 35.647694, 27.554810>,  <35.974190, 35.721733, 27.752636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634510, 35.647694, 27.554810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522074, -0.153550, -0.838965,
		0.079349, -0.970650, 0.227029,
		-0.849201, -0.185097, -0.494567,
		35.379749, 35.592163, 27.406439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142830, 35.170044, 27.295397>,  <35.974190, 35.721733, 27.752636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142830, 35.170044, 27.295397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.812294, 35.346123, 27.154890>,  <35.613972, 35.451771, 27.070585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.812294, 35.346123, 27.154890>,  <36.142830, 35.170044, 27.295397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812294, 35.346123, 27.154890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251587, -0.269488, -0.929559,
		-0.503849, -0.856507, 0.111942,
		-0.826341, 0.440194, -0.351267,
		35.564392, 35.478180, 27.049509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823925, 34.674091, 26.863214>,  <36.142830, 35.170044, 27.295397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823925, 34.674091, 26.863214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.660259, 35.024956, 26.762676>,  <35.562057, 35.235474, 26.702353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.660259, 35.024956, 26.762676>,  <35.823925, 34.674091, 26.863214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660259, 35.024956, 26.762676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099304, -0.231018, -0.967869,
		-0.907040, -0.420979, 0.007420,
		-0.409166, 0.877158, -0.251348,
		35.537510, 35.288105, 26.687271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392632, 34.612877, 26.306738>,  <35.823925, 34.674091, 26.863214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392632, 34.612877, 26.306738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.476234, 35.002995, 26.278147>,  <35.526398, 35.237064, 26.260992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.476234, 35.002995, 26.278147>,  <35.392632, 34.612877, 26.306738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476234, 35.002995, 26.278147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292939, -0.132176, -0.946951,
		-0.933007, 0.176984, -0.313329,
		0.209010, 0.975298, -0.071476,
		35.538937, 35.295586, 26.256704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898594, 34.991932, 25.780008>,  <35.392632, 34.612877, 26.306738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898594, 34.991932, 25.780008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.250645, 35.175835, 25.827332>,  <35.461876, 35.286175, 25.855726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.250645, 35.175835, 25.827332>,  <34.898594, 34.991932, 25.780008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250645, 35.175835, 25.827332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151638, -0.036101, -0.987777,
		-0.449867, 0.887310, -0.101490,
		0.880128, 0.459758, 0.118310,
		35.514683, 35.313763, 25.862823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941498, 35.402405, 25.201271>,  <34.898594, 34.991932, 25.780008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941498, 35.402405, 25.201271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.313602, 35.393070, 25.347733>,  <35.536865, 35.387470, 25.435610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.313602, 35.393070, 25.347733>,  <34.941498, 35.402405, 25.201271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313602, 35.393070, 25.347733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366895, 0.063502, -0.928093,
		-0.001597, 0.997709, 0.067634,
		0.930261, -0.023332, 0.366155,
		35.592682, 35.386070, 25.457579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269028, 35.729836, 24.820433>,  <34.941498, 35.402405, 25.201271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269028, 35.729836, 24.820433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.585270, 35.557240, 24.994215>,  <35.775017, 35.453682, 25.098484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.585270, 35.557240, 24.994215>,  <35.269028, 35.729836, 24.820433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585270, 35.557240, 24.994215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401882, -0.169666, -0.899836,
		0.461986, 0.886018, 0.039270,
		0.790607, -0.431493, 0.434458,
		35.822453, 35.427792, 25.124552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846100, 36.117085, 24.621710>,  <35.269028, 35.729836, 24.820433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846100, 36.117085, 24.621710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.967350, 35.744614, 24.702734>,  <36.040100, 35.521133, 24.751348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.967350, 35.744614, 24.702734>,  <35.846100, 36.117085, 24.621710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967350, 35.744614, 24.702734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279749, -0.116243, -0.953010,
		0.910964, 0.345548, 0.225258,
		0.303126, -0.931173, 0.202560,
		36.058289, 35.465263, 24.763502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443394, 36.110756, 24.257469>,  <35.846100, 36.117085, 24.621710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443394, 36.110756, 24.257469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.367172, 35.723686, 24.323559>,  <36.321438, 35.491444, 24.363213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.367172, 35.723686, 24.323559>,  <36.443394, 36.110756, 24.257469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367172, 35.723686, 24.323559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316421, -0.219872, -0.922786,
		0.929283, -0.123562, 0.348090,
		-0.190556, -0.967672, 0.165226,
		36.310005, 35.433384, 24.373127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051212, 35.796925, 23.956463>,  <36.443394, 36.110756, 24.257469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051212, 35.796925, 23.956463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.726933, 35.563061, 23.968660>,  <36.532364, 35.422741, 23.975979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.726933, 35.563061, 23.968660>,  <37.051212, 35.796925, 23.956463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726933, 35.563061, 23.968660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161394, -0.273250, -0.948307,
		0.562772, -0.763874, 0.315886,
		-0.810703, -0.584663, 0.030493,
		36.483723, 35.387661, 23.977808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672096, 35.546753, 24.371220>,  <37.051212, 35.796925, 23.956463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672096, 35.546753, 24.371220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.998871, 35.752018, 24.265942>,  <38.194935, 35.875179, 24.202774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.998871, 35.752018, 24.265942>,  <37.672096, 35.546753, 24.371220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998871, 35.752018, 24.265942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107080, 0.313461, 0.943544,
		0.566697, -0.799000, 0.201128,
		0.816938, 0.513167, -0.263195,
		38.243954, 35.905968, 24.186983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161156, 35.395172, 24.856478>,  <37.672096, 35.546753, 24.371220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161156, 35.395172, 24.856478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.278774, 35.745117, 24.702520>,  <38.349346, 35.955086, 24.610146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.278774, 35.745117, 24.702520>,  <38.161156, 35.395172, 24.856478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278774, 35.745117, 24.702520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121642, 0.365169, 0.922960,
		0.948018, -0.318215, 0.000958,
		0.294050, 0.874866, -0.384895,
		38.366989, 36.007576, 24.587051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799019, 35.623646, 25.196327>,  <38.161156, 35.395172, 24.856478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799019, 35.623646, 25.196327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.655594, 35.960236, 25.034658>,  <38.569538, 36.162189, 24.937658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.655594, 35.960236, 25.034658>,  <38.799019, 35.623646, 25.196327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655594, 35.960236, 25.034658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211974, 0.495045, 0.842614,
		0.909119, 0.216459, -0.355877,
		-0.358566, 0.841473, -0.404171,
		38.548023, 36.212677, 24.913406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376591, 36.224895, 25.330261>,  <38.799019, 35.623646, 25.196327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376591, 36.224895, 25.330261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.005226, 36.362946, 25.275200>,  <38.782410, 36.445774, 25.242163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.005226, 36.362946, 25.275200>,  <39.376591, 36.224895, 25.330261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005226, 36.362946, 25.275200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040874, 0.463085, 0.885371,
		0.369305, 0.816360, -0.444038,
		-0.928409, 0.345122, -0.137651,
		38.726704, 36.466480, 25.233904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437996, 36.823738, 25.712543>,  <39.376591, 36.224895, 25.330261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437996, 36.823738, 25.712543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.045792, 36.768883, 25.656263>,  <38.810471, 36.735970, 25.622496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.045792, 36.768883, 25.656263>,  <39.437996, 36.823738, 25.712543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045792, 36.768883, 25.656263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182777, 0.373938, 0.909265,
		-0.072078, 0.917259, -0.391714,
		-0.980509, -0.137134, -0.140701,
		38.751640, 36.727741, 25.614054>
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
