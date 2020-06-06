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
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
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
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<39.693871, 36.976753, 50.268810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680084, 36.578880, 50.230007>,  <39.671810, 36.340157, 50.206726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680084, 36.578880, 50.230007>,  <39.693871, 36.976753, 50.268810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680084, 36.578880, 50.230007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983502, -0.016512, -0.180143,
		0.177585, -0.101614, 0.978845,
		-0.034468, -0.994687, -0.097005,
		39.669743, 36.280476, 50.200905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091297, 36.623569, 50.823185>,  <39.693871, 36.976753, 50.268810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091297, 36.623569, 50.823185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.076405, 36.436615, 50.469875>,  <40.067471, 36.324444, 50.257889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.076405, 36.436615, 50.469875>,  <40.091297, 36.623569, 50.823185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076405, 36.436615, 50.469875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988126, -0.149072, 0.037231,
		-0.149072, -0.871395, 0.467384,
		-0.037231, -0.467384, -0.883270,
		40.065235, 36.296398, 50.204895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468254, 36.051128, 50.854420>,  <40.091297, 36.623569, 50.823185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.468254, 36.051128, 50.854420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471043, 36.151325, 50.467182>,  <40.472717, 36.211445, 50.234840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471043, 36.151325, 50.467182>,  <40.468254, 36.051128, 50.854420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471043, 36.151325, 50.467182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995501, -0.093220, -0.016951,
		-0.094492, -0.963620, -0.250015,
		0.006973, 0.250492, -0.968094,
		40.473133, 36.226471, 50.176754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871773, 35.535385, 50.561897>,  <40.468254, 36.051128, 50.854420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871773, 35.535385, 50.561897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903145, 35.862122, 50.333294>,  <40.921967, 36.058163, 50.196133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903145, 35.862122, 50.333294>,  <40.871773, 35.535385, 50.561897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903145, 35.862122, 50.333294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996686, -0.051832, 0.062692,
		0.021588, -0.574527, -0.818201,
		0.078427, 0.816843, -0.571504,
		40.926674, 36.107174, 50.161842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407284, 35.356373, 50.089962>,  <40.871773, 35.535385, 50.561897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.407284, 35.356373, 50.089962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357555, 35.752754, 50.069771>,  <41.327721, 35.990585, 50.057655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357555, 35.752754, 50.069771>,  <41.407284, 35.356373, 50.089962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.357555, 35.752754, 50.069771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988100, 0.118996, -0.097462,
		-0.090574, -0.061993, -0.993958,
		-0.124319, 0.990957, -0.050477,
		41.320259, 36.050041, 50.054626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828407, 35.465809, 49.564358>,  <41.407284, 35.356373, 50.089962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828407, 35.465809, 49.564358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.765015, 35.801395, 49.772594>,  <41.726978, 36.002747, 49.897537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.765015, 35.801395, 49.772594>,  <41.828407, 35.465809, 49.564358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.765015, 35.801395, 49.772594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976214, 0.054138, 0.209944,
		0.147953, 0.541478, -0.827594,
		-0.158484, 0.838970, 0.520588,
		41.717468, 36.053085, 49.928772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219177, 35.978733, 49.196007>,  <41.828407, 35.465809, 49.564358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219177, 35.978733, 49.196007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.156334, 36.111172, 49.568176>,  <42.118626, 36.190636, 49.791477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.156334, 36.111172, 49.568176>,  <42.219177, 35.978733, 49.196007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.156334, 36.111172, 49.568176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984993, 0.120699, 0.123374,
		-0.071453, 0.935845, -0.345091,
		-0.157111, 0.331097, 0.930425,
		42.109200, 36.210503, 49.847305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732197, 36.467636, 49.322311>,  <42.219177, 35.978733, 49.196007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732197, 36.467636, 49.322311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.624882, 36.377819, 49.697033>,  <42.560493, 36.323929, 49.921867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.624882, 36.377819, 49.697033>,  <42.732197, 36.467636, 49.322311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624882, 36.377819, 49.697033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942803, 0.138518, 0.303209,
		-0.197848, 0.964568, 0.174539,
		-0.268289, -0.224546, 0.936803,
		42.544395, 36.310455, 49.978073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.122536, 36.959972, 49.822872>,  <42.732197, 36.467636, 49.322311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.122536, 36.959972, 49.822872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.999714, 36.667797, 50.066898>,  <42.926022, 36.492493, 50.213314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.999714, 36.667797, 50.066898>,  <43.122536, 36.959972, 49.822872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.999714, 36.667797, 50.066898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850276, 0.077392, 0.520615,
		-0.427490, 0.678584, 0.597308,
		-0.307054, -0.730435, 0.610068,
		42.907597, 36.448666, 50.249920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.989773, 37.111542, 50.559319>,  <43.122536, 36.959972, 49.822872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.989773, 37.111542, 50.559319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108292, 36.733173, 50.506500>,  <43.179401, 36.506153, 50.474808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108292, 36.733173, 50.506500>,  <42.989773, 37.111542, 50.559319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.108292, 36.733173, 50.506500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679265, 0.111511, 0.725371,
		-0.671422, -0.304618, 0.675574,
		0.296295, -0.945925, -0.132045,
		43.197182, 36.449394, 50.466888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.342369, 36.957577, 51.152554>,  <42.989773, 37.111542, 50.559319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.342369, 36.957577, 51.152554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.425987, 36.624939, 50.946739>,  <43.476158, 36.425358, 50.823250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.425987, 36.624939, 50.946739>,  <43.342369, 36.957577, 51.152554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.425987, 36.624939, 50.946739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863727, -0.089715, 0.495910,
		-0.458558, -0.548087, 0.699518,
		0.209045, -0.831596, -0.514537,
		43.488701, 36.375462, 50.792377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.779461, 36.596867, 51.536152>,  <43.342369, 36.957577, 51.152554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.779461, 36.596867, 51.536152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.839085, 36.389977, 51.199043>,  <43.874859, 36.265842, 50.996777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.839085, 36.389977, 51.199043>,  <43.779461, 36.596867, 51.536152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.839085, 36.389977, 51.199043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863791, -0.346732, 0.365571,
		-0.481297, -0.782469, 0.395089,
		0.149058, -0.517223, -0.842771,
		43.883801, 36.234810, 50.946213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.020760, 35.906208, 51.784500>,  <43.779461, 36.596867, 51.536152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.020760, 35.906208, 51.784500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.144051, 35.913635, 51.404049>,  <44.218025, 35.918091, 51.175777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.144051, 35.913635, 51.404049>,  <44.020760, 35.906208, 51.784500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.144051, 35.913635, 51.404049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876551, -0.394055, 0.276368,
		-0.369666, -0.918899, -0.137735,
		0.308229, 0.018568, -0.951131,
		44.236519, 35.919205, 51.118710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.346264, 35.214096, 51.639164>,  <44.020760, 35.906208, 51.784500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.346264, 35.214096, 51.639164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.501953, 35.454491, 51.359932>,  <44.595367, 35.598728, 51.192394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.501953, 35.454491, 51.359932>,  <44.346264, 35.214096, 51.639164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.501953, 35.454491, 51.359932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868570, -0.491812, 0.060877,
		-0.306739, -0.630028, -0.713426,
		0.389225, 0.600988, -0.698081,
		44.618721, 35.634789, 51.150509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.647736, 34.801155, 51.208282>,  <44.346264, 35.214096, 51.639164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.647736, 34.801155, 51.208282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.841293, 35.142178, 51.129292>,  <44.957428, 35.346790, 51.081898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.841293, 35.142178, 51.129292>,  <44.647736, 34.801155, 51.208282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.841293, 35.142178, 51.129292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871782, -0.489323, 0.023670,
		-0.076452, -0.183613, -0.980021,
		0.483893, 0.852555, -0.197480,
		44.986462, 35.397945, 51.070049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.116734, 34.641621, 50.697426>,  <44.647736, 34.801155, 51.208282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.116734, 34.641621, 50.697426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.249432, 34.975273, 50.873688>,  <45.329048, 35.175465, 50.979446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.249432, 34.975273, 50.873688>,  <45.116734, 34.641621, 50.697426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.249432, 34.975273, 50.873688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902465, -0.416665, 0.109306,
		0.274782, 0.361417, -0.890995,
		0.331742, 0.834127, 0.440658,
		45.348953, 35.225510, 51.005886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.814007, 34.632347, 50.345554>,  <45.116734, 34.641621, 50.697426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.814007, 34.632347, 50.345554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.820190, 34.869720, 50.667446>,  <45.823902, 35.012146, 50.860580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.820190, 34.869720, 50.667446>,  <45.814007, 34.632347, 50.345554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.820190, 34.869720, 50.667446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966742, -0.214356, 0.139503,
		0.255286, 0.775813, -0.577013,
		0.015459, 0.593436, 0.804733,
		45.824829, 35.047752, 50.908867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.464230, 34.934032, 50.419594>,  <45.814007, 34.632347, 50.345554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.464230, 34.934032, 50.419594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.340031, 34.979870, 50.797050>,  <46.265511, 35.007374, 51.023525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.340031, 34.979870, 50.797050>,  <46.464230, 34.934032, 50.419594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.340031, 34.979870, 50.797050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918976, -0.217634, 0.328813,
		0.243049, 0.969280, -0.037735,
		-0.310499, 0.114595, 0.943641,
		46.246880, 35.014248, 51.080143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.918400, 35.398689, 50.773285>,  <46.464230, 34.934032, 50.419594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.918400, 35.398689, 50.773285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.741356, 35.193054, 51.067173>,  <46.635132, 35.069675, 51.243507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.741356, 35.193054, 51.067173>,  <46.918400, 35.398689, 50.773285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.741356, 35.193054, 51.067173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896601, -0.240638, 0.371752,
		-0.014310, 0.823292, 0.567438,
		-0.442608, -0.514085, 0.734721,
		46.608574, 35.038830, 51.287590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.299503, 35.583832, 51.347443>,  <46.918400, 35.398689, 50.773285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.299503, 35.583832, 51.347443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.123779, 35.232220, 51.421535>,  <47.018345, 35.021252, 51.465992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.123779, 35.232220, 51.421535>,  <47.299503, 35.583832, 51.347443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.123779, 35.232220, 51.421535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898106, -0.425104, 0.112662,
		-0.020289, 0.215855, 0.976215,
		-0.439311, -0.879030, 0.185235,
		46.991985, 34.968510, 51.477104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.596451, 35.317688, 52.001080>,  <47.299503, 35.583832, 51.347443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.596451, 35.317688, 52.001080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.455978, 34.983543, 51.831921>,  <47.371696, 34.783054, 51.730427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.455978, 34.983543, 51.831921>,  <47.596451, 35.317688, 52.001080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.455978, 34.983543, 51.831921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841680, -0.479518, 0.248268,
		-0.410180, -0.268756, 0.871506,
		-0.351180, -0.835364, -0.422895,
		47.350624, 34.732933, 51.705051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.120682, 34.957901, 51.547661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.300554, 35.002991, 51.902081>,  <24.408478, 35.030045, 52.114731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.300554, 35.002991, 51.902081>,  <24.120682, 34.957901, 51.547661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.300554, 35.002991, 51.902081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798715, 0.393284, -0.455392,
		-0.399803, 0.912480, 0.086815,
		0.449680, 0.112727, 0.886048,
		24.435459, 35.036808, 52.167896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.238251, 35.604599, 51.580326>,  <24.120682, 34.957901, 51.547661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.238251, 35.604599, 51.580326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.520426, 35.414383, 51.790550>,  <24.689732, 35.300255, 51.916687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.520426, 35.414383, 51.790550>,  <24.238251, 35.604599, 51.580326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.520426, 35.414383, 51.790550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707167, 0.522088, -0.476801,
		-0.047653, 0.708016, 0.704587,
		0.705439, -0.475540, 0.525564,
		24.732058, 35.271721, 51.948219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.821175, 36.129574, 51.805904>,  <24.238251, 35.604599, 51.580326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.821175, 36.129574, 51.805904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.965961, 35.759029, 51.847534>,  <25.052834, 35.536701, 51.872513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.965961, 35.759029, 51.847534>,  <24.821175, 36.129574, 51.805904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.965961, 35.759029, 51.847534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828356, 0.268431, -0.491702,
		0.427558, 0.264192, 0.864521,
		0.361968, -0.926362, 0.104075,
		25.074553, 35.481121, 51.878757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.450443, 36.267197, 52.036236>,  <24.821175, 36.129574, 51.805904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.450443, 36.267197, 52.036236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.467791, 35.892292, 51.897865>,  <25.478199, 35.667351, 51.814842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.467791, 35.892292, 51.897865>,  <25.450443, 36.267197, 52.036236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.467791, 35.892292, 51.897865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810703, 0.235367, -0.536063,
		0.583849, -0.257198, 0.770045,
		0.043369, -0.937257, -0.345930,
		25.480801, 35.611115, 51.794086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.124475, 36.173298, 51.843037>,  <25.450443, 36.267197, 52.036236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.124475, 36.173298, 51.843037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.989359, 35.845634, 51.657616>,  <25.908289, 35.649036, 51.546364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.989359, 35.845634, 51.657616>,  <26.124475, 36.173298, 51.843037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.989359, 35.845634, 51.657616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719980, 0.092341, -0.687824,
		0.606239, -0.566091, 0.558583,
		-0.337791, -0.819154, -0.463556,
		25.888021, 35.599888, 51.518551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.702072, 35.696774, 51.536236>,  <26.124475, 36.173298, 51.843037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.702072, 35.696774, 51.536236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.412344, 35.554508, 51.299980>,  <26.238506, 35.469147, 51.158226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.412344, 35.554508, 51.299980>,  <26.702072, 35.696774, 51.536236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.412344, 35.554508, 51.299980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672610, -0.176273, -0.718696,
		0.151501, -0.917840, 0.366902,
		-0.724323, -0.355666, -0.590643,
		26.195047, 35.447807, 51.122787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.920191, 35.077450, 51.198349>,  <26.702072, 35.696774, 51.536236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.920191, 35.077450, 51.198349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.618029, 35.213070, 50.974060>,  <26.436731, 35.294441, 50.839485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.618029, 35.213070, 50.974060>,  <26.920191, 35.077450, 51.198349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.618029, 35.213070, 50.974060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604090, 0.028831, -0.796394,
		-0.253853, -0.940326, -0.226597,
		-0.755403, 0.339051, -0.560723,
		26.391407, 35.314785, 50.805843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887661, 34.661301, 50.614094>,  <26.920191, 35.077450, 51.198349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.887661, 34.661301, 50.614094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.741970, 35.021763, 50.520065>,  <26.654556, 35.238041, 50.463650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.741970, 35.021763, 50.520065>,  <26.887661, 34.661301, 50.614094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.741970, 35.021763, 50.520065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668092, 0.076970, -0.740087,
		-0.648840, -0.426609, -0.630089,
		-0.364225, 0.901155, -0.235073,
		26.632702, 35.292110, 50.449543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773855, 34.576916, 49.898762>,  <26.887661, 34.661301, 50.614094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773855, 34.576916, 49.898762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.784101, 34.960869, 50.010452>,  <26.790249, 35.191242, 50.077469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.784101, 34.960869, 50.010452>,  <26.773855, 34.576916, 49.898762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.784101, 34.960869, 50.010452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693264, 0.184185, -0.696750,
		-0.720229, 0.211426, -0.660734,
		0.025613, 0.959883, 0.279230,
		26.791786, 35.248833, 50.094223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.677019, 34.927555, 49.289295>,  <26.773855, 34.576916, 49.898762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.677019, 34.927555, 49.289295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.844439, 35.203655, 49.525387>,  <26.944889, 35.369316, 49.667042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.844439, 35.203655, 49.525387>,  <26.677019, 34.927555, 49.289295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.844439, 35.203655, 49.525387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751272, 0.102023, -0.652060,
		-0.510303, 0.716340, -0.475866,
		0.418547, 0.690252, 0.590229,
		26.970003, 35.410732, 49.702454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952282, 35.403168, 48.857410>,  <26.677019, 34.927555, 49.289295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.952282, 35.403168, 48.857410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.142361, 35.501606, 49.195316>,  <27.256409, 35.560669, 49.398060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.142361, 35.501606, 49.195316>,  <26.952282, 35.403168, 48.857410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.142361, 35.501606, 49.195316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846843, 0.132694, -0.515023,
		-0.238841, 0.960119, -0.145349,
		0.475196, 0.246096, 0.844763,
		27.284920, 35.575436, 49.448746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.273474, 35.942635, 48.658211>,  <26.952282, 35.403168, 48.857410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.273474, 35.942635, 48.658211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.463175, 35.832138, 48.992580>,  <27.576996, 35.765842, 49.193203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.463175, 35.832138, 48.992580>,  <27.273474, 35.942635, 48.658211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.463175, 35.832138, 48.992580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874385, 0.258495, -0.410648,
		-0.102646, 0.925674, 0.364131,
		0.474252, -0.276239, 0.835929,
		27.605450, 35.749268, 49.243359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.738295, 36.540890, 49.002838>,  <27.273474, 35.942635, 48.658211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.738295, 36.540890, 49.002838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.885311, 36.187740, 49.119759>,  <27.973520, 35.975849, 49.189911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.885311, 36.187740, 49.119759>,  <27.738295, 36.540890, 49.002838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.885311, 36.187740, 49.119759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906974, 0.270755, -0.322631,
		0.205700, 0.383693, 0.900259,
		0.367541, -0.882877, 0.292305,
		27.995573, 35.922878, 49.207451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418303, 36.738689, 49.235428>,  <27.738295, 36.540890, 49.002838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.418303, 36.738689, 49.235428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.437851, 36.341469, 49.192596>,  <28.449579, 36.103138, 49.166897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.437851, 36.341469, 49.192596>,  <28.418303, 36.738689, 49.235428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.437851, 36.341469, 49.192596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947379, 0.080045, -0.309945,
		0.316361, -0.086297, 0.944705,
		0.048871, -0.993049, -0.107079,
		28.452513, 36.043552, 49.160473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.042557, 36.501270, 49.506958>,  <28.418303, 36.738689, 49.235428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.042557, 36.501270, 49.506958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.934370, 36.224442, 49.239262>,  <28.869459, 36.058346, 49.078644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.934370, 36.224442, 49.239262>,  <29.042557, 36.501270, 49.506958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934370, 36.224442, 49.239262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941206, -0.043914, -0.334965,
		0.202431, -0.720491, 0.663260,
		-0.270466, -0.692072, -0.669241,
		28.853230, 36.016819, 49.038490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581347, 35.946602, 49.551746>,  <29.042557, 36.501270, 49.506958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581347, 35.946602, 49.551746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.412430, 35.897793, 49.192463>,  <29.311081, 35.868507, 48.976891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.412430, 35.897793, 49.192463>,  <29.581347, 35.946602, 49.551746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.412430, 35.897793, 49.192463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898869, -0.184346, -0.397556,
		-0.117071, -0.975257, 0.187530,
		-0.422290, -0.122023, -0.898210,
		29.285744, 35.861187, 48.923000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017117, 35.418911, 49.156017>,  <29.581347, 35.946602, 49.551746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017117, 35.418911, 49.156017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.796932, 35.564651, 48.855553>,  <29.664822, 35.652096, 48.675274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.796932, 35.564651, 48.855553>,  <30.017117, 35.418911, 49.156017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.796932, 35.564651, 48.855553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702463, -0.284074, -0.652570,
		-0.451152, -0.886875, -0.099575,
		-0.550462, 0.364356, -0.751157,
		29.631794, 35.673958, 48.630207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220362, 34.917389, 48.633335>,  <30.017117, 35.418911, 49.156017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220362, 34.917389, 48.633335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.054716, 35.230583, 48.447674>,  <29.955328, 35.418499, 48.336277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.054716, 35.230583, 48.447674>,  <30.220362, 34.917389, 48.633335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.054716, 35.230583, 48.447674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820384, 0.100164, -0.562972,
		-0.394307, -0.613922, -0.683828,
		-0.414116, 0.782986, -0.464156,
		29.930481, 35.465481, 48.308426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234406, 34.747253, 47.847668>,  <30.220362, 34.917389, 48.633335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234406, 34.747253, 47.847668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.213963, 35.143654, 47.897144>,  <30.201696, 35.381496, 47.926830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.213963, 35.143654, 47.897144>,  <30.234406, 34.747253, 47.847668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.213963, 35.143654, 47.897144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771798, 0.117792, -0.624862,
		-0.633810, 0.063530, -0.770875,
		-0.051105, 0.991004, 0.123690,
		30.198631, 35.440956, 47.934250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.183138, 35.045742, 47.183189>,  <30.234406, 34.747253, 47.847668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.183138, 35.045742, 47.183189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.303288, 35.362316, 47.396133>,  <30.375378, 35.552261, 47.523899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.303288, 35.362316, 47.396133>,  <30.183138, 35.045742, 47.183189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303288, 35.362316, 47.396133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831159, 0.056620, -0.553145,
		-0.467921, 0.608625, -0.640801,
		0.300376, 0.791435, 0.532358,
		30.393400, 35.599747, 47.555840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507147, 35.404861, 46.668762>,  <30.183138, 35.045742, 47.183189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507147, 35.404861, 46.668762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.660162, 35.572079, 46.998344>,  <30.751972, 35.672409, 47.196095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.660162, 35.572079, 46.998344>,  <30.507147, 35.404861, 46.668762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660162, 35.572079, 46.998344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888214, 0.079195, -0.452553,
		-0.254440, 0.904968, -0.341018,
		0.382539, 0.418045, 0.823955,
		30.774923, 35.697491, 47.245529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.249851, 35.197330, 34.814487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.488155, 34.994003, 35.063221>,  <24.631138, 34.872005, 35.212460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.488155, 34.994003, 35.063221>,  <24.249851, 35.197330, 34.814487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.488155, 34.994003, 35.063221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421646, 0.856908, 0.296517,
		-0.683580, 0.085540, 0.724845,
		0.595762, -0.508322, 0.621833,
		24.666883, 34.841507, 35.249771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.139776, 35.261909, 35.627815>,  <24.249851, 35.197330, 34.814487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.139776, 35.261909, 35.627815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.516207, 35.195278, 35.510086>,  <24.742065, 35.155300, 35.439449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.516207, 35.195278, 35.510086>,  <24.139776, 35.261909, 35.627815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.516207, 35.195278, 35.510086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243305, 0.937944, 0.247111,
		0.234898, -0.304161, 0.923206,
		0.941077, -0.166575, -0.294325,
		24.798531, 35.145306, 35.421787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.528036, 35.510906, 36.187893>,  <24.139776, 35.261909, 35.627815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.528036, 35.510906, 36.187893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.752148, 35.525276, 35.856884>,  <24.886616, 35.533897, 35.658279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.752148, 35.525276, 35.856884>,  <24.528036, 35.510906, 36.187893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.752148, 35.525276, 35.856884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175040, 0.971362, 0.160676,
		0.809597, -0.234874, 0.537948,
		0.560281, 0.035921, -0.827524,
		24.920231, 35.536053, 35.608627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.157875, 35.819595, 36.380352>,  <24.528036, 35.510906, 36.187893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.157875, 35.819595, 36.380352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.101053, 35.874294, 35.988205>,  <25.066959, 35.907112, 35.752918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.101053, 35.874294, 35.988205>,  <25.157875, 35.819595, 36.380352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.101053, 35.874294, 35.988205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413498, 0.908056, 0.066745,
		0.899356, -0.395898, -0.185539,
		-0.142055, 0.136747, -0.980368,
		25.058437, 35.915318, 35.694096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.722431, 36.067219, 35.989185>,  <25.157875, 35.819595, 36.380352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.722431, 36.067219, 35.989185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.384298, 36.197601, 35.819874>,  <25.181417, 36.275829, 35.718288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.384298, 36.197601, 35.819874>,  <25.722431, 36.067219, 35.989185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.384298, 36.197601, 35.819874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369781, 0.928829, -0.023227,
		0.385583, -0.176155, -0.905702,
		-0.845333, 0.325955, -0.423279,
		25.130699, 36.295387, 35.692890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.522184, 35.286282, 36.051907>,  <25.722431, 36.067219, 35.989185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.522184, 35.286282, 36.051907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.900202, 35.181145, 35.974129>,  <26.127012, 35.118061, 35.927464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.900202, 35.181145, 35.974129>,  <25.522184, 35.286282, 36.051907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.900202, 35.181145, 35.974129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244544, 0.173529, 0.953984,
		-0.217010, -0.949105, 0.228270,
		0.945042, -0.262846, -0.194441,
		26.183714, 35.102291, 35.915798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.848907, 34.715656, 36.582916>,  <25.522184, 35.286282, 36.051907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.848907, 34.715656, 36.582916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.127228, 34.969799, 36.448940>,  <26.294220, 35.122284, 36.368553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.127228, 34.969799, 36.448940>,  <25.848907, 34.715656, 36.582916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.127228, 34.969799, 36.448940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253081, 0.219549, 0.942204,
		0.672170, -0.740353, -0.008033,
		0.695800, 0.635354, -0.334944,
		26.335968, 35.160404, 36.348457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.491137, 34.555943, 36.899509>,  <25.848907, 34.715656, 36.582916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.491137, 34.555943, 36.899509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.527987, 34.933178, 36.771698>,  <26.550097, 35.159519, 36.695011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.527987, 34.933178, 36.771698>,  <26.491137, 34.555943, 36.899509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.527987, 34.933178, 36.771698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435684, 0.250370, 0.864577,
		0.895373, -0.218862, -0.387823,
		0.092124, 0.943087, -0.319530,
		26.555624, 35.216103, 36.675838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.180582, 34.873230, 37.172062>,  <26.491137, 34.555943, 36.899509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.180582, 34.873230, 37.172062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.903210, 35.153183, 37.103580>,  <26.736786, 35.321156, 37.062492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.903210, 35.153183, 37.103580>,  <27.180582, 34.873230, 37.172062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.903210, 35.153183, 37.103580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278409, 0.479429, 0.832248,
		0.664560, 0.529442, -0.527306,
		-0.693433, 0.699885, -0.171208,
		26.695179, 35.363148, 37.052219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567406, 35.490433, 37.034721>,  <27.180582, 34.873230, 37.172062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.567406, 35.490433, 37.034721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.203611, 35.503136, 37.200531>,  <26.985334, 35.510757, 37.300018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.203611, 35.503136, 37.200531>,  <27.567406, 35.490433, 37.034721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.203611, 35.503136, 37.200531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387535, 0.425745, 0.817654,
		-0.150515, 0.904286, -0.399516,
		-0.909484, 0.031758, 0.414523,
		26.930765, 35.512665, 37.324886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.464523, 36.183876, 37.323872>,  <27.567406, 35.490433, 37.034721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.464523, 36.183876, 37.323872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.241201, 35.914700, 37.517963>,  <27.107208, 35.753193, 37.634418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.241201, 35.914700, 37.517963>,  <27.464523, 36.183876, 37.323872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.241201, 35.914700, 37.517963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409810, 0.284843, 0.866557,
		-0.721355, 0.682655, 0.116748,
		-0.558304, -0.672939, 0.485231,
		27.073709, 35.712818, 37.663532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.060144, 36.563015, 37.779369>,  <27.464523, 36.183876, 37.323872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.060144, 36.563015, 37.779369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.096781, 36.190407, 37.920162>,  <27.118763, 35.966843, 38.004639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.096781, 36.190407, 37.920162>,  <27.060144, 36.563015, 37.779369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.096781, 36.190407, 37.920162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326216, 0.362027, 0.873224,
		-0.940848, 0.034842, 0.337033,
		0.091591, -0.931516, 0.351978,
		27.124258, 35.910954, 38.025757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.627184, 36.601746, 37.182007>,  <27.060144, 36.563015, 37.779369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.627184, 36.601746, 37.182007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.504772, 36.275196, 37.377914>,  <26.431324, 36.079266, 37.495461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.504772, 36.275196, 37.377914>,  <26.627184, 36.601746, 37.182007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.504772, 36.275196, 37.377914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145404, 0.468338, 0.871503,
		-0.940852, 0.337922, -0.024622,
		-0.306031, -0.816375, 0.489772,
		26.412962, 36.030285, 37.524845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.163469, 36.800888, 37.776272>,  <26.627184, 36.601746, 37.182007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.163469, 36.800888, 37.776272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.335835, 36.454033, 37.876186>,  <26.439253, 36.245922, 37.936134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.335835, 36.454033, 37.876186>,  <26.163469, 36.800888, 37.776272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.335835, 36.454033, 37.876186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273882, 0.389421, 0.879398,
		-0.859828, -0.310530, 0.405299,
		0.430911, -0.867135, 0.249786,
		26.465107, 36.193893, 37.951122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.002872, 36.545082, 38.523281>,  <26.163469, 36.800888, 37.776272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.002872, 36.545082, 38.523281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.362225, 36.402493, 38.420647>,  <26.577835, 36.316936, 38.359066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.362225, 36.402493, 38.420647>,  <26.002872, 36.545082, 38.523281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.362225, 36.402493, 38.420647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392911, 0.391163, 0.832233,
		-0.196304, -0.848478, 0.491477,
		0.898379, -0.356478, -0.256589,
		26.631739, 36.295547, 38.343670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.325325, 36.117619, 39.001888>,  <26.002872, 36.545082, 38.523281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.325325, 36.117619, 39.001888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.660896, 36.266903, 38.843441>,  <26.862240, 36.356472, 38.748371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.660896, 36.266903, 38.843441>,  <26.325325, 36.117619, 39.001888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.660896, 36.266903, 38.843441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300612, 0.288968, 0.908917,
		0.453683, -0.881596, 0.130232,
		0.838930, 0.373211, -0.396118,
		26.912575, 36.378864, 38.724606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.931015, 35.828316, 39.277840>,  <26.325325, 36.117619, 39.001888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.931015, 35.828316, 39.277840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.061556, 36.177994, 39.134022>,  <27.139881, 36.387802, 39.047729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.061556, 36.177994, 39.134022>,  <26.931015, 35.828316, 39.277840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061556, 36.177994, 39.134022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449960, 0.190840, 0.872420,
		0.831282, -0.446499, -0.331072,
		0.326353, 0.874196, -0.359549,
		27.159462, 36.440254, 39.026157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.656637, 35.894001, 39.297604>,  <26.931015, 35.828316, 39.277840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.656637, 35.894001, 39.297604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.483971, 36.250446, 39.353569>,  <27.380371, 36.464314, 39.387150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.483971, 36.250446, 39.353569>,  <27.656637, 35.894001, 39.297604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.483971, 36.250446, 39.353569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549839, 0.136974, 0.823963,
		0.715082, 0.432609, -0.549097,
		-0.431666, 0.891116, 0.139917,
		27.354471, 36.517780, 39.395546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.226213, 36.149029, 39.659771>,  <27.656637, 35.894001, 39.297604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.226213, 36.149029, 39.659771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.906357, 36.386879, 39.693233>,  <27.714443, 36.529587, 39.713310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.906357, 36.386879, 39.693233>,  <28.226213, 36.149029, 39.659771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906357, 36.386879, 39.693233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392443, 0.412060, 0.822311,
		0.454492, 0.690384, -0.562856,
		-0.799641, 0.594622, 0.083659,
		27.666464, 36.565266, 39.718330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.499172, 36.802605, 39.726379>,  <28.226213, 36.149029, 39.659771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.499172, 36.802605, 39.726379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.141085, 36.799797, 39.904606>,  <27.926231, 36.798111, 40.011543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.141085, 36.799797, 39.904606>,  <28.499172, 36.802605, 39.726379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.141085, 36.799797, 39.904606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397507, 0.439360, 0.805575,
		-0.201422, 0.898283, -0.390533,
		-0.895219, -0.007021, 0.445570,
		27.872519, 36.797691, 40.038277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.867035, 37.442871, 39.905369>,  <28.499172, 36.802605, 39.726379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.867035, 37.442871, 39.905369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.130795, 37.352688, 40.192245>,  <29.289051, 37.298576, 40.364372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.130795, 37.352688, 40.192245>,  <28.867035, 37.442871, 39.905369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.130795, 37.352688, 40.192245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410819, 0.907004, -0.092581,
		-0.629620, 0.355682, 0.690702,
		0.659399, -0.225463, 0.717189,
		29.328615, 37.285049, 40.407402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.008114, 38.100544, 40.133469>,  <28.867035, 37.442871, 39.905369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.008114, 38.100544, 40.133469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.299574, 37.881580, 40.298107>,  <29.474449, 37.750202, 40.396889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.299574, 37.881580, 40.298107>,  <29.008114, 38.100544, 40.133469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.299574, 37.881580, 40.298107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506207, 0.835255, 0.214721,
		-0.461328, 0.051896, 0.885711,
		0.728651, -0.547409, 0.411596,
		29.518169, 37.717358, 40.421585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.174940, 38.442558, 40.743164>,  <29.008114, 38.100544, 40.133469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.174940, 38.442558, 40.743164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.458538, 38.211170, 40.581818>,  <29.628696, 38.072338, 40.485008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.458538, 38.211170, 40.581818>,  <29.174940, 38.442558, 40.743164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.458538, 38.211170, 40.581818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646343, 0.761801, 0.043578,
		0.282076, -0.291609, 0.914001,
		0.708995, -0.578466, -0.403365,
		29.671236, 38.037632, 40.460808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866184, 38.526131, 41.051327>,  <29.174940, 38.442558, 40.743164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866184, 38.526131, 41.051327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.876190, 38.428013, 40.663677>,  <29.882195, 38.369144, 40.431087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.876190, 38.428013, 40.663677>,  <29.866184, 38.526131, 41.051327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876190, 38.428013, 40.663677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556895, 0.808498, -0.190259,
		0.830206, -0.534943, 0.156826,
		0.025016, -0.245290, -0.969127,
		29.883696, 38.354427, 40.372940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.950848, 39.259949, 40.942646>,  <29.866184, 38.526131, 41.051327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.950848, 39.259949, 40.942646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.250021, 39.478527, 41.093376>,  <30.429525, 39.609673, 41.183815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.250021, 39.478527, 41.093376>,  <29.950848, 39.259949, 40.942646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250021, 39.478527, 41.093376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085496, -0.642279, 0.761687,
		0.658245, -0.537475, -0.527100,
		0.747933, 0.546441, 0.376825,
		30.474401, 39.642460, 41.206425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684465, 38.908020, 41.052643>,  <29.950848, 39.259949, 40.942646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684465, 38.908020, 41.052643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.604342, 39.196049, 41.318386>,  <30.556267, 39.368866, 41.477833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.604342, 39.196049, 41.318386>,  <30.684465, 38.908020, 41.052643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.604342, 39.196049, 41.318386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066299, -0.686509, 0.724092,
		0.977487, 0.100997, 0.185255,
		-0.200311, 0.720072, 0.664358,
		30.544249, 39.412071, 41.517693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999657, 38.732216, 41.663235>,  <30.684465, 38.908020, 41.052643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999657, 38.732216, 41.663235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.693419, 38.972206, 41.756100>,  <30.509676, 39.116199, 41.811817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.693419, 38.972206, 41.756100>,  <30.999657, 38.732216, 41.663235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693419, 38.972206, 41.756100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179466, -0.545729, 0.818518,
		0.617785, 0.584988, 0.525481,
		-0.765594, 0.599974, 0.232158,
		30.463741, 39.152199, 41.825748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083553, 38.422718, 42.337635>,  <30.999657, 38.732216, 41.663235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083553, 38.422718, 42.337635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.119032, 38.817024, 42.280518>,  <31.140320, 39.053608, 42.246246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.119032, 38.817024, 42.280518>,  <31.083553, 38.422718, 42.337635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119032, 38.817024, 42.280518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633837, -0.166447, -0.755345,
		-0.768364, -0.023513, -0.639580,
		0.088696, 0.985770, -0.142796,
		31.145641, 39.112755, 42.237679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104864, 38.627048, 43.144379>,  <31.083553, 38.422718, 42.337635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104864, 38.627048, 43.144379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.417334, 38.442505, 43.312622>,  <31.604816, 38.331779, 43.413570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.417334, 38.442505, 43.312622>,  <31.104864, 38.627048, 43.144379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417334, 38.442505, 43.312622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579082, 0.283691, -0.764319,
		0.233300, 0.840636, 0.488776,
		0.781175, -0.461357, 0.420612,
		31.651686, 38.304096, 43.438805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671923, 39.071526, 43.139084>,  <31.104864, 38.627048, 43.144379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671923, 39.071526, 43.139084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.802805, 38.696476, 43.092102>,  <31.881334, 38.471447, 43.063911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.802805, 38.696476, 43.092102>,  <31.671923, 39.071526, 43.139084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802805, 38.696476, 43.092102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638483, 0.311004, -0.704000,
		0.696617, 0.155359, 0.700420,
		0.327206, -0.937625, -0.117457,
		31.900967, 38.415188, 43.056866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279179, 39.491554, 43.280384>,  <31.671923, 39.071526, 43.139084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279179, 39.491554, 43.280384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.665390, 39.415081, 43.209736>,  <32.897118, 39.369198, 43.167347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.665390, 39.415081, 43.209736>,  <32.279179, 39.491554, 43.280384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665390, 39.415081, 43.209736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171283, -0.044230, 0.984229,
		-0.195982, -0.980557, -0.009959,
		0.965532, -0.191186, -0.176621,
		32.955051, 39.357727, 43.156750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460480, 38.835754, 43.580238>,  <32.279179, 39.491554, 43.280384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460480, 38.835754, 43.580238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.753201, 39.108032, 43.566826>,  <32.928833, 39.271400, 43.558777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.753201, 39.108032, 43.566826>,  <32.460480, 38.835754, 43.580238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753201, 39.108032, 43.566826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191798, -0.158485, 0.968553,
		0.653977, -0.715216, -0.246535,
		0.731798, 0.680696, -0.033531,
		32.972740, 39.312241, 43.556767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166302, 38.540272, 43.837753>,  <32.460480, 38.835754, 43.580238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166302, 38.540272, 43.837753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.067436, 38.924633, 43.887680>,  <33.008118, 39.155251, 43.917637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.067436, 38.924633, 43.887680>,  <33.166302, 38.540272, 43.837753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067436, 38.924633, 43.887680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018778, -0.133544, 0.990865,
		0.968791, 0.242565, 0.051051,
		-0.247167, 0.960900, 0.124821,
		32.993286, 39.212902, 43.925125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716469, 38.893738, 44.208687>,  <33.166302, 38.540272, 43.837753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716469, 38.893738, 44.208687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.336231, 39.011700, 44.247467>,  <33.108089, 39.082478, 44.270737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.336231, 39.011700, 44.247467>,  <33.716469, 38.893738, 44.208687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336231, 39.011700, 44.247467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074656, -0.085968, 0.993497,
		0.301318, 0.951653, 0.059705,
		-0.950597, 0.294901, 0.096950,
		33.051052, 39.100170, 44.276550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767490, 39.454865, 44.694771>,  <33.716469, 38.893738, 44.208687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767490, 39.454865, 44.694771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.396118, 39.306332, 44.699368>,  <33.173294, 39.217213, 44.702126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.396118, 39.306332, 44.699368>,  <33.767490, 39.454865, 44.694771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396118, 39.306332, 44.699368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093711, -0.204156, 0.974443,
		-0.359494, 0.905778, 0.224343,
		-0.928430, -0.371330, 0.011489,
		33.117588, 39.194931, 44.702812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425240, 39.746326, 45.249039>,  <33.767490, 39.454865, 44.694771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425240, 39.746326, 45.249039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.240936, 39.397770, 45.181667>,  <33.130352, 39.188637, 45.141243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.240936, 39.397770, 45.181667>,  <33.425240, 39.746326, 45.249039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240936, 39.397770, 45.181667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014292, -0.197038, 0.980292,
		-0.887409, 0.449273, 0.103241,
		-0.460761, -0.871395, -0.168432,
		33.102707, 39.136353, 45.131138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751091, 39.598885, 45.639877>,  <33.425240, 39.746326, 45.249039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751091, 39.598885, 45.639877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.975746, 39.271122, 45.594032>,  <33.110538, 39.074463, 45.566525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.975746, 39.271122, 45.594032>,  <32.751091, 39.598885, 45.639877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975746, 39.271122, 45.594032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025056, -0.121619, 0.992261,
		-0.827004, -0.560162, -0.047775,
		0.561637, -0.819407, -0.114615,
		33.144238, 39.025299, 45.559647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536911, 39.066250, 46.070263>,  <32.751091, 39.598885, 45.639877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536911, 39.066250, 46.070263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.932037, 39.035904, 46.015915>,  <33.169113, 39.017696, 45.983307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.932037, 39.035904, 46.015915>,  <32.536911, 39.066250, 46.070263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932037, 39.035904, 46.015915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123508, -0.148946, 0.981102,
		-0.094664, -0.985931, -0.137762,
		0.987818, -0.075860, -0.135870,
		33.228382, 39.013145, 45.975155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694317, 38.640285, 46.517529>,  <32.536911, 39.066250, 46.070263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694317, 38.640285, 46.517529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.051762, 38.799332, 46.434231>,  <33.266228, 38.894760, 46.384254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.051762, 38.799332, 46.434231>,  <32.694317, 38.640285, 46.517529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051762, 38.799332, 46.434231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344706, -0.310801, 0.885766,
		0.287473, -0.863310, -0.414796,
		0.893609, 0.397616, -0.208241,
		33.319843, 38.918617, 46.371758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147770, 38.043468, 46.531483>,  <32.694317, 38.640285, 46.517529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147770, 38.043468, 46.531483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.298321, 38.398163, 46.638851>,  <33.388649, 38.610977, 46.703270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.298321, 38.398163, 46.638851>,  <33.147770, 38.043468, 46.531483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298321, 38.398163, 46.638851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223763, -0.368149, 0.902439,
		0.899039, -0.279594, -0.336980,
		0.376375, 0.886732, 0.268418,
		33.411232, 38.664181, 46.719376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055927, 37.580437, 47.117493>,  <33.147770, 38.043468, 46.531483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055927, 37.580437, 47.117493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.926128, 37.261715, 47.321377>,  <32.848251, 37.070480, 47.443707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.926128, 37.261715, 47.321377>,  <33.055927, 37.580437, 47.117493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926128, 37.261715, 47.321377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904448, -0.103623, 0.413807,
		-0.276906, 0.595282, 0.754296,
		-0.324494, -0.796807, 0.509708,
		32.828781, 37.022675, 47.474289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387890, 37.648796, 47.826687>,  <33.055927, 37.580437, 47.117493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387890, 37.648796, 47.826687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.279690, 37.265263, 47.792130>,  <33.214767, 37.035141, 47.771393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.279690, 37.265263, 47.792130>,  <33.387890, 37.648796, 47.826687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279690, 37.265263, 47.792130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907534, -0.283917, 0.309473,
		-0.321263, 0.005308, 0.946975,
		-0.270505, -0.958834, -0.086395,
		33.198540, 36.977612, 47.766212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541355, 37.276718, 48.379562>,  <33.387890, 37.648796, 47.826687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541355, 37.276718, 48.379562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.543400, 37.015484, 48.076656>,  <33.544628, 36.858742, 47.894913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.543400, 37.015484, 48.076656>,  <33.541355, 37.276718, 48.379562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543400, 37.015484, 48.076656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942119, -0.250725, 0.222597,
		-0.335240, -0.714572, 0.614003,
		0.005116, -0.653087, -0.757265,
		33.544933, 36.819557, 47.849476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037094, 36.864674, 48.636818>,  <33.541355, 37.276718, 48.379562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037094, 36.864674, 48.636818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.014374, 36.726425, 48.262157>,  <34.000744, 36.643475, 48.037361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.014374, 36.726425, 48.262157>,  <34.037094, 36.864674, 48.636818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014374, 36.726425, 48.262157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975108, -0.220607, 0.022273,
		-0.214330, -0.912073, 0.349551,
		-0.056799, -0.345624, -0.936652,
		33.997334, 36.622738, 47.981163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232944, 36.247425, 48.735626>,  <34.037094, 36.864674, 48.636818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232944, 36.247425, 48.735626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.295029, 36.377869, 48.362625>,  <34.332279, 36.456135, 48.138824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.295029, 36.377869, 48.362625>,  <34.232944, 36.247425, 48.735626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295029, 36.377869, 48.362625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960154, -0.271872, 0.064734,
		-0.232411, -0.905393, -0.355316,
		0.155210, 0.326113, -0.932502,
		34.341591, 36.475704, 48.082874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652885, 35.771011, 48.505444>,  <34.232944, 36.247425, 48.735626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652885, 35.771011, 48.505444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.686077, 36.069218, 48.240921>,  <34.705994, 36.248142, 48.082207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.686077, 36.069218, 48.240921>,  <34.652885, 35.771011, 48.505444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686077, 36.069218, 48.240921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994823, -0.101040, 0.010924,
		-0.058674, -0.658788, -0.750037,
		0.082980, 0.745513, -0.661305,
		34.710972, 36.292873, 48.042530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127804, 35.524891, 48.093189>,  <34.652885, 35.771011, 48.505444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127804, 35.524891, 48.093189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.154331, 35.915283, 48.010189>,  <35.170246, 36.149521, 47.960388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.154331, 35.915283, 48.010189>,  <35.127804, 35.524891, 48.093189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154331, 35.915283, 48.010189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994450, -0.081674, -0.066319,
		-0.081674, -0.201948, -0.975985,
		0.066319, 0.975985, -0.207498,
		35.174229, 36.208080, 47.947941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628971, 35.639965, 47.478592>,  <35.127804, 35.524891, 48.093189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628971, 35.639965, 47.478592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.576923, 36.005985, 47.631302>,  <35.545696, 36.225597, 47.722927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.576923, 36.005985, 47.631302>,  <35.628971, 35.639965, 47.478592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576923, 36.005985, 47.631302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909429, 0.263537, -0.321695,
		-0.394979, 0.305339, -0.866464,
		-0.130120, 0.915050, 0.381776,
		35.537888, 36.280499, 47.745834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856709, 36.173813, 46.963814>,  <35.628971, 35.639965, 47.478592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856709, 36.173813, 46.963814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.884068, 36.343098, 47.325191>,  <35.900482, 36.444668, 47.542019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.884068, 36.343098, 47.325191>,  <35.856709, 36.173813, 46.963814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884068, 36.343098, 47.325191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940565, 0.274595, -0.199839,
		-0.332656, 0.863416, -0.379279,
		0.068397, 0.423214, 0.903444,
		35.904587, 36.470062, 47.596226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088570, 36.855598, 46.860809>,  <35.856709, 36.173813, 46.963814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088570, 36.855598, 46.860809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.155502, 36.785042, 47.248806>,  <36.195660, 36.742710, 47.481606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.155502, 36.785042, 47.248806>,  <36.088570, 36.855598, 46.860809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155502, 36.785042, 47.248806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945784, 0.306522, -0.107414,
		-0.278378, 0.935378, 0.218115,
		0.167330, -0.176387, 0.969994,
		36.205700, 36.732124, 47.539803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471195, 37.450123, 47.024452>,  <36.088570, 36.855598, 46.860809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471195, 37.450123, 47.024452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.529320, 37.170567, 47.304577>,  <36.564194, 37.002834, 47.472652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.529320, 37.170567, 47.304577>,  <36.471195, 37.450123, 47.024452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529320, 37.170567, 47.304577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979200, 0.202898, -0.000697,
		-0.141605, 0.685846, 0.713837,
		0.145314, -0.698891, 0.700311,
		36.572914, 36.960899, 47.514671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900211, 37.705891, 47.519829>,  <36.471195, 37.450123, 47.024452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900211, 37.705891, 47.519829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.950230, 37.318413, 47.605621>,  <36.980240, 37.085926, 47.657097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.950230, 37.318413, 47.605621>,  <36.900211, 37.705891, 47.519829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950230, 37.318413, 47.605621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989602, 0.137259, 0.042980,
		-0.071073, 0.206877, 0.975782,
		0.125043, -0.968691, 0.214482,
		36.987743, 37.027805, 47.669968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512150, 37.699169, 47.922249>,  <36.900211, 37.705891, 47.519829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512150, 37.699169, 47.922249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.473412, 37.329330, 47.774876>,  <37.450169, 37.107426, 47.686451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.473412, 37.329330, 47.774876>,  <37.512150, 37.699169, 47.922249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473412, 37.329330, 47.774876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979838, -0.023572, -0.198399,
		0.174754, -0.380221, 0.908236,
		-0.096844, -0.924595, -0.368435,
		37.444359, 37.051952, 47.664345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923748, 37.219646, 48.281620>,  <37.512150, 37.699169, 47.922249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923748, 37.219646, 48.281620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.895721, 37.141964, 47.890240>,  <37.878906, 37.095352, 47.655411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.895721, 37.141964, 47.890240>,  <37.923748, 37.219646, 48.281620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895721, 37.141964, 47.890240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997519, -0.006846, -0.070072,
		0.006910, -0.980936, 0.194208,
		-0.070065, -0.194211, -0.978454,
		37.874702, 37.083702, 47.596703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345955, 36.525875, 48.045963>,  <37.923748, 37.219646, 48.281620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345955, 36.525875, 48.045963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.291721, 36.721676, 47.701405>,  <38.259182, 36.839157, 47.494667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.291721, 36.721676, 47.701405>,  <38.345955, 36.525875, 48.045963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291721, 36.721676, 47.701405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927354, -0.243348, -0.284247,
		-0.348758, -0.837361, -0.420945,
		-0.135581, 0.489499, -0.861399,
		38.251045, 36.868526, 47.442986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557716, 35.941113, 47.745735>,  <38.345955, 36.525875, 48.045963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557716, 35.941113, 47.745735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.290180, 35.908497, 47.450169>,  <38.129658, 35.888927, 47.272827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.290180, 35.908497, 47.450169>,  <38.557716, 35.941113, 47.745735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290180, 35.908497, 47.450169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569204, -0.695521, -0.438472,
		-0.478180, -0.713864, 0.511606,
		-0.668842, -0.081540, -0.738919,
		38.089527, 35.884033, 47.228493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228531, 35.818516, 47.645962>,  <38.557716, 35.941113, 47.745735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228531, 35.818516, 47.645962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.208458, 35.428993, 47.557247>,  <39.196415, 35.195282, 47.504017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.208458, 35.428993, 47.557247>,  <39.228531, 35.818516, 47.645962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208458, 35.428993, 47.557247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455100, 0.175373, -0.873000,
		0.889025, -0.144746, 0.434377,
		-0.050185, -0.973803, -0.221785,
		39.193401, 35.136852, 47.490711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923779, 35.541630, 47.491787>,  <39.228531, 35.818516, 47.645962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923779, 35.541630, 47.491787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.644199, 35.357819, 47.272583>,  <39.476452, 35.247532, 47.141060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.644199, 35.357819, 47.272583>,  <39.923779, 35.541630, 47.491787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644199, 35.357819, 47.272583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557586, 0.129702, -0.819924,
		0.447853, -0.878644, 0.165570,
		-0.698946, -0.459524, -0.548007,
		39.434517, 35.219963, 47.108181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265533, 35.326317, 48.075947>,  <39.923779, 35.541630, 47.491787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265533, 35.326317, 48.075947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.439495, 35.366383, 48.433903>,  <40.543873, 35.390423, 48.648674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.439495, 35.366383, 48.433903>,  <40.265533, 35.326317, 48.075947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439495, 35.366383, 48.433903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737479, -0.530629, 0.417800,
		0.516703, -0.841665, -0.156903,
		0.434905, 0.100166, 0.894888,
		40.569965, 35.396431, 48.702370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923557, 34.799625, 48.428650>,  <40.265533, 35.326317, 48.075947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923557, 34.799625, 48.428650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.069363, 35.041225, 48.712147>,  <40.156845, 35.186184, 48.882244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.069363, 35.041225, 48.712147>,  <39.923557, 34.799625, 48.428650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069363, 35.041225, 48.712147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692744, -0.332729, 0.639841,
		0.622282, -0.724208, 0.297132,
		0.364514, 0.603998, 0.708742,
		40.178719, 35.222424, 48.924770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003952, 34.456024, 49.003166>,  <39.923557, 34.799625, 48.428650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003952, 34.456024, 49.003166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.920681, 34.816486, 49.155262>,  <39.870716, 35.032764, 49.246517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.920681, 34.816486, 49.155262>,  <40.003952, 34.456024, 49.003166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920681, 34.816486, 49.155262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655280, -0.417112, 0.629782,
		0.726133, -0.118053, 0.677344,
		-0.208181, 0.901155, 0.380237,
		39.858227, 35.086834, 49.269333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093807, 34.369591, 49.716522>,  <40.003952, 34.456024, 49.003166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093807, 34.369591, 49.716522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.822292, 34.646317, 49.618015>,  <39.659382, 34.812351, 49.558910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.822292, 34.646317, 49.618015>,  <40.093807, 34.369591, 49.716522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822292, 34.646317, 49.618015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647444, -0.405574, 0.645233,
		0.346500, 0.597418, 0.723208,
		-0.678788, 0.691810, -0.246263,
		39.618656, 34.853859, 49.544136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829643, 34.621059, 50.359230>,  <40.093807, 34.369591, 49.716522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829643, 34.621059, 50.359230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.542641, 34.717834, 50.097958>,  <39.370438, 34.775898, 49.941193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.542641, 34.717834, 50.097958>,  <39.829643, 34.621059, 50.359230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542641, 34.717834, 50.097958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696438, -0.232266, 0.678990,
		0.012558, 0.942083, 0.335144,
		-0.717507, 0.241934, -0.653185,
		39.327389, 34.790413, 49.902000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290146, 35.031010, 50.754997>,  <39.829643, 34.621059, 50.359230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290146, 35.031010, 50.754997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.105061, 34.894573, 50.427692>,  <38.994011, 34.812710, 50.231308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.105061, 34.894573, 50.427692>,  <39.290146, 35.031010, 50.754997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105061, 34.894573, 50.427692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781157, -0.279540, 0.558257,
		-0.419156, 0.897503, -0.137103,
		-0.462711, -0.341096, -0.818262,
		38.966248, 34.792244, 50.182213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604752, 35.295170, 50.731503>,  <39.290146, 35.031010, 50.754997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604752, 35.295170, 50.731503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.580273, 34.962955, 50.510063>,  <38.565586, 34.763626, 50.377201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.580273, 34.962955, 50.510063>,  <38.604752, 35.295170, 50.731503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580273, 34.962955, 50.510063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948738, -0.123905, 0.290763,
		-0.310082, 0.543013, -0.780376,
		-0.061195, -0.830533, -0.553598,
		38.561913, 34.713795, 50.343983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017433, 35.369160, 50.401356>,  <38.604752, 35.295170, 50.731503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017433, 35.369160, 50.401356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.057636, 34.975033, 50.346157>,  <38.081757, 34.738556, 50.313038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.057636, 34.975033, 50.346157>,  <38.017433, 35.369160, 50.401356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057636, 34.975033, 50.346157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934255, -0.141159, 0.327478,
		-0.342150, 0.096011, -0.934727,
		0.100504, -0.985320, -0.137996,
		38.087788, 34.679436, 50.304760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465561, 35.142307, 49.918407>,  <38.017433, 35.369160, 50.401356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465561, 35.142307, 49.918407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.593166, 34.844139, 50.152531>,  <37.669731, 34.665237, 50.293003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.593166, 34.844139, 50.152531>,  <37.465561, 35.142307, 49.918407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593166, 34.844139, 50.152531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913295, -0.076783, 0.399996,
		-0.253222, -0.662161, -0.705281,
		0.319015, -0.745418, 0.585305,
		37.688869, 34.620514, 50.328121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901691, 34.728065, 49.896286>,  <37.465561, 35.142307, 49.918407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901691, 34.728065, 49.896286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.118664, 34.585194, 50.200439>,  <37.248848, 34.499470, 50.382931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.118664, 34.585194, 50.200439>,  <36.901691, 34.728065, 49.896286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118664, 34.585194, 50.200439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839710, -0.202996, 0.503666,
		-0.025546, -0.911709, -0.410041,
		0.542433, -0.357183, 0.760386,
		37.281395, 34.478039, 50.428555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628254, 34.113510, 50.102070>,  <36.901691, 34.728065, 49.896286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628254, 34.113510, 50.102070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.827988, 34.209507, 50.435074>,  <36.947826, 34.267105, 50.634876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.827988, 34.209507, 50.435074>,  <36.628254, 34.113510, 50.102070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827988, 34.209507, 50.435074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791568, -0.264299, 0.550969,
		0.352261, -0.934103, 0.057999,
		0.499333, 0.239995, 0.832508,
		36.977787, 34.281506, 50.684826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647045, 33.519634, 50.700592>,  <36.628254, 34.113510, 50.102070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647045, 33.519634, 50.700592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.691196, 33.877613, 50.873512>,  <36.717690, 34.092400, 50.977264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.691196, 33.877613, 50.873512>,  <36.647045, 33.519634, 50.700592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691196, 33.877613, 50.873512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684291, -0.247019, 0.686096,
		0.720807, -0.371555, 0.585136,
		0.110383, 0.894946, 0.432305,
		36.724312, 34.146095, 51.003204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449974, 33.349087, 51.341415>,  <36.647045, 33.519634, 50.700592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449974, 33.349087, 51.341415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.439835, 33.748943, 51.337803>,  <36.433750, 33.988857, 51.335636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.439835, 33.748943, 51.337803>,  <36.449974, 33.349087, 51.341415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439835, 33.748943, 51.337803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745730, -0.012893, 0.666125,
		0.665767, 0.023621, 0.745786,
		-0.025350, 0.999638, -0.009031,
		36.432228, 34.048836, 51.335094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146957, 33.571056, 51.976730>,  <36.449974, 33.349087, 51.341415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146957, 33.571056, 51.976730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.122929, 33.915096, 51.774097>,  <36.108513, 34.121521, 51.652519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.122929, 33.915096, 51.774097>,  <36.146957, 33.571056, 51.976730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122929, 33.915096, 51.774097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761329, 0.288742, 0.580523,
		0.645577, 0.420548, 0.637471,
		-0.060072, 0.860098, -0.506580,
		36.104908, 34.173126, 51.622124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090439, 33.994202, 52.546337>,  <36.146957, 33.571056, 51.976730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090439, 33.994202, 52.546337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.932564, 34.145859, 52.211559>,  <35.837837, 34.236855, 52.010693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.932564, 34.145859, 52.211559>,  <36.090439, 33.994202, 52.546337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932564, 34.145859, 52.211559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779986, 0.343190, 0.523299,
		0.485635, 0.859343, 0.160273,
		-0.394689, 0.379143, -0.836941,
		35.814156, 34.259602, 51.960476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030701, 34.660671, 52.695713>,  <36.090439, 33.994202, 52.546337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030701, 34.660671, 52.695713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.781864, 34.650249, 52.382710>,  <35.632561, 34.643997, 52.194908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.781864, 34.650249, 52.382710>,  <36.030701, 34.660671, 52.695713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781864, 34.650249, 52.382710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671814, 0.531029, 0.516405,
		0.402081, 0.846953, -0.347853,
		-0.622091, -0.026056, -0.782511,
		35.595238, 34.642433, 52.147957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911697, 35.355492, 52.572086>,  <36.030701, 34.660671, 52.695713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911697, 35.355492, 52.572086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.615372, 35.129383, 52.426949>,  <35.437576, 34.993717, 52.339867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.615372, 35.129383, 52.426949>,  <35.911697, 35.355492, 52.572086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615372, 35.129383, 52.426949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669589, 0.578620, 0.465670,
		-0.053283, 0.587932, -0.807153,
		-0.740818, -0.565273, -0.362843,
		35.393127, 34.959801, 52.318096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371845, 35.838314, 52.599861>,  <35.911697, 35.355492, 52.572086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371845, 35.838314, 52.599861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.204533, 35.477840, 52.554424>,  <35.104145, 35.261555, 52.527161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.204533, 35.477840, 52.554424>,  <35.371845, 35.838314, 52.599861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204533, 35.477840, 52.554424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801351, 0.307243, 0.513261,
		-0.427644, 0.305715, -0.850681,
		-0.418278, -0.901188, -0.113595,
		35.079048, 35.207485, 52.520348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707302, 36.067886, 52.643871>,  <35.371845, 35.838314, 52.599861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707302, 36.067886, 52.643871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.725155, 35.674156, 52.712116>,  <34.735867, 35.437920, 52.753063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.725155, 35.674156, 52.712116>,  <34.707302, 36.067886, 52.643871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725155, 35.674156, 52.712116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722989, 0.086033, 0.685481,
		-0.689416, -0.153948, -0.707817,
		0.044633, -0.984326, 0.170615,
		34.738544, 35.378857, 52.763302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996498, 35.837524, 52.693451>,  <34.707302, 36.067886, 52.643871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996498, 35.837524, 52.693451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.215061, 35.557022, 52.876617>,  <34.346199, 35.388721, 52.986519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.215061, 35.557022, 52.876617>,  <33.996498, 35.837524, 52.693451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215061, 35.557022, 52.876617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676236, -0.046832, 0.735195,
		-0.494113, -0.711372, -0.499802,
		0.546404, -0.701253, 0.457916,
		34.378983, 35.346645, 53.013992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499622, 35.305241, 52.934944>,  <33.996498, 35.837524, 52.693451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499622, 35.305241, 52.934944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.817669, 35.261177, 53.173489>,  <34.008499, 35.234737, 53.316616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.817669, 35.261177, 53.173489>,  <33.499622, 35.305241, 52.934944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817669, 35.261177, 53.173489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600460, -0.005092, 0.799639,
		-0.085056, -0.993900, -0.070199,
		0.795118, -0.110165, 0.596364,
		34.056206, 35.228130, 53.352398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303249, 34.823147, 53.503532>,  <33.499622, 35.305241, 52.934944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303249, 34.823147, 53.503532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.620987, 35.036331, 53.620132>,  <33.811630, 35.164242, 53.690094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.620987, 35.036331, 53.620132>,  <33.303249, 34.823147, 53.503532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620987, 35.036331, 53.620132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424704, 0.144138, 0.893785,
		0.434341, -0.833769, 0.340847,
		0.794340, 0.532966, 0.291500,
		33.859287, 35.196220, 53.707581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484394, 34.596615, 54.218266>,  <33.303249, 34.823147, 53.503532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484394, 34.596615, 54.218266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.692688, 34.937069, 54.191696>,  <33.817665, 35.141342, 54.175755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.692688, 34.937069, 54.191696>,  <33.484394, 34.596615, 54.218266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692688, 34.937069, 54.191696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233504, 0.216830, 0.947872,
		0.821167, -0.478077, 0.311653,
		0.520731, 0.851133, -0.066421,
		33.848907, 35.192410, 54.171768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654133, 34.664391, 54.814472>,  <33.484394, 34.596615, 54.218266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654133, 34.664391, 54.814472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.704353, 35.036747, 54.677250>,  <33.734486, 35.260159, 54.594917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.704353, 35.036747, 54.677250>,  <33.654133, 34.664391, 54.814472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704353, 35.036747, 54.677250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134056, 0.358538, 0.923840,
		0.982988, -0.070002, 0.169806,
		0.125552, 0.930887, -0.343054,
		33.742020, 35.316013, 54.574333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934303, 35.070892, 55.430695>,  <33.654133, 34.664391, 54.814472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934303, 35.070892, 55.430695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.784538, 35.346531, 55.182510>,  <33.694679, 35.511913, 55.033600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.784538, 35.346531, 55.182510>,  <33.934303, 35.070892, 55.430695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784538, 35.346531, 55.182510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118826, 0.627953, 0.769126,
		0.919619, 0.361694, -0.153228,
		-0.374408, 0.689096, -0.620456,
		33.672215, 35.553261, 54.996372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202290, 35.685345, 55.795212>,  <33.934303, 35.070892, 55.430695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202290, 35.685345, 55.795212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.927357, 35.827023, 55.541561>,  <33.762398, 35.912029, 55.389370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.927357, 35.827023, 55.541561>,  <34.202290, 35.685345, 55.795212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927357, 35.827023, 55.541561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291231, 0.665403, 0.687331,
		0.665403, 0.657102, -0.354198,
		-0.687331, 0.354198, -0.634129,
		33.721157, 35.933281, 55.351322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393333, 36.337299, 55.612656>,  <34.202290, 35.685345, 55.795212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393333, 36.337299, 55.612656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.001228, 36.307495, 55.539413>,  <33.765965, 36.289612, 55.495468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.001228, 36.307495, 55.539413>,  <34.393333, 36.337299, 55.612656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001228, 36.307495, 55.539413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183673, 0.685792, 0.704240,
		0.073104, 0.723974, -0.685943,
		-0.980265, -0.074506, -0.183108,
		33.707150, 36.285145, 55.484482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105125, 36.985439, 55.463154>,  <34.393333, 36.337299, 55.612656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105125, 36.985439, 55.463154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.790035, 36.771645, 55.585667>,  <33.600983, 36.643368, 55.659176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.790035, 36.771645, 55.585667>,  <34.105125, 36.985439, 55.463154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790035, 36.771645, 55.585667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315514, 0.777086, 0.544600,
		-0.529091, 0.332359, -0.780769,
		-0.787727, -0.534487, 0.306285,
		33.553719, 36.611298, 55.677551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633263, 37.531631, 55.484238>,  <34.105125, 36.985439, 55.463154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633263, 37.531631, 55.484238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.444374, 37.225163, 55.658588>,  <33.331039, 37.041283, 55.763199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.444374, 37.225163, 55.658588>,  <33.633263, 37.531631, 55.484238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444374, 37.225163, 55.658588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470149, 0.637199, 0.610686,
		-0.745631, 0.083450, -0.661113,
		-0.472222, -0.766168, 0.435881,
		33.302708, 36.995312, 55.789352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800739, 37.492523, 55.388298>,  <33.633263, 37.531631, 55.484238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800739, 37.492523, 55.388298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.888016, 37.296295, 55.725754>,  <32.940384, 37.178558, 55.928226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.888016, 37.296295, 55.725754>,  <32.800739, 37.492523, 55.388298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888016, 37.296295, 55.725754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705062, 0.518455, 0.483830,
		-0.674744, -0.700388, -0.232761,
		0.218193, -0.490572, 0.843641,
		32.953472, 37.149124, 55.978848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255943, 37.257847, 55.660583>,  <32.800739, 37.492523, 55.388298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255943, 37.257847, 55.660583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.495544, 37.280788, 55.980057>,  <32.639305, 37.294552, 56.171741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.495544, 37.280788, 55.980057>,  <32.255943, 37.257847, 55.660583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495544, 37.280788, 55.980057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711688, 0.495283, 0.498192,
		-0.367004, -0.866837, 0.337495,
		0.599006, 0.057353, 0.798688,
		32.675247, 37.297993, 56.219662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773373, 37.100510, 56.184189>,  <32.255943, 37.257847, 55.660583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773373, 37.100510, 56.184189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.081985, 37.273834, 56.370514>,  <32.267155, 37.377831, 56.482307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.081985, 37.273834, 56.370514>,  <31.773373, 37.100510, 56.184189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081985, 37.273834, 56.370514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634555, 0.576629, 0.514625,
		-0.045608, -0.692632, 0.719847,
		0.771531, 0.433312, 0.465812,
		32.313446, 37.403828, 56.510258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525755, 37.096523, 56.874153>,  <31.773373, 37.100510, 56.184189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525755, 37.096523, 56.874153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.854998, 37.323658, 56.877064>,  <32.052544, 37.459938, 56.878811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.854998, 37.323658, 56.877064>,  <31.525755, 37.096523, 56.874153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854998, 37.323658, 56.877064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442066, 0.632639, 0.635881,
		0.356473, -0.526617, 0.771752,
		0.823107, 0.567840, 0.007281,
		32.101929, 37.494011, 56.879250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641045, 37.214569, 57.515297>,  <31.525755, 37.096523, 56.874153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641045, 37.214569, 57.515297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.833469, 37.523174, 57.348755>,  <31.948923, 37.708336, 57.248829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.833469, 37.523174, 57.348755>,  <31.641045, 37.214569, 57.515297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833469, 37.523174, 57.348755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531315, 0.634332, 0.561541,
		0.697343, -0.048917, 0.715066,
		0.481058, 0.771512, -0.416356,
		31.977787, 37.754627, 57.223850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848124, 37.668831, 58.047012>,  <31.641045, 37.214569, 57.515297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848124, 37.668831, 58.047012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.838329, 37.902554, 57.722546>,  <31.832453, 38.042789, 57.527866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.838329, 37.902554, 57.722546>,  <31.848124, 37.668831, 58.047012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838329, 37.902554, 57.722546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460547, 0.713580, 0.527919,
		0.887297, 0.386506, 0.251628,
		-0.024487, 0.584308, -0.811162,
		31.830984, 38.077847, 57.479198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845869, 38.277805, 58.370758>,  <31.848124, 37.668831, 58.047012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845869, 38.277805, 58.370758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.747190, 38.370544, 57.994377>,  <31.687984, 38.426189, 57.768547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.747190, 38.370544, 57.994377>,  <31.845869, 38.277805, 58.370758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747190, 38.370544, 57.994377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654901, 0.675806, 0.338216,
		0.714315, 0.699667, -0.014882,
		-0.246696, 0.231846, -0.940951,
		31.673182, 38.440098, 57.712093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719963, 38.968517, 58.403263>,  <31.845869, 38.277805, 58.370758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719963, 38.968517, 58.403263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.537691, 38.874397, 58.059872>,  <31.428328, 38.817924, 57.853836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.537691, 38.874397, 58.059872>,  <31.719963, 38.968517, 58.403263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537691, 38.874397, 58.059872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719779, 0.664818, 0.199840,
		0.523713, 0.708981, -0.472304,
		-0.455679, -0.235296, -0.858483,
		31.400988, 38.803810, 57.802326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573568, 39.650566, 58.023106>,  <31.719963, 38.968517, 58.403263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573568, 39.650566, 58.023106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.315411, 39.375870, 57.889324>,  <31.160517, 39.211052, 57.809055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.315411, 39.375870, 57.889324>,  <31.573568, 39.650566, 58.023106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315411, 39.375870, 57.889324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763815, 0.584343, 0.274098,
		0.007200, 0.432359, -0.901673,
		-0.645395, -0.686738, -0.334449,
		31.121792, 39.169849, 57.788990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263481, 39.977520, 57.479080>,  <31.573568, 39.650566, 58.023106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263481, 39.977520, 57.479080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.018848, 39.697376, 57.626305>,  <30.872068, 39.529289, 57.714638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.018848, 39.697376, 57.626305>,  <31.263481, 39.977520, 57.479080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018848, 39.697376, 57.626305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665722, 0.706909, 0.238943,
		-0.427528, -0.098890, -0.898577,
		-0.611583, -0.700357, 0.368057,
		30.835373, 39.487270, 57.736721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653820, 40.218628, 57.380119>,  <31.263481, 39.977520, 57.479080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653820, 40.218628, 57.380119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.511833, 39.920780, 57.606232>,  <30.426641, 39.742073, 57.741898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.511833, 39.920780, 57.606232>,  <30.653820, 40.218628, 57.380119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.511833, 39.920780, 57.606232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842699, 0.516660, 0.151396,
		-0.404791, -0.422622, -0.810886,
		-0.354969, -0.744616, 0.565282,
		30.405342, 39.697395, 57.775818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021832, 39.976013, 57.175602>,  <30.653820, 40.218628, 57.380119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021832, 39.976013, 57.175602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.040558, 39.902092, 57.568268>,  <30.051794, 39.857738, 57.803867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.040558, 39.902092, 57.568268>,  <30.021832, 39.976013, 57.175602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.040558, 39.902092, 57.568268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729633, 0.664867, 0.159961,
		-0.682234, -0.723741, -0.103711,
		0.046816, -0.184802, 0.981660,
		30.054604, 39.846653, 57.862766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.263634, 40.038486, 57.474892>,  <30.021832, 39.976013, 57.175602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.263634, 40.038486, 57.474892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.507805, 40.066429, 57.790485>,  <29.654306, 40.083195, 57.979843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.507805, 40.066429, 57.790485>,  <29.263634, 40.038486, 57.474892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.507805, 40.066429, 57.790485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596944, 0.695292, 0.400283,
		-0.520613, -0.715324, 0.466127,
		0.610427, 0.069859, 0.788986,
		29.690933, 40.087387, 58.027180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797018, 40.206764, 58.021729>,  <29.263634, 40.038486, 57.474892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797018, 40.206764, 58.021729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.145985, 40.256554, 58.210789>,  <29.355364, 40.286427, 58.324223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.145985, 40.256554, 58.210789>,  <28.797018, 40.206764, 58.021729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145985, 40.256554, 58.210789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427124, 0.664265, 0.613447,
		-0.237604, -0.737060, 0.632682,
		0.872416, 0.124476, 0.472648,
		29.407709, 40.293896, 58.352585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737581, 40.023998, 58.743443>,  <28.797018, 40.206764, 58.021729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.737581, 40.023998, 58.743443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.014175, 40.306187, 58.681274>,  <29.180132, 40.475498, 58.643974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.014175, 40.306187, 58.681274>,  <28.737581, 40.023998, 58.743443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.014175, 40.306187, 58.681274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482388, 0.611091, 0.627590,
		0.537724, -0.358996, 0.762873,
		0.691487, 0.705471, -0.155423,
		29.221621, 40.517830, 58.634647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946135, 40.227077, 59.421925>,  <28.737581, 40.023998, 58.743443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946135, 40.227077, 59.421925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.013725, 40.506878, 59.144180>,  <29.054279, 40.674759, 58.977531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.013725, 40.506878, 59.144180>,  <28.946135, 40.227077, 59.421925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.013725, 40.506878, 59.144180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431685, 0.685855, 0.585876,
		0.886055, 0.200746, 0.417860,
		0.168979, 0.699503, -0.694365,
		29.064419, 40.716728, 58.935871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849485, 39.894489, 60.082344>,  <28.946135, 40.227077, 59.421925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.849485, 39.894489, 60.082344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.559183, 40.158382, 60.160347>,  <28.385002, 40.316719, 60.207150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.559183, 40.158382, 60.160347>,  <28.849485, 39.894489, 60.082344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.559183, 40.158382, 60.160347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314952, 0.066612, 0.946767,
		0.611627, 0.748539, -0.256129,
		-0.725754, 0.659736, 0.195012,
		28.341457, 40.356304, 60.218849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170490, 40.343971, 60.505531>,  <28.849485, 39.894489, 60.082344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170490, 40.343971, 60.505531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.782209, 40.427418, 60.553223>,  <28.549240, 40.477486, 60.581837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.782209, 40.427418, 60.553223>,  <29.170490, 40.343971, 60.505531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782209, 40.427418, 60.553223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164038, 0.212782, 0.963232,
		0.175581, 0.954569, -0.240769,
		-0.970702, 0.208620, 0.119225,
		28.490999, 40.490005, 60.588989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.159872, 40.838409, 60.976875>,  <29.170490, 40.343971, 60.505531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.159872, 40.838409, 60.976875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.761984, 40.798386, 60.967720>,  <28.523251, 40.774372, 60.962227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.761984, 40.798386, 60.967720>,  <29.159872, 40.838409, 60.976875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.761984, 40.798386, 60.967720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038621, 0.158220, 0.986648,
		-0.095101, 0.982321, -0.161248,
		-0.994718, -0.100059, -0.022892,
		28.463568, 40.768368, 60.960854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.111788, 41.587891, 61.319126>,  <29.159872, 40.838409, 60.976875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.111788, 41.587891, 61.319126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.942276, 41.379421, 61.022804>,  <28.840569, 41.254337, 60.845013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.942276, 41.379421, 61.022804>,  <29.111788, 41.587891, 61.319126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.942276, 41.379421, 61.022804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037856, 0.827350, -0.560409,
		0.904974, -0.209447, -0.370344,
		-0.423780, -0.521175, -0.740802,
		28.815142, 41.223068, 60.800564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106443, 42.063953, 60.735989>,  <29.111788, 41.587891, 61.319126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106443, 42.063953, 60.735989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.862244, 41.804817, 60.553741>,  <28.715723, 41.649334, 60.444393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.862244, 41.804817, 60.553741>,  <29.106443, 42.063953, 60.735989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.862244, 41.804817, 60.553741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164119, 0.666255, -0.727440,
		0.774825, -0.369328, -0.513073,
		-0.610501, -0.647843, -0.455618,
		28.679092, 41.610466, 60.417057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359053, 42.041191, 60.080791>,  <29.106443, 42.063953, 60.735989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.359053, 42.041191, 60.080791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.970736, 41.963810, 60.137558>,  <28.737745, 41.917381, 60.171616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.970736, 41.963810, 60.137558>,  <29.359053, 42.041191, 60.080791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.970736, 41.963810, 60.137558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239506, 0.746343, -0.620974,
		0.014215, -0.636825, -0.770877,
		-0.970791, -0.193457, 0.141914,
		28.679499, 41.905773, 60.180134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.035957, 42.012356, 59.337868>,  <29.359053, 42.041191, 60.080791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.035957, 42.012356, 59.337868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.788826, 42.108948, 59.637192>,  <28.640547, 42.166904, 59.816788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.788826, 42.108948, 59.637192>,  <29.035957, 42.012356, 59.337868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.788826, 42.108948, 59.637192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272282, 0.827096, -0.491706,
		-0.737664, -0.507543, -0.445255,
		-0.617830, 0.241479, 0.748314,
		28.603477, 42.181393, 59.861687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.440832, 42.424149, 59.060730>,  <29.035957, 42.012356, 59.337868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.440832, 42.424149, 59.060730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.706635, 42.591705, 59.308266>,  <28.866116, 42.692238, 59.456787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.706635, 42.591705, 59.308266>,  <28.440832, 42.424149, 59.060730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706635, 42.591705, 59.308266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608312, 0.177768, -0.773534,
		-0.434035, 0.890466, -0.136687,
		0.664507, 0.418890, 0.618839,
		28.905987, 42.717373, 59.493916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.637245, 43.120945, 58.819702>,  <28.440832, 42.424149, 59.060730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.637245, 43.120945, 58.819702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.926640, 42.941673, 59.029732>,  <29.100277, 42.834110, 59.155750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.926640, 42.941673, 59.029732>,  <28.637245, 43.120945, 58.819702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926640, 42.941673, 59.029732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661335, 0.231828, -0.713366,
		0.197991, 0.863360, 0.464122,
		0.723488, -0.448181, 0.525070,
		29.143686, 42.807220, 59.187252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.254370, 43.534477, 58.965881>,  <28.637245, 43.120945, 58.819702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.254370, 43.534477, 58.965881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.354017, 43.151691, 58.906345>,  <29.413805, 42.922020, 58.870625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.354017, 43.151691, 58.906345>,  <29.254370, 43.534477, 58.965881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.354017, 43.151691, 58.906345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582560, 0.270844, -0.766334,
		0.773670, 0.104197, 0.624963,
		0.249117, -0.956967, -0.148843,
		29.428753, 42.864601, 58.861694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.990673, 43.467171, 58.769947>,  <29.254370, 43.534477, 58.965881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.990673, 43.467171, 58.769947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.862349, 43.111992, 58.638111>,  <29.785353, 42.898884, 58.559010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.862349, 43.111992, 58.638111>,  <29.990673, 43.467171, 58.769947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.862349, 43.111992, 58.638111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519247, 0.126142, -0.845264,
		0.792125, -0.442309, 0.420597,
		-0.320813, -0.887948, -0.329588,
		29.766106, 42.845608, 58.539234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507954, 43.117401, 58.412144>,  <29.990673, 43.467171, 58.769947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507954, 43.117401, 58.412144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.199156, 42.912842, 58.261154>,  <30.013876, 42.790104, 58.170559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.199156, 42.912842, 58.261154>,  <30.507954, 43.117401, 58.412144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199156, 42.912842, 58.261154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413436, 0.047079, -0.909315,
		0.482797, -0.858051, 0.175087,
		-0.771996, -0.511402, -0.377479,
		29.967556, 42.759422, 58.147911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.685881, 42.467476, 58.125084>,  <30.507954, 43.117401, 58.412144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.685881, 42.467476, 58.125084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.358652, 42.560944, 57.914883>,  <30.162315, 42.617023, 57.788761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.358652, 42.560944, 57.914883>,  <30.685881, 42.467476, 58.125084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358652, 42.560944, 57.914883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508223, -0.133962, -0.850743,
		-0.269193, -0.963042, -0.009167,
		-0.818074, 0.233673, -0.525502,
		30.113230, 42.631046, 57.757233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714609, 42.087639, 57.504208>,  <30.685881, 42.467476, 58.125084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714609, 42.087639, 57.504208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.433973, 42.358368, 57.415054>,  <30.265591, 42.520805, 57.361565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.433973, 42.358368, 57.415054>,  <30.714609, 42.087639, 57.504208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.433973, 42.358368, 57.415054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504222, 0.250525, -0.826436,
		-0.503518, -0.692201, -0.517038,
		-0.701591, 0.676827, -0.222879,
		30.223495, 42.561417, 57.348190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395678, 41.945957, 56.851093>,  <30.714609, 42.087639, 57.504208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395678, 41.945957, 56.851093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.273788, 42.324986, 56.889580>,  <30.200655, 42.552402, 56.912670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.273788, 42.324986, 56.889580>,  <30.395678, 41.945957, 56.851093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273788, 42.324986, 56.889580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155889, 0.149277, -0.976430,
		-0.939598, -0.282540, -0.193203,
		-0.304721, 0.947569, 0.096216,
		30.182371, 42.609257, 56.918446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015839, 42.054276, 56.295631>,  <30.395678, 41.945957, 56.851093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015839, 42.054276, 56.295631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.141630, 42.416595, 56.409210>,  <30.217106, 42.633987, 56.477356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.141630, 42.416595, 56.409210>,  <30.015839, 42.054276, 56.295631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141630, 42.416595, 56.409210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381711, 0.153204, -0.911496,
		-0.869138, 0.395030, -0.297576,
		0.314478, 0.905804, 0.283943,
		30.235973, 42.688335, 56.494392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900572, 42.481880, 55.654072>,  <30.015839, 42.054276, 56.295631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900572, 42.481880, 55.654072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.154484, 42.694214, 55.878670>,  <30.306831, 42.821613, 56.013428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.154484, 42.694214, 55.878670>,  <29.900572, 42.481880, 55.654072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154484, 42.694214, 55.878670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528491, 0.231858, -0.816663,
		-0.563696, 0.815145, -0.133360,
		0.634778, 0.530830, 0.561494,
		30.344917, 42.853462, 56.047119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033480, 43.137478, 55.321987>,  <29.900572, 42.481880, 55.654072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033480, 43.137478, 55.321987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.346060, 43.071056, 55.562572>,  <30.533607, 43.031204, 55.706924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.346060, 43.071056, 55.562572>,  <30.033480, 43.137478, 55.321987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346060, 43.071056, 55.562572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622834, 0.149555, -0.767927,
		0.037565, 0.974710, 0.220295,
		0.781452, -0.166054, 0.601464,
		30.580496, 43.021240, 55.743011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672821, 43.652630, 55.037533>,  <30.033480, 43.137478, 55.321987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672821, 43.652630, 55.037533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.833675, 43.361420, 55.259621>,  <30.930189, 43.186695, 55.392872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.833675, 43.361420, 55.259621>,  <30.672821, 43.652630, 55.037533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833675, 43.361420, 55.259621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739732, -0.098992, -0.665580,
		0.539520, 0.678368, 0.498733,
		0.402138, -0.728023, 0.555219,
		30.954317, 43.143013, 55.426186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294031, 43.665237, 54.802391>,  <30.672821, 43.652630, 55.037533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294031, 43.665237, 54.802391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.329239, 43.320019, 55.001350>,  <31.350363, 43.112888, 55.120724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.329239, 43.320019, 55.001350>,  <31.294031, 43.665237, 54.802391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329239, 43.320019, 55.001350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700951, -0.301121, -0.646524,
		0.707757, 0.405555, 0.578450,
		0.088018, -0.863048, 0.497395,
		31.355644, 43.061104, 55.150570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958590, 43.580803, 54.770489>,  <31.294031, 43.665237, 54.802391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958590, 43.580803, 54.770489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.800278, 43.225883, 54.865196>,  <31.705292, 43.012932, 54.922020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.800278, 43.225883, 54.865196>,  <31.958590, 43.580803, 54.770489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800278, 43.225883, 54.865196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570814, -0.439653, -0.693452,
		0.719397, -0.139302, 0.680488,
		-0.395778, -0.887299, 0.236770,
		31.681545, 42.959694, 54.936226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511147, 43.012241, 54.982235>,  <31.958590, 43.580803, 54.770489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511147, 43.012241, 54.982235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.194077, 42.832909, 54.816982>,  <32.003834, 42.725311, 54.717831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.194077, 42.832909, 54.816982>,  <32.511147, 43.012241, 54.982235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194077, 42.832909, 54.816982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566017, -0.289444, -0.771911,
		0.226491, -0.845709, 0.483196,
		-0.792670, -0.448328, -0.413129,
		31.956276, 42.698410, 54.693043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664444, 42.337151, 54.725471>,  <32.511147, 43.012241, 54.982235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664444, 42.337151, 54.725471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.350403, 42.453312, 54.506645>,  <32.161980, 42.523010, 54.375351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.350403, 42.453312, 54.506645>,  <32.664444, 42.337151, 54.725471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350403, 42.453312, 54.506645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558422, -0.050186, -0.828038,
		-0.267923, -0.955587, -0.122769,
		-0.785100, 0.290407, -0.547067,
		32.114872, 42.540432, 54.342525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607147, 41.942696, 54.119495>,  <32.664444, 42.337151, 54.725471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607147, 41.942696, 54.119495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.429138, 42.288307, 54.025345>,  <32.322330, 42.495674, 53.968857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.429138, 42.288307, 54.025345>,  <32.607147, 41.942696, 54.119495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429138, 42.288307, 54.025345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487341, 0.013162, -0.873112,
		-0.751299, -0.503265, -0.426935,
		-0.445026, 0.864032, -0.235373,
		32.295631, 42.547516, 53.954731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230717, 41.914776, 53.477737>,  <32.607147, 41.942696, 54.119495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230717, 41.914776, 53.477737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.344227, 42.292927, 53.541912>,  <32.412334, 42.519817, 53.580418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.344227, 42.292927, 53.541912>,  <32.230717, 41.914776, 53.477737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344227, 42.292927, 53.541912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522635, -0.012209, -0.852469,
		-0.803943, 0.325761, -0.497550,
		0.283776, 0.945373, 0.160438,
		32.429359, 42.576538, 53.590042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093132, 42.187916, 52.776951>,  <32.230717, 41.914776, 53.477737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093132, 42.187916, 52.776951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.362892, 42.397903, 52.984638>,  <32.524750, 42.523895, 53.109249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.362892, 42.397903, 52.984638>,  <32.093132, 42.187916, 52.776951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362892, 42.397903, 52.984638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668995, -0.136875, -0.730555,
		-0.312448, 0.840045, -0.443509,
		0.674405, 0.524966, 0.519220,
		32.565212, 42.555393, 53.140404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462563, 42.533543, 52.229919>,  <32.093132, 42.187916, 52.776951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462563, 42.533543, 52.229919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.704975, 42.621525, 52.535690>,  <32.850422, 42.674313, 52.719151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.704975, 42.621525, 52.535690>,  <32.462563, 42.533543, 52.229919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704975, 42.621525, 52.535690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795433, -0.170858, -0.581459,
		0.002716, 0.960432, -0.278502,
		0.606036, 0.219951, 0.764423,
		32.886787, 42.687511, 52.765018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888805, 43.079155, 52.043865>,  <32.462563, 42.533543, 52.229919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888805, 43.079155, 52.043865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.085579, 42.865078, 52.318550>,  <33.203644, 42.736633, 52.483360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.085579, 42.865078, 52.318550>,  <32.888805, 43.079155, 52.043865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085579, 42.865078, 52.318550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812258, -0.001828, -0.583296,
		0.313431, 0.844729, 0.433814,
		0.491934, -0.535191, 0.686710,
		33.233158, 42.704521, 52.524563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600597, 43.344925, 52.063408>,  <32.888805, 43.079155, 52.043865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600597, 43.344925, 52.063408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.627140, 42.995575, 52.256409>,  <33.643066, 42.785965, 52.372208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.627140, 42.995575, 52.256409>,  <33.600597, 43.344925, 52.063408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627140, 42.995575, 52.256409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895523, -0.161129, -0.414820,
		0.440040, 0.459618, 0.771438,
		0.066358, -0.873378, 0.482501,
		33.647049, 42.733562, 52.401157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312603, 43.259506, 52.122139>,  <33.600597, 43.344925, 52.063408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312603, 43.259506, 52.122139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.173149, 42.893490, 52.203278>,  <34.089478, 42.673878, 52.251961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.173149, 42.893490, 52.203278>,  <34.312603, 43.259506, 52.122139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173149, 42.893490, 52.203278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782607, -0.403298, -0.474212,
		0.515733, -0.006576, 0.856724,
		-0.348634, -0.915045, 0.202847,
		34.068558, 42.618977, 52.264133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949833, 42.837307, 52.228085>,  <34.312603, 43.259506, 52.122139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949833, 42.837307, 52.228085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.668091, 42.556980, 52.182957>,  <34.499046, 42.388783, 52.155880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.668091, 42.556980, 52.182957>,  <34.949833, 42.837307, 52.228085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668091, 42.556980, 52.182957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649857, -0.572694, -0.499708,
		0.285595, -0.425290, 0.858815,
		-0.704359, -0.700821, -0.112819,
		34.456783, 42.346733, 52.149113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161224, 42.177547, 52.575310>,  <34.949833, 42.837307, 52.228085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161224, 42.177547, 52.575310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.895004, 42.108334, 52.284901>,  <34.735271, 42.066807, 52.110657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.895004, 42.108334, 52.284901>,  <35.161224, 42.177547, 52.575310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895004, 42.108334, 52.284901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694798, -0.498904, -0.518025,
		-0.272577, -0.849208, 0.452270,
		-0.665550, -0.173034, -0.726018,
		34.695339, 42.056423, 52.067097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200790, 41.483932, 52.347530>,  <35.161224, 42.177547, 52.575310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200790, 41.483932, 52.347530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.021217, 41.635372, 52.023773>,  <34.913475, 41.726234, 51.829517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.021217, 41.635372, 52.023773>,  <35.200790, 41.483932, 52.347530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021217, 41.635372, 52.023773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598619, -0.545071, -0.586986,
		-0.663411, -0.748037, 0.018064,
		-0.448934, 0.378599, -0.809396,
		34.886536, 41.748951, 51.780956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190601, 40.918056, 52.055103>,  <35.200790, 41.483932, 52.347530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190601, 40.918056, 52.055103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.115952, 41.193863, 51.775177>,  <35.071163, 41.359344, 51.607220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.115952, 41.193863, 51.775177>,  <35.190601, 40.918056, 52.055103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115952, 41.193863, 51.775177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674099, -0.428318, -0.601776,
		-0.714677, -0.584050, -0.384867,
		-0.186621, 0.689514, -0.699817,
		35.059963, 41.400719, 51.565231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030460, 40.524582, 51.433372>,  <35.190601, 40.918056, 52.055103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030460, 40.524582, 51.433372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.153084, 40.887562, 51.318443>,  <35.226658, 41.105350, 51.249485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.153084, 40.887562, 51.318443>,  <35.030460, 40.524582, 51.433372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153084, 40.887562, 51.318443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450312, -0.404206, -0.796138,
		-0.838596, 0.114674, -0.532548,
		0.306555, 0.907451, -0.287326,
		35.245049, 41.159798, 51.232246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831711, 40.647045, 50.659172>,  <35.030460, 40.524582, 51.433372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831711, 40.647045, 50.659172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.149513, 40.871506, 50.752003>,  <35.340195, 41.006184, 50.807701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.149513, 40.871506, 50.752003>,  <34.831711, 40.647045, 50.659172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149513, 40.871506, 50.752003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516734, -0.424002, -0.743780,
		-0.318973, 0.710863, -0.626841,
		0.794507, 0.561156, 0.232081,
		35.387867, 41.039852, 50.821629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185143, 40.786430, 50.038921>,  <34.831711, 40.647045, 50.659172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185143, 40.786430, 50.038921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.471336, 40.892853, 50.297314>,  <35.643055, 40.956707, 50.452351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.471336, 40.892853, 50.297314>,  <35.185143, 40.786430, 50.038921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471336, 40.892853, 50.297314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695861, -0.353588, -0.625103,
		0.062102, 0.896767, -0.438123,
		0.715487, 0.266052, 0.645984,
		35.685982, 40.972668, 50.491108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698833, 41.241211, 49.636486>,  <35.185143, 40.786430, 50.038921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698833, 41.241211, 49.636486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.873562, 41.093868, 49.964752>,  <35.978401, 41.005463, 50.161713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.873562, 41.093868, 49.964752>,  <35.698833, 41.241211, 49.636486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873562, 41.093868, 49.964752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709167, -0.420248, -0.566104,
		0.553414, 0.829278, 0.077655,
		0.436823, -0.368360, 0.820668,
		36.004608, 40.983360, 50.210953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394791, 41.449059, 49.550045>,  <35.698833, 41.241211, 49.636486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394791, 41.449059, 49.550045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.415718, 41.145123, 49.809246>,  <36.428272, 40.962761, 49.964767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.415718, 41.145123, 49.809246>,  <36.394791, 41.449059, 49.550045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415718, 41.145123, 49.809246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749317, -0.399082, -0.528448,
		0.660142, 0.513209, 0.548479,
		0.052316, -0.759836, 0.648007,
		36.431412, 40.917171, 50.003647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027081, 41.313610, 49.669418>,  <36.394791, 41.449059, 49.550045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027081, 41.313610, 49.669418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.877743, 40.959938, 49.781731>,  <36.788139, 40.747734, 49.849117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.877743, 40.959938, 49.781731>,  <37.027081, 41.313610, 49.669418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877743, 40.959938, 49.781731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713094, -0.467115, -0.522781,
		0.593389, 0.005042, 0.804900,
		-0.373345, -0.884182, 0.280776,
		36.765739, 40.694683, 49.865963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553589, 40.924908, 49.971058>,  <37.027081, 41.313610, 49.669418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553589, 40.924908, 49.971058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.282276, 40.658211, 49.847515>,  <37.119488, 40.498192, 49.773392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.282276, 40.658211, 49.847515>,  <37.553589, 40.924908, 49.971058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282276, 40.658211, 49.847515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717335, -0.509729, -0.474982,
		0.159256, -0.543725, 0.824015,
		-0.678284, -0.666738, -0.308855,
		37.078793, 40.458191, 49.754860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876652, 40.258286, 50.098194>,  <37.553589, 40.924908, 49.971058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876652, 40.258286, 50.098194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.564995, 40.181171, 49.859608>,  <37.378002, 40.134903, 49.716457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.564995, 40.181171, 49.859608>,  <37.876652, 40.258286, 50.098194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564995, 40.181171, 49.859608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557091, -0.649189, -0.517884,
		-0.287378, -0.735791, 0.613209,
		-0.779143, -0.192785, -0.596465,
		37.331253, 40.123337, 49.680668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718380, 39.549545, 50.136703>,  <37.876652, 40.258286, 50.098194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718380, 39.549545, 50.136703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.562328, 39.658218, 49.784798>,  <37.468697, 39.723423, 49.573654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.562328, 39.658218, 49.784798>,  <37.718380, 39.549545, 50.136703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562328, 39.658218, 49.784798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535555, -0.710272, -0.456831,
		-0.748984, -0.649388, 0.131600,
		-0.390132, 0.271680, -0.879766,
		37.445290, 39.739723, 49.520866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655888, 38.979488, 49.779831>,  <37.718380, 39.549545, 50.136703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655888, 38.979488, 49.779831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.637138, 39.240131, 49.476986>,  <37.625889, 39.396515, 49.295280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.637138, 39.240131, 49.476986>,  <37.655888, 38.979488, 49.779831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637138, 39.240131, 49.476986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485745, -0.647424, -0.587277,
		-0.872843, -0.395291, -0.286166,
		-0.046875, 0.651604, -0.757110,
		37.623077, 39.435612, 49.249851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524292, 38.479401, 49.187962>,  <37.655888, 38.979488, 49.779831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524292, 38.479401, 49.187962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.627785, 38.826286, 49.017788>,  <37.689880, 39.034416, 48.915684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.627785, 38.826286, 49.017788>,  <37.524292, 38.479401, 49.187962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627785, 38.826286, 49.017788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367126, -0.495667, -0.787104,
		-0.893463, 0.047460, -0.446622,
		0.258731, 0.867215, -0.425436,
		37.705402, 39.086452, 48.890156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400421, 38.314476, 48.519413>,  <37.524292, 38.479401, 49.187962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400421, 38.314476, 48.519413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.630947, 38.639954, 48.549763>,  <37.769264, 38.835239, 48.567970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.630947, 38.639954, 48.549763>,  <37.400421, 38.314476, 48.519413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630947, 38.639954, 48.549763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424356, -0.218626, -0.878706,
		-0.698411, 0.538612, -0.471295,
		0.576319, 0.813695, 0.075872,
		37.803844, 38.884064, 48.572525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308922, 38.708187, 47.833893>,  <37.400421, 38.314476, 48.519413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308922, 38.708187, 47.833893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.647823, 38.774117, 48.035885>,  <37.851162, 38.813675, 48.157078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.647823, 38.774117, 48.035885>,  <37.308922, 38.708187, 47.833893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647823, 38.774117, 48.035885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531181, -0.269543, -0.803239,
		0.003719, 0.948778, -0.315921,
		0.847250, 0.164824, 0.504976,
		37.901997, 38.823563, 48.187378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785702, 39.122105, 47.516739>,  <37.308922, 38.708187, 47.833893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785702, 39.122105, 47.516739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.018520, 38.883499, 47.737785>,  <38.158211, 38.740334, 47.870415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.018520, 38.883499, 47.737785>,  <37.785702, 39.122105, 47.516739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018520, 38.883499, 47.737785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657296, -0.054963, -0.751626,
		0.478732, 0.800716, 0.360097,
		0.582047, -0.596517, 0.552619,
		38.193134, 38.704544, 47.903572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342525, 39.745865, 47.331711>,  <37.785702, 39.122105, 47.516739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342525, 39.745865, 47.331711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.214508, 39.888371, 46.980564>,  <37.137699, 39.973873, 46.769875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.214508, 39.888371, 46.980564>,  <37.342525, 39.745865, 47.331711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214508, 39.888371, 46.980564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947037, -0.146093, 0.285967,
		-0.026372, 0.922895, 0.384148,
		-0.320039, 0.356261, -0.877868,
		37.118496, 39.995251, 46.717205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818012, 40.370270, 47.385956>,  <37.342525, 39.745865, 47.331711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818012, 40.370270, 47.385956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.739750, 40.158207, 47.055950>,  <36.692791, 40.030968, 46.857944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.739750, 40.158207, 47.055950>,  <36.818012, 40.370270, 47.385956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739750, 40.158207, 47.055950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960164, -0.067589, 0.271140,
		-0.199508, 0.845202, -0.495812,
		-0.195657, -0.530155, -0.825017,
		36.681053, 39.999161, 46.808445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373253, 40.724873, 47.007351>,  <36.818012, 40.370270, 47.385956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373253, 40.724873, 47.007351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.333553, 40.349648, 46.874569>,  <36.309734, 40.124512, 46.794899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.333553, 40.349648, 46.874569>,  <36.373253, 40.724873, 47.007351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333553, 40.349648, 46.874569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976864, 0.028344, 0.211974,
		-0.189435, 0.345310, -0.919171,
		-0.099250, -0.938060, -0.331952,
		36.303780, 40.068230, 46.774982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742672, 40.753036, 46.519409>,  <36.373253, 40.724873, 47.007351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742672, 40.753036, 46.519409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.821228, 40.378345, 46.635326>,  <35.868362, 40.153530, 46.704876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.821228, 40.378345, 46.635326>,  <35.742672, 40.753036, 46.519409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821228, 40.378345, 46.635326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919860, -0.073668, 0.385267,
		-0.339541, -0.342228, -0.876123,
		0.196392, -0.936724, 0.289789,
		35.880146, 40.097328, 46.722263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154144, 40.498112, 46.302990>,  <35.742672, 40.753036, 46.519409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154144, 40.498112, 46.302990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.288795, 40.217167, 46.553867>,  <35.369587, 40.048599, 46.704391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.288795, 40.217167, 46.553867>,  <35.154144, 40.498112, 46.302990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288795, 40.217167, 46.553867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908722, -0.067741, 0.411869,
		-0.246796, -0.708588, -0.661056,
		0.336626, -0.702363, 0.627191,
		35.389782, 40.006458, 46.742023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675163, 39.894947, 46.309624>,  <35.154144, 40.498112, 46.302990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675163, 39.894947, 46.309624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.882595, 39.867832, 46.650558>,  <35.007053, 39.851562, 46.855118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.882595, 39.867832, 46.650558>,  <34.675163, 39.894947, 46.309624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882595, 39.867832, 46.650558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853777, -0.094964, 0.511905,
		0.046242, -0.993170, -0.107120,
		0.518582, -0.067786, 0.852337,
		35.038170, 39.847496, 46.906258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271168, 39.409714, 46.764755>,  <34.675163, 39.894947, 46.309624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271168, 39.409714, 46.764755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.472267, 39.635906, 47.026279>,  <34.592926, 39.771622, 47.183193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.472267, 39.635906, 47.026279>,  <34.271168, 39.409714, 46.764755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472267, 39.635906, 47.026279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794625, 0.004560, 0.607083,
		0.340314, -0.824747, 0.451640,
		0.502750, 0.565484, 0.653812,
		34.623093, 39.805550, 47.222424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270153, 39.041885, 47.509701>,  <34.271168, 39.409714, 46.764755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270153, 39.041885, 47.509701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.357304, 39.430870, 47.542789>,  <34.409592, 39.664261, 47.562641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.357304, 39.430870, 47.542789>,  <34.270153, 39.041885, 47.509701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357304, 39.430870, 47.542789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773634, 0.120408, 0.622086,
		0.594997, -0.199533, 0.778566,
		0.217873, 0.972465, 0.082723,
		34.422665, 39.722610, 47.567608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115829, 39.152779, 48.203949>,  <34.270153, 39.041885, 47.509701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115829, 39.152779, 48.203949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.106541, 39.515087, 48.034698>,  <34.100967, 39.732471, 47.933147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.106541, 39.515087, 48.034698>,  <34.115829, 39.152779, 48.203949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106541, 39.515087, 48.034698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860993, 0.196980, 0.468925,
		0.508087, 0.375199, 0.775289,
		-0.023224, 0.905773, -0.423126,
		34.099575, 39.786819, 47.907761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873619, 39.479053, 48.672379>,  <34.115829, 39.152779, 48.203949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873619, 39.479053, 48.672379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.827477, 39.722885, 48.358665>,  <33.799789, 39.869186, 48.170437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.827477, 39.722885, 48.358665>,  <33.873619, 39.479053, 48.672379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827477, 39.722885, 48.358665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727659, 0.485602, 0.484461,
		0.676169, 0.626577, 0.387552,
		-0.115356, 0.609583, -0.784284,
		33.792870, 39.905762, 48.123379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846024, 40.089100, 49.032333>,  <33.873619, 39.479053, 48.672379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846024, 40.089100, 49.032333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.709385, 40.143139, 48.660301>,  <33.627399, 40.175564, 48.437080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.709385, 40.143139, 48.660301>,  <33.846024, 40.089100, 49.032333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709385, 40.143139, 48.660301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846536, 0.385664, 0.366933,
		0.408273, 0.912694, -0.017377,
		-0.341599, 0.135099, -0.930085,
		33.606907, 40.183670, 48.381275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716148, 40.815937, 48.980820>,  <33.846024, 40.089100, 49.032333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716148, 40.815937, 48.980820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.484055, 40.623318, 48.718082>,  <33.344799, 40.507744, 48.560440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.484055, 40.623318, 48.718082>,  <33.716148, 40.815937, 48.980820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484055, 40.623318, 48.718082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781264, 0.556965, 0.281811,
		0.230131, 0.676681, -0.699387,
		-0.580230, -0.481553, -0.656841,
		33.309986, 40.478851, 48.521030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395233, 41.390518, 48.610168>,  <33.716148, 40.815937, 48.980820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395233, 41.390518, 48.610168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.183784, 41.061687, 48.525551>,  <33.056915, 40.864391, 48.474781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.183784, 41.061687, 48.525551>,  <33.395233, 41.390518, 48.610168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183784, 41.061687, 48.525551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842176, 0.476706, 0.251973,
		-0.106295, 0.311359, -0.944329,
		-0.528621, -0.822075, -0.211548,
		33.025200, 40.815063, 48.462086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851646, 41.648277, 48.181049>,  <33.395233, 41.390518, 48.610168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851646, 41.648277, 48.181049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.691608, 41.310150, 48.322678>,  <32.595585, 41.107273, 48.407654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.691608, 41.310150, 48.322678>,  <32.851646, 41.648277, 48.181049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691608, 41.310150, 48.322678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721989, 0.528684, 0.446346,
		-0.564495, -0.077056, -0.821832,
		-0.400096, -0.845314, 0.354073,
		32.571579, 41.056557, 48.428898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138111, 41.714817, 48.113575>,  <32.851646, 41.648277, 48.181049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138111, 41.714817, 48.113575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.162846, 41.407368, 48.368259>,  <32.177689, 41.222900, 48.521069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.162846, 41.407368, 48.368259>,  <32.138111, 41.714817, 48.113575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162846, 41.407368, 48.368259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837650, 0.306899, 0.451836,
		-0.542696, -0.561282, -0.624855,
		0.061841, -0.768619, 0.636711,
		32.181396, 41.176781, 48.559273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406221, 41.361561, 48.203228>,  <32.138111, 41.714817, 48.113575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406221, 41.361561, 48.203228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.622967, 41.246220, 48.519009>,  <31.753014, 41.177013, 48.708477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.622967, 41.246220, 48.519009>,  <31.406221, 41.361561, 48.203228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622967, 41.246220, 48.519009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639687, 0.467761, 0.609919,
		-0.545147, -0.835495, 0.069006,
		0.541862, -0.288353, 0.789454,
		31.785526, 41.159714, 48.755844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910603, 41.097702, 48.683128>,  <31.406221, 41.361561, 48.203228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910603, 41.097702, 48.683128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.226709, 41.185173, 48.912094>,  <31.416374, 41.237656, 49.049473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.226709, 41.185173, 48.912094>,  <30.910603, 41.097702, 48.683128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226709, 41.185173, 48.912094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598255, 0.477413, 0.643558,
		-0.132546, -0.851033, 0.508109,
		0.790267, 0.218678, 0.572414,
		31.463789, 41.250778, 49.083817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661079, 41.076019, 49.269096>,  <30.910603, 41.097702, 48.683128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.661079, 41.076019, 49.269096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.001751, 41.266270, 49.357121>,  <31.206154, 41.380421, 49.409935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.001751, 41.266270, 49.357121>,  <30.661079, 41.076019, 49.269096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001751, 41.266270, 49.357121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420611, 0.369879, 0.828418,
		0.312624, -0.798103, 0.515071,
		0.851677, 0.475628, 0.220058,
		31.257254, 41.408958, 49.423138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.823071, 40.898540, 49.913193>,  <30.661079, 41.076019, 49.269096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.823071, 40.898540, 49.913193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.029264, 41.235664, 49.851295>,  <31.152981, 41.437939, 49.814159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.029264, 41.235664, 49.851295>,  <30.823071, 40.898540, 49.913193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029264, 41.235664, 49.851295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361779, 0.377757, 0.852300,
		0.776783, -0.383365, 0.499639,
		0.515484, 0.842811, -0.154742,
		31.183910, 41.488506, 49.804874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178982, 41.030769, 50.523243>,  <30.823071, 40.898540, 49.913193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178982, 41.030769, 50.523243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.129877, 41.375084, 50.325668>,  <31.100414, 41.581673, 50.207123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.129877, 41.375084, 50.325668>,  <31.178982, 41.030769, 50.523243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129877, 41.375084, 50.325668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272659, 0.449292, 0.850761,
		0.954247, 0.239116, 0.179547,
		-0.122761, 0.860791, -0.493933,
		31.093048, 41.633320, 50.177490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439030, 41.402924, 51.046543>,  <31.178982, 41.030769, 50.523243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439030, 41.402924, 51.046543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.246572, 41.665489, 50.814121>,  <31.131098, 41.823029, 50.674667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.246572, 41.665489, 50.814121>,  <31.439030, 41.402924, 51.046543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246572, 41.665489, 50.814121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451695, 0.382426, 0.806054,
		0.751315, 0.650284, 0.112499,
		-0.481141, 0.656416, -0.581052,
		31.102230, 41.862415, 50.639805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671082, 41.983345, 51.195705>,  <31.439030, 41.402924, 51.046543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671082, 41.983345, 51.195705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.309355, 42.057236, 51.041775>,  <31.092319, 42.101570, 50.949417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.309355, 42.057236, 51.041775>,  <31.671082, 41.983345, 51.195705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.309355, 42.057236, 51.041775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318228, 0.309122, 0.896200,
		0.284506, 0.932910, -0.220760,
		-0.904316, 0.184722, -0.384825,
		31.038059, 42.112652, 50.926327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452841, 42.549366, 51.524971>,  <31.671082, 41.983345, 51.195705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452841, 42.549366, 51.524971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.105331, 42.419247, 51.375618>,  <30.896826, 42.341175, 51.286007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.105331, 42.419247, 51.375618>,  <31.452841, 42.549366, 51.524971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105331, 42.419247, 51.375618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477368, 0.349567, 0.806177,
		-0.131730, 0.878625, -0.458983,
		-0.868773, -0.325302, -0.373379,
		30.844700, 42.321655, 51.263603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871843, 43.005669, 51.599930>,  <31.452841, 42.549366, 51.524971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871843, 43.005669, 51.599930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.644289, 42.683659, 51.532635>,  <30.507757, 42.490452, 51.492260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.644289, 42.683659, 51.532635>,  <30.871843, 43.005669, 51.599930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644289, 42.683659, 51.532635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640557, 0.305420, 0.704560,
		-0.515808, 0.508577, -0.689414,
		-0.568884, -0.805027, -0.168235,
		30.473623, 42.442150, 51.482162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312574, 43.300083, 51.624256>,  <30.871843, 43.005669, 51.599930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312574, 43.300083, 51.624256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.250872, 42.914322, 51.710171>,  <30.213850, 42.682865, 51.761719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.250872, 42.914322, 51.710171>,  <30.312574, 43.300083, 51.624256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250872, 42.914322, 51.710171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626787, 0.263563, 0.733261,
		-0.763769, -0.021515, -0.645131,
		-0.154257, -0.964402, 0.214787,
		30.204596, 42.625000, 51.774609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583860, 43.203735, 51.741177>,  <30.312574, 43.300083, 51.624256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583860, 43.203735, 51.741177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.742487, 42.883659, 51.921146>,  <29.837662, 42.691612, 52.029129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.742487, 42.883659, 51.921146>,  <29.583860, 43.203735, 51.741177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742487, 42.883659, 51.921146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453566, 0.255321, 0.853867,
		-0.798132, -0.542683, -0.261689,
		0.396565, -0.800192, 0.449922,
		29.861456, 42.643600, 52.056122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030090, 42.826019, 52.004292>,  <29.583860, 43.203735, 51.741177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030090, 42.826019, 52.004292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.345491, 42.700527, 52.215889>,  <29.534733, 42.625233, 52.342850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.345491, 42.700527, 52.215889>,  <29.030090, 42.826019, 52.004292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345491, 42.700527, 52.215889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527993, 0.095805, 0.843827,
		-0.315415, -0.944666, -0.090105,
		0.788503, -0.313731, 0.528996,
		29.582043, 42.606407, 52.374588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.793385, 42.309757, 52.419807>,  <29.030090, 42.826019, 52.004292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.793385, 42.309757, 52.419807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.126928, 42.411438, 52.615788>,  <29.327055, 42.472446, 52.733376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.126928, 42.411438, 52.615788>,  <28.793385, 42.309757, 52.419807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.126928, 42.411438, 52.615788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508274, 0.007476, 0.861163,
		0.215249, -0.967122, 0.135440,
		0.833862, 0.254205, 0.489953,
		29.377087, 42.487701, 52.762772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.780600, 41.853405, 53.018440>,  <28.793385, 42.309757, 52.419807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.780600, 41.853405, 53.018440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.055618, 42.123260, 53.125877>,  <29.220631, 42.285172, 53.190338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.055618, 42.123260, 53.125877>,  <28.780600, 41.853405, 53.018440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055618, 42.123260, 53.125877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327082, -0.042510, 0.944040,
		0.648302, -0.736925, 0.191434,
		0.687548, 0.674637, 0.268594,
		29.261883, 42.325653, 53.206455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022215, 41.506996, 53.557381>,  <28.780600, 41.853405, 53.018440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022215, 41.506996, 53.557381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.111765, 41.893444, 53.608757>,  <29.165495, 42.125313, 53.639584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.111765, 41.893444, 53.608757>,  <29.022215, 41.506996, 53.557381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.111765, 41.893444, 53.608757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604971, 0.034430, 0.795503,
		0.764127, -0.255795, 0.592181,
		0.223875, 0.966118, 0.128440,
		29.178926, 42.183281, 53.647289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.087051, 41.546421, 54.255512>,  <29.022215, 41.506996, 53.557381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.087051, 41.546421, 54.255512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.011189, 41.917191, 54.125996>,  <28.965672, 42.139652, 54.048286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.011189, 41.917191, 54.125996>,  <29.087051, 41.546421, 54.255512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011189, 41.917191, 54.125996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540512, 0.176739, 0.822563,
		0.819681, 0.331017, 0.467495,
		-0.189658, 0.926926, -0.323788,
		28.954290, 42.195267, 54.028858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199095, 41.928368, 54.815353>,  <29.087051, 41.546421, 54.255512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199095, 41.928368, 54.815353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.984749, 42.172832, 54.582348>,  <28.856142, 42.319511, 54.442543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.984749, 42.172832, 54.582348>,  <29.199095, 41.928368, 54.815353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.984749, 42.172832, 54.582348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505767, 0.320087, 0.801089,
		0.676054, 0.723893, 0.137584,
		-0.535865, 0.611165, -0.582517,
		28.823990, 42.356182, 54.407593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168598, 42.483612, 55.212482>,  <29.199095, 41.928368, 54.815353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168598, 42.483612, 55.212482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.859339, 42.480877, 54.958809>,  <28.673782, 42.479237, 54.806606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.859339, 42.480877, 54.958809>,  <29.168598, 42.483612, 55.212482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.859339, 42.480877, 54.958809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609926, 0.282130, 0.740536,
		0.173863, 0.959352, -0.222297,
		-0.773151, -0.006833, -0.634185,
		28.627394, 42.478828, 54.768555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.805101, 43.121407, 55.267719>,  <29.168598, 42.483612, 55.212482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.805101, 43.121407, 55.267719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.535826, 42.868057, 55.115063>,  <28.374260, 42.716045, 55.023468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.535826, 42.868057, 55.115063>,  <28.805101, 43.121407, 55.267719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.535826, 42.868057, 55.115063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659367, 0.280514, 0.697530,
		-0.334742, 0.721212, -0.606466,
		-0.673189, -0.633376, -0.381643,
		28.333870, 42.678043, 55.000568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.161737, 43.637051, 55.180862>,  <28.805101, 43.121407, 55.267719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.161737, 43.637051, 55.180862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.018759, 43.264603, 55.151894>,  <27.932972, 43.041134, 55.134514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.018759, 43.264603, 55.151894>,  <28.161737, 43.637051, 55.180862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018759, 43.264603, 55.151894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780069, 0.255019, 0.571364,
		-0.513541, 0.260725, -0.817495,
		-0.357446, -0.931122, -0.072421,
		27.911526, 42.985268, 55.130169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.492407, 43.742439, 54.991924>,  <28.161737, 43.637051, 55.180862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.492407, 43.742439, 54.991924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.515364, 43.371418, 55.139626>,  <27.529139, 43.148804, 55.228245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.515364, 43.371418, 55.139626>,  <27.492407, 43.742439, 54.991924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.515364, 43.371418, 55.139626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808995, 0.173520, 0.561621,
		-0.585007, -0.330955, -0.740429,
		0.057392, -0.927556, 0.369251,
		27.532581, 43.093151, 55.250401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.834581, 43.342342, 54.833073>,  <27.492407, 43.742439, 54.991924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.834581, 43.342342, 54.833073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.997307, 43.154980, 55.146786>,  <27.094942, 43.042561, 55.335014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.997307, 43.154980, 55.146786>,  <26.834581, 43.342342, 54.833073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.997307, 43.154980, 55.146786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887650, 0.000143, 0.460518,
		-0.215824, -0.883511, -0.415727,
		0.406814, -0.468411, 0.784279,
		27.119350, 43.014458, 55.382069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.322582, 42.742405, 55.017498>,  <26.834581, 43.342342, 54.833073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.322582, 42.742405, 55.017498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.533457, 42.815952, 55.349346>,  <26.659983, 42.860081, 55.548454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.533457, 42.815952, 55.349346>,  <26.322582, 42.742405, 55.017498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.533457, 42.815952, 55.349346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842760, -0.011821, 0.538160,
		0.108760, -0.982879, 0.148729,
		0.527188, 0.183873, 0.829617,
		26.691612, 42.871113, 55.598232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.912725, 42.419773, 55.574654>,  <26.322582, 42.742405, 55.017498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.912725, 42.419773, 55.574654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.184534, 42.614079, 55.794575>,  <26.347620, 42.730663, 55.926529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.184534, 42.614079, 55.794575>,  <25.912725, 42.419773, 55.574654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.184534, 42.614079, 55.794575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679483, 0.134082, 0.721336,
		0.276683, -0.863743, 0.421182,
		0.679522, 0.485767, 0.549801,
		26.388391, 42.759808, 55.959515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.858454, 41.690502, 55.818775>,  <25.912725, 42.419773, 55.574654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.858454, 41.690502, 55.818775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.697330, 41.334904, 55.905895>,  <25.600657, 41.121544, 55.958168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.697330, 41.334904, 55.905895>,  <25.858454, 41.690502, 55.818775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.697330, 41.334904, 55.905895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374552, -0.377227, -0.847001,
		0.835139, -0.259599, 0.484924,
		-0.402807, -0.888993, 0.217804,
		25.576488, 41.068207, 55.971237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.307903, 41.268509, 55.661236>,  <25.858454, 41.690502, 55.818775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.307903, 41.268509, 55.661236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.003506, 41.010216, 55.686283>,  <25.820868, 40.855240, 55.701313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.003506, 41.010216, 55.686283>,  <26.307903, 41.268509, 55.661236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.003506, 41.010216, 55.686283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399370, -0.542338, -0.739171,
		0.511266, -0.537496, 0.670601,
		-0.760993, -0.645731, 0.062620,
		25.775208, 40.816498, 55.705070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.537575, 40.519867, 55.770527>,  <26.307903, 41.268509, 55.661236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.537575, 40.519867, 55.770527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.176348, 40.532257, 55.599174>,  <25.959612, 40.539692, 55.496365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.176348, 40.532257, 55.599174>,  <26.537575, 40.519867, 55.770527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.176348, 40.532257, 55.599174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326804, -0.597622, -0.732152,
		-0.278689, -0.801179, 0.529570,
		-0.903068, 0.030977, -0.428379,
		25.905428, 40.541550, 55.470661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.348591, 39.784866, 55.574295>,  <26.537575, 40.519867, 55.770527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.348591, 39.784866, 55.574295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.121344, 40.030319, 55.354950>,  <25.984995, 40.177589, 55.223343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.121344, 40.030319, 55.354950>,  <26.348591, 39.784866, 55.574295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.121344, 40.030319, 55.354950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134013, -0.588460, -0.797342,
		-0.811962, -0.526472, 0.252080,
		-0.568117, 0.613630, -0.548362,
		25.950909, 40.214409, 55.190441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.059977, 39.384392, 55.056370>,  <26.348591, 39.784866, 55.574295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.059977, 39.384392, 55.056370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.952400, 39.741829, 54.912613>,  <25.887854, 39.956291, 54.826359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.952400, 39.741829, 54.912613>,  <26.059977, 39.384392, 55.056370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.952400, 39.741829, 54.912613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193436, -0.315424, -0.929027,
		-0.943532, -0.319374, -0.088021,
		-0.268943, 0.893593, -0.359391,
		25.871717, 40.009907, 54.804794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.607157, 39.204582, 54.583515>,  <26.059977, 39.384392, 55.056370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.607157, 39.204582, 54.583515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.773006, 39.557663, 54.495033>,  <25.872517, 39.769512, 54.441944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.773006, 39.557663, 54.495033>,  <25.607157, 39.204582, 54.583515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.773006, 39.557663, 54.495033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166619, -0.312616, -0.935152,
		-0.894609, 0.350878, -0.276692,
		0.414623, 0.882698, -0.221207,
		25.897394, 39.822472, 54.428673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.456932, 39.291363, 53.927296>,  <25.607157, 39.204582, 54.583515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.456932, 39.291363, 53.927296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.737917, 39.575886, 53.936989>,  <25.906507, 39.746601, 53.942806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.737917, 39.575886, 53.936989>,  <25.456932, 39.291363, 53.927296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.737917, 39.575886, 53.936989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125280, -0.090063, -0.988025,
		-0.700607, 0.697087, -0.152378,
		0.702463, 0.711308, 0.024232,
		25.948656, 39.789280, 53.944260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.365967, 39.881641, 53.391415>,  <25.456932, 39.291363, 53.927296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.365967, 39.881641, 53.391415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.756577, 39.880318, 53.477566>,  <25.990942, 39.879524, 53.529255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.756577, 39.880318, 53.477566>,  <25.365967, 39.881641, 53.391415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.756577, 39.880318, 53.477566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214128, -0.093708, -0.972300,
		0.023405, 0.995594, -0.090799,
		0.976525, -0.003314, 0.215378,
		26.049534, 39.879322, 53.542179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.668568, 40.086884, 52.774818>,  <25.365967, 39.881641, 53.391415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.668568, 40.086884, 52.774818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.995234, 39.942364, 52.954830>,  <26.191233, 39.855652, 53.062836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.995234, 39.942364, 52.954830>,  <25.668568, 40.086884, 52.774818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.995234, 39.942364, 52.954830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341799, -0.325511, -0.881599,
		0.465008, 0.873788, -0.142341,
		0.816664, -0.361299, 0.450025,
		26.240232, 39.833973, 53.089836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.244066, 40.325268, 52.417423>,  <25.668568, 40.086884, 52.774818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.244066, 40.325268, 52.417423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.375420, 39.999035, 52.607994>,  <26.454231, 39.803295, 52.722336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.375420, 39.999035, 52.607994>,  <26.244066, 40.325268, 52.417423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.375420, 39.999035, 52.607994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389953, -0.342347, -0.854831,
		0.860291, 0.466497, 0.205620,
		0.328383, -0.815585, 0.476430,
		26.473934, 39.754360, 52.750923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.898098, 40.158253, 52.137047>,  <26.244066, 40.325268, 52.417423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.898098, 40.158253, 52.137047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.825754, 39.813969, 52.327396>,  <26.782347, 39.607399, 52.441608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.825754, 39.813969, 52.327396>,  <26.898098, 40.158253, 52.137047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.825754, 39.813969, 52.327396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577034, -0.484691, -0.657347,
		0.796442, 0.155710, 0.584324,
		-0.180861, -0.860714, 0.475879,
		26.771496, 39.555756, 52.470161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.450895, 39.797417, 52.386063>,  <26.898098, 40.158253, 52.137047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.450895, 39.797417, 52.386063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.154470, 39.543262, 52.299236>,  <26.976616, 39.390770, 52.247143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.154470, 39.543262, 52.299236>,  <27.450895, 39.797417, 52.386063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.154470, 39.543262, 52.299236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558429, -0.403743, -0.724672,
		0.372805, -0.658242, 0.654014,
		-0.741063, -0.635381, -0.217064,
		26.932152, 39.352650, 52.234116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583447, 39.102081, 52.608597>,  <27.450895, 39.797417, 52.386063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583447, 39.102081, 52.608597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.373358, 39.181316, 52.277561>,  <27.247305, 39.228859, 52.078941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.373358, 39.181316, 52.277561>,  <27.583447, 39.102081, 52.608597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.373358, 39.181316, 52.277561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797882, -0.223476, -0.559859,
		-0.295848, -0.954368, -0.040677,
		-0.525222, 0.198089, -0.827589,
		27.215792, 39.240742, 52.029285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.656050, 38.467972, 52.106937>,  <27.583447, 39.102081, 52.608597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.656050, 38.467972, 52.106937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.570177, 38.787697, 51.882431>,  <27.518654, 38.979530, 51.747726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.570177, 38.787697, 51.882431>,  <27.656050, 38.467972, 52.106937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.570177, 38.787697, 51.882431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739280, -0.242556, -0.628197,
		-0.638261, -0.549794, -0.538840,
		-0.214680, 0.799308, -0.561266,
		27.505774, 39.027489, 51.714050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810274, 38.272934, 51.383839>,  <27.656050, 38.467972, 52.106937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.810274, 38.272934, 51.383839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.805292, 38.672405, 51.363907>,  <27.802303, 38.912090, 51.351948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.805292, 38.672405, 51.363907>,  <27.810274, 38.272934, 51.383839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.805292, 38.672405, 51.363907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805225, -0.019533, -0.592647,
		-0.592838, -0.047508, -0.803919,
		-0.012453, 0.998680, -0.049834,
		27.801556, 38.972008, 51.348957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.944969, 38.475220, 50.621010>,  <27.810274, 38.272934, 51.383839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.944969, 38.475220, 50.621010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.049515, 38.793674, 50.839314>,  <28.112242, 38.984745, 50.970295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.049515, 38.793674, 50.839314>,  <27.944969, 38.475220, 50.621010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.049515, 38.793674, 50.839314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784131, 0.154591, -0.601032,
		-0.562873, 0.585039, -0.583870,
		0.261366, 0.796135, 0.545763,
		28.127924, 39.032516, 51.003044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145794, 38.956688, 50.176563>,  <27.944969, 38.475220, 50.621010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.145794, 38.956688, 50.176563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.326723, 39.094105, 50.505775>,  <28.435282, 39.176556, 50.703304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.326723, 39.094105, 50.505775>,  <28.145794, 38.956688, 50.176563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.326723, 39.094105, 50.505775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754701, 0.344285, -0.558475,
		-0.475216, 0.873756, -0.103539,
		0.452324, 0.343537, 0.823034,
		28.462420, 39.197166, 50.752686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.457314, 39.573372, 49.987640>,  <28.145794, 38.956688, 50.176563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.457314, 39.573372, 49.987640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.633459, 39.484173, 50.335514>,  <28.739145, 39.430653, 50.544239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.633459, 39.484173, 50.335514>,  <28.457314, 39.573372, 49.987640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.633459, 39.484173, 50.335514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883755, 0.278446, -0.376090,
		-0.158294, 0.934206, 0.319691,
		0.440363, -0.222996, 0.869686,
		28.765568, 39.417274, 50.596420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.989960, 40.135059, 50.339119>,  <28.457314, 39.573372, 49.987640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.989960, 40.135059, 50.339119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.111235, 39.775883, 50.466728>,  <29.184000, 39.560375, 50.543293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.111235, 39.775883, 50.466728>,  <28.989960, 40.135059, 50.339119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.111235, 39.775883, 50.466728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933371, 0.212347, -0.289356,
		0.192083, 0.385493, 0.902496,
		0.303187, -0.897944, 0.319020,
		29.202190, 39.506500, 50.562435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.631256, 40.286194, 50.543285>,  <28.989960, 40.135059, 50.339119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.631256, 40.286194, 50.543285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.622938, 39.887726, 50.509300>,  <29.617949, 39.648647, 50.488911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.622938, 39.887726, 50.509300>,  <29.631256, 40.286194, 50.543285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622938, 39.887726, 50.509300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881633, 0.021804, -0.471431,
		0.471477, -0.084705, 0.877801,
		-0.020793, -0.996167, -0.084959,
		29.616701, 39.588875, 50.483814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404079, 40.016090, 50.629177>,  <29.631256, 40.286194, 50.543285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404079, 40.016090, 50.629177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.201887, 39.715042, 50.460392>,  <30.080572, 39.534412, 50.359119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.201887, 39.715042, 50.460392>,  <30.404079, 40.016090, 50.629177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201887, 39.715042, 50.460392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731688, -0.114701, -0.671920,
		0.457300, -0.648388, 0.608663,
		-0.505479, -0.752620, -0.421965,
		30.050243, 39.489258, 50.333801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972143, 39.473839, 50.498528>,  <30.404079, 40.016090, 50.629177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972143, 39.473839, 50.498528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.655424, 39.394547, 50.267441>,  <30.465393, 39.346970, 50.128788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.655424, 39.394547, 50.267441>,  <30.972143, 39.473839, 50.498528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.655424, 39.394547, 50.267441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608214, -0.169236, -0.775523,
		0.055962, -0.965434, 0.254568,
		-0.791799, -0.198231, -0.577720,
		30.417885, 39.335075, 50.094124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318808, 38.963573, 50.106194>,  <30.972143, 39.473839, 50.498528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318808, 38.963573, 50.106194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.978907, 39.033699, 49.907326>,  <30.774965, 39.075775, 49.788006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.978907, 39.033699, 49.907326>,  <31.318808, 38.963573, 50.106194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978907, 39.033699, 49.907326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432519, -0.307350, -0.847622,
		-0.301377, -0.935314, 0.185362,
		-0.849764, 0.175281, -0.497169,
		30.723980, 39.086292, 49.758175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187605, 38.374435, 49.721668>,  <31.318808, 38.963573, 50.106194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187605, 38.374435, 49.721668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.989660, 38.669926, 49.538628>,  <30.870893, 38.847221, 49.428802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.989660, 38.669926, 49.538628>,  <31.187605, 38.374435, 49.721668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989660, 38.669926, 49.538628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304517, -0.345780, -0.887528,
		-0.813870, -0.578548, -0.053843,
		-0.494860, 0.738728, -0.457597,
		30.841202, 38.891544, 49.401348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826841, 38.045994, 49.180084>,  <31.187605, 38.374435, 49.721668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826841, 38.045994, 49.180084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.828888, 38.432163, 49.075829>,  <30.830116, 38.663864, 49.013275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.828888, 38.432163, 49.075829>,  <30.826841, 38.045994, 49.180084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828888, 38.432163, 49.075829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033616, -0.260327, -0.964935,
		-0.999422, 0.013698, 0.031122,
		0.005116, 0.965423, -0.260637,
		30.830423, 38.721790, 48.997639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359413, 38.088913, 48.599522>,  <30.826841, 38.045994, 49.180084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359413, 38.088913, 48.599522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.598827, 38.408981, 48.584160>,  <30.742476, 38.601025, 48.574944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.598827, 38.408981, 48.584160>,  <30.359413, 38.088913, 48.599522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.598827, 38.408981, 48.584160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195745, -0.192564, -0.961563,
		-0.776813, 0.568013, -0.271887,
		0.598536, 0.800175, -0.038401,
		30.778389, 38.649033, 48.572639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095592, 38.384087, 48.077030>,  <30.359413, 38.088913, 48.599522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095592, 38.384087, 48.077030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.470640, 38.507004, 48.142078>,  <30.695669, 38.580753, 48.181107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.470640, 38.507004, 48.142078>,  <30.095592, 38.384087, 48.077030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470640, 38.507004, 48.142078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249079, -0.267407, -0.930835,
		-0.242553, 0.913272, -0.327266,
		0.937618, 0.307292, 0.162617,
		30.751926, 38.599190, 48.190865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208483, 38.876793, 47.478092>,  <30.095592, 38.384087, 48.077030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.208483, 38.876793, 47.478092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.560526, 38.751060, 47.620419>,  <30.771751, 38.675621, 47.705814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.560526, 38.751060, 47.620419>,  <30.208483, 38.876793, 47.478092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.560526, 38.751060, 47.620419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257723, -0.313103, -0.914082,
		0.398731, 0.896193, -0.194555,
		0.880109, -0.314332, 0.355813,
		30.824558, 38.656761, 47.727161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677118, 39.074852, 46.990364>,  <30.208483, 38.876793, 47.478092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677118, 39.074852, 46.990364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.911009, 38.809891, 47.177689>,  <31.051344, 38.650913, 47.290085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.911009, 38.809891, 47.177689>,  <30.677118, 39.074852, 46.990364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911009, 38.809891, 47.177689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279840, -0.377152, -0.882862,
		0.761436, 0.647285, -0.035164,
		0.584726, -0.662403, 0.468314,
		31.086426, 38.611168, 47.318184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347746, 38.870335, 46.643440>,  <30.677118, 39.074852, 46.990364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347746, 38.870335, 46.643440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.258522, 38.549046, 46.864376>,  <31.204987, 38.356274, 46.996937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.258522, 38.549046, 46.864376>,  <31.347746, 38.870335, 46.643440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258522, 38.549046, 46.864376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189547, -0.591538, -0.783681,
		0.956199, -0.070115, 0.284197,
		-0.223061, -0.803223, 0.552337,
		31.191605, 38.308079, 47.030079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744329, 38.338207, 46.316532>,  <31.347746, 38.870335, 46.643440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744329, 38.338207, 46.316532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.520145, 38.098034, 46.544693>,  <31.385635, 37.953930, 46.681591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.520145, 38.098034, 46.544693>,  <31.744329, 38.338207, 46.316532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520145, 38.098034, 46.544693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098458, -0.732165, -0.673974,
		0.822307, -0.321576, 0.469468,
		-0.560461, -0.600436, 0.570403,
		31.352007, 37.917904, 46.715813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163227, 37.806446, 46.512520>,  <31.744329, 38.338207, 46.316532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163227, 37.806446, 46.512520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.786335, 37.675461, 46.540710>,  <31.560200, 37.596870, 46.557625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.786335, 37.675461, 46.540710>,  <32.163227, 37.806446, 46.512520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786335, 37.675461, 46.540710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225880, -0.776535, -0.588193,
		0.247339, -0.538295, 0.805644,
		-0.942232, -0.327462, 0.070477,
		31.503666, 37.577221, 46.561855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332195, 37.216206, 46.347435>,  <32.163227, 37.806446, 46.512520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332195, 37.216206, 46.347435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.932823, 37.195045, 46.340031>,  <31.693201, 37.182350, 46.335587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.932823, 37.195045, 46.340031>,  <32.332195, 37.216206, 46.347435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932823, 37.195045, 46.340031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053096, -0.786997, -0.614668,
		0.017945, -0.614685, 0.788568,
		-0.998428, -0.052900, -0.018515,
		31.633295, 37.179176, 46.334476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125313, 36.611027, 46.470837>,  <32.332195, 37.216206, 46.347435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125313, 36.611027, 46.470837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.820652, 36.765240, 46.262512>,  <31.637856, 36.857769, 46.137516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.820652, 36.765240, 46.262512>,  <32.125313, 36.611027, 46.470837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820652, 36.765240, 46.262512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020910, -0.788699, -0.614424,
		-0.647644, -0.478870, 0.592655,
		-0.761656, 0.385536, -0.520809,
		31.592155, 36.880901, 46.106270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661308, 36.036015, 46.297832>,  <32.125313, 36.611027, 46.470837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661308, 36.036015, 46.297832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.576435, 36.311333, 46.020351>,  <31.525511, 36.476524, 45.853863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.576435, 36.311333, 46.020351>,  <31.661308, 36.036015, 46.297832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576435, 36.311333, 46.020351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027713, -0.713822, -0.699779,
		-0.976838, -0.129255, 0.170534,
		-0.212181, 0.688296, -0.693706,
		31.512781, 36.517822, 45.812241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237022, 35.655788, 45.815994>,  <31.661308, 36.036015, 46.297832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237022, 35.655788, 45.815994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.335003, 35.980770, 45.604366>,  <31.393791, 36.175758, 45.477390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.335003, 35.980770, 45.604366>,  <31.237022, 35.655788, 45.815994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335003, 35.980770, 45.604366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014575, -0.548721, -0.835878,
		-0.969426, 0.197037, -0.146250,
		0.244949, 0.812454, -0.529073,
		31.408487, 36.224506, 45.445644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964733, 35.557430, 45.167587>,  <31.237022, 35.655788, 45.815994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964733, 35.557430, 45.167587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.245552, 35.832661, 45.094173>,  <31.414043, 35.997799, 45.050125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.245552, 35.832661, 45.094173>,  <30.964733, 35.557430, 45.167587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245552, 35.832661, 45.094173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334132, -0.545865, -0.768367,
		-0.628878, 0.478105, -0.613130,
		0.702046, 0.688075, -0.183532,
		31.456165, 36.039082, 45.039112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069069, 35.530956, 44.438175>,  <30.964733, 35.557430, 45.167587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069069, 35.530956, 44.438175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.394360, 35.683277, 44.614197>,  <31.589535, 35.774670, 44.719810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.394360, 35.683277, 44.614197>,  <31.069069, 35.530956, 44.438175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394360, 35.683277, 44.614197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581810, -0.515729, -0.628904,
		-0.012538, 0.767472, -0.640960,
		0.813228, 0.380802, 0.440057,
		31.638329, 35.797520, 44.746212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487598, 35.903584, 43.923981>,  <31.069069, 35.530956, 44.438175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487598, 35.903584, 43.923981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.735163, 35.783852, 44.214458>,  <31.883701, 35.712013, 44.388744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.735163, 35.783852, 44.214458>,  <31.487598, 35.903584, 43.923981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735163, 35.783852, 44.214458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604707, -0.408455, -0.683735,
		0.501279, 0.862303, -0.071789,
		0.618910, -0.299330, 0.726190,
		31.920835, 35.694054, 44.432316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190735, 36.001587, 43.665939>,  <31.487598, 35.903584, 43.923981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190735, 36.001587, 43.665939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.248722, 35.747429, 43.969322>,  <32.283516, 35.594936, 44.151352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.248722, 35.747429, 43.969322>,  <32.190735, 36.001587, 43.665939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248722, 35.747429, 43.969322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652553, -0.514814, -0.556005,
		0.743747, 0.575538, 0.339996,
		0.144968, -0.635392, 0.758460,
		32.292213, 35.556812, 44.196861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893803, 35.973736, 43.653820>,  <32.190735, 36.001587, 43.665939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893803, 35.973736, 43.653820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.700184, 35.653221, 43.794472>,  <32.584015, 35.460915, 43.878864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.700184, 35.653221, 43.794472>,  <32.893803, 35.973736, 43.653820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700184, 35.653221, 43.794472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576945, -0.594371, -0.560229,
		0.657903, -0.068302, 0.749999,
		-0.484043, -0.801285, 0.351632,
		32.554970, 35.412834, 43.899963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445400, 35.748024, 43.611618>,  <32.893803, 35.973736, 43.653820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445400, 35.748024, 43.611618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.258537, 35.394787, 43.629082>,  <33.146420, 35.182846, 43.639561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.258537, 35.394787, 43.629082>,  <33.445400, 35.748024, 43.611618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258537, 35.394787, 43.629082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799710, -0.443079, -0.405148,
		0.377128, -0.154356, 0.913208,
		-0.467161, -0.883094, 0.043658,
		33.118389, 35.129860, 43.642178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817249, 35.161598, 44.003227>,  <33.445400, 35.748024, 43.611618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817249, 35.161598, 44.003227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.603104, 35.046581, 43.685562>,  <33.474617, 34.977570, 43.494961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.603104, 35.046581, 43.685562>,  <33.817249, 35.161598, 44.003227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603104, 35.046581, 43.685562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817852, -0.411321, -0.402409,
		-0.210945, -0.864947, 0.455379,
		-0.535369, -0.287546, -0.794165,
		33.442493, 34.960316, 43.447311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881893, 34.436150, 43.910679>,  <33.817249, 35.161598, 44.003227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881893, 34.436150, 43.910679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.807194, 34.596291, 43.551826>,  <33.762375, 34.692375, 43.336514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.807194, 34.596291, 43.551826>,  <33.881893, 34.436150, 43.910679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807194, 34.596291, 43.551826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812567, -0.450293, -0.370096,
		-0.552140, -0.798093, -0.241221,
		-0.186751, 0.400353, -0.897129,
		33.751167, 34.716396, 43.282688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374260, 34.598652, 44.443680>,  <33.881893, 34.436150, 43.910679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374260, 34.598652, 44.443680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.585915, 34.330727, 44.235310>,  <34.712906, 34.169971, 44.110287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.585915, 34.330727, 44.235310>,  <34.374260, 34.598652, 44.443680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585915, 34.330727, 44.235310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668229, -0.049428, 0.742312,
		-0.522957, -0.740885, 0.421433,
		0.529137, -0.669811, -0.520930,
		34.744656, 34.129784, 44.079029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662819, 34.025452, 44.922920>,  <34.374260, 34.598652, 44.443680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662819, 34.025452, 44.922920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.920582, 34.090443, 44.624035>,  <35.075241, 34.129436, 44.444702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.920582, 34.090443, 44.624035>,  <34.662819, 34.025452, 44.922920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920582, 34.090443, 44.624035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760519, -0.034400, 0.648404,
		0.079650, -0.986112, -0.145738,
		0.644412, 0.162482, -0.747217,
		35.113907, 34.139187, 44.399868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182930, 33.440628, 44.927204>,  <34.662819, 34.025452, 44.922920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182930, 33.440628, 44.927204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.276981, 33.810017, 44.805927>,  <35.333412, 34.031651, 44.733162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.276981, 33.810017, 44.805927>,  <35.182930, 33.440628, 44.927204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276981, 33.810017, 44.805927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794535, -0.002939, 0.607211,
		0.559849, -0.383664, -0.734419,
		0.235124, 0.923468, -0.303189,
		35.347519, 34.087055, 44.714970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854691, 33.510635, 44.671627>,  <35.182930, 33.440628, 44.927204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854691, 33.510635, 44.671627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.778034, 33.886417, 44.785259>,  <35.732040, 34.111885, 44.853439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.778034, 33.886417, 44.785259>,  <35.854691, 33.510635, 44.671627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778034, 33.886417, 44.785259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874911, 0.032362, 0.483201,
		0.444751, 0.341148, -0.828139,
		-0.191643, 0.939452, 0.284082,
		35.720543, 34.168255, 44.870483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414200, 33.884090, 44.431801>,  <35.854691, 33.510635, 44.671627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414200, 33.884090, 44.431801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.244732, 34.083126, 44.734562>,  <36.143051, 34.202549, 44.916218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.244732, 34.083126, 44.734562>,  <36.414200, 33.884090, 44.431801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244732, 34.083126, 44.734562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876516, 0.014404, 0.481157,
		0.228516, 0.867293, -0.442248,
		-0.423674, 0.497590, 0.756905,
		36.117630, 34.232403, 44.961632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903122, 34.370907, 44.581661>,  <36.414200, 33.884090, 44.431801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903122, 34.370907, 44.581661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.664047, 34.354507, 44.901936>,  <36.520603, 34.344669, 45.094101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.664047, 34.354507, 44.901936>,  <36.903122, 34.370907, 44.581661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664047, 34.354507, 44.901936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795048, 0.098366, 0.598517,
		-0.103296, 0.994306, -0.026199,
		-0.597686, -0.040995, 0.800682,
		36.484741, 34.342209, 45.142139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115673, 34.820972, 45.040520>,  <36.903122, 34.370907, 44.581661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115673, 34.820972, 45.040520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.885715, 34.628700, 45.305378>,  <36.747742, 34.513336, 45.464294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.885715, 34.628700, 45.305378>,  <37.115673, 34.820972, 45.040520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885715, 34.628700, 45.305378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721095, 0.084789, 0.687628,
		-0.386674, 0.872786, 0.297873,
		-0.574896, -0.480683, 0.662147,
		36.713245, 34.484497, 45.504021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098557, 35.192249, 45.679527>,  <37.115673, 34.820972, 45.040520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098557, 35.192249, 45.679527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.988396, 34.819092, 45.772366>,  <36.922298, 34.595200, 45.828068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.988396, 34.819092, 45.772366>,  <37.098557, 35.192249, 45.679527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988396, 34.819092, 45.772366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512027, 0.061988, 0.856730,
		-0.813622, 0.354784, 0.460594,
		-0.275403, -0.932891, 0.232094,
		36.905773, 34.539223, 45.841995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255070, 35.167744, 46.388050>,  <37.098557, 35.192249, 45.679527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255070, 35.167744, 46.388050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.178986, 34.781872, 46.315159>,  <37.133335, 34.550346, 46.271423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.178986, 34.781872, 46.315159>,  <37.255070, 35.167744, 46.388050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178986, 34.781872, 46.315159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499978, -0.254925, 0.827669,
		-0.844892, 0.066321, 0.530810,
		-0.190208, -0.964684, -0.182225,
		37.121922, 34.492466, 46.260490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247879, 34.870476, 47.053921>,  <37.255070, 35.167744, 46.388050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247879, 34.870476, 47.053921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.289471, 34.577614, 46.784660>,  <37.314426, 34.401897, 46.623104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.289471, 34.577614, 46.784660>,  <37.247879, 34.870476, 47.053921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289471, 34.577614, 46.784660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753792, -0.383527, 0.533577,
		-0.648834, -0.562897, 0.512017,
		0.103977, -0.732157, -0.673153,
		37.320663, 34.357967, 46.582714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193031, 34.125637, 47.391289>,  <37.247879, 34.870476, 47.053921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193031, 34.125637, 47.391289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.418877, 34.118195, 47.061230>,  <37.554382, 34.113731, 46.863194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.418877, 34.118195, 47.061230>,  <37.193031, 34.125637, 47.391289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418877, 34.118195, 47.061230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779092, -0.318009, 0.540265,
		-0.272454, -0.947905, -0.165059,
		0.564610, -0.018601, -0.825148,
		37.588261, 34.112614, 46.813686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547489, 33.576447, 47.392639>,  <37.193031, 34.125637, 47.391289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547489, 33.576447, 47.392639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.772121, 33.806057, 47.154274>,  <37.906902, 33.943825, 47.011253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.772121, 33.806057, 47.154274>,  <37.547489, 33.576447, 47.392639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772121, 33.806057, 47.154274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821236, -0.298800, 0.486097,
		0.100972, -0.762373, -0.639212,
		0.561584, 0.574026, -0.595917,
		37.940598, 33.978264, 46.975498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224564, 33.108959, 47.223961>,  <37.547489, 33.576447, 47.392639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224564, 33.108959, 47.223961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.295166, 33.494240, 47.142872>,  <38.337528, 33.725407, 47.094219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.295166, 33.494240, 47.142872>,  <38.224564, 33.108959, 47.223961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295166, 33.494240, 47.142872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952565, -0.115273, 0.281660,
		0.247925, -0.242824, -0.937854,
		0.176503, 0.963197, -0.202726,
		38.348118, 33.783199, 47.082054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948402, 33.180325, 47.299343>,  <38.224564, 33.108959, 47.223961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948402, 33.180325, 47.299343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.831944, 33.561481, 47.265327>,  <38.762070, 33.790176, 47.244919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.831944, 33.561481, 47.265327>,  <38.948402, 33.180325, 47.299343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831944, 33.561481, 47.265327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896177, 0.302765, 0.324345,
		0.334813, 0.018219, -0.942108,
		-0.291146, 0.952891, -0.085042,
		38.744598, 33.847347, 47.239815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344364, 33.385700, 46.790871>,  <38.948402, 33.180325, 47.299343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344364, 33.385700, 46.790871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.243755, 33.685883, 47.035347>,  <39.183392, 33.865993, 47.182034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.243755, 33.685883, 47.035347>,  <39.344364, 33.385700, 46.790871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243755, 33.685883, 47.035347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928388, 0.008589, 0.371512,
		0.273554, 0.660864, -0.698876,
		-0.251522, 0.750457, 0.611189,
		39.168301, 33.911018, 47.218704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933819, 33.261623, 46.268009>,  <39.344364, 33.385700, 46.790871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933819, 33.261623, 46.268009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.285004, 33.449192, 46.306561>,  <39.495716, 33.561733, 46.329693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.285004, 33.449192, 46.306561>,  <38.933819, 33.261623, 46.268009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285004, 33.449192, 46.306561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259690, -0.297379, -0.918764,
		-0.402170, 0.831670, -0.382863,
		0.877964, 0.468925, 0.096379,
		39.548393, 33.589870, 46.335476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152309, 33.657230, 45.688557>,  <38.933819, 33.261623, 46.268009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152309, 33.657230, 45.688557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.471546, 33.492424, 45.864414>,  <39.663090, 33.393539, 45.969929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.471546, 33.492424, 45.864414>,  <39.152309, 33.657230, 45.688557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471546, 33.492424, 45.864414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281135, -0.390736, -0.876521,
		0.532927, 0.823146, -0.196012,
		0.798093, -0.412016, 0.439649,
		39.710976, 33.368820, 45.996307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839485, 33.963448, 45.447361>,  <39.152309, 33.657230, 45.688557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839485, 33.963448, 45.447361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.817242, 33.581081, 45.562695>,  <39.803898, 33.351662, 45.631893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.817242, 33.581081, 45.562695>,  <39.839485, 33.963448, 45.447361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817242, 33.581081, 45.562695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277948, -0.292184, -0.915081,
		0.958985, 0.029257, 0.281941,
		-0.055606, -0.955915, 0.288332,
		39.800560, 33.294308, 45.649193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500774, 33.474949, 45.431633>,  <39.839485, 33.963448, 45.447361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500774, 33.474949, 45.431633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.162178, 33.273056, 45.363869>,  <39.959023, 33.151920, 45.323208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.162178, 33.273056, 45.363869>,  <40.500774, 33.474949, 45.431633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162178, 33.273056, 45.363869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281147, -0.153553, -0.947300,
		0.452120, -0.849509, 0.271886,
		-0.846489, -0.504733, -0.169413,
		39.908230, 33.121635, 45.313046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957386, 33.816448, 44.876675>,  <40.500774, 33.474949, 45.431633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957386, 33.816448, 44.876675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.799267, 34.178268, 44.812775>,  <40.704395, 34.395363, 44.774437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.799267, 34.178268, 44.812775>,  <40.957386, 33.816448, 44.876675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799267, 34.178268, 44.812775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762942, 0.226478, -0.605497,
		-0.511527, -0.361230, -0.779649,
		-0.395298, 0.904555, -0.159748,
		40.680679, 34.449635, 44.764851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903568, 33.969566, 44.175926>,  <40.957386, 33.816448, 44.876675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903568, 33.969566, 44.175926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.923641, 34.328735, 44.350845>,  <40.935684, 34.544235, 44.455795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.923641, 34.328735, 44.350845>,  <40.903568, 33.969566, 44.175926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923641, 34.328735, 44.350845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732112, 0.264746, -0.627631,
		-0.679333, 0.351643, -0.644091,
		0.050181, 0.897918, 0.437293,
		40.938694, 34.598110, 44.482033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714157, 34.519478, 43.689533>,  <40.903568, 33.969566, 44.175926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714157, 34.519478, 43.689533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.968933, 34.632954, 43.976261>,  <41.121799, 34.701038, 44.148296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.968933, 34.632954, 43.976261>,  <40.714157, 34.519478, 43.689533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968933, 34.632954, 43.976261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671424, 0.252763, -0.696636,
		-0.378811, 0.925004, -0.029479,
		0.636940, 0.283687, 0.716819,
		41.160015, 34.718060, 44.191307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894196, 35.227272, 43.381222>,  <40.714157, 34.519478, 43.689533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894196, 35.227272, 43.381222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.158772, 35.059219, 43.629734>,  <41.317516, 34.958389, 43.778839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.158772, 35.059219, 43.629734>,  <40.894196, 35.227272, 43.381222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.158772, 35.059219, 43.629734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741644, 0.243101, -0.625192,
		0.111631, 0.874294, 0.472386,
		0.661440, -0.420133, 0.621277,
		41.357204, 34.933178, 43.816116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514862, 35.600239, 43.259113>,  <40.894196, 35.227272, 43.381222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514862, 35.600239, 43.259113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.629139, 35.240063, 43.390320>,  <41.697704, 35.023956, 43.469044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.629139, 35.240063, 43.390320>,  <41.514862, 35.600239, 43.259113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.629139, 35.240063, 43.390320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659694, -0.063485, -0.748848,
		0.695115, 0.430327, 0.575877,
		0.285690, -0.900438, 0.328014,
		41.714848, 34.969933, 43.488724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.165703, 35.541191, 42.869110>,  <41.514862, 35.600239, 43.259113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.165703, 35.541191, 42.869110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.131424, 35.175289, 43.027039>,  <42.110855, 34.955750, 43.121796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.131424, 35.175289, 43.027039>,  <42.165703, 35.541191, 42.869110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131424, 35.175289, 43.027039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650264, -0.351596, -0.673452,
		0.754859, 0.199027, 0.624960,
		-0.085698, -0.914750, 0.394826,
		42.105713, 34.900864, 43.145485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.843697, 35.287868, 43.044113>,  <42.165703, 35.541191, 42.869110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.843697, 35.287868, 43.044113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.551613, 35.033031, 42.945389>,  <42.376362, 34.880131, 42.886154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.551613, 35.033031, 42.945389>,  <42.843697, 35.287868, 43.044113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.551613, 35.033031, 42.945389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574802, -0.377567, -0.725980,
		0.369330, -0.671980, 0.641903,
		-0.730205, -0.637093, -0.246808,
		42.332550, 34.841904, 42.871346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.381638, 35.832561, 43.440857>,  <42.843697, 35.287868, 43.044113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.381638, 35.832561, 43.440857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.744003, 35.924026, 43.298294>,  <43.961422, 35.978905, 43.212757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.744003, 35.924026, 43.298294>,  <43.381638, 35.832561, 43.440857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.744003, 35.924026, 43.298294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070195, -0.911121, -0.406117,
		-0.417596, 0.342891, -0.841451,
		0.905917, 0.228658, -0.356411,
		44.015778, 35.992622, 43.191372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.180943, 36.236916, 42.783352>,  <43.381638, 35.832561, 43.440857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.180943, 36.236916, 42.783352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.360802, 36.526772, 42.574463>,  <43.468719, 36.700684, 42.449131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.360802, 36.526772, 42.574463>,  <43.180943, 36.236916, 42.783352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.360802, 36.526772, 42.574463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721899, 0.049471, 0.690228,
		0.525999, -0.687353, -0.500870,
		0.449652, 0.724637, -0.522221,
		43.495697, 36.744164, 42.417797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.998920, 36.190243, 42.668724>,  <43.180943, 36.236916, 42.783352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.998920, 36.190243, 42.668724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.900139, 36.571091, 42.740807>,  <43.840870, 36.799599, 42.784058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.900139, 36.571091, 42.740807>,  <43.998920, 36.190243, 42.668724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.900139, 36.571091, 42.740807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848853, 0.122850, 0.514156,
		0.467401, 0.279943, -0.838551,
		-0.246951, 0.952124, 0.180210,
		43.826054, 36.856728, 42.794868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.595528, 36.463810, 43.036293>,  <43.998920, 36.190243, 42.668724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.595528, 36.463810, 43.036293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.318996, 36.751301, 43.065937>,  <44.153076, 36.923794, 43.083721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.318996, 36.751301, 43.065937>,  <44.595528, 36.463810, 43.036293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.318996, 36.751301, 43.065937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550295, 0.457287, 0.698615,
		0.468226, 0.523755, -0.711649,
		-0.691332, 0.718727, 0.074107,
		44.111595, 36.966919, 43.088169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.008228, 35.928123, 42.563194>,  <44.595528, 36.463810, 43.036293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.008228, 35.928123, 42.563194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.013897, 36.327534, 42.542202>,  <45.017296, 36.567181, 42.529606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.013897, 36.327534, 42.542202>,  <45.008228, 35.928123, 42.563194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.013897, 36.327534, 42.542202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853776, -0.039403, -0.519148,
		-0.520448, -0.037452, -0.853072,
		0.014170, 0.998521, -0.052483,
		45.018147, 36.627090, 42.526459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.036396, 36.195019, 41.792416>,  <45.008228, 35.928123, 42.563194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.036396, 36.195019, 41.792416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.222763, 36.402107, 42.079437>,  <45.334583, 36.526360, 42.251652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.222763, 36.402107, 42.079437>,  <45.036396, 36.195019, 41.792416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.222763, 36.402107, 42.079437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874461, -0.145635, -0.462719,
		-0.135060, 0.843061, -0.520583,
		0.465916, 0.517724, 0.717554,
		45.362537, 36.557423, 42.294704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.469681, 36.689705, 41.589596>,  <45.036396, 36.195019, 41.792416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.469681, 36.689705, 41.589596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.629108, 36.581570, 41.940151>,  <45.724766, 36.516689, 42.150486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.629108, 36.581570, 41.940151>,  <45.469681, 36.689705, 41.589596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.629108, 36.581570, 41.940151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864748, -0.207575, -0.457300,
		0.305542, 0.940123, 0.151041,
		0.398566, -0.270337, 0.876392,
		45.748676, 36.500469, 42.203068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.927376, 36.716793, 40.963337>,  <45.469681, 36.689705, 41.589596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.927376, 36.716793, 40.963337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.788860, 36.647205, 40.594593>,  <44.705750, 36.605453, 40.373348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.788860, 36.647205, 40.594593>,  <44.927376, 36.716793, 40.963337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.788860, 36.647205, 40.594593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702590, 0.603064, -0.377732,
		0.621652, -0.778491, -0.086604,
		-0.346288, -0.173971, -0.921856,
		44.684975, 36.595013, 40.318035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.473732, 36.544514, 40.488369>,  <44.927376, 36.716793, 40.963337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.473732, 36.544514, 40.488369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.194973, 36.691532, 40.242039>,  <45.027718, 36.779743, 40.094242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.194973, 36.691532, 40.242039>,  <45.473732, 36.544514, 40.488369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.194973, 36.691532, 40.242039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661455, 0.661240, -0.353891,
		0.277136, -0.653967, -0.703933,
		-0.696902, 0.367545, -0.615824,
		44.985901, 36.801796, 40.057293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.786484, 36.497822, 39.778179>,  <45.473732, 36.544514, 40.488369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.786484, 36.497822, 39.778179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.488239, 36.761978, 39.813839>,  <45.309292, 36.920471, 39.835236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.488239, 36.761978, 39.813839>,  <45.786484, 36.497822, 39.778179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.488239, 36.761978, 39.813839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535148, 0.673118, -0.510420,
		-0.397085, -0.332867, -0.855291,
		-0.745614, 0.660388, 0.089153,
		45.264557, 36.960094, 39.840584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.391678, 36.702885, 39.118801>,  <45.786484, 36.497822, 39.778179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.391678, 36.702885, 39.118801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.441303, 36.985027, 39.397964>,  <45.471077, 37.154312, 39.565464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.441303, 36.985027, 39.397964>,  <45.391678, 36.702885, 39.118801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.441303, 36.985027, 39.397964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392658, 0.611035, -0.687354,
		-0.911278, 0.359317, -0.201156,
		0.124065, 0.705356, 0.697912,
		45.478523, 37.196632, 39.607338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.867260, 37.170921, 38.996696>,  <45.391678, 36.702885, 39.118801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.867260, 37.170921, 38.996696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.223461, 37.272255, 39.147869>,  <45.437180, 37.333057, 39.238571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.223461, 37.272255, 39.147869>,  <44.867260, 37.170921, 38.996696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.223461, 37.272255, 39.147869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266514, 0.382782, -0.884561,
		-0.368757, 0.888425, 0.273349,
		0.890499, 0.253336, 0.377931,
		45.490612, 37.348255, 39.261250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.975555, 37.898796, 38.972034>,  <44.867260, 37.170921, 38.996696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.975555, 37.898796, 38.972034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.318634, 37.696587, 38.934494>,  <45.524479, 37.575260, 38.911972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.318634, 37.696587, 38.934494>,  <44.975555, 37.898796, 38.972034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.318634, 37.696587, 38.934494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200285, 0.496599, -0.844556,
		0.473546, 0.705575, 0.527179,
		0.857694, -0.505523, -0.093846,
		45.575943, 37.544930, 38.906342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.351562, 37.865681, 39.253216>,  <44.975555, 37.898796, 38.972034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.351562, 37.865681, 39.253216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.983929, 37.973438, 39.368259>,  <43.763348, 38.038094, 39.437286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.983929, 37.973438, 39.368259>,  <44.351562, 37.865681, 39.253216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.983929, 37.973438, 39.368259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208643, -0.286497, 0.935087,
		0.334302, 0.919428, 0.207108,
		-0.919081, 0.269390, 0.287609,
		43.708206, 38.054256, 39.454540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.515762, 38.202724, 39.930912>,  <44.351562, 37.865681, 39.253216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.515762, 38.202724, 39.930912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.305862, 38.118080, 40.260727>,  <44.179920, 38.067295, 40.458614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.305862, 38.118080, 40.260727>,  <44.515762, 38.202724, 39.930912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.305862, 38.118080, 40.260727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688948, -0.463341, -0.557375,
		0.499986, -0.860545, 0.097351,
		-0.524752, -0.211610, 0.824534,
		44.148438, 38.054596, 40.508087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.424770, 37.436592, 40.141941>,  <44.515762, 38.202724, 39.930912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.424770, 37.436592, 40.141941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.099293, 37.647591, 40.239639>,  <43.904007, 37.774189, 40.298260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.099293, 37.647591, 40.239639>,  <44.424770, 37.436592, 40.141941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.099293, 37.647591, 40.239639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555521, -0.581907, -0.593953,
		-0.171178, -0.618979, 0.766526,
		-0.813692, 0.527493, 0.244247,
		43.855186, 37.805840, 40.312912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.909889, 37.048512, 40.552662>,  <44.424770, 37.436592, 40.141941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.909889, 37.048512, 40.552662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.738422, 37.309841, 40.303051>,  <43.635544, 37.466640, 40.153286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.738422, 37.309841, 40.303051>,  <43.909889, 37.048512, 40.552662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.738422, 37.309841, 40.303051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380851, -0.757010, -0.530932,
		-0.819266, 0.010067, 0.573326,
		-0.428668, 0.653326, -0.624026,
		43.609821, 37.505840, 40.115845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.183319, 36.829090, 40.419243>,  <43.909889, 37.048512, 40.552662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.183319, 36.829090, 40.419243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.353432, 37.032913, 40.120049>,  <43.455498, 37.155209, 39.940533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.353432, 37.032913, 40.120049>,  <43.183319, 36.829090, 40.419243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.353432, 37.032913, 40.120049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031371, -0.834255, -0.550486,
		-0.904518, 0.210645, -0.370777,
		0.425280, 0.509556, -0.747990,
		43.481014, 37.185780, 39.895653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.804081, 36.792175, 39.753983>,  <43.183319, 36.829090, 40.419243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.804081, 36.792175, 39.753983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.192268, 36.835506, 39.667759>,  <43.425179, 36.861504, 39.616024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.192268, 36.835506, 39.667759>,  <42.804081, 36.792175, 39.753983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.192268, 36.835506, 39.667759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020617, -0.853009, -0.521489,
		-0.240361, 0.510531, -0.825581,
		0.970465, 0.108325, -0.215556,
		43.483406, 36.868004, 39.603092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.739223, 36.894512, 39.010628>,  <42.804081, 36.792175, 39.753983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.739223, 36.894512, 39.010628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.030201, 36.705929, 39.210052>,  <43.204788, 36.592781, 39.329708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.030201, 36.705929, 39.210052>,  <42.739223, 36.894512, 39.010628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.030201, 36.705929, 39.210052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157130, -0.821729, -0.547788,
		0.667937, 0.320145, -0.671839,
		0.727441, -0.471454, 0.498558,
		43.248432, 36.564491, 39.359619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.215374, 36.455391, 38.495728>,  <42.739223, 36.894512, 39.010628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.215374, 36.455391, 38.495728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.227428, 36.303257, 38.865471>,  <43.234661, 36.211979, 39.087318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.227428, 36.303257, 38.865471>,  <43.215374, 36.455391, 38.495728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.227428, 36.303257, 38.865471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010777, -0.924602, -0.380782,
		0.999488, 0.021437, -0.023765,
		0.030136, -0.380331, 0.924359,
		43.236469, 36.189159, 39.142780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.764721, 36.096481, 38.144924>,  <43.215374, 36.455391, 38.495728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.764721, 36.096481, 38.144924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.749710, 36.399048, 38.406128>,  <43.740704, 36.580589, 38.562851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.749710, 36.399048, 38.406128>,  <43.764721, 36.096481, 38.144924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.749710, 36.399048, 38.406128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664413, -0.469223, 0.581709,
		0.746423, 0.455696, -0.484968,
		-0.037524, 0.756420, 0.653009,
		43.738453, 36.625973, 38.602032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.520382, 36.509300, 38.243702>,  <43.764721, 36.096481, 38.144924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.520382, 36.509300, 38.243702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.282463, 36.551781, 38.562435>,  <44.139713, 36.577267, 38.753674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.282463, 36.551781, 38.562435>,  <44.520382, 36.509300, 38.243702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.282463, 36.551781, 38.562435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708539, -0.398963, 0.582066,
		0.379719, 0.910797, 0.162058,
		-0.594798, 0.106197, 0.796829,
		44.104023, 36.583641, 38.801483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.658131, 36.385143, 37.469547>,  <44.520382, 36.509300, 38.243702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.658131, 36.385143, 37.469547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.968288, 36.635048, 37.506290>,  <45.154381, 36.784992, 37.528336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.968288, 36.635048, 37.506290>,  <44.658131, 36.385143, 37.469547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.968288, 36.635048, 37.506290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571170, -0.755914, 0.319936,
		0.269321, -0.195610, -0.942976,
		0.775391, 0.624764, 0.091857,
		45.200905, 36.822475, 37.533848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.186440, 36.209148, 36.975842>,  <44.658131, 36.385143, 37.469547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.186440, 36.209148, 36.975842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.347393, 36.398121, 37.289501>,  <45.443966, 36.511505, 37.477699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.347393, 36.398121, 37.289501>,  <45.186440, 36.209148, 36.975842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.347393, 36.398121, 37.289501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633733, -0.761888, 0.133825,
		0.660661, 0.443095, -0.605966,
		0.402381, 0.472434, 0.784153,
		45.468109, 36.539852, 37.524746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.854088, 36.201355, 36.750473>,  <45.186440, 36.209148, 36.975842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.854088, 36.201355, 36.750473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.952614, 35.986362, 37.073071>,  <46.011730, 35.857365, 37.266628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.952614, 35.986362, 37.073071>,  <45.854088, 36.201355, 36.750473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.952614, 35.986362, 37.073071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828163, 0.548991, 0.112936,
		-0.503461, 0.640092, 0.580353,
		0.246320, -0.537486, 0.806496,
		46.026508, 35.825115, 37.315018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.869167, 35.944286, 35.975853>,  <45.854088, 36.201355, 36.750473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.869167, 35.944286, 35.975853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.238079, 36.002865, 36.118935>,  <46.459427, 36.038010, 36.204784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.238079, 36.002865, 36.118935>,  <45.869167, 35.944286, 35.975853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.238079, 36.002865, 36.118935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240452, -0.941953, -0.234324,
		0.302629, 0.302124, -0.903956,
		0.922279, 0.146444, 0.357708,
		46.514763, 36.046799, 36.226246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.359024, 35.876858, 35.483509>,  <45.869167, 35.944286, 35.975853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.359024, 35.876858, 35.483509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.503830, 35.768688, 35.840343>,  <46.590714, 35.703785, 36.054443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.503830, 35.768688, 35.840343>,  <46.359024, 35.876858, 35.483509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.503830, 35.768688, 35.840343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068593, -0.946673, -0.314809,
		0.929646, 0.175155, -0.324158,
		0.362013, -0.270426, 0.892086,
		46.612434, 35.687561, 36.107967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.095356, 35.450390, 35.479240>,  <46.359024, 35.876858, 35.483509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.095356, 35.450390, 35.479240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.851147, 35.346035, 35.778358>,  <46.704620, 35.283421, 35.957829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.851147, 35.346035, 35.778358>,  <47.095356, 35.450390, 35.479240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.851147, 35.346035, 35.778358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031442, -0.935459, -0.352033,
		0.791372, -0.238437, 0.562919,
		-0.610525, -0.260890, 0.747794,
		46.667988, 35.267769, 36.002697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.480999, 35.211002, 34.985317>,  <47.095356, 35.450390, 35.479240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.480999, 35.211002, 34.985317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.772877, 35.162010, 35.254402>,  <47.948006, 35.132614, 35.415852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.772877, 35.162010, 35.254402>,  <47.480999, 35.211002, 34.985317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.772877, 35.162010, 35.254402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263624, 0.857371, 0.442060,
		-0.630906, -0.499913, 0.593334,
		0.729699, -0.122481, 0.672709,
		47.991787, 35.125267, 35.456215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<30.482061, 35.153503, 52.589783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.650042, 35.018940, 52.926941>,  <30.750830, 34.938202, 53.129234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.650042, 35.018940, 52.926941>,  <30.482061, 35.153503, 52.589783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650042, 35.018940, 52.926941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866375, -0.127963, -0.482720,
		0.270252, 0.932981, 0.237721,
		0.419949, -0.336412, 0.842894,
		30.776026, 34.918018, 53.179810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083025, 35.313709, 52.459904>,  <30.482061, 35.153503, 52.589783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083025, 35.313709, 52.459904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.141272, 35.066574, 52.768986>,  <31.176220, 34.918293, 52.954433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.141272, 35.066574, 52.768986>,  <31.083025, 35.313709, 52.459904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.141272, 35.066574, 52.768986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917877, -0.207083, -0.338552,
		0.369184, 0.758546, 0.536946,
		0.145616, -0.617838, 0.772704,
		31.184956, 34.881222, 53.000797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691549, 35.357708, 52.737389>,  <31.083025, 35.313709, 52.459904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691549, 35.357708, 52.737389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.626850, 35.009140, 52.922630>,  <31.588030, 34.799999, 53.033775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.626850, 35.009140, 52.922630>,  <31.691549, 35.357708, 52.737389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626850, 35.009140, 52.922630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889001, -0.332390, -0.314953,
		0.428387, 0.360759, 0.828455,
		-0.161748, -0.871418, 0.463106,
		31.578325, 34.747715, 53.061562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396523, 35.076523, 53.018330>,  <31.691549, 35.357708, 52.737389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396523, 35.076523, 53.018330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.142200, 34.780655, 52.930111>,  <31.989607, 34.603134, 52.877182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.142200, 34.780655, 52.930111>,  <32.396523, 35.076523, 53.018330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142200, 34.780655, 52.930111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752776, -0.531118, -0.388897,
		0.170521, -0.413283, 0.894494,
		-0.635807, -0.739669, -0.220543,
		31.951458, 34.558754, 52.863949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698681, 34.465275, 53.191090>,  <32.396523, 35.076523, 53.018330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698681, 34.465275, 53.191090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.414597, 34.361565, 52.929291>,  <32.244144, 34.299339, 52.772209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.414597, 34.361565, 52.929291>,  <32.698681, 34.465275, 53.191090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414597, 34.361565, 52.929291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662119, -0.561850, -0.495906,
		-0.239155, -0.785557, 0.570706,
		-0.710214, -0.259277, -0.654501,
		32.201534, 34.283783, 52.732941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743931, 33.813858, 53.037849>,  <32.698681, 34.465275, 53.191090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743931, 33.813858, 53.037849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.537678, 33.923130, 52.713013>,  <32.413925, 33.988693, 52.518108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.537678, 33.923130, 52.713013>,  <32.743931, 33.813858, 53.037849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537678, 33.923130, 52.713013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588488, -0.575965, -0.567403,
		-0.622739, -0.770480, 0.136226,
		-0.515634, 0.273177, -0.812094,
		32.382988, 34.005081, 52.469383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591293, 33.177788, 52.752209>,  <32.743931, 33.813858, 53.037849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591293, 33.177788, 52.752209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.513088, 33.438454, 52.459057>,  <32.466164, 33.594852, 52.283165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.513088, 33.438454, 52.459057>,  <32.591293, 33.177788, 52.752209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513088, 33.438454, 52.459057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646791, -0.476052, -0.595849,
		-0.737181, -0.590513, -0.328417,
		-0.195513, 0.651666, -0.732875,
		32.454433, 33.633953, 52.239193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401024, 32.774685, 52.070141>,  <32.591293, 33.177788, 52.752209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401024, 32.774685, 52.070141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.513927, 33.136517, 51.942348>,  <32.581669, 33.353615, 51.865673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.513927, 33.136517, 51.942348>,  <32.401024, 32.774685, 52.070141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513927, 33.136517, 51.942348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573929, -0.426080, -0.699329,
		-0.768722, 0.014033, -0.639429,
		0.282262, 0.904576, -0.319484,
		32.598606, 33.407890, 51.846504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332108, 32.777569, 51.263115>,  <32.401024, 32.774685, 52.070141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332108, 32.777569, 51.263115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.587627, 33.063076, 51.377987>,  <32.740940, 33.234379, 51.446911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.587627, 33.063076, 51.377987>,  <32.332108, 32.777569, 51.263115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587627, 33.063076, 51.377987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641635, -0.288260, -0.710782,
		-0.424548, 0.638314, -0.642117,
		0.638798, 0.713766, 0.287184,
		32.779266, 33.277206, 51.464142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551910, 33.139236, 50.636032>,  <32.332108, 32.777569, 51.263115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551910, 33.139236, 50.636032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.838577, 33.208458, 50.906273>,  <33.010578, 33.249989, 51.068417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.838577, 33.208458, 50.906273>,  <32.551910, 33.139236, 50.636032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838577, 33.208458, 50.906273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683356, -0.367774, -0.630688,
		0.139328, 0.913671, -0.381828,
		0.716668, 0.173052, 0.675604,
		33.053577, 33.260372, 51.108955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314404, 33.638786, 51.149345>,  <32.551910, 33.139236, 50.636032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314404, 33.638786, 51.149345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.699619, 33.734966, 51.100773>,  <32.930748, 33.792675, 51.071629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.699619, 33.734966, 51.100773>,  <32.314404, 33.638786, 51.149345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699619, 33.734966, 51.100773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038477, -0.323390, -0.945483,
		-0.266613, 0.915206, -0.302185,
		0.963035, 0.240451, -0.121434,
		32.988529, 33.807102, 51.064342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226624, 33.774952, 50.474892>,  <32.314404, 33.638786, 51.149345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226624, 33.774952, 50.474892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.624676, 33.794670, 50.509029>,  <32.863506, 33.806503, 50.529510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.624676, 33.794670, 50.509029>,  <32.226624, 33.774952, 50.474892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624676, 33.794670, 50.509029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091444, -0.138832, -0.986085,
		-0.036766, 0.989088, -0.142664,
		0.995131, 0.049300, 0.085342,
		32.923214, 33.809460, 50.534634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438641, 34.281475, 49.923916>,  <32.226624, 33.774952, 50.474892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438641, 34.281475, 49.923916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.751007, 34.054703, 50.028805>,  <32.938427, 33.918640, 50.091740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.751007, 34.054703, 50.028805>,  <32.438641, 34.281475, 49.923916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751007, 34.054703, 50.028805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294692, -0.035762, -0.954923,
		0.550756, 0.822986, 0.139144,
		0.780912, -0.566935, 0.262223,
		32.985279, 33.884621, 50.107471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950851, 34.460205, 49.412762>,  <32.438641, 34.281475, 49.923916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950851, 34.460205, 49.412762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.074326, 34.108391, 49.557613>,  <33.148411, 33.897305, 49.644524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.074326, 34.108391, 49.557613>,  <32.950851, 34.460205, 49.412762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074326, 34.108391, 49.557613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338580, -0.254180, -0.905956,
		0.888863, 0.402264, 0.219331,
		0.308684, -0.879532, 0.362130,
		33.166931, 33.844532, 49.666252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650009, 34.336060, 49.085136>,  <32.950851, 34.460205, 49.412762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650009, 34.336060, 49.085136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.489033, 33.994312, 49.216644>,  <33.392445, 33.789265, 49.295547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.489033, 33.994312, 49.216644>,  <33.650009, 34.336060, 49.085136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489033, 33.994312, 49.216644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306803, -0.464245, -0.830872,
		0.862502, -0.233513, 0.448956,
		-0.402445, -0.854370, 0.328770,
		33.368298, 33.738003, 49.315277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181908, 33.771568, 49.181103>,  <33.650009, 34.336060, 49.085136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181908, 33.771568, 49.181103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.846462, 33.554424, 49.163071>,  <33.645195, 33.424137, 49.152252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.846462, 33.554424, 49.163071>,  <34.181908, 33.771568, 49.181103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846462, 33.554424, 49.163071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388734, -0.538428, -0.747650,
		0.381595, -0.644514, 0.662561,
		-0.838613, -0.542860, -0.045083,
		33.594879, 33.391567, 49.149548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425652, 33.075203, 49.056557>,  <34.181908, 33.771568, 49.181103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425652, 33.075203, 49.056557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.037598, 33.066555, 48.959911>,  <33.804768, 33.061367, 48.901924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.037598, 33.066555, 48.959911>,  <34.425652, 33.075203, 49.056557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037598, 33.066555, 48.959911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216404, -0.527180, -0.821736,
		-0.109606, -0.849478, 0.516113,
		-0.970132, -0.021622, -0.241613,
		33.746559, 33.060070, 48.887428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154694, 32.384304, 49.009209>,  <34.425652, 33.075203, 49.056557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154694, 32.384304, 49.009209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.895870, 32.595795, 48.789478>,  <33.740574, 32.722691, 48.657639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.895870, 32.595795, 48.789478>,  <34.154694, 32.384304, 49.009209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895870, 32.595795, 48.789478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210930, -0.568230, -0.795376,
		-0.732680, -0.630527, 0.256156,
		-0.647061, 0.528726, -0.549328,
		33.701752, 32.754414, 48.624680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833344, 31.853394, 48.522289>,  <34.154694, 32.384304, 49.009209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833344, 31.853394, 48.522289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.806107, 32.224857, 48.376434>,  <33.789764, 32.447735, 48.288921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.806107, 32.224857, 48.376434>,  <33.833344, 31.853394, 48.522289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806107, 32.224857, 48.376434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357429, -0.318517, -0.877948,
		-0.931455, -0.190112, -0.310241,
		-0.068091, 0.928657, -0.364635,
		33.785679, 32.503456, 48.267044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412006, 31.816826, 47.951630>,  <33.833344, 31.853394, 48.522289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412006, 31.816826, 47.951630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.613377, 32.159431, 47.906116>,  <33.734200, 32.364994, 47.878807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.613377, 32.159431, 47.906116>,  <33.412006, 31.816826, 47.951630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613377, 32.159431, 47.906116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253886, -0.272513, -0.928051,
		-0.825898, 0.438313, -0.354646,
		0.503422, 0.856515, -0.113786,
		33.764404, 32.416386, 47.871979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229721, 32.098972, 47.292770>,  <33.412006, 31.816826, 47.951630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229721, 32.098972, 47.292770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.567074, 32.296001, 47.378624>,  <33.769485, 32.414219, 47.430138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.567074, 32.296001, 47.378624>,  <33.229721, 32.098972, 47.292770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567074, 32.296001, 47.378624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313706, -0.127100, -0.940975,
		-0.436222, 0.860938, -0.261718,
		0.843386, 0.492576, 0.214637,
		33.820091, 32.443775, 47.443016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355919, 32.493469, 46.650398>,  <33.229721, 32.098972, 47.292770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355919, 32.493469, 46.650398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.700504, 32.440742, 46.846565>,  <33.907253, 32.409107, 46.964264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.700504, 32.440742, 46.846565>,  <33.355919, 32.493469, 46.650398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700504, 32.440742, 46.846565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451832, -0.241848, -0.858695,
		0.231800, 0.961318, -0.148782,
		0.861462, -0.131821, 0.490415,
		33.958942, 32.401196, 46.993690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195068, 33.208412, 46.300270>,  <33.355919, 32.493469, 46.650398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195068, 33.208412, 46.300270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.888142, 33.250656, 46.047264>,  <32.703987, 33.276001, 45.895462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.888142, 33.250656, 46.047264>,  <33.195068, 33.208412, 46.300270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888142, 33.250656, 46.047264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601137, 0.225002, 0.766817,
		0.223299, 0.968618, -0.109162,
		-0.767315, 0.105609, -0.632515,
		32.657948, 33.282337, 45.857510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842690, 33.815357, 46.552074>,  <33.195068, 33.208412, 46.300270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842690, 33.815357, 46.552074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.597855, 33.609806, 46.311649>,  <32.450954, 33.486477, 46.167393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.597855, 33.609806, 46.311649>,  <32.842690, 33.815357, 46.552074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597855, 33.609806, 46.311649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724362, 0.059409, 0.686855,
		-0.317249, 0.855806, -0.408595,
		-0.612089, -0.513875, -0.601066,
		32.414227, 33.455643, 46.131329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186485, 34.151852, 46.573227>,  <32.842690, 33.815357, 46.552074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186485, 34.151852, 46.573227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.105030, 33.779907, 46.450657>,  <32.056156, 33.556740, 46.377113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.105030, 33.779907, 46.450657>,  <32.186485, 34.151852, 46.573227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105030, 33.779907, 46.450657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714130, -0.073033, 0.696192,
		-0.669739, 0.360597, -0.649168,
		-0.203634, -0.929858, -0.306427,
		32.043941, 33.500950, 46.358730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454311, 34.154686, 46.631332>,  <32.186485, 34.151852, 46.573227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454311, 34.154686, 46.631332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.567959, 33.773857, 46.586010>,  <31.636147, 33.545361, 46.558815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.567959, 33.773857, 46.586010>,  <31.454311, 34.154686, 46.631332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567959, 33.773857, 46.586010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676484, -0.282805, 0.679994,
		-0.679446, -0.116547, -0.724410,
		0.284118, -0.952071, -0.113309,
		31.653194, 33.488235, 46.552017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753683, 33.731113, 46.705463>,  <31.454311, 34.154686, 46.631332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753683, 33.731113, 46.705463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.048967, 33.462067, 46.725956>,  <31.226139, 33.300636, 46.738251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.048967, 33.462067, 46.725956>,  <30.753683, 33.731113, 46.705463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048967, 33.462067, 46.725956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381173, -0.353273, 0.854345,
		-0.556552, -0.650215, -0.517175,
		0.738212, -0.672621, 0.051229,
		31.270432, 33.260281, 46.741325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446041, 33.037369, 46.723904>,  <30.753683, 33.731113, 46.705463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446041, 33.037369, 46.723904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.807980, 32.986683, 46.886482>,  <31.025143, 32.956272, 46.984032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.807980, 32.986683, 46.886482>,  <30.446041, 33.037369, 46.723904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807980, 32.986683, 46.886482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425345, -0.310366, 0.850150,
		0.018421, -0.942134, -0.334730,
		0.904844, -0.126715, 0.406449,
		31.079433, 32.948669, 47.008415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458199, 32.368805, 47.029690>,  <30.446041, 33.037369, 46.723904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458199, 32.368805, 47.029690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.732346, 32.580254, 47.230022>,  <30.896833, 32.707123, 47.350224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.732346, 32.580254, 47.230022>,  <30.458199, 32.368805, 47.029690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732346, 32.580254, 47.230022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480006, -0.189244, 0.856611,
		0.547603, -0.827493, 0.124041,
		0.685366, 0.528623, 0.500832,
		30.937956, 32.738842, 47.380272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596762, 32.103207, 47.764809>,  <30.458199, 32.368805, 47.029690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596762, 32.103207, 47.764809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.754019, 32.469322, 47.799889>,  <30.848373, 32.688992, 47.820938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.754019, 32.469322, 47.799889>,  <30.596762, 32.103207, 47.764809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754019, 32.469322, 47.799889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235542, 0.008050, 0.971831,
		0.888797, -0.402725, 0.218753,
		0.393141, 0.915286, 0.087704,
		30.871962, 32.743908, 47.826199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034712, 31.980389, 48.285103>,  <30.596762, 32.103207, 47.764809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034712, 31.980389, 48.285103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.964247, 32.373669, 48.265991>,  <30.921967, 32.609638, 48.254524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.964247, 32.373669, 48.265991>,  <31.034712, 31.980389, 48.285103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.964247, 32.373669, 48.265991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124312, 0.025930, 0.991904,
		0.976480, 0.180677, 0.117655,
		-0.176164, 0.983200, -0.047780,
		30.911398, 32.668629, 48.251656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310389, 32.330769, 48.917892>,  <31.034712, 31.980389, 48.285103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310389, 32.330769, 48.917892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.042213, 32.597588, 48.787930>,  <30.881308, 32.757679, 48.709953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.042213, 32.597588, 48.787930>,  <31.310389, 32.330769, 48.917892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042213, 32.597588, 48.787930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238384, 0.221031, 0.945684,
		0.702628, 0.711474, 0.010825,
		-0.670437, 0.667045, -0.324907,
		30.841082, 32.797703, 48.690456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372889, 32.930668, 49.429794>,  <31.310389, 32.330769, 48.917892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372889, 32.930668, 49.429794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.019535, 32.937267, 49.242451>,  <30.807524, 32.941227, 49.130043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.019535, 32.937267, 49.242451>,  <31.372889, 32.930668, 49.429794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019535, 32.937267, 49.242451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440450, 0.312214, 0.841740,
		0.160113, 0.949869, -0.268539,
		-0.883384, 0.016496, -0.468359,
		30.754520, 32.942215, 49.101944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112007, 33.538826, 49.534107>,  <31.372889, 32.930668, 49.429794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112007, 33.538826, 49.534107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.777313, 33.324776, 49.487602>,  <30.576496, 33.196346, 49.459698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.777313, 33.324776, 49.487602>,  <31.112007, 33.538826, 49.534107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777313, 33.324776, 49.487602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383798, 0.421621, 0.821544,
		-0.390607, 0.732037, -0.558164,
		-0.836735, -0.535123, -0.116266,
		30.526293, 33.164238, 49.452721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605764, 33.963917, 49.779949>,  <31.112007, 33.538826, 49.534107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605764, 33.963917, 49.779949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.388592, 33.631157, 49.734047>,  <30.258287, 33.431499, 49.706505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.388592, 33.631157, 49.734047>,  <30.605764, 33.963917, 49.779949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388592, 33.631157, 49.734047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695519, 0.368871, 0.616594,
		-0.470613, 0.414584, -0.778874,
		-0.542933, -0.831898, -0.114755,
		30.225712, 33.381588, 49.699619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.897181, 34.184036, 49.606346>,  <30.605764, 33.963917, 49.779949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.897181, 34.184036, 49.606346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.885820, 33.812263, 49.753502>,  <29.879004, 33.589199, 49.841797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.885820, 33.812263, 49.753502>,  <29.897181, 34.184036, 49.606346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.885820, 33.812263, 49.753502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630107, 0.302356, 0.715225,
		-0.775989, -0.211496, -0.594231,
		-0.028402, -0.929436, 0.367890,
		29.877300, 33.533432, 49.863869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162491, 34.088367, 49.813107>,  <29.897181, 34.184036, 49.606346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.162491, 34.088367, 49.813107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.360235, 33.801151, 50.009079>,  <29.478882, 33.628822, 50.126663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.360235, 33.801151, 50.009079>,  <29.162491, 34.088367, 49.813107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360235, 33.801151, 50.009079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419810, 0.296312, 0.857881,
		-0.761161, -0.629780, -0.154953,
		0.494362, -0.718036, 0.489929,
		29.508543, 33.585739, 50.156059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633751, 33.729698, 50.312092>,  <29.162491, 34.088367, 49.813107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633751, 33.729698, 50.312092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.981796, 33.607452, 50.466751>,  <29.190624, 33.534103, 50.559547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.981796, 33.607452, 50.466751>,  <28.633751, 33.729698, 50.312092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.981796, 33.607452, 50.466751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312855, 0.263682, 0.912466,
		-0.380820, -0.914915, 0.133819,
		0.870113, -0.305619, 0.386651,
		29.242830, 33.515766, 50.582745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.514044, 33.321472, 50.889462>,  <28.633751, 33.729698, 50.312092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.514044, 33.321472, 50.889462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.889404, 33.441414, 50.958157>,  <29.114620, 33.513378, 50.999374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.889404, 33.441414, 50.958157>,  <28.514044, 33.321472, 50.889462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.889404, 33.441414, 50.958157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307210, 0.496395, 0.811920,
		0.158206, -0.814665, 0.557935,
		0.938399, 0.299854, 0.171741,
		29.170923, 33.531372, 51.009678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.578140, 33.275467, 51.604286>,  <28.514044, 33.321472, 50.889462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.578140, 33.275467, 51.604286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.894333, 33.507946, 51.526989>,  <29.084049, 33.647434, 51.480610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.894333, 33.507946, 51.526989>,  <28.578140, 33.275467, 51.604286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.894333, 33.507946, 51.526989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178336, 0.520241, 0.835191,
		0.585947, -0.625742, 0.514891,
		0.790482, 0.581202, -0.193242,
		29.131477, 33.682308, 51.469017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<28.949415, 33.284077, 52.276016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054041, 33.585670, 52.034992>,  <29.116817, 33.766628, 51.890377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054041, 33.585670, 52.034992>,  <28.949415, 33.284077, 52.276016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054041, 33.585670, 52.034992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291728, 0.656859, 0.695292,
		0.920042, -0.006080, 0.391772,
		0.261566, 0.753989, -0.602564,
		29.132511, 33.811867, 51.854221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.345413, 33.688591, 52.666111>,  <28.949415, 33.284077, 52.276016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.345413, 33.688591, 52.666111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201117, 33.913971, 52.368816>,  <29.114538, 34.049198, 52.190441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201117, 33.913971, 52.368816>,  <29.345413, 33.688591, 52.666111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201117, 33.913971, 52.368816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370299, 0.644862, 0.668604,
		0.856005, 0.516411, -0.023984,
		-0.360741, 0.563447, -0.743232,
		29.092894, 34.083004, 52.145847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.542885, 34.276775, 52.969856>,  <29.345413, 33.688591, 52.666111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.542885, 34.276775, 52.969856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.274830, 34.339451, 52.679653>,  <29.113997, 34.377056, 52.505531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.274830, 34.339451, 52.679653>,  <29.542885, 34.276775, 52.969856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.274830, 34.339451, 52.679653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485669, 0.646602, 0.588245,
		0.561285, 0.746563, -0.357215,
		-0.670138, 0.156685, -0.725510,
		29.073788, 34.386456, 52.462002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492537, 35.018856, 52.899605>,  <29.542885, 34.276775, 52.969856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.492537, 35.018856, 52.899605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160004, 34.865051, 52.739086>,  <28.960484, 34.772770, 52.642776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160004, 34.865051, 52.739086>,  <29.492537, 35.018856, 52.899605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160004, 34.865051, 52.739086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543428, 0.713734, 0.441894,
		0.116503, 0.585435, -0.802305,
		-0.831332, -0.384513, -0.401294,
		28.910604, 34.749699, 52.618698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096647, 35.563934, 52.727406>,  <29.492537, 35.018856, 52.899605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096647, 35.563934, 52.727406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808804, 35.287216, 52.751339>,  <28.636097, 35.121185, 52.765697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808804, 35.287216, 52.751339>,  <29.096647, 35.563934, 52.727406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.808804, 35.287216, 52.751339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527818, 0.600950, 0.600223,
		-0.451185, 0.400348, -0.797592,
		-0.719611, -0.691796, 0.059829,
		28.592920, 35.079678, 52.769287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.414331, 35.877781, 52.587418>,  <29.096647, 35.563934, 52.727406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.414331, 35.877781, 52.587418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.380587, 35.551956, 52.816978>,  <28.360340, 35.356461, 52.954716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.380587, 35.551956, 52.816978>,  <28.414331, 35.877781, 52.587418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.380587, 35.551956, 52.816978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539188, 0.521669, 0.661164,
		-0.837949, -0.253666, -0.483213,
		-0.084363, -0.814564, 0.573906,
		28.355278, 35.307587, 52.989151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.797976, 35.899208, 52.857059>,  <28.414331, 35.877781, 52.587418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.797976, 35.899208, 52.857059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960449, 35.628597, 53.102764>,  <28.057934, 35.466228, 53.250187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960449, 35.628597, 53.102764>,  <27.797976, 35.899208, 52.857059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.960449, 35.628597, 53.102764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489197, 0.406785, 0.771500,
		-0.771817, -0.613868, -0.165727,
		0.406184, -0.676529, 0.614266,
		28.082304, 35.425640, 53.287045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.214790, 35.655403, 53.168049>,  <27.797976, 35.899208, 52.857059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.214790, 35.655403, 53.168049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.536833, 35.592697, 53.396862>,  <27.730059, 35.555073, 53.534149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.536833, 35.592697, 53.396862>,  <27.214790, 35.655403, 53.168049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.536833, 35.592697, 53.396862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532719, 0.232932, 0.813605,
		-0.260790, -0.959775, 0.104025,
		0.805108, -0.156764, 0.572037,
		27.778366, 35.545670, 53.568474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952833, 35.014454, 53.643730>,  <27.214790, 35.655403, 53.168049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.952833, 35.014454, 53.643730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.260220, 35.214310, 53.803642>,  <27.444653, 35.334221, 53.899590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.260220, 35.214310, 53.803642>,  <26.952833, 35.014454, 53.643730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.260220, 35.214310, 53.803642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538756, 0.168110, 0.825518,
		0.345252, -0.849766, 0.398369,
		0.768468, 0.499636, 0.399777,
		27.490761, 35.364201, 53.923576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.798162, 34.812988, 54.287964>,  <26.952833, 35.014454, 53.643730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.798162, 34.812988, 54.287964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.061420, 35.114052, 54.295410>,  <27.219376, 35.294689, 54.299877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.061420, 35.114052, 54.295410>,  <26.798162, 34.812988, 54.287964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061420, 35.114052, 54.295410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452124, 0.375340, 0.809137,
		0.602018, -0.540947, 0.587325,
		0.658147, 0.752659, 0.018613,
		27.258865, 35.339851, 54.300995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.976583, 34.905334, 55.010368>,  <26.798162, 34.812988, 54.287964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.976583, 34.905334, 55.010368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.071095, 35.252350, 54.835304>,  <27.127802, 35.460560, 54.730267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.071095, 35.252350, 54.835304>,  <26.976583, 34.905334, 55.010368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.071095, 35.252350, 54.835304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436915, 0.497165, 0.749622,
		0.867916, 0.014098, 0.496512,
		0.236280, 0.867542, -0.437656,
		27.141979, 35.512611, 54.704006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.929012, 35.366032, 55.525707>,  <26.976583, 34.905334, 55.010368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.929012, 35.366032, 55.525707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.986961, 35.641968, 55.241978>,  <27.021730, 35.807529, 55.071739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.986961, 35.641968, 55.241978>,  <26.929012, 35.366032, 55.525707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.986961, 35.641968, 55.241978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223477, 0.721171, 0.655721,
		0.963883, 0.063521, 0.258641,
		0.144872, 0.689839, -0.709320,
		27.030422, 35.848919, 55.029182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.416265, 35.828518, 55.858589>,  <26.929012, 35.366032, 55.525707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.416265, 35.828518, 55.858589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.223190, 36.000278, 55.553268>,  <27.107346, 36.103333, 55.370075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.223190, 36.000278, 55.553268>,  <27.416265, 35.828518, 55.858589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223190, 36.000278, 55.553268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176820, 0.805827, 0.565134,
		0.857758, 0.407750, -0.313036,
		-0.482687, 0.429397, -0.763303,
		27.078384, 36.129097, 55.324276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.613098, 36.481785, 55.808800>,  <27.416265, 35.828518, 55.858589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.613098, 36.481785, 55.808800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252535, 36.490623, 55.635838>,  <27.036196, 36.495926, 55.532063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252535, 36.490623, 55.635838>,  <27.613098, 36.481785, 55.808800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.252535, 36.490623, 55.635838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207456, 0.854547, 0.476142,
		0.380028, 0.518904, -0.765714,
		-0.901411, 0.022096, -0.432401,
		26.982111, 36.497253, 55.506119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.528513, 37.257019, 55.513763>,  <27.613098, 36.481785, 55.808800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.528513, 37.257019, 55.513763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.182415, 37.065571, 55.573456>,  <26.974756, 36.950703, 55.609272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.182415, 37.065571, 55.573456>,  <27.528513, 37.257019, 55.513763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.182415, 37.065571, 55.573456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396885, 0.835779, 0.379415,
		-0.306323, 0.269059, -0.913112,
		-0.865245, -0.478624, 0.149232,
		26.922842, 36.921982, 55.618225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.978203, 37.745419, 55.416779>,  <27.528513, 37.257019, 55.513763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.978203, 37.745419, 55.416779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.778399, 37.453907, 55.604122>,  <26.658516, 37.278999, 55.716530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.778399, 37.453907, 55.604122>,  <26.978203, 37.745419, 55.416779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.778399, 37.453907, 55.604122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557742, 0.684231, 0.469843,
		-0.662882, -0.026533, -0.748254,
		-0.499512, -0.728783, 0.468362,
		26.628546, 37.235271, 55.744633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.266737, 38.074112, 55.438499>,  <26.978203, 37.745419, 55.416779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.266737, 38.074112, 55.438499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.306721, 37.794086, 55.721321>,  <26.330711, 37.626072, 55.891014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.306721, 37.794086, 55.721321>,  <26.266737, 38.074112, 55.438499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.306721, 37.794086, 55.721321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379020, 0.630245, 0.677595,
		-0.919974, -0.335717, -0.202339,
		0.099957, -0.700061, 0.707052,
		26.336708, 37.584068, 55.933437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.633850, 38.067528, 55.703362>,  <26.266737, 38.074112, 55.438499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.633850, 38.067528, 55.703362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.880512, 37.904049, 55.972496>,  <26.028509, 37.805962, 56.133976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.880512, 37.904049, 55.972496>,  <25.633850, 38.067528, 55.703362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.880512, 37.904049, 55.972496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536632, 0.407113, 0.739111,
		-0.575989, -0.816841, 0.031730,
		0.616654, -0.408692, 0.672836,
		26.065508, 37.781441, 56.174347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.212507, 38.040386, 56.279266>,  <25.633850, 38.067528, 55.703362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.212507, 38.040386, 56.279266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.569712, 37.986027, 56.450874>,  <25.784035, 37.953411, 56.553841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.569712, 37.986027, 56.450874>,  <25.212507, 38.040386, 56.279266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.569712, 37.986027, 56.450874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351312, 0.385303, 0.853300,
		-0.281263, -0.912729, 0.296339,
		0.893012, -0.135894, 0.429025,
		25.837616, 37.945259, 56.579582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.042570, 37.932369, 56.906528>,  <25.212507, 38.040386, 56.279266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.042570, 37.932369, 56.906528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.435139, 37.992538, 56.954166>,  <25.670679, 38.028641, 56.982750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.435139, 37.992538, 56.954166>,  <25.042570, 37.932369, 56.906528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.435139, 37.992538, 56.954166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182796, 0.544568, 0.818554,
		0.058275, -0.825117, 0.561948,
		0.981422, 0.150423, 0.119094,
		25.729565, 38.037666, 56.989895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.116871, 37.929649, 57.599480>,  <25.042570, 37.932369, 56.906528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.116871, 37.929649, 57.599480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.448664, 38.115723, 57.475826>,  <25.647739, 38.227367, 57.401634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.448664, 38.115723, 57.475826>,  <25.116871, 37.929649, 57.599480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.448664, 38.115723, 57.475826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004088, 0.558516, 0.829484,
		0.558516, -0.686780, 0.465181,
		-0.829484, -0.465181, 0.309132,
		25.697510, 38.255276, 57.383087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.616903, 37.951668, 58.201046>,  <25.116871, 37.929649, 57.599480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.616903, 37.951668, 58.201046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.652105, 38.253098, 57.940468>,  <25.673227, 38.433956, 57.784119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.652105, 38.253098, 57.940468>,  <25.616903, 37.951668, 58.201046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.652105, 38.253098, 57.940468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242314, 0.650538, 0.719781,
		0.966198, 0.094509, 0.239853,
		0.088007, 0.753570, -0.651450,
		25.678507, 38.479168, 57.745033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.215006, 38.468933, 58.339546>,  <25.616903, 37.951668, 58.201046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.215006, 38.468933, 58.339546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.906815, 38.633457, 58.144737>,  <25.721899, 38.732170, 58.027851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.906815, 38.633457, 58.144737>,  <26.215006, 38.468933, 58.339546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.906815, 38.633457, 58.144737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141039, 0.635066, 0.759473,
		0.621668, 0.653846, -0.431293,
		-0.770478, 0.411311, -0.487018,
		25.675671, 38.756851, 57.998631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.334234, 39.216122, 58.272907>,  <26.215006, 38.468933, 58.339546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.334234, 39.216122, 58.272907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.946836, 39.120747, 58.301666>,  <25.714397, 39.063522, 58.318920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.946836, 39.120747, 58.301666>,  <26.334234, 39.216122, 58.272907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.946836, 39.120747, 58.301666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116410, 0.688639, 0.715699,
		-0.220159, 0.684780, -0.694699,
		-0.968493, -0.238438, 0.071895,
		25.656288, 39.049213, 58.323235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.810368, 38.927025, 58.578136>,  <26.334234, 39.216122, 58.272907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.810368, 38.927025, 58.578136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.085802, 38.977268, 58.863815>,  <27.251062, 39.007412, 59.035221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.085802, 38.977268, 58.863815>,  <26.810368, 38.927025, 58.578136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.085802, 38.977268, 58.863815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672112, -0.480301, -0.563539,
		0.272246, 0.868064, -0.415148,
		0.688584, 0.125605, 0.714196,
		27.292377, 39.014950, 59.078075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.483809, 39.211803, 58.263702>,  <26.810368, 38.927025, 58.578136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.483809, 39.211803, 58.263702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567863, 39.014088, 58.601109>,  <27.618298, 38.895458, 58.803551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567863, 39.014088, 58.601109>,  <27.483809, 39.211803, 58.263702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.567863, 39.014088, 58.601109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690018, -0.536239, -0.486131,
		0.692616, 0.684195, 0.228387,
		0.210138, -0.494293, 0.843514,
		27.630905, 38.865799, 58.854164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.153500, 39.426014, 58.396038>,  <27.483809, 39.211803, 58.263702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.153500, 39.426014, 58.396038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.083330, 39.080029, 58.584110>,  <28.041229, 38.872437, 58.696953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.083330, 39.080029, 58.584110>,  <28.153500, 39.426014, 58.396038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.083330, 39.080029, 58.584110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820528, -0.392365, -0.415672,
		0.544023, 0.312878, 0.778554,
		-0.175423, -0.864961, 0.470180,
		28.030703, 38.820541, 58.725163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.810528, 39.161457, 58.697323>,  <28.153500, 39.426014, 58.396038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.810528, 39.161457, 58.697323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.572432, 38.840767, 58.675697>,  <28.429573, 38.648354, 58.662724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.572432, 38.840767, 58.675697>,  <28.810528, 39.161457, 58.697323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.572432, 38.840767, 58.675697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744179, -0.524635, -0.413467,
		0.303123, -0.286347, 0.908912,
		-0.595243, -0.801725, -0.054065,
		28.393858, 38.600250, 58.659477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187302, 38.664017, 58.798710>,  <28.810528, 39.161457, 58.697323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187302, 38.664017, 58.798710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.886450, 38.456173, 58.636570>,  <28.705938, 38.331467, 58.539288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.886450, 38.456173, 58.636570>,  <29.187302, 38.664017, 58.798710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.886450, 38.456173, 58.636570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658016, -0.558291, -0.505298,
		0.036254, -0.646775, 0.761818,
		-0.752131, -0.519608, -0.405348,
		28.660810, 38.300289, 58.514965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308851, 37.927643, 58.816170>,  <29.187302, 38.664017, 58.798710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.308851, 37.927643, 58.816170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043161, 37.951904, 58.518143>,  <28.883747, 37.966461, 58.339325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043161, 37.951904, 58.518143>,  <29.308851, 37.927643, 58.816170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.043161, 37.951904, 58.518143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616168, -0.519907, -0.591636,
		-0.423253, -0.852066, 0.307960,
		-0.664224, 0.060657, -0.745069,
		28.843895, 37.970100, 58.294621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324278, 37.371254, 58.460255>,  <29.308851, 37.927643, 58.816170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324278, 37.371254, 58.460255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138140, 37.599277, 58.189407>,  <29.026457, 37.736092, 58.026897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138140, 37.599277, 58.189407>,  <29.324278, 37.371254, 58.460255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138140, 37.599277, 58.189407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384086, -0.559167, -0.734718,
		-0.797452, -0.601971, 0.041256,
		-0.465348, 0.570056, -0.677117,
		28.998535, 37.770294, 57.986271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028448, 36.851227, 57.955589>,  <29.324278, 37.371254, 58.460255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028448, 36.851227, 57.955589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043209, 37.195091, 57.751778>,  <29.052067, 37.401409, 57.629490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043209, 37.195091, 57.751778>,  <29.028448, 36.851227, 57.955589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.043209, 37.195091, 57.751778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146781, -0.509010, -0.848154,
		-0.988480, -0.043489, -0.144967,
		0.036904, 0.859662, -0.509529,
		29.054279, 37.452991, 57.598919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.637590, 36.705421, 57.347778>,  <29.028448, 36.851227, 57.955589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.637590, 36.705421, 57.347778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881180, 37.005898, 57.245911>,  <29.027334, 37.186184, 57.184792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881180, 37.005898, 57.245911>,  <28.637590, 36.705421, 57.347778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.881180, 37.005898, 57.245911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280182, -0.504095, -0.816937,
		-0.742056, 0.426141, -0.517453,
		0.608976, 0.751194, -0.254669,
		29.063873, 37.231255, 57.169510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634806, 36.722309, 56.663368>,  <28.637590, 36.705421, 57.347778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634806, 36.722309, 56.663368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948551, 36.967693, 56.700123>,  <29.136799, 37.114925, 56.722176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948551, 36.967693, 56.700123>,  <28.634806, 36.722309, 56.663368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.948551, 36.967693, 56.700123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394668, -0.379270, -0.836894,
		-0.478553, 0.692691, -0.539598,
		0.784362, 0.613460, 0.091883,
		29.183861, 37.151730, 56.727688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638222, 37.302120, 56.176212>,  <28.634806, 36.722309, 56.663368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638222, 37.302120, 56.176212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.016779, 37.229641, 56.283173>,  <29.243914, 37.186153, 56.347347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.016779, 37.229641, 56.283173>,  <28.638222, 37.302120, 56.176212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.016779, 37.229641, 56.283173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221388, -0.238939, -0.945461,
		0.235212, 0.953978, -0.186014,
		0.946395, -0.181203, 0.267400,
		29.300697, 37.175282, 56.363392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001049, 37.430935, 55.625443>,  <28.638222, 37.302120, 56.176212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001049, 37.430935, 55.625443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.280298, 37.222332, 55.821667>,  <29.447847, 37.097168, 55.939400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.280298, 37.222332, 55.821667>,  <29.001049, 37.430935, 55.625443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280298, 37.222332, 55.821667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267986, -0.445029, -0.854478,
		0.663934, 0.727994, -0.170928,
		0.698123, -0.521511, 0.490562,
		29.489735, 37.065880, 55.968834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470045, 37.304420, 55.101719>,  <29.001049, 37.430935, 55.625443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470045, 37.304420, 55.101719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.597055, 37.054386, 55.386940>,  <29.673262, 36.904366, 55.558075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.597055, 37.054386, 55.386940>,  <29.470045, 37.304420, 55.101719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597055, 37.054386, 55.386940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408277, -0.588578, -0.697772,
		0.855855, 0.512683, 0.068321,
		0.317524, -0.625086, 0.713054,
		29.692312, 36.866859, 55.600857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113613, 36.953472, 54.891014>,  <29.470045, 37.304420, 55.101719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113613, 36.953472, 54.891014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003759, 36.693195, 55.174191>,  <29.937847, 36.537029, 55.344097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003759, 36.693195, 55.174191>,  <30.113613, 36.953472, 54.891014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003759, 36.693195, 55.174191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367276, -0.751412, -0.548168,
		0.888641, 0.109463, 0.445347,
		-0.274635, -0.650690, 0.707939,
		29.921370, 36.497990, 55.386574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650623, 36.585640, 55.006836>,  <30.113613, 36.953472, 54.891014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650623, 36.585640, 55.006836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358274, 36.346878, 55.139217>,  <30.182865, 36.203621, 55.218647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358274, 36.346878, 55.139217>,  <30.650623, 36.585640, 55.006836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358274, 36.346878, 55.139217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361759, -0.749986, -0.553762,
		0.578757, -0.285001, 0.764078,
		-0.730870, -0.596905, 0.330958,
		30.139013, 36.167805, 55.238506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935204, 35.896259, 55.022720>,  <30.650623, 36.585640, 55.006836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935204, 35.896259, 55.022720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548714, 35.804993, 55.070637>,  <30.316820, 35.750233, 55.099388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548714, 35.804993, 55.070637>,  <30.935204, 35.896259, 55.022720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.548714, 35.804993, 55.070637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157822, -0.891394, -0.424863,
		0.203722, -0.391607, 0.897297,
		-0.966224, -0.228167, 0.119793,
		30.258846, 35.736542, 55.106575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827442, 35.184246, 55.449921>,  <30.935204, 35.896259, 55.022720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827442, 35.184246, 55.449921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.559052, 35.267048, 55.165123>,  <30.398018, 35.316730, 54.994244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.559052, 35.267048, 55.165123>,  <30.827442, 35.184246, 55.449921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.559052, 35.267048, 55.165123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312936, -0.791469, -0.525023,
		-0.672206, -0.575087, 0.466277,
		-0.670977, 0.207008, -0.711995,
		30.357758, 35.329151, 54.951523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.522396, 34.509350, 55.276669>,  <30.827442, 35.184246, 55.449921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.522396, 34.509350, 55.276669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.444695, 34.765240, 54.979210>,  <30.398073, 34.918774, 54.800735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.444695, 34.765240, 54.979210>,  <30.522396, 34.509350, 55.276669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444695, 34.765240, 54.979210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241551, -0.703552, -0.668333,
		-0.950746, -0.309456, -0.017857,
		-0.194256, 0.639728, -0.743648,
		30.386417, 34.957157, 54.756115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.206221, 34.161163, 54.713299>,  <30.522396, 34.509350, 55.276669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.206221, 34.161163, 54.713299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355654, 34.485043, 54.532269>,  <30.445314, 34.679371, 54.423649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355654, 34.485043, 54.532269>,  <30.206221, 34.161163, 54.713299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.355654, 34.485043, 54.532269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374581, -0.578038, -0.724956,
		-0.848602, 0.101304, -0.519242,
		0.373583, 0.809697, -0.452577,
		30.467730, 34.727951, 54.396496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072784, 33.973827, 54.005714>,  <30.206221, 34.161163, 54.713299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.072784, 33.973827, 54.005714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.327377, 34.282318, 54.009655>,  <30.480133, 34.467415, 54.012020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.327377, 34.282318, 54.009655>,  <30.072784, 33.973827, 54.005714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327377, 34.282318, 54.009655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489025, -0.393646, -0.778394,
		-0.596444, 0.500249, -0.627699,
		0.636482, 0.771229, 0.009847,
		30.518322, 34.513687, 54.012608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<46.856503, 33.707302, 51.122242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.007141, 34.026802, 51.309933>,  <47.097523, 34.218502, 51.422546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.007141, 34.026802, 51.309933>,  <46.856503, 33.707302, 51.122242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.007141, 34.026802, 51.309933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917999, 0.389748, 0.073311,
		-0.124323, -0.458356, 0.880030,
		0.376593, 0.798753, 0.469225,
		47.120117, 34.266426, 51.450699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.371166, 33.851601, 51.722305>,  <46.856503, 33.707302, 51.122242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.371166, 33.851601, 51.722305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.567883, 34.191559, 51.646599>,  <46.685913, 34.395535, 51.601173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.567883, 34.191559, 51.646599>,  <46.371166, 33.851601, 51.722305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.567883, 34.191559, 51.646599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862615, 0.505144, 0.026919,
		0.118486, 0.150027, 0.981556,
		0.491788, 0.849895, -0.189268,
		46.715420, 34.446526, 51.589817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.069386, 34.316059, 52.198330>,  <46.371166, 33.851601, 51.722305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.069386, 34.316059, 52.198330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.227982, 34.531376, 51.900864>,  <46.323139, 34.660564, 51.722385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.227982, 34.531376, 51.900864>,  <46.069386, 34.316059, 52.198330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.227982, 34.531376, 51.900864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781581, 0.622869, 0.034146,
		0.481585, 0.567693, 0.667683,
		0.396495, 0.538292, -0.743662,
		46.346931, 34.692863, 51.677765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.970558, 35.096367, 52.355637>,  <46.069386, 34.316059, 52.198330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.970558, 35.096367, 52.355637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.049728, 35.066925, 51.964657>,  <46.097229, 35.049259, 51.730068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.049728, 35.066925, 51.964657>,  <45.970558, 35.096367, 52.355637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.049728, 35.066925, 51.964657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803166, 0.559463, -0.204758,
		0.561918, 0.825581, 0.051616,
		0.197921, -0.073601, -0.977451,
		46.109104, 35.044846, 51.671421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.970455, 35.779373, 52.022896>,  <45.970558, 35.096367, 52.355637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.970455, 35.779373, 52.022896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.919937, 35.540977, 51.705696>,  <45.889626, 35.397938, 51.515377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.919937, 35.540977, 51.705696>,  <45.970455, 35.779373, 52.022896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.919937, 35.540977, 51.705696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782299, 0.551380, -0.289809,
		0.609966, 0.583759, -0.535879,
		-0.126294, -0.595991, -0.792998,
		45.882050, 35.362179, 51.467796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.780346, 36.338093, 51.559914>,  <45.970455, 35.779373, 52.022896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.780346, 36.338093, 51.559914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.644878, 36.001301, 51.391926>,  <45.563599, 35.799225, 51.291134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.644878, 36.001301, 51.391926>,  <45.780346, 36.338093, 51.559914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.644878, 36.001301, 51.391926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742248, 0.513383, -0.430704,
		0.578249, 0.165853, -0.798825,
		-0.338670, -0.841980, -0.419968,
		45.543278, 35.748707, 51.265938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.690311, 36.467236, 50.728737>,  <45.780346, 36.338093, 51.559914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.690311, 36.467236, 50.728737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.471390, 36.153259, 50.844894>,  <45.340034, 35.964874, 50.914589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.471390, 36.153259, 50.844894>,  <45.690311, 36.467236, 50.728737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.471390, 36.153259, 50.844894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831052, 0.468643, -0.299544,
		0.099032, -0.405276, -0.908815,
		-0.547307, -0.784937, 0.290394,
		45.307198, 35.917778, 50.932014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.140423, 36.337070, 50.210724>,  <45.690311, 36.467236, 50.728737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.140423, 36.337070, 50.210724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.983643, 36.164921, 50.535969>,  <44.889572, 36.061630, 50.731117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.983643, 36.164921, 50.535969>,  <45.140423, 36.337070, 50.210724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.983643, 36.164921, 50.535969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918394, 0.234996, -0.318323,
		-0.054080, -0.871525, -0.487360,
		-0.391954, -0.430374, 0.813111,
		44.866055, 36.035809, 50.779903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.641312, 35.870617, 49.896366>,  <45.140423, 36.337070, 50.210724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.641312, 35.870617, 49.896366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.530647, 35.906872, 50.279041>,  <44.464249, 35.928623, 50.508644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.530647, 35.906872, 50.279041>,  <44.641312, 35.870617, 49.896366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.530647, 35.906872, 50.279041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960328, 0.010220, -0.278685,
		-0.035044, -0.995829, 0.084241,
		-0.276661, 0.090666, 0.956681,
		44.447647, 35.934063, 50.566048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.061733, 35.462719, 49.948345>,  <44.641312, 35.870617, 49.896366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.061733, 35.462719, 49.948345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.004627, 35.698174, 50.266621>,  <43.970364, 35.839447, 50.457584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.004627, 35.698174, 50.266621>,  <44.061733, 35.462719, 49.948345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.004627, 35.698174, 50.266621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966902, 0.088816, -0.239191,
		-0.211467, -0.803503, 0.556476,
		-0.142767, 0.588638, 0.795690,
		43.961796, 35.874763, 50.505329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.712505, 35.103439, 50.406551>,  <44.061733, 35.462719, 49.948345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.712505, 35.103439, 50.406551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.632088, 35.484608, 50.497337>,  <43.583836, 35.713310, 50.551811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.632088, 35.484608, 50.497337>,  <43.712505, 35.103439, 50.406551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.632088, 35.484608, 50.497337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959884, -0.145407, -0.239750,
		-0.195461, -0.266064, 0.943931,
		-0.201043, 0.952926, 0.226969,
		43.571774, 35.770485, 50.565430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.027180, 35.108368, 50.535847>,  <43.712505, 35.103439, 50.406551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.027180, 35.108368, 50.535847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.081001, 35.504562, 50.524269>,  <43.113293, 35.742279, 50.517323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.081001, 35.504562, 50.524269>,  <43.027180, 35.108368, 50.535847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.081001, 35.504562, 50.524269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982235, 0.129461, -0.135847,
		-0.130807, 0.046708, 0.990307,
		0.134551, 0.990484, -0.028944,
		43.121368, 35.801708, 50.515587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587173, 35.521976, 51.043617>,  <43.027180, 35.108368, 50.535847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.587173, 35.521976, 51.043617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.684292, 35.806355, 50.779613>,  <42.742561, 35.976982, 50.621212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.684292, 35.806355, 50.779613>,  <42.587173, 35.521976, 51.043617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.684292, 35.806355, 50.779613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959353, 0.276858, -0.054693,
		0.143845, 0.646461, 0.749264,
		0.242796, 0.710942, -0.660009,
		42.757130, 36.019638, 50.581612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.164677, 36.139530, 51.208710>,  <42.587173, 35.521976, 51.043617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.164677, 36.139530, 51.208710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.271580, 36.187302, 50.826233>,  <42.335720, 36.215965, 50.596745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.271580, 36.187302, 50.826233>,  <42.164677, 36.139530, 51.208710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.271580, 36.187302, 50.826233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936247, 0.267037, -0.228326,
		0.228071, 0.956257, 0.183183,
		0.267255, 0.119430, -0.956196,
		42.351757, 36.223129, 50.539375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951450, 36.766884, 51.060127>,  <42.164677, 36.139530, 51.208710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951450, 36.766884, 51.060127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.994019, 36.621803, 50.689804>,  <42.019558, 36.534756, 50.467609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.994019, 36.621803, 50.689804>,  <41.951450, 36.766884, 51.060127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.994019, 36.621803, 50.689804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888759, 0.382804, -0.252129,
		0.445851, 0.849651, -0.281620,
		0.106416, -0.362704, -0.925808,
		42.025944, 36.512993, 50.412060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624020, 37.202110, 50.611980>,  <41.951450, 36.766884, 51.060127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624020, 37.202110, 50.611980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.640217, 36.866470, 50.394993>,  <41.649933, 36.665085, 50.264801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.640217, 36.866470, 50.394993>,  <41.624020, 37.202110, 50.611980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.640217, 36.866470, 50.394993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977241, 0.079888, -0.196514,
		0.208231, 0.538079, -0.816769,
		0.040490, -0.839100, -0.542468,
		41.652363, 36.614738, 50.232254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177326, 37.388710, 49.934147>,  <41.624020, 37.202110, 50.611980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177326, 37.388710, 49.934147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.219841, 36.991867, 49.960728>,  <41.245350, 36.753761, 49.976677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.219841, 36.991867, 49.960728>,  <41.177326, 37.388710, 49.934147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219841, 36.991867, 49.960728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928157, -0.122967, -0.351288,
		0.356689, -0.024343, -0.933906,
		0.106288, -0.992112, 0.066455,
		41.251728, 36.694233, 49.980663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979435, 37.089252, 49.283306>,  <41.177326, 37.388710, 49.934147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979435, 37.089252, 49.283306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.937710, 36.796780, 49.552967>,  <40.912674, 36.621296, 49.714764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.937710, 36.796780, 49.552967>,  <40.979435, 37.089252, 49.283306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937710, 36.796780, 49.552967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918970, -0.188327, -0.346449,
		0.380280, -0.655667, -0.652294,
		-0.104310, -0.731187, 0.674156,
		40.906418, 36.577423, 49.755215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425457, 36.592632, 48.952740>,  <40.979435, 37.089252, 49.283306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425457, 36.592632, 48.952740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.459438, 36.476795, 49.334087>,  <40.479828, 36.407291, 49.562897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.459438, 36.476795, 49.334087>,  <40.425457, 36.592632, 48.952740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459438, 36.476795, 49.334087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986803, -0.156831, 0.040290,
		0.137850, -0.944213, -0.299096,
		0.084950, -0.289595, 0.953372,
		40.484924, 36.389915, 49.620098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177975, 35.881695, 48.964008>,  <40.425457, 36.592632, 48.952740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177975, 35.881695, 48.964008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.125954, 36.045612, 49.325153>,  <40.094742, 36.143963, 49.541840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.125954, 36.045612, 49.325153>,  <40.177975, 35.881695, 48.964008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125954, 36.045612, 49.325153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983193, -0.170978, -0.064018,
		0.128135, -0.896011, 0.425142,
		-0.130051, 0.409794, 0.902860,
		40.086937, 36.168552, 49.596012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639969, 35.727932, 48.410671>,  <40.177975, 35.881695, 48.964008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639969, 35.727932, 48.410671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.245197, 35.775761, 48.453892>,  <39.008335, 35.804459, 48.479824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.245197, 35.775761, 48.453892>,  <39.639969, 35.727932, 48.410671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245197, 35.775761, 48.453892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160590, -0.673117, -0.721890,
		-0.013584, -0.729806, 0.683520,
		-0.986928, 0.119573, 0.108056,
		38.949120, 35.811634, 48.486309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191387, 35.096687, 48.706581>,  <39.639969, 35.727932, 48.410671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191387, 35.096687, 48.706581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.035725, 35.332661, 48.423588>,  <38.942326, 35.474243, 48.253792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.035725, 35.332661, 48.423588>,  <39.191387, 35.096687, 48.706581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035725, 35.332661, 48.423588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236297, -0.806262, -0.542314,
		-0.890348, -0.043869, 0.453163,
		-0.389159, 0.589929, -0.707487,
		38.918976, 35.509640, 48.211342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803856, 34.465630, 48.486652>,  <39.191387, 35.096687, 48.706581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803856, 34.465630, 48.486652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.054157, 34.586582, 48.199039>,  <39.204338, 34.659153, 48.026474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.054157, 34.586582, 48.199039>,  <38.803856, 34.465630, 48.486652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054157, 34.586582, 48.199039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712882, -0.152453, -0.684512,
		-0.316601, 0.940917, 0.120164,
		0.625750, 0.302380, -0.719030,
		39.241882, 34.677296, 47.983330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692123, 34.916542, 48.028168>,  <38.803856, 34.465630, 48.486652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692123, 34.916542, 48.028168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.857376, 34.646023, 47.784218>,  <38.956528, 34.483711, 47.637848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.857376, 34.646023, 47.784218>,  <38.692123, 34.916542, 48.028168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857376, 34.646023, 47.784218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831181, -0.006388, -0.555965,
		0.372101, 0.736601, -0.564765,
		0.413132, -0.676297, -0.609872,
		38.981316, 34.443134, 47.601257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586796, 35.127926, 47.322071>,  <38.692123, 34.916542, 48.028168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586796, 35.127926, 47.322071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.659336, 34.737087, 47.277531>,  <38.702862, 34.502586, 47.250805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.659336, 34.737087, 47.277531>,  <38.586796, 35.127926, 47.322071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659336, 34.737087, 47.277531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734727, -0.059357, -0.675761,
		0.653673, 0.204362, -0.728662,
		0.181351, -0.977094, -0.111350,
		38.713741, 34.443958, 47.244125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663269, 35.038155, 46.657509>,  <38.586796, 35.127926, 47.322071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663269, 35.038155, 46.657509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.567501, 34.670597, 46.782925>,  <38.510040, 34.450062, 46.858173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.567501, 34.670597, 46.782925>,  <38.663269, 35.038155, 46.657509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567501, 34.670597, 46.782925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737425, -0.037967, -0.674361,
		0.631573, -0.392666, -0.668527,
		-0.239417, -0.918897, 0.313540,
		38.495674, 34.394928, 46.876987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604355, 34.652454, 46.134415>,  <38.663269, 35.038155, 46.657509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604355, 34.652454, 46.134415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.383881, 34.440586, 46.392296>,  <38.251598, 34.313465, 46.547024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.383881, 34.440586, 46.392296>,  <38.604355, 34.652454, 46.134415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383881, 34.440586, 46.392296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679960, -0.162676, -0.714976,
		0.483582, -0.832455, -0.270494,
		-0.551183, -0.529675, 0.644703,
		38.218525, 34.281685, 46.585709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208397, 34.213684, 45.689949>,  <38.604355, 34.652454, 46.134415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208397, 34.213684, 45.689949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.022350, 34.161823, 46.040230>,  <37.910721, 34.130707, 46.250397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.022350, 34.161823, 46.040230>,  <38.208397, 34.213684, 45.689949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022350, 34.161823, 46.040230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877042, -0.066890, -0.475735,
		0.120258, -0.989300, -0.082602,
		-0.465119, -0.129656, 0.875702,
		37.882816, 34.122929, 46.302940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806705, 33.510597, 45.709717>,  <38.208397, 34.213684, 45.689949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806705, 33.510597, 45.709717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.648586, 33.773472, 45.966415>,  <37.553715, 33.931198, 46.120434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.648586, 33.773472, 45.966415>,  <37.806705, 33.510597, 45.709717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648586, 33.773472, 45.966415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885639, -0.087335, -0.456089,
		-0.243688, -0.748650, 0.616554,
		-0.395298, 0.657188, 0.641751,
		37.529999, 33.970627, 46.158939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224369, 33.260372, 45.842018>,  <37.806705, 33.510597, 45.709717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224369, 33.260372, 45.842018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.202335, 33.637825, 45.972572>,  <37.189114, 33.864296, 46.050903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.202335, 33.637825, 45.972572>,  <37.224369, 33.260372, 45.842018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202335, 33.637825, 45.972572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870549, 0.114696, -0.478529,
		-0.488990, -0.310494, 0.815158,
		-0.055085, 0.943631, 0.326385,
		37.185810, 33.920914, 46.070488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529217, 33.328594, 46.055202>,  <37.224369, 33.260372, 45.842018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529217, 33.328594, 46.055202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.668018, 33.696850, 45.983643>,  <36.751297, 33.917805, 45.940704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.668018, 33.696850, 45.983643>,  <36.529217, 33.328594, 46.055202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668018, 33.696850, 45.983643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873314, 0.247639, -0.419520,
		-0.341925, 0.301812, 0.889942,
		0.347001, 0.920643, -0.178903,
		36.772118, 33.973042, 45.929970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948086, 33.787502, 46.340336>,  <36.529217, 33.328594, 46.055202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948086, 33.787502, 46.340336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.178566, 33.986675, 46.081089>,  <36.316856, 34.106178, 45.925541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.178566, 33.986675, 46.081089>,  <35.948086, 33.787502, 46.340336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178566, 33.986675, 46.081089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811625, 0.255265, -0.525457,
		-0.096199, 0.828798, 0.551216,
		0.576204, 0.497930, -0.648116,
		36.351429, 34.136055, 45.886654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621887, 34.341682, 46.192001>,  <35.948086, 33.787502, 46.340336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621887, 34.341682, 46.192001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.885815, 34.345009, 45.891449>,  <36.044170, 34.347004, 45.711117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.885815, 34.345009, 45.891449>,  <35.621887, 34.341682, 46.192001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885815, 34.345009, 45.891449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693782, 0.390831, -0.604911,
		0.288633, 0.920425, 0.263645,
		0.659816, 0.008315, -0.751381,
		36.083759, 34.347504, 45.666035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615501, 35.074673, 45.833008>,  <35.621887, 34.341682, 46.192001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615501, 35.074673, 45.833008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.753540, 34.795769, 45.581696>,  <35.836365, 34.628426, 45.430908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.753540, 34.795769, 45.581696>,  <35.615501, 35.074673, 45.833008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753540, 34.795769, 45.581696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740989, 0.208450, -0.638345,
		0.576057, 0.685841, -0.444726,
		0.345100, -0.697260, -0.628279,
		35.857071, 34.586590, 45.393211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322304, 35.301590, 45.209396>,  <35.615501, 35.074673, 45.833008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322304, 35.301590, 45.209396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.439438, 34.928387, 45.125744>,  <35.509720, 34.704464, 45.075554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.439438, 34.928387, 45.125744>,  <35.322304, 35.301590, 45.209396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439438, 34.928387, 45.125744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688639, -0.054062, -0.723086,
		0.663341, 0.355763, -0.658339,
		0.292838, -0.933011, -0.209131,
		35.527290, 34.648483, 45.063004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.365362, 32.632908, 49.076477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.717947, 32.786953, 49.185810>,  <29.929499, 32.879379, 49.251411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.717947, 32.786953, 49.185810>,  <29.365362, 32.632908, 49.076477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.717947, 32.786953, 49.185810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382077, -0.241375, -0.892051,
		-0.277566, 0.890744, -0.359906,
		0.881462, 0.385115, 0.273335,
		29.982386, 32.902489, 49.267811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.564404, 33.064526, 48.555542>,  <29.365362, 32.632908, 49.076477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.564404, 33.064526, 48.555542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.927195, 33.022141, 48.718594>,  <30.144869, 32.996708, 48.816425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.927195, 33.022141, 48.718594>,  <29.564404, 33.064526, 48.555542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.927195, 33.022141, 48.718594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418533, 0.118553, -0.900430,
		0.047091, 0.987277, 0.151876,
		0.906980, -0.105967, 0.407626,
		30.199289, 32.990349, 48.840881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980358, 33.612713, 48.226971>,  <29.564404, 33.064526, 48.555542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980358, 33.612713, 48.226971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.243179, 33.359718, 48.391045>,  <30.400871, 33.207924, 48.489487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.243179, 33.359718, 48.391045>,  <29.980358, 33.612713, 48.226971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243179, 33.359718, 48.391045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557000, 0.040675, -0.829516,
		0.507970, 0.773506, 0.379018,
		0.657052, -0.632482, 0.410181,
		30.440294, 33.169975, 48.514099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625816, 33.930923, 48.094997>,  <29.980358, 33.612713, 48.226971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625816, 33.930923, 48.094997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.728201, 33.549885, 48.160767>,  <30.789631, 33.321262, 48.200230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.728201, 33.549885, 48.160767>,  <30.625816, 33.930923, 48.094997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.728201, 33.549885, 48.160767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524004, -0.006211, -0.851693,
		0.812345, 0.304159, 0.497577,
		0.255960, -0.952601, 0.164425,
		30.804989, 33.264103, 48.210094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389984, 33.948921, 47.866627>,  <30.625816, 33.930923, 48.094997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389984, 33.948921, 47.866627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.217377, 33.588341, 47.852924>,  <31.113811, 33.371990, 47.844704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.217377, 33.588341, 47.852924>,  <31.389984, 33.948921, 47.866627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217377, 33.588341, 47.852924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440743, -0.177541, -0.879900,
		0.787107, -0.394792, 0.473922,
		-0.431518, -0.901454, -0.034259,
		31.087921, 33.317905, 47.842648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927135, 33.508068, 47.788769>,  <31.389984, 33.948921, 47.866627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927135, 33.508068, 47.788769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.618202, 33.285423, 47.666336>,  <31.432842, 33.151836, 47.592876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.618202, 33.285423, 47.666336>,  <31.927135, 33.508068, 47.788769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618202, 33.285423, 47.666336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442345, -0.125458, -0.888026,
		0.455888, -0.821244, 0.343111,
		-0.772332, -0.556614, -0.306079,
		31.386503, 33.118439, 47.574512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264679, 32.919598, 47.564606>,  <31.927135, 33.508068, 47.788769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264679, 32.919598, 47.564606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.905033, 32.965103, 47.395535>,  <31.689247, 32.992405, 47.294090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.905033, 32.965103, 47.395535>,  <32.264679, 32.919598, 47.564606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905033, 32.965103, 47.395535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406559, -0.140788, -0.902712,
		-0.162210, -0.983481, 0.080329,
		-0.899109, 0.113771, -0.422681,
		31.635300, 32.999229, 47.268730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204063, 32.475220, 47.087894>,  <32.264679, 32.919598, 47.564606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204063, 32.475220, 47.087894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.931080, 32.749939, 46.987843>,  <31.767290, 32.914768, 46.927811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.931080, 32.749939, 46.987843>,  <32.204063, 32.475220, 47.087894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931080, 32.749939, 46.987843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329112, -0.016817, -0.944141,
		-0.652639, -0.726655, -0.214556,
		-0.682457, 0.686796, -0.250127,
		31.726343, 32.955978, 46.912804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893442, 32.184990, 46.486912>,  <32.204063, 32.475220, 47.087894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893442, 32.184990, 46.486912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.838865, 32.580654, 46.508606>,  <31.806120, 32.818054, 46.521622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.838865, 32.580654, 46.508606>,  <31.893442, 32.184990, 46.486912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838865, 32.580654, 46.508606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476151, 0.113489, -0.872009,
		-0.868714, -0.093155, -0.486475,
		-0.136442, 0.989162, 0.054233,
		31.797934, 32.877403, 46.524876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697609, 32.372429, 45.832661>,  <31.893442, 32.184990, 46.486912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697609, 32.372429, 45.832661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.801119, 32.721508, 45.998276>,  <31.863224, 32.930958, 46.097645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.801119, 32.721508, 45.998276>,  <31.697609, 32.372429, 45.832661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801119, 32.721508, 45.998276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365247, 0.308411, -0.878338,
		-0.894221, 0.378517, -0.238943,
		0.258773, 0.872701, 0.414040,
		31.878750, 32.983318, 46.122486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527811, 32.907780, 45.278282>,  <31.697609, 32.372429, 45.832661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527811, 32.907780, 45.278282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.802063, 33.048222, 45.533356>,  <31.966614, 33.132484, 45.686401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.802063, 33.048222, 45.533356>,  <31.527811, 32.907780, 45.278282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802063, 33.048222, 45.533356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651177, 0.095755, -0.752861,
		-0.325391, 0.931429, -0.162977,
		0.685630, 0.351101, 0.637683,
		32.007751, 33.153553, 45.724659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752007, 33.478466, 44.973465>,  <31.527811, 32.907780, 45.278282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752007, 33.478466, 44.973465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.039642, 33.403778, 45.241207>,  <32.212223, 33.358963, 45.401852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.039642, 33.403778, 45.241207>,  <31.752007, 33.478466, 44.973465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039642, 33.403778, 45.241207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694840, 0.178967, -0.696540,
		0.010268, 0.965973, 0.258437,
		0.719091, -0.186724, 0.669359,
		32.255371, 33.347759, 45.442017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658379, 33.843983, 44.425690>,  <31.752007, 33.478466, 44.973465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658379, 33.843983, 44.425690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.047329, 33.861584, 44.517387>,  <32.280701, 33.872143, 44.572407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.047329, 33.861584, 44.517387>,  <31.658379, 33.843983, 44.425690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047329, 33.861584, 44.517387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233402, 0.169336, 0.957522,
		0.003312, -0.984576, 0.174928,
		0.972374, 0.043999, 0.229241,
		32.339043, 33.874783, 44.586159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181419, 34.375237, 44.640045>,  <31.658379, 33.843983, 44.425690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181419, 34.375237, 44.640045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.318295, 34.685505, 44.427914>,  <32.400417, 34.871666, 44.300636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.318295, 34.685505, 44.427914>,  <32.181419, 34.375237, 44.640045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318295, 34.685505, 44.427914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488891, 0.628961, 0.604478,
		0.802431, 0.052431, 0.594438,
		0.342185, 0.775667, -0.530330,
		32.420952, 34.918205, 44.268814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621307, 34.843391, 45.188255>,  <32.181419, 34.375237, 44.640045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621307, 34.843391, 45.188255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.485611, 35.035679, 44.864815>,  <32.404194, 35.151051, 44.670750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.485611, 35.035679, 44.864815>,  <32.621307, 34.843391, 45.188255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485611, 35.035679, 44.864815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371745, 0.721096, 0.584659,
		0.864131, 0.498931, -0.065919,
		-0.339239, 0.480717, -0.808597,
		32.383839, 35.179893, 44.622234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917786, 35.621002, 45.202736>,  <32.621307, 34.843391, 45.188255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917786, 35.621002, 45.202736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.597954, 35.639755, 44.963245>,  <32.406055, 35.651009, 44.819553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.597954, 35.639755, 44.963245>,  <32.917786, 35.621002, 45.202736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597954, 35.639755, 44.963245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340873, 0.785362, 0.516732,
		0.494441, 0.617259, -0.611980,
		-0.799583, 0.046886, -0.598722,
		32.358078, 35.653820, 44.783630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643688, 36.291695, 45.396893>,  <32.917786, 35.621002, 45.202736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643688, 36.291695, 45.396893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.346367, 36.176968, 45.155155>,  <32.167973, 36.108131, 45.010113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.346367, 36.176968, 45.155155>,  <32.643688, 36.291695, 45.396893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346367, 36.176968, 45.155155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567441, 0.748776, 0.342557,
		0.354271, 0.597556, -0.719318,
		-0.743305, -0.286813, -0.604348,
		32.123375, 36.090923, 44.973850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477612, 36.847588, 44.933418>,  <32.643688, 36.291695, 45.396893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477612, 36.847588, 44.933418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.149597, 36.619171, 44.948708>,  <31.952789, 36.482121, 44.957882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.149597, 36.619171, 44.948708>,  <32.477612, 36.847588, 44.933418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149597, 36.619171, 44.948708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475662, 0.717159, 0.509341,
		-0.318263, 0.399496, -0.859716,
		-0.820033, -0.571038, 0.038220,
		31.903587, 36.447861, 44.960175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802145, 37.305298, 44.835976>,  <32.477612, 36.847588, 44.933418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802145, 37.305298, 44.835976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.690639, 36.965954, 45.016014>,  <31.623737, 36.762348, 45.124035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.690639, 36.965954, 45.016014>,  <31.802145, 37.305298, 44.835976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690639, 36.965954, 45.016014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523530, 0.527148, 0.669352,
		-0.805114, -0.049047, -0.591089,
		-0.278762, -0.848357, 0.450092,
		31.607012, 36.711449, 45.151043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172508, 37.485748, 45.000477>,  <31.802145, 37.305298, 44.835976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172508, 37.485748, 45.000477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.289726, 37.194489, 45.248322>,  <31.360056, 37.019733, 45.397030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.289726, 37.194489, 45.248322>,  <31.172508, 37.485748, 45.000477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289726, 37.194489, 45.248322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275675, 0.556188, 0.784002,
		-0.915494, -0.400558, -0.037746,
		0.293044, -0.728154, 0.619610,
		31.377640, 36.976044, 45.434204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.600643, 37.423279, 45.447868>,  <31.172508, 37.485748, 45.000477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.600643, 37.423279, 45.447868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.902769, 37.263805, 45.655930>,  <31.084044, 37.168121, 45.780766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.902769, 37.263805, 45.655930>,  <30.600643, 37.423279, 45.447868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902769, 37.263805, 45.655930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336760, 0.444774, 0.829921,
		-0.562222, -0.802016, 0.201684,
		0.755313, -0.398681, 0.520149,
		31.129364, 37.144199, 45.811974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.362461, 37.130013, 46.061687>,  <30.600643, 37.423279, 45.447868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.362461, 37.130013, 46.061687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.744865, 37.143517, 46.178238>,  <30.974308, 37.151619, 46.248169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.744865, 37.143517, 46.178238>,  <30.362461, 37.130013, 46.061687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744865, 37.143517, 46.178238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267417, 0.508482, 0.818495,
		-0.120527, -0.860410, 0.495143,
		0.956013, 0.033759, 0.291375,
		31.031670, 37.153645, 46.265652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383301, 37.039715, 46.778072>,  <30.362461, 37.130013, 46.061687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383301, 37.039715, 46.778072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.738701, 37.205257, 46.698792>,  <30.951941, 37.304585, 46.651222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.738701, 37.205257, 46.698792>,  <30.383301, 37.039715, 46.778072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738701, 37.205257, 46.698792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111360, 0.613495, 0.781807,
		0.445155, -0.672566, 0.591179,
		0.888502, 0.413860, -0.198203,
		31.005251, 37.329414, 46.639332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.557543, 37.181149, 47.491173>,  <30.383301, 37.039715, 46.778072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.557543, 37.181149, 47.491173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.797430, 37.390762, 47.249271>,  <30.941362, 37.516529, 47.104130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.797430, 37.390762, 47.249271>,  <30.557543, 37.181149, 47.491173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797430, 37.390762, 47.249271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017207, 0.747125, 0.664461,
		0.800027, -0.408895, 0.439047,
		0.599718, 0.524032, -0.604755,
		30.977346, 37.547970, 47.067844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.072350, 37.331146, 47.867619>,  <30.557543, 37.181149, 47.491173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.072350, 37.331146, 47.867619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.114897, 37.619892, 47.594093>,  <31.140425, 37.793140, 47.429977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.114897, 37.619892, 47.594093>,  <31.072350, 37.331146, 47.867619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114897, 37.619892, 47.594093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216750, 0.654342, 0.724469,
		0.970415, -0.225277, -0.086862,
		0.106369, 0.721863, -0.683813,
		31.146807, 37.836452, 47.388950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786018, 37.714138, 48.035275>,  <31.072350, 37.331146, 47.867619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786018, 37.714138, 48.035275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.546314, 37.954155, 47.823296>,  <31.402493, 38.098164, 47.696110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.546314, 37.954155, 47.823296>,  <31.786018, 37.714138, 48.035275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546314, 37.954155, 47.823296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143715, 0.731852, 0.666137,
		0.787549, 0.323028, -0.524804,
		-0.599260, 0.600038, -0.529945,
		31.366537, 38.134167, 47.664310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020508, 38.338505, 48.074081>,  <31.786018, 37.714138, 48.035275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020508, 38.338505, 48.074081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.645721, 38.427166, 47.966034>,  <31.420849, 38.480362, 47.901203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.645721, 38.427166, 47.966034>,  <32.020508, 38.338505, 48.074081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645721, 38.427166, 47.966034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062024, 0.655281, 0.752834,
		0.343873, 0.722134, -0.600228,
		-0.936965, 0.221651, -0.270123,
		31.364632, 38.493660, 47.884998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938831, 39.083981, 48.080704>,  <32.020508, 38.338505, 48.074081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938831, 39.083981, 48.080704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.571291, 38.932728, 48.125828>,  <31.350767, 38.841976, 48.152901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.571291, 38.932728, 48.125828>,  <31.938831, 39.083981, 48.080704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.571291, 38.932728, 48.125828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167362, 0.632339, 0.756398,
		-0.357355, 0.676137, -0.644311,
		-0.918851, -0.378136, 0.112809,
		31.295635, 38.819286, 48.159672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277912, 39.757694, 48.218712>,  <31.938831, 39.083981, 48.080704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277912, 39.757694, 48.218712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.496582, 40.085014, 48.289749>,  <32.627785, 40.281406, 48.332371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.496582, 40.085014, 48.289749>,  <32.277912, 39.757694, 48.218712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496582, 40.085014, 48.289749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750810, -0.385129, -0.536620,
		-0.370720, 0.426691, -0.824925,
		0.546673, 0.818297, 0.177589,
		32.660583, 40.330505, 48.343025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522160, 39.994186, 47.559959>,  <32.277912, 39.757694, 48.218712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522160, 39.994186, 47.559959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.775505, 40.132408, 47.836926>,  <32.927513, 40.215343, 48.003105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.775505, 40.132408, 47.836926>,  <32.522160, 39.994186, 47.559959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775505, 40.132408, 47.836926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767000, -0.161521, -0.620984,
		-0.102747, 0.924392, -0.367346,
		0.633367, 0.345559, 0.692413,
		32.965515, 40.236076, 48.044651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092999, 40.247147, 47.216976>,  <32.522160, 39.994186, 47.559959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092999, 40.247147, 47.216976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.252720, 40.236607, 47.583553>,  <33.348553, 40.230282, 47.803497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.252720, 40.236607, 47.583553>,  <33.092999, 40.247147, 47.216976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252720, 40.236607, 47.583553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913498, -0.073568, -0.400137,
		0.077966, 0.996942, -0.005302,
		0.399303, -0.026354, 0.916440,
		33.372513, 40.228699, 47.858486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582085, 40.795582, 47.215748>,  <33.092999, 40.247147, 47.216976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582085, 40.795582, 47.215748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.668304, 40.517788, 47.490330>,  <33.720036, 40.351112, 47.655079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.668304, 40.517788, 47.490330>,  <33.582085, 40.795582, 47.215748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668304, 40.517788, 47.490330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948188, -0.019175, -0.317132,
		0.233407, 0.719249, 0.654372,
		0.215549, -0.694488, 0.686459,
		33.732967, 40.309441, 47.696266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265163, 40.997929, 47.336910>,  <33.582085, 40.795582, 47.215748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265163, 40.997929, 47.336910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.204185, 40.645432, 47.515869>,  <34.167599, 40.433933, 47.623245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.204185, 40.645432, 47.515869>,  <34.265163, 40.997929, 47.336910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204185, 40.645432, 47.515869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971749, -0.216182, -0.094710,
		0.180183, 0.420323, 0.889305,
		-0.152442, -0.881246, 0.447401,
		34.158451, 40.381058, 47.650089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821415, 40.847462, 47.869770>,  <34.265163, 40.997929, 47.336910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821415, 40.847462, 47.869770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.677505, 40.495060, 47.746872>,  <34.591160, 40.283619, 47.673134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.677505, 40.495060, 47.746872>,  <34.821415, 40.847462, 47.869770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677505, 40.495060, 47.746872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920897, -0.282325, -0.268777,
		0.150050, -0.379640, 0.912885,
		-0.359769, -0.881003, -0.307247,
		34.569576, 40.230759, 47.654697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408550, 40.407528, 48.081226>,  <34.821415, 40.847462, 47.869770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408550, 40.407528, 48.081226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.183167, 40.199493, 47.824467>,  <35.047935, 40.074673, 47.670410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.183167, 40.199493, 47.824467>,  <35.408550, 40.407528, 48.081226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183167, 40.199493, 47.824467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811768, -0.204216, -0.547110,
		0.153458, -0.829342, 0.537255,
		-0.563457, -0.520084, -0.641894,
		35.014130, 40.043468, 47.631897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696247, 39.818764, 48.016045>,  <35.408550, 40.407528, 48.081226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696247, 39.818764, 48.016045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.476185, 39.815899, 47.682034>,  <35.344147, 39.814178, 47.481625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.476185, 39.815899, 47.682034>,  <35.696247, 39.818764, 48.016045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476185, 39.815899, 47.682034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814679, -0.224188, -0.534825,
		-0.183371, -0.974520, 0.129177,
		-0.550157, -0.007167, -0.835031,
		35.311138, 39.813747, 47.431526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885120, 39.221245, 47.692265>,  <35.696247, 39.818764, 48.016045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885120, 39.221245, 47.692265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.724510, 39.461998, 47.416145>,  <35.628143, 39.606449, 47.250473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.724510, 39.461998, 47.416145>,  <35.885120, 39.221245, 47.692265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724510, 39.461998, 47.416145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806245, -0.125240, -0.578173,
		-0.434446, -0.788701, -0.434979,
		-0.401529, 0.601885, -0.690296,
		35.604050, 39.642563, 47.209057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975430, 38.865887, 47.107052>,  <35.885120, 39.221245, 47.692265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975430, 38.865887, 47.107052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.931068, 39.242661, 46.980263>,  <35.904453, 39.468723, 46.904190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.931068, 39.242661, 46.980263>,  <35.975430, 38.865887, 47.107052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931068, 39.242661, 46.980263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747764, -0.131000, -0.650913,
		-0.654638, -0.309203, -0.689814,
		-0.110899, 0.941930, -0.316968,
		35.897800, 39.525238, 46.885174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298908, 38.852859, 46.385326>,  <35.975430, 38.865887, 47.107052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298908, 38.852859, 46.385326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.287750, 39.227901, 46.523964>,  <36.281055, 39.452927, 46.607147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.287750, 39.227901, 46.523964>,  <36.298908, 38.852859, 46.385326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287750, 39.227901, 46.523964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881738, 0.186422, -0.433342,
		-0.470914, 0.293513, -0.831920,
		-0.027896, 0.937602, 0.346591,
		36.279381, 39.509182, 46.627941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366798, 39.303829, 45.769043>,  <36.298908, 38.852859, 46.385326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366798, 39.303829, 45.769043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.478405, 39.481506, 46.109596>,  <36.545368, 39.588112, 46.313927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.478405, 39.481506, 46.109596>,  <36.366798, 39.303829, 45.769043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478405, 39.481506, 46.109596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898696, 0.191622, -0.394495,
		-0.338374, 0.875201, -0.345726,
		0.279014, 0.444189, 0.851380,
		36.562111, 39.614761, 46.365009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.658020, 42.082558, 52.952908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.327982, 42.232792, 52.784073>,  <30.129959, 42.322933, 52.682774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.327982, 42.232792, 52.784073>,  <30.658020, 42.082558, 52.952908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327982, 42.232792, 52.784073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252367, -0.423399, -0.870083,
		-0.505500, -0.824421, 0.254559,
		-0.825095, 0.375585, -0.422085,
		30.080454, 42.345467, 52.657448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332241, 41.523724, 52.529408>,  <30.658020, 42.082558, 52.952908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332241, 41.523724, 52.529408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.199486, 41.870598, 52.380901>,  <30.119833, 42.078724, 52.291798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.199486, 41.870598, 52.380901>,  <30.332241, 41.523724, 52.529408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199486, 41.870598, 52.380901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263812, -0.292540, -0.919143,
		-0.905679, -0.402995, -0.131685,
		-0.331887, 0.867188, -0.371262,
		30.099920, 42.130753, 52.269524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155975, 41.309093, 51.888355>,  <30.332241, 41.523724, 52.529408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155975, 41.309093, 51.888355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.123589, 41.705669, 51.847378>,  <30.104156, 41.943615, 51.822792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.123589, 41.705669, 51.847378>,  <30.155975, 41.309093, 51.888355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123589, 41.705669, 51.847378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260933, -0.078113, -0.962191,
		-0.961956, -0.104635, -0.252374,
		-0.080965, 0.991438, -0.102443,
		30.099298, 42.003101, 51.816647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.893635, 41.333973, 51.287952>,  <30.155975, 41.309093, 51.888355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.893635, 41.333973, 51.287952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.070841, 41.685825, 51.357224>,  <30.177164, 41.896935, 51.398788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.070841, 41.685825, 51.357224>,  <29.893635, 41.333973, 51.287952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070841, 41.685825, 51.357224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423745, -0.035220, -0.905096,
		-0.790049, 0.474357, -0.388341,
		0.443016, 0.879628, 0.173181,
		30.203745, 41.949715, 51.409180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712057, 41.811897, 50.777832>,  <29.893635, 41.333973, 51.287952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.712057, 41.811897, 50.777832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.043318, 41.982994, 50.922718>,  <30.242075, 42.085651, 51.009651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.043318, 41.982994, 50.922718>,  <29.712057, 41.811897, 50.777832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.043318, 41.982994, 50.922718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447447, -0.115308, -0.886845,
		-0.337571, 0.896518, -0.286883,
		0.828153, 0.427739, 0.362220,
		30.291763, 42.111317, 51.031384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914438, 42.431961, 50.359158>,  <29.712057, 41.811897, 50.777832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914438, 42.431961, 50.359158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.264706, 42.337177, 50.527470>,  <30.474865, 42.280308, 50.628456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.264706, 42.337177, 50.527470>,  <29.914438, 42.431961, 50.359158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.264706, 42.337177, 50.527470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412721, -0.085187, -0.906865,
		0.250735, 0.967778, 0.023202,
		0.875667, -0.236959, 0.420782,
		30.527407, 42.266090, 50.653706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383125, 42.477386, 49.770184>,  <29.914438, 42.431961, 50.359158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383125, 42.477386, 49.770184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.631561, 42.339706, 50.051830>,  <30.780622, 42.257099, 50.220818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.631561, 42.339706, 50.051830>,  <30.383125, 42.477386, 49.770184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.631561, 42.339706, 50.051830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648223, -0.279363, -0.708353,
		0.440516, 0.896373, 0.049607,
		0.621090, -0.344198, 0.704113,
		30.817888, 42.236446, 50.263065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041893, 42.729004, 49.630669>,  <30.383125, 42.477386, 49.770184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041893, 42.729004, 49.630669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.105217, 42.394592, 49.840813>,  <31.143211, 42.193947, 49.966900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.105217, 42.394592, 49.840813>,  <31.041893, 42.729004, 49.630669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105217, 42.394592, 49.840813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704415, -0.277215, -0.653415,
		0.691908, 0.473512, 0.545023,
		0.158311, -0.836025, 0.525357,
		31.152710, 42.143784, 49.998421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807037, 42.622314, 49.795135>,  <31.041893, 42.729004, 49.630669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807037, 42.622314, 49.795135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.609566, 42.274731, 49.781296>,  <31.491083, 42.066181, 49.772991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.609566, 42.274731, 49.781296>,  <31.807037, 42.622314, 49.795135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609566, 42.274731, 49.781296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644018, -0.338572, -0.686010,
		0.584399, -0.360950, 0.726769,
		-0.493679, -0.868956, -0.034597,
		31.461462, 42.014046, 49.770916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288269, 42.170242, 49.591354>,  <31.807037, 42.622314, 49.795135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288269, 42.170242, 49.591354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.975285, 41.925098, 49.547253>,  <31.787493, 41.778011, 49.520790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.975285, 41.925098, 49.547253>,  <32.288269, 42.170242, 49.591354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975285, 41.925098, 49.547253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527863, -0.558897, -0.639527,
		0.330318, -0.558607, 0.760821,
		-0.782465, -0.612857, -0.110254,
		31.740545, 41.741241, 49.514175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543037, 41.490997, 49.818096>,  <32.288269, 42.170242, 49.591354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543037, 41.490997, 49.818096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.223408, 41.438374, 49.583435>,  <32.031628, 41.406799, 49.442638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.223408, 41.438374, 49.583435>,  <32.543037, 41.490997, 49.818096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223408, 41.438374, 49.583435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450107, -0.777808, -0.438656,
		-0.398593, -0.614578, 0.680748,
		-0.799079, -0.131564, -0.586655,
		31.983685, 41.398903, 49.407440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434082, 40.822201, 49.820282>,  <32.543037, 41.490997, 49.818096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434082, 40.822201, 49.820282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.230068, 40.913708, 49.488613>,  <32.107658, 40.968613, 49.289612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.230068, 40.913708, 49.488613>,  <32.434082, 40.822201, 49.820282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230068, 40.913708, 49.488613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522821, -0.683026, -0.510034,
		-0.683026, -0.693645, 0.228764,
		0.510034, -0.228764, 0.829176,
		32.077057, 40.982338, 49.239861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385525, 40.212688, 49.413670>,  <32.434082, 40.822201, 49.820282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385525, 40.212688, 49.413670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.292248, 40.505264, 49.157352>,  <32.236282, 40.680809, 49.003563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.292248, 40.505264, 49.157352>,  <32.385525, 40.212688, 49.413670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292248, 40.505264, 49.157352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412124, -0.522516, -0.746412,
		-0.880781, -0.438142, -0.179599,
		-0.233192, 0.731443, -0.640791,
		32.222290, 40.724697, 48.965115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081600, 39.924984, 48.904064>,  <32.385525, 40.212688, 49.413670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081600, 39.924984, 48.904064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.253319, 40.256943, 48.761532>,  <32.356350, 40.456120, 48.676014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.253319, 40.256943, 48.761532>,  <32.081600, 39.924984, 48.904064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253319, 40.256943, 48.761532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574885, -0.555378, -0.600884,
		-0.696569, 0.053112, -0.715521,
		0.429298, 0.829900, -0.356326,
		32.382107, 40.505913, 48.654633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545179, 39.677490, 48.519238>,  <32.081600, 39.924984, 48.904064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545179, 39.677490, 48.519238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.292995, 39.367416, 48.535309>,  <31.141685, 39.181374, 48.544952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.292995, 39.367416, 48.535309>,  <31.545179, 39.677490, 48.519238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.292995, 39.367416, 48.535309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426142, 0.388915, 0.816791,
		-0.648785, 0.497835, -0.575533,
		-0.630461, -0.775180, 0.040174,
		31.103857, 39.134861, 48.547359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980812, 39.965668, 48.699184>,  <31.545179, 39.677490, 48.519238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980812, 39.965668, 48.699184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.893835, 39.583496, 48.779057>,  <30.841648, 39.354195, 48.826981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.893835, 39.583496, 48.779057>,  <30.980812, 39.965668, 48.699184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893835, 39.583496, 48.779057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480723, 0.282870, 0.829994,
		-0.849485, 0.084486, -0.520805,
		-0.217443, -0.955430, 0.199679,
		30.828602, 39.296867, 48.838959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.238289, 39.854023, 48.782425>,  <30.980812, 39.965668, 48.699184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.238289, 39.854023, 48.782425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.412880, 39.552948, 48.979588>,  <30.517635, 39.372303, 49.097885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.412880, 39.552948, 48.979588>,  <30.238289, 39.854023, 48.782425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412880, 39.552948, 48.979588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582944, 0.180708, 0.792162,
		-0.685320, -0.633096, -0.359898,
		0.436478, -0.752685, 0.492902,
		30.543823, 39.327141, 49.127457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714176, 39.539703, 49.016537>,  <30.238289, 39.854023, 48.782425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714176, 39.539703, 49.016537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.994087, 39.363037, 49.241123>,  <30.162033, 39.257038, 49.375874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.994087, 39.363037, 49.241123>,  <29.714176, 39.539703, 49.016537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.994087, 39.363037, 49.241123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635933, -0.027098, 0.771269,
		-0.325429, -0.896770, -0.299832,
		0.699775, -0.441666, 0.561467,
		30.204020, 39.230537, 49.409565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454947, 38.932304, 49.334747>,  <29.714176, 39.539703, 49.016537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454947, 38.932304, 49.334747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.760597, 39.032455, 49.572544>,  <29.943987, 39.092545, 49.715221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.760597, 39.032455, 49.572544>,  <29.454947, 38.932304, 49.334747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760597, 39.032455, 49.572544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597548, -0.072421, 0.798556,
		0.242995, -0.965436, 0.094274,
		0.764127, 0.250378, 0.594492,
		29.989836, 39.107567, 49.750893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486368, 38.435570, 49.810322>,  <29.454947, 38.932304, 49.334747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486368, 38.435570, 49.810322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.646816, 38.764374, 49.972012>,  <29.743086, 38.961658, 50.069023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.646816, 38.764374, 49.972012>,  <29.486368, 38.435570, 49.810322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646816, 38.764374, 49.972012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699336, -0.010205, 0.714720,
		0.591635, -0.569375, 0.570771,
		0.401120, 0.822014, 0.404222,
		29.767153, 39.010979, 50.093277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571033, 38.296219, 50.500156>,  <29.486368, 38.435570, 49.810322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.571033, 38.296219, 50.500156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.547884, 38.693443, 50.459190>,  <29.533995, 38.931778, 50.434612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.547884, 38.693443, 50.459190>,  <29.571033, 38.296219, 50.500156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.547884, 38.693443, 50.459190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705155, 0.031955, 0.708333,
		0.706687, 0.113214, 0.698409,
		-0.057875, 0.993057, -0.102416,
		29.530521, 38.991360, 50.428467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592247, 38.486660, 51.209957>,  <29.571033, 38.296219, 50.500156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592247, 38.486660, 51.209957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.493359, 38.825199, 51.021248>,  <29.434025, 39.028324, 50.908020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.493359, 38.825199, 51.021248>,  <29.592247, 38.486660, 51.209957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.493359, 38.825199, 51.021248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749181, 0.141818, 0.647005,
		0.614499, 0.513401, 0.599008,
		-0.247223, 0.846349, -0.471777,
		29.419191, 39.079105, 50.879715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449133, 39.011234, 51.680874>,  <29.592247, 38.486660, 51.209957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449133, 39.011234, 51.680874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.242191, 39.143803, 51.365276>,  <29.118027, 39.223343, 51.175919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.242191, 39.143803, 51.365276>,  <29.449133, 39.011234, 51.680874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.242191, 39.143803, 51.365276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830159, 0.029512, 0.556745,
		0.207801, 0.943022, 0.259863,
		-0.517354, 0.331420, -0.788991,
		29.086985, 39.243229, 51.128578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032825, 39.630249, 51.805904>,  <29.449133, 39.011234, 51.680874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.032825, 39.630249, 51.805904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.844370, 39.477711, 51.487759>,  <28.731297, 39.386189, 51.296871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.844370, 39.477711, 51.487759>,  <29.032825, 39.630249, 51.805904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844370, 39.477711, 51.487759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881962, 0.216970, 0.418410,
		0.013009, 0.898608, -0.438559,
		-0.471141, -0.381349, -0.795361,
		28.703028, 39.363308, 51.249149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.451021, 40.022591, 51.816738>,  <29.032825, 39.630249, 51.805904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.451021, 40.022591, 51.816738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.365091, 39.718014, 51.572094>,  <28.313534, 39.535267, 51.425308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.365091, 39.718014, 51.572094>,  <28.451021, 40.022591, 51.816738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.365091, 39.718014, 51.572094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937766, -0.014131, 0.346980,
		-0.272846, 0.648083, -0.711016,
		-0.214824, -0.761439, -0.611606,
		28.300644, 39.489582, 51.388611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820093, 40.255173, 51.339642>,  <28.451021, 40.022591, 51.816738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820093, 40.255173, 51.339642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.823376, 39.855354, 51.351212>,  <27.825346, 39.615463, 51.358154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.823376, 39.855354, 51.351212>,  <27.820093, 40.255173, 51.339642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.823376, 39.855354, 51.351212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946672, 0.001551, 0.322194,
		-0.322093, -0.030029, -0.946232,
		0.008208, -0.999548, 0.028927,
		27.825838, 39.555489, 51.359890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.180504, 40.066910, 51.013355>,  <27.820093, 40.255173, 51.339642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.180504, 40.066910, 51.013355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.295376, 39.749104, 51.227371>,  <27.364298, 39.558418, 51.355782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.295376, 39.749104, 51.227371>,  <27.180504, 40.066910, 51.013355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.295376, 39.749104, 51.227371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921170, -0.075927, 0.381681,
		-0.262629, -0.602472, -0.753693,
		0.287178, -0.794520, 0.535039,
		27.381529, 39.510746, 51.387882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.613003, 39.616516, 51.001873>,  <27.180504, 40.066910, 51.013355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.613003, 39.616516, 51.001873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.809359, 39.526913, 51.338646>,  <26.927172, 39.473152, 51.540710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.809359, 39.526913, 51.338646>,  <26.613003, 39.616516, 51.001873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.809359, 39.526913, 51.338646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868828, -0.054283, 0.492129,
		-0.064555, -0.973067, -0.221299,
		0.490888, -0.224040, 0.841924,
		26.956625, 39.459709, 51.591225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.167732, 36.366638, 56.992050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.108662, 36.610435, 56.680485>,  <33.073219, 36.756714, 56.493546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.108662, 36.610435, 56.680485>,  <33.167732, 36.366638, 56.992050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108662, 36.610435, 56.680485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451633, -0.659087, -0.601357,
		-0.879897, -0.440592, -0.177934,
		-0.147679, 0.609493, -0.778915,
		33.064358, 36.793282, 56.446812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842213, 36.066143, 56.506905>,  <33.167732, 36.366638, 56.992050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842213, 36.066143, 56.506905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.986523, 36.354343, 56.270020>,  <33.073109, 36.527264, 56.127888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.986523, 36.354343, 56.270020>,  <32.842213, 36.066143, 56.506905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986523, 36.354343, 56.270020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148638, -0.671283, -0.726145,
		-0.920733, 0.173949, -0.349275,
		0.360774, 0.720501, -0.592217,
		33.094753, 36.570496, 56.092354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589951, 35.843487, 55.972218>,  <32.842213, 36.066143, 56.506905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589951, 35.843487, 55.972218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.874352, 36.102608, 55.862797>,  <33.044991, 36.258080, 55.797146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.874352, 36.102608, 55.862797>,  <32.589951, 35.843487, 55.972218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874352, 36.102608, 55.862797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242516, -0.591037, -0.769325,
		-0.660051, 0.480649, -0.577329,
		0.710998, 0.647806, -0.273550,
		33.087650, 36.296951, 55.780731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430317, 36.065266, 55.234306>,  <32.589951, 35.843487, 55.972218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430317, 36.065266, 55.234306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.814255, 36.159985, 55.294464>,  <33.044617, 36.216816, 55.330559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.814255, 36.159985, 55.294464>,  <32.430317, 36.065266, 55.234306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814255, 36.159985, 55.294464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265272, -0.591872, -0.761129,
		-0.091216, 0.770465, -0.630923,
		0.959849, 0.236793, 0.150395,
		33.102211, 36.231022, 55.339584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698322, 36.264099, 54.625084>,  <32.430317, 36.065266, 55.234306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698322, 36.264099, 54.625084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.010891, 36.151764, 54.847977>,  <33.198433, 36.084362, 54.981712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.010891, 36.151764, 54.847977>,  <32.698322, 36.264099, 54.625084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010891, 36.151764, 54.847977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466952, -0.329186, -0.820726,
		0.413926, 0.901535, -0.126095,
		0.781422, -0.280840, 0.557233,
		33.245319, 36.067513, 55.015148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218464, 36.509346, 54.236359>,  <32.698322, 36.264099, 54.625084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218464, 36.509346, 54.236359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.382622, 36.229687, 54.470543>,  <33.481117, 36.061890, 54.611053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.382622, 36.229687, 54.470543>,  <33.218464, 36.509346, 54.236359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382622, 36.229687, 54.470543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554447, -0.318411, -0.768897,
		0.723989, 0.640163, 0.256965,
		0.410399, -0.699147, 0.585462,
		33.505741, 36.019943, 54.646183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902668, 36.500072, 54.062366>,  <33.218464, 36.509346, 54.236359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902668, 36.500072, 54.062366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.851353, 36.138584, 54.225750>,  <33.820564, 35.921692, 54.323780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.851353, 36.138584, 54.225750>,  <33.902668, 36.500072, 54.062366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851353, 36.138584, 54.225750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720598, -0.367916, -0.587688,
		0.681381, 0.218936, 0.698417,
		-0.128293, -0.903717, 0.408456,
		33.812866, 35.867470, 54.348286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524868, 36.312813, 54.011349>,  <33.902668, 36.500072, 54.062366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524868, 36.312813, 54.011349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.308838, 35.980099, 54.062641>,  <34.179218, 35.780468, 54.093418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.308838, 35.980099, 54.062641>,  <34.524868, 36.312813, 54.011349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308838, 35.980099, 54.062641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548792, -0.463574, -0.695648,
		0.638080, -0.305328, 0.706844,
		-0.540076, -0.831789, 0.128236,
		34.146816, 35.730560, 54.101112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942307, 35.709305, 54.204617>,  <34.524868, 36.312813, 54.011349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942307, 35.709305, 54.204617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.614162, 35.554920, 54.035835>,  <34.417278, 35.462288, 53.934566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.614162, 35.554920, 54.035835>,  <34.942307, 35.709305, 54.204617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614162, 35.554920, 54.035835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563107, -0.416685, -0.713642,
		0.099617, -0.823047, 0.559169,
		-0.820358, -0.385963, -0.421954,
		34.368053, 35.439133, 53.909248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077614, 34.982632, 54.053890>,  <34.942307, 35.709305, 54.204617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077614, 34.982632, 54.053890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.754105, 35.059196, 53.831451>,  <34.559998, 35.105137, 53.697987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.754105, 35.059196, 53.831451>,  <35.077614, 34.982632, 54.053890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754105, 35.059196, 53.831451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424941, -0.463487, -0.777564,
		-0.406583, -0.865182, 0.293515,
		-0.808774, 0.191418, -0.556096,
		34.511471, 35.116623, 53.664623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006550, 34.428146, 53.645424>,  <35.077614, 34.982632, 54.053890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006550, 34.428146, 53.645424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.792362, 34.702000, 53.447613>,  <34.663849, 34.866310, 53.328926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.792362, 34.702000, 53.447613>,  <35.006550, 34.428146, 53.645424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792362, 34.702000, 53.447613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303537, -0.390416, -0.869161,
		-0.788125, -0.615514, 0.001245,
		-0.535467, 0.684629, -0.494528,
		34.631721, 34.907387, 53.299255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738735, 34.110699, 53.108871>,  <35.006550, 34.428146, 53.645424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738735, 34.110699, 53.108871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.747337, 34.495609, 53.000378>,  <34.752499, 34.726555, 52.935280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.747337, 34.495609, 53.000378>,  <34.738735, 34.110699, 53.108871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747337, 34.495609, 53.000378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250845, -0.267814, -0.930243,
		-0.967788, -0.048034, -0.247140,
		0.021505, 0.962273, -0.271237,
		34.753788, 34.784290, 52.919006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338978, 34.156506, 52.491810>,  <34.738735, 34.110699, 53.108871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338978, 34.156506, 52.491810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.582222, 34.473988, 52.498081>,  <34.728168, 34.664474, 52.501842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.582222, 34.473988, 52.498081>,  <34.338978, 34.156506, 52.491810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582222, 34.473988, 52.498081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343471, -0.245252, -0.906576,
		-0.715705, 0.556679, -0.421752,
		0.608107, 0.793700, 0.015675,
		34.764652, 34.712097, 52.502785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344757, 34.359390, 51.811268>,  <34.338978, 34.156506, 52.491810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344757, 34.359390, 51.811268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.676884, 34.531315, 51.953159>,  <34.876160, 34.634468, 52.038296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.676884, 34.531315, 51.953159>,  <34.344757, 34.359390, 51.811268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676884, 34.531315, 51.953159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527098, -0.399040, -0.750290,
		-0.180932, 0.809957, -0.557883,
		0.830320, 0.429810, 0.354727,
		34.925980, 34.660259, 52.059578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907253, 33.825420, 51.822762>,  <34.344757, 34.359390, 51.811268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907253, 33.825420, 51.822762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.642292, 33.670429, 51.566296>,  <33.483315, 33.577435, 51.412415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.642292, 33.670429, 51.566296>,  <33.907253, 33.825420, 51.822762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642292, 33.670429, 51.566296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748719, 0.371473, 0.549024,
		0.025443, 0.843725, -0.536172,
		-0.662399, -0.387473, -0.641165,
		33.443573, 33.554188, 51.373947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484447, 34.320396, 51.770832>,  <33.907253, 33.825420, 51.822762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484447, 34.320396, 51.770832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.272774, 33.996964, 51.667953>,  <33.145767, 33.802902, 51.606224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.272774, 33.996964, 51.667953>,  <33.484447, 34.320396, 51.770832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272774, 33.996964, 51.667953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772527, 0.333762, 0.540189,
		-0.350945, 0.484556, -0.801276,
		-0.529187, -0.808584, -0.257201,
		33.114017, 33.754387, 51.590794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822330, 34.544704, 51.329792>,  <33.484447, 34.320396, 51.770832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822330, 34.544704, 51.329792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.781075, 34.203716, 51.534794>,  <32.756321, 33.999123, 51.657795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.781075, 34.203716, 51.534794>,  <32.822330, 34.544704, 51.329792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781075, 34.203716, 51.534794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799716, 0.377453, 0.466887,
		-0.591453, -0.361706, -0.720661,
		-0.103140, -0.852466, 0.512507,
		32.750134, 33.947975, 51.688545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101425, 34.498493, 51.290279>,  <32.822330, 34.544704, 51.329792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101425, 34.498493, 51.290279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.226959, 34.239120, 51.567707>,  <32.302280, 34.083496, 51.734165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.226959, 34.239120, 51.567707>,  <32.101425, 34.498493, 51.290279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226959, 34.239120, 51.567707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753330, 0.274575, 0.597581,
		-0.577928, -0.710032, -0.402311,
		0.313837, -0.648431, 0.693573,
		32.321110, 34.044590, 51.775780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543114, 34.224003, 51.502518>,  <32.101425, 34.498493, 51.290279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543114, 34.224003, 51.502518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.804949, 34.174007, 51.800751>,  <31.962049, 34.144012, 51.979691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.804949, 34.174007, 51.800751>,  <31.543114, 34.224003, 51.502518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804949, 34.174007, 51.800751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718526, 0.203736, 0.664990,
		-0.235015, -0.971015, 0.043559,
		0.654589, -0.124984, 0.745581,
		32.001328, 34.136513, 52.024426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153732, 33.892384, 52.032040>,  <31.543114, 34.224003, 51.502518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153732, 33.892384, 52.032040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.483198, 34.004875, 52.229012>,  <31.680878, 34.072369, 52.347195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.483198, 34.004875, 52.229012>,  <31.153732, 33.892384, 52.032040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483198, 34.004875, 52.229012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546373, 0.161054, 0.821911,
		0.151824, -0.946034, 0.286303,
		0.823666, 0.281214, 0.492435,
		31.730297, 34.089245, 52.376740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038754, 33.604816, 52.683865>,  <31.153732, 33.892384, 52.032040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038754, 33.604816, 52.683865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.331182, 33.871521, 52.741772>,  <31.506639, 34.031544, 52.776516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.331182, 33.871521, 52.741772>,  <31.038754, 33.604816, 52.683865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331182, 33.871521, 52.741772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504234, 0.385036, 0.772978,
		0.459653, -0.638100, 0.617695,
		0.731072, 0.666765, 0.144769,
		31.550505, 34.071548, 52.785202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217325, 33.554531, 53.386723>,  <31.038754, 33.604816, 52.683865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217325, 33.554531, 53.386723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.334644, 33.917557, 53.266518>,  <31.405035, 34.135372, 53.194393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.334644, 33.917557, 53.266518>,  <31.217325, 33.554531, 53.386723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334644, 33.917557, 53.266518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473731, 0.410998, 0.778883,
		0.830395, -0.086082, 0.550485,
		0.293296, 0.907563, -0.300511,
		31.422634, 34.189827, 53.176365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390013, 33.979652, 53.923363>,  <31.217325, 33.554531, 53.386723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390013, 33.979652, 53.923363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.328785, 34.251953, 53.636826>,  <31.292048, 34.415333, 53.464905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.328785, 34.251953, 53.636826>,  <31.390013, 33.979652, 53.923363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328785, 34.251953, 53.636826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526771, 0.557103, 0.641988,
		0.836112, 0.475617, 0.273324,
		-0.153071, 0.680753, -0.716342,
		31.282864, 34.456181, 53.421925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513176, 34.616756, 54.182781>,  <31.390013, 33.979652, 53.923363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513176, 34.616756, 54.182781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.251429, 34.687996, 53.888821>,  <31.094381, 34.730740, 53.712444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.251429, 34.687996, 53.888821>,  <31.513176, 34.616756, 54.182781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251429, 34.687996, 53.888821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581851, 0.502131, 0.639777,
		0.482963, 0.846254, -0.224949,
		-0.654367, 0.178101, -0.734904,
		31.055119, 34.741425, 53.668350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409691, 35.408504, 54.047737>,  <31.513176, 34.616756, 54.182781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409691, 35.408504, 54.047737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.113148, 35.142838, 54.009228>,  <30.935223, 34.983437, 53.986122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.113148, 35.142838, 54.009228>,  <31.409691, 35.408504, 54.047737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113148, 35.142838, 54.009228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561149, 0.534796, 0.631748,
		-0.368103, 0.522373, -0.769173,
		-0.741358, -0.664169, -0.096269,
		30.890739, 34.943588, 53.980347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839046, 35.817059, 53.858757>,  <31.409691, 35.408504, 54.047737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839046, 35.817059, 53.858757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.711040, 35.475342, 54.022598>,  <30.634237, 35.270313, 54.120903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.711040, 35.475342, 54.022598>,  <30.839046, 35.817059, 53.858757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711040, 35.475342, 54.022598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600788, 0.517281, 0.609487,
		-0.732559, -0.051038, -0.678787,
		-0.320016, -0.854293, 0.409602,
		30.615036, 35.219055, 54.145477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.086323, 35.764885, 53.780922>,  <30.839046, 35.817059, 53.858757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.086323, 35.764885, 53.780922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.200617, 35.550869, 54.098938>,  <30.269194, 35.422459, 54.289749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.200617, 35.550869, 54.098938>,  <30.086323, 35.764885, 53.780922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200617, 35.550869, 54.098938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631657, 0.518748, 0.576116,
		-0.720670, -0.666809, -0.189737,
		0.285733, -0.535038, 0.795041,
		30.286337, 35.390358, 54.337452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472677, 35.613438, 54.067589>,  <30.086323, 35.764885, 53.780922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472677, 35.613438, 54.067589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.733467, 35.515747, 54.354721>,  <29.889940, 35.457134, 54.527000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.733467, 35.515747, 54.354721>,  <29.472677, 35.613438, 54.067589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733467, 35.515747, 54.354721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444331, 0.644067, 0.622694,
		-0.614409, -0.724936, 0.311399,
		0.651975, -0.244224, 0.717832,
		29.929060, 35.442478, 54.570072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756491, 35.168278, 54.368595>,  <29.472677, 35.613438, 54.067589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756491, 35.168278, 54.368595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.456917, 35.244957, 54.114872>,  <28.277172, 35.290966, 53.962639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.456917, 35.244957, 54.114872>,  <28.756491, 35.168278, 54.368595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.456917, 35.244957, 54.114872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444440, -0.564684, -0.695417,
		-0.491494, -0.802735, 0.337714,
		-0.748937, 0.191700, -0.634306,
		28.232235, 35.302467, 53.924580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.479099, 34.517536, 54.111259>,  <28.756491, 35.168278, 54.368595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.479099, 34.517536, 54.111259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.406303, 34.813332, 53.852016>,  <28.362627, 34.990810, 53.696472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.406303, 34.813332, 53.852016>,  <28.479099, 34.517536, 54.111259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.406303, 34.813332, 53.852016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430450, -0.532688, -0.728668,
		-0.884078, -0.411584, -0.221370,
		-0.181987, 0.739488, -0.648104,
		28.351707, 35.035179, 53.657585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.059763, 34.126923, 53.576553>,  <28.479099, 34.517536, 54.111259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.059763, 34.126923, 53.576553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.138363, 34.490097, 53.428478>,  <28.185522, 34.708000, 53.339634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.138363, 34.490097, 53.428478>,  <28.059763, 34.126923, 53.576553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.138363, 34.490097, 53.428478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150483, -0.401003, -0.903633,
		-0.968887, 0.121857, -0.215425,
		0.196500, 0.907936, -0.370189,
		28.197313, 34.762478, 53.317421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.961775, 33.996937, 52.893867>,  <28.059763, 34.126923, 53.576553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.961775, 33.996937, 52.893867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.131676, 34.354332, 52.835533>,  <28.233616, 34.568768, 52.800533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.131676, 34.354332, 52.835533>,  <27.961775, 33.996937, 52.893867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.131676, 34.354332, 52.835533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367818, -0.317511, -0.874012,
		-0.827220, 0.317601, -0.463504,
		0.424754, 0.893486, -0.145832,
		28.259102, 34.622379, 52.791782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.790064, 34.203884, 52.179096>,  <27.961775, 33.996937, 52.893867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.790064, 34.203884, 52.179096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.135241, 34.370922, 52.292900>,  <28.342346, 34.471146, 52.361183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.135241, 34.370922, 52.292900>,  <27.790064, 34.203884, 52.179096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.135241, 34.370922, 52.292900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442554, -0.352845, -0.824406,
		-0.243885, 0.837324, -0.489295,
		0.862940, 0.417600, 0.284508,
		28.394123, 34.496201, 52.378254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.115339, 34.557648, 51.551884>,  <27.790064, 34.203884, 52.179096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.115339, 34.557648, 51.551884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.410378, 34.504475, 51.816696>,  <28.587400, 34.472572, 51.975582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.410378, 34.504475, 51.816696>,  <28.115339, 34.557648, 51.551884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.410378, 34.504475, 51.816696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571794, -0.398546, -0.717086,
		0.359172, 0.907464, -0.217956,
		0.737595, -0.132932, 0.662029,
		28.631657, 34.464596, 52.015305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.644894, 34.821735, 51.256798>,  <28.115339, 34.557648, 51.551884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.644894, 34.821735, 51.256798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.790613, 34.581303, 51.541328>,  <28.878044, 34.437042, 51.712048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.790613, 34.581303, 51.541328>,  <28.644894, 34.821735, 51.256798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.790613, 34.581303, 51.541328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531546, -0.492973, -0.688794,
		0.764688, 0.629028, 0.139915,
		0.364297, -0.601083, 0.711328,
		28.899902, 34.400978, 51.754726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.445004, 34.913078, 51.294807>,  <28.644894, 34.821735, 51.256798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.445004, 34.913078, 51.294807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.383310, 34.555996, 51.464172>,  <29.346294, 34.341743, 51.565792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.383310, 34.555996, 51.464172>,  <29.445004, 34.913078, 51.294807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.383310, 34.555996, 51.464172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398585, -0.448341, -0.800075,
		0.904070, 0.045368, 0.424971,
		-0.154234, -0.892711, 0.423414,
		29.337040, 34.288181, 51.591198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079405, 34.580677, 51.201340>,  <29.445004, 34.913078, 51.294807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079405, 34.580677, 51.201340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.797888, 34.303745, 51.265034>,  <29.628977, 34.137589, 51.303249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.797888, 34.303745, 51.265034>,  <30.079405, 34.580677, 51.201340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.797888, 34.303745, 51.265034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246104, -0.447878, -0.859557,
		0.666413, -0.565763, 0.485598,
		-0.703794, -0.692327, 0.159235,
		29.586750, 34.096046, 51.312805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404129, 33.925484, 51.062729>,  <30.079405, 34.580677, 51.201340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404129, 33.925484, 51.062729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.022415, 33.806202, 51.070885>,  <29.793386, 33.734634, 51.075779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.022415, 33.806202, 51.070885>,  <30.404129, 33.925484, 51.062729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022415, 33.806202, 51.070885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185549, -0.644504, -0.741745,
		0.234336, -0.704051, 0.670372,
		-0.954284, -0.298204, 0.020394,
		29.736130, 33.716740, 51.077003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.457687, 33.225239, 51.108101>,  <30.404129, 33.925484, 51.062729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.457687, 33.225239, 51.108101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.113983, 33.323380, 50.928558>,  <29.907761, 33.382263, 50.820831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.113983, 33.323380, 50.928558>,  <30.457687, 33.225239, 51.108101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113983, 33.323380, 50.928558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223811, -0.608703, -0.761176,
		-0.459975, -0.754509, 0.468123,
		-0.859262, 0.245351, -0.448856,
		29.856205, 33.396984, 50.793903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.087109, 32.658298, 50.909359>,  <30.457687, 33.225239, 51.108101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.087109, 32.658298, 50.909359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.924442, 32.931225, 50.666355>,  <29.826841, 33.094978, 50.520554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.924442, 32.931225, 50.666355>,  <30.087109, 32.658298, 50.909359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.924442, 32.931225, 50.666355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275037, -0.542692, -0.793625,
		-0.871192, -0.489829, 0.033034,
		-0.406668, 0.682314, -0.607510,
		29.802443, 33.135918, 50.484100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.806156, 32.359283, 50.364067>,  <30.087109, 32.658298, 50.909359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.806156, 32.359283, 50.364067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.787876, 32.729599, 50.213955>,  <29.776909, 32.951786, 50.123886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.787876, 32.729599, 50.213955>,  <29.806156, 32.359283, 50.364067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787876, 32.729599, 50.213955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211994, -0.358128, -0.909287,
		-0.976202, -0.121110, -0.179895,
		-0.045699, 0.925784, -0.375280,
		29.774166, 33.007336, 50.101372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474285, 32.334648, 49.752960>,  <29.806156, 32.359283, 50.364067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.474285, 32.334648, 49.752960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.716059, 32.651276, 49.717014>,  <29.861122, 32.841251, 49.695446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.716059, 32.651276, 49.717014>,  <29.474285, 32.334648, 49.752960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716059, 32.651276, 49.717014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234532, -0.284606, -0.929513,
		-0.761350, 0.540754, -0.357675,
		0.604434, 0.791571, -0.089860,
		29.897388, 32.888748, 49.690056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<25.927052, 38.589516, 52.331497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.299999, 38.732224, 52.354832>,  <26.523767, 38.817848, 52.368832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.299999, 38.732224, 52.354832>,  <25.927052, 38.589516, 52.331497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.299999, 38.732224, 52.354832> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252585, 0.527454, 0.811168,
		0.258626, -0.771044, 0.581896,
		0.932369, 0.356767, 0.058341,
		26.579710, 38.839252, 52.372334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.309584, 38.432671, 52.974220>,  <25.927052, 38.589516, 52.331497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.309584, 38.432671, 52.974220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.468210, 38.777077, 52.846859>,  <26.563387, 38.983723, 52.770443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.468210, 38.777077, 52.846859>,  <26.309584, 38.432671, 52.974220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.468210, 38.777077, 52.846859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103891, 0.386706, 0.916332,
		0.912108, -0.330307, 0.242807,
		0.396566, 0.861020, -0.318402,
		26.587181, 39.035381, 52.751339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.817493, 38.671844, 53.432331>,  <26.309584, 38.432671, 52.974220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.817493, 38.671844, 53.432331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.720177, 38.992970, 53.214596>,  <26.661787, 39.185642, 53.083954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.720177, 38.992970, 53.214596>,  <26.817493, 38.671844, 53.432331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.720177, 38.992970, 53.214596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141918, 0.525702, 0.838747,
		0.959514, 0.281313, -0.013966,
		-0.243292, 0.802808, -0.544342,
		26.647188, 39.233810, 53.051292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.177975, 39.355812, 53.801788>,  <26.817493, 38.671844, 53.432331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.177975, 39.355812, 53.801788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.872574, 39.498055, 53.586155>,  <26.689333, 39.583401, 53.456776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.872574, 39.498055, 53.586155>,  <27.177975, 39.355812, 53.801788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.872574, 39.498055, 53.586155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296638, 0.548362, 0.781860,
		0.573645, 0.756864, -0.313190,
		-0.763503, 0.355606, -0.539080,
		26.643522, 39.604736, 53.424431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.295555, 40.138386, 53.740196>,  <27.177975, 39.355812, 53.801788>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.295555, 40.138386, 53.740196> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.920218, 40.010242, 53.688221>,  <26.695015, 39.933357, 53.657036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.920218, 40.010242, 53.688221>,  <27.295555, 40.138386, 53.740196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.920218, 40.010242, 53.688221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256420, 0.392892, 0.883111,
		-0.231859, 0.861980, -0.450813,
		-0.938344, -0.320355, -0.129934,
		26.638714, 39.914135, 53.649242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.915733, 40.607761, 54.192154>,  <27.295555, 40.138386, 53.740196>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.915733, 40.607761, 54.192154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.604168, 40.377319, 54.093033>,  <26.417229, 40.239056, 54.033562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.604168, 40.377319, 54.093033>,  <26.915733, 40.607761, 54.192154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.604168, 40.377319, 54.093033> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428883, 0.201048, 0.880703,
		-0.457554, 0.792267, -0.403679,
		-0.778911, -0.576101, -0.247800,
		26.370495, 40.204491, 54.018692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.370096, 41.020153, 54.169861>,  <26.915733, 40.607761, 54.192154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.370096, 41.020153, 54.169861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.206255, 40.661022, 54.234512>,  <26.107950, 40.445541, 54.273304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.206255, 40.661022, 54.234512>,  <26.370096, 41.020153, 54.169861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.206255, 40.661022, 54.234512> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448073, 0.352331, 0.821641,
		-0.794642, 0.264124, -0.546610,
		-0.409603, -0.897831, 0.161630,
		26.083374, 40.391674, 54.283001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.701292, 41.145580, 54.293789>,  <26.370096, 41.020153, 54.169861>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.701292, 41.145580, 54.293789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.743437, 40.786549, 54.465023>,  <25.768724, 40.571129, 54.567764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.743437, 40.786549, 54.465023>,  <25.701292, 41.145580, 54.293789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.743437, 40.786549, 54.465023> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504548, 0.322707, 0.800807,
		-0.856931, -0.300365, -0.418868,
		0.105363, -0.897575, 0.428086,
		25.775045, 40.517277, 54.593449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.064610, 40.918926, 54.484692>,  <25.701292, 41.145580, 54.293789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.064610, 40.918926, 54.484692> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.324814, 40.699867, 54.695183>,  <25.480936, 40.568432, 54.821476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.324814, 40.699867, 54.695183>,  <25.064610, 40.918926, 54.484692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.324814, 40.699867, 54.695183> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432223, 0.302784, 0.849414,
		-0.624516, -0.780000, -0.039744,
		0.650509, -0.547652, 0.526228,
		25.519966, 40.535572, 54.853050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.719452, 40.408829, 54.974174>,  <25.064610, 40.918926, 54.484692>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.719452, 40.408829, 54.974174> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.079750, 40.460503, 55.140049>,  <25.295929, 40.491508, 55.239574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.079750, 40.460503, 55.140049>,  <24.719452, 40.408829, 54.974174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.079750, 40.460503, 55.140049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434005, 0.230047, 0.871044,
		0.017127, -0.964567, 0.263281,
		0.900748, 0.129184, 0.414687,
		25.349974, 40.499260, 55.264454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.630657, 40.177162, 55.636658>,  <24.719452, 40.408829, 54.974174>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.630657, 40.177162, 55.636658> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.977219, 40.376850, 55.641029>,  <25.185156, 40.496662, 55.643654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.977219, 40.376850, 55.641029>,  <24.630657, 40.177162, 55.636658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.977219, 40.376850, 55.641029> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212916, 0.349534, 0.912411,
		0.451677, -0.792843, 0.409130,
		0.866403, 0.499225, 0.010932,
		25.237141, 40.526619, 55.644310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.951532, 39.956684, 56.208553>,  <24.630657, 40.177162, 55.636658>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.951532, 39.956684, 56.208553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.136217, 40.300880, 56.122410>,  <25.247028, 40.507397, 56.070724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.136217, 40.300880, 56.122410>,  <24.951532, 39.956684, 56.208553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.136217, 40.300880, 56.122410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269771, 0.367501, 0.890037,
		0.845011, -0.352845, 0.401815,
		0.461713, 0.860490, -0.215355,
		25.274731, 40.559029, 56.057804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.597267, 40.115250, 56.665604>,  <24.951532, 39.956684, 56.208553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.597267, 40.115250, 56.665604> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.398510, 40.437996, 56.537811>,  <25.279255, 40.631641, 56.461136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.398510, 40.437996, 56.537811>,  <25.597267, 40.115250, 56.665604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.398510, 40.437996, 56.537811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281949, 0.198072, 0.938761,
		0.820732, 0.556542, 0.129073,
		-0.496894, 0.806863, -0.319481,
		25.249441, 40.680054, 56.441967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.300671, 39.391388, 56.918789>,  <25.597267, 40.115250, 56.665604>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.300671, 39.391388, 56.918789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.466602, 39.242424, 57.250866>,  <25.566160, 39.153046, 57.450111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.466602, 39.242424, 57.250866>,  <25.300671, 39.391388, 56.918789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.466602, 39.242424, 57.250866> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476737, -0.688185, -0.546922,
		0.775010, 0.622664, -0.107935,
		0.414828, -0.372413, 0.830197,
		25.591051, 39.130699, 57.499924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.040997, 39.357296, 56.857533>,  <25.300671, 39.391388, 56.918789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.040997, 39.357296, 56.857533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.951494, 39.086884, 57.138367>,  <25.897793, 38.924637, 57.306866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.951494, 39.086884, 57.138367>,  <26.040997, 39.357296, 56.857533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.951494, 39.086884, 57.138367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526491, -0.690040, -0.496641,
		0.820208, 0.258515, 0.510322,
		-0.223753, -0.676029, 0.702082,
		25.884369, 38.884075, 57.348991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.611116, 39.029102, 56.875595>,  <26.040997, 39.357296, 56.857533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.611116, 39.029102, 56.875595> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.351631, 38.786400, 57.059338>,  <26.195940, 38.640778, 57.169582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.351631, 38.786400, 57.059338>,  <26.611116, 39.029102, 56.875595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.351631, 38.786400, 57.059338> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393689, -0.784119, -0.479757,
		0.651289, -0.130381, 0.747545,
		-0.648715, -0.606760, 0.459359,
		26.157017, 38.604370, 57.197144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.005276, 38.448460, 57.200970>,  <26.611116, 39.029102, 56.875595>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.005276, 38.448460, 57.200970> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.635361, 38.306522, 57.146042>,  <26.413412, 38.221359, 57.113087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.635361, 38.306522, 57.146042>,  <27.005276, 38.448460, 57.200970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.635361, 38.306522, 57.146042> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368671, -0.746433, -0.554004,
		0.094084, -0.562961, 0.821111,
		-0.924786, -0.354842, -0.137320,
		26.357925, 38.200069, 57.104847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.994509, 37.733868, 57.142025>,  <27.005276, 38.448460, 57.200970>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.994509, 37.733868, 57.142025> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.634399, 37.793476, 56.978416>,  <26.418333, 37.829243, 56.880253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.634399, 37.793476, 56.978416>,  <26.994509, 37.733868, 57.142025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.634399, 37.793476, 56.978416> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164930, -0.752772, -0.637285,
		-0.402869, -0.641191, 0.653124,
		-0.900275, 0.149022, -0.409020,
		26.364317, 37.838184, 56.855709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.757366, 37.041069, 56.975140>,  <26.994509, 37.733868, 57.142025>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.757366, 37.041069, 56.975140> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.527836, 37.277470, 56.748356>,  <26.390118, 37.419308, 56.612286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.527836, 37.277470, 56.748356>,  <26.757366, 37.041069, 56.975140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.527836, 37.277470, 56.748356> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069370, -0.654716, -0.752685,
		-0.816034, -0.471240, 0.334695,
		-0.573826, 0.590999, -0.566961,
		26.355688, 37.454769, 56.578266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.161907, 36.556458, 56.738613>,  <26.757366, 37.041069, 56.975140>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.161907, 36.556458, 56.738613> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.228922, 36.873775, 56.504482>,  <26.269131, 37.064167, 56.364002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.228922, 36.873775, 56.504482>,  <26.161907, 36.556458, 56.738613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.228922, 36.873775, 56.504482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047127, -0.599485, -0.798997,
		-0.984739, 0.106276, -0.137821,
		0.167536, 0.793298, -0.585328,
		26.279182, 37.111767, 56.328884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.737226, 36.388489, 56.234375>,  <26.161907, 36.556458, 56.738613>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.737226, 36.388489, 56.234375> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.022238, 36.638535, 56.106915>,  <26.193245, 36.788563, 56.030437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.022238, 36.638535, 56.106915>,  <25.737226, 36.388489, 56.234375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.022238, 36.638535, 56.106915> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246711, -0.648358, -0.720253,
		-0.656840, 0.434585, -0.616195,
		0.712527, 0.625114, -0.318651,
		26.235996, 36.826069, 56.011318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.671280, 36.333076, 55.557491>,  <25.737226, 36.388489, 56.234375>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.671280, 36.333076, 55.557491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.025887, 36.517944, 55.566277>,  <26.238651, 36.628864, 55.571548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.025887, 36.517944, 55.566277>,  <25.671280, 36.333076, 55.557491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.025887, 36.517944, 55.566277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350429, -0.639668, -0.684123,
		-0.302135, 0.614183, -0.729036,
		0.886518, 0.462172, 0.021961,
		26.291842, 36.656597, 55.572865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.879629, 36.469593, 54.769466>,  <25.671280, 36.333076, 55.557491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.879629, 36.469593, 54.769466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.214943, 36.495182, 54.986053>,  <26.416132, 36.510536, 55.116005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.214943, 36.495182, 54.986053>,  <25.879629, 36.469593, 54.769466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.214943, 36.495182, 54.986053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467903, -0.594220, -0.654193,
		0.279896, 0.801754, -0.528061,
		0.838287, 0.063975, 0.541464,
		26.466429, 36.514374, 55.148491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.354877, 36.776997, 54.371250>,  <25.879629, 36.469593, 54.769466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.354877, 36.776997, 54.371250> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.562685, 36.579632, 54.650291>,  <26.687368, 36.461212, 54.817715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.562685, 36.579632, 54.650291>,  <26.354877, 36.776997, 54.371250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.562685, 36.579632, 54.650291> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491092, -0.495689, -0.716325,
		0.699236, 0.714729, -0.015209,
		0.519517, -0.493411, 0.697601,
		26.718540, 36.431610, 54.859573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.912922, 36.634487, 54.021996>,  <26.354877, 36.776997, 54.371250>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.912922, 36.634487, 54.021996> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.954350, 36.391441, 54.336975>,  <26.979206, 36.245613, 54.525963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.954350, 36.391441, 54.336975>,  <26.912922, 36.634487, 54.021996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.954350, 36.391441, 54.336975> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610116, -0.586450, -0.532762,
		0.785514, 0.535612, 0.309979,
		0.103567, -0.607615, 0.787450,
		26.985420, 36.209156, 54.573212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.588121, 36.489559, 54.095585>,  <26.912922, 36.634487, 54.021996>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.588121, 36.489559, 54.095585> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.425638, 36.187771, 54.301796>,  <27.328148, 36.006699, 54.425522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.425638, 36.187771, 54.301796>,  <27.588121, 36.489559, 54.095585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.425638, 36.187771, 54.301796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653367, -0.634225, -0.413365,
		0.638831, 0.168914, 0.750575,
		-0.406210, -0.754471, 0.515525,
		27.303776, 35.961430, 54.456455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168594, 36.313633, 54.450695>,  <27.588121, 36.489559, 54.095585>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168594, 36.313633, 54.450695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.902664, 36.018711, 54.402714>,  <27.743105, 35.841759, 54.373924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.902664, 36.018711, 54.402714>,  <28.168594, 36.313633, 54.450695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.902664, 36.018711, 54.402714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708271, -0.571150, -0.414898,
		0.237397, -0.360792, 0.901927,
		-0.664827, -0.737304, -0.119949,
		27.703217, 35.797520, 54.366730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.606779, 35.880299, 54.362965>,  <28.168594, 36.313633, 54.450695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.606779, 35.880299, 54.362965> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.262905, 35.714638, 54.243355>,  <28.056580, 35.615242, 54.171589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.262905, 35.714638, 54.243355>,  <28.606779, 35.880299, 54.362965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.262905, 35.714638, 54.243355> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508507, -0.638159, -0.578078,
		0.048590, -0.649021, 0.759217,
		-0.859686, -0.414156, -0.299023,
		28.004999, 35.590389, 54.153648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.020224, 35.500805, 54.969925>,  <28.606779, 35.880299, 54.362965>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.020224, 35.500805, 54.969925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.411333, 35.577290, 55.004330>,  <29.645998, 35.623180, 55.024971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.411333, 35.577290, 55.004330>,  <29.020224, 35.500805, 54.969925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.411333, 35.577290, 55.004330> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196761, 0.695131, 0.691431,
		0.072423, -0.692986, 0.717304,
		0.977773, 0.191213, 0.086009,
		29.704664, 35.634655, 55.030132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.070862, 35.466545, 55.674557>,  <29.020224, 35.500805, 54.969925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.070862, 35.466545, 55.674557> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.365757, 35.687092, 55.518364>,  <29.542694, 35.819420, 55.424648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.365757, 35.687092, 55.518364>,  <29.070862, 35.466545, 55.674557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365757, 35.687092, 55.518364> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180929, 0.717952, 0.672168,
		0.650956, -0.424900, 0.629061,
		0.737240, 0.551367, -0.390478,
		29.586929, 35.852501, 55.401218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.503824, 35.682972, 56.277523>,  <29.070862, 35.466545, 55.674557>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.503824, 35.682972, 56.277523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.636604, 35.929058, 55.991497>,  <29.716272, 36.076710, 55.819881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.636604, 35.929058, 55.991497>,  <29.503824, 35.682972, 56.277523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636604, 35.929058, 55.991497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015125, 0.754477, 0.656152,
		0.943175, -0.228625, 0.241144,
		0.331951, 0.615219, -0.715062,
		29.736189, 36.113625, 55.776978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045355, 35.969196, 56.556789>,  <29.503824, 35.682972, 56.277523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045355, 35.969196, 56.556789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.951715, 36.236851, 56.274670>,  <29.895533, 36.397446, 56.105396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.951715, 36.236851, 56.274670>,  <30.045355, 35.969196, 56.556789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.951715, 36.236851, 56.274670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069587, 0.735131, 0.674344,
		0.969720, 0.108782, -0.218655,
		-0.234096, 0.669140, -0.705301,
		29.881487, 36.437592, 56.063080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.426744, 36.453316, 56.637566>,  <30.045355, 35.969196, 56.556789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.426744, 36.453316, 56.637566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.155668, 36.652252, 56.420906>,  <29.993023, 36.771614, 56.290909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.155668, 36.652252, 56.420906>,  <30.426744, 36.453316, 56.637566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.155668, 36.652252, 56.420906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044823, 0.707286, 0.705505,
		0.733979, 0.502393, -0.457029,
		-0.677691, 0.497341, -0.541652,
		29.952360, 36.801453, 56.258411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495993, 37.165791, 56.781998>,  <30.426744, 36.453316, 56.637566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495993, 37.165791, 56.781998> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.123259, 37.141335, 56.638920>,  <29.899618, 37.126663, 56.553074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.123259, 37.141335, 56.638920>,  <30.495993, 37.165791, 56.781998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123259, 37.141335, 56.638920> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309089, 0.650146, 0.694099,
		0.190115, 0.757346, -0.624727,
		-0.931837, -0.061137, -0.357690,
		29.843708, 37.122993, 56.531612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250219, 37.843021, 56.865639>,  <30.495993, 37.165791, 56.781998>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250219, 37.843021, 56.865639> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.912394, 37.632153, 56.828106>,  <29.709698, 37.505630, 56.805588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.912394, 37.632153, 56.828106>,  <30.250219, 37.843021, 56.865639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.912394, 37.632153, 56.828106> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437629, 0.578614, 0.688249,
		-0.308535, 0.622331, -0.719382,
		-0.844563, -0.527172, -0.093828,
		29.659025, 37.474003, 56.799957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621374, 38.469593, 56.850861>,  <30.250219, 37.843021, 56.865639>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621374, 38.469593, 56.850861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.878977, 38.550697, 57.145924>,  <31.033539, 38.599358, 57.322964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.878977, 38.550697, 57.145924>,  <30.621374, 38.469593, 56.850861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878977, 38.550697, 57.145924> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718845, -0.490303, -0.492813,
		0.261755, 0.847639, -0.461511,
		0.644008, 0.202759, 0.737660,
		31.072180, 38.611526, 57.367222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194012, 38.706284, 56.548298>,  <30.621374, 38.469593, 56.850861>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194012, 38.706284, 56.548298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.365622, 38.637569, 56.903019>,  <31.468588, 38.596340, 57.115852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.365622, 38.637569, 56.903019>,  <31.194012, 38.706284, 56.548298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365622, 38.637569, 56.903019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809896, -0.361592, -0.461866,
		0.400005, 0.916373, -0.016001,
		0.429027, -0.171789, 0.886806,
		31.494329, 38.586033, 57.169060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863194, 38.846516, 56.462566>,  <31.194012, 38.706284, 56.548298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863194, 38.846516, 56.462566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.866287, 38.605831, 56.782036>,  <31.868143, 38.461422, 56.973717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.866287, 38.605831, 56.782036>,  <31.863194, 38.846516, 56.462566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866287, 38.605831, 56.782036> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821461, -0.451619, -0.348197,
		0.570212, 0.658776, 0.490788,
		0.007735, -0.601709, 0.798678,
		31.868608, 38.425320, 57.021641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587505, 38.659702, 56.630806>,  <31.863194, 38.846516, 56.462566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587505, 38.659702, 56.630806> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.388725, 38.378956, 56.834934>,  <32.269459, 38.210506, 56.957413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.388725, 38.378956, 56.834934>,  <32.587505, 38.659702, 56.630806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388725, 38.378956, 56.834934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669301, -0.684312, -0.289402,
		0.552339, 0.197740, 0.809827,
		-0.496948, -0.701866, 0.510320,
		32.239639, 38.168396, 56.988029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078793, 38.330048, 57.150181>,  <32.587505, 38.659702, 56.630806>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078793, 38.330048, 57.150181> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.784134, 38.083981, 57.037815>,  <32.607338, 37.936340, 56.970398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.784134, 38.083981, 57.037815>,  <33.078793, 38.330048, 57.150181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784134, 38.083981, 57.037815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673067, -0.626518, -0.393009,
		0.065772, -0.478582, 0.875576,
		-0.736651, -0.615170, -0.280910,
		32.563137, 37.899429, 56.953541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431305, 37.730431, 57.201309>,  <33.078793, 38.330048, 57.150181>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431305, 37.730431, 57.201309> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.102413, 37.650684, 56.988071>,  <32.905079, 37.602837, 56.860126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.102413, 37.650684, 56.988071>,  <33.431305, 37.730431, 57.201309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102413, 37.650684, 56.988071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490675, -0.722922, -0.486439,
		-0.288406, -0.661541, 0.692233,
		-0.822229, -0.199370, -0.533096,
		32.855743, 37.590874, 56.828144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463253, 37.010540, 57.263565>,  <33.431305, 37.730431, 57.201309>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463253, 37.010540, 57.263565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.220036, 37.096954, 56.957989>,  <33.074104, 37.148804, 56.774643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.220036, 37.096954, 56.957989>,  <33.463253, 37.010540, 57.263565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220036, 37.096954, 56.957989> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409207, -0.739305, -0.534768,
		-0.680314, -0.637775, 0.361131,
		-0.608048, 0.216033, -0.763942,
		33.037621, 37.161766, 56.728806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<27.173426, 43.621799, 56.496967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.940762, 43.322315, 56.369785>,  <26.801163, 43.142624, 56.293476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.940762, 43.322315, 56.369785>,  <27.173426, 43.621799, 56.496967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.940762, 43.322315, 56.369785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749081, -0.340657, -0.568181,
		0.317092, -0.568664, 0.758995,
		-0.581661, -0.748715, -0.317956,
		26.766264, 43.097702, 56.274399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.439667, 42.866844, 56.643795>,  <27.173426, 43.621799, 56.496967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.439667, 42.866844, 56.643795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.218788, 42.867252, 56.310310>,  <27.086260, 42.867496, 56.110218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.218788, 42.867252, 56.310310>,  <27.439667, 42.866844, 56.643795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.218788, 42.867252, 56.310310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796719, -0.293931, -0.528056,
		-0.245590, -0.955826, 0.161498,
		-0.552199, 0.001017, -0.833712,
		27.053129, 42.867558, 56.060196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.566151, 42.244236, 56.272106>,  <27.439667, 42.866844, 56.643795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.566151, 42.244236, 56.272106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.413643, 42.499760, 56.004807>,  <27.322138, 42.653072, 55.844425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.413643, 42.499760, 56.004807>,  <27.566151, 42.244236, 56.272106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.413643, 42.499760, 56.004807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718673, -0.249871, -0.648902,
		-0.581500, -0.727660, -0.363826,
		-0.381270, 0.638808, -0.668249,
		27.299261, 42.691402, 55.804333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.672995, 41.846802, 55.697041>,  <27.566151, 42.244236, 56.272106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.672995, 41.846802, 55.697041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.586369, 42.213669, 55.563236>,  <27.534393, 42.433788, 55.482952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.586369, 42.213669, 55.563236>,  <27.672995, 41.846802, 55.697041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.586369, 42.213669, 55.563236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637111, -0.126851, -0.760262,
		-0.739723, -0.377768, -0.556867,
		-0.216563, 0.917169, -0.334515,
		27.521400, 42.488819, 55.462883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.502575, 41.676586, 54.977211>,  <27.672995, 41.846802, 55.697041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.502575, 41.676586, 54.977211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633280, 42.051044, 55.029152>,  <27.711702, 42.275719, 55.060318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633280, 42.051044, 55.029152>,  <27.502575, 41.676586, 54.977211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.633280, 42.051044, 55.029152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579282, -0.089820, -0.810163,
		-0.746766, 0.339951, -0.571641,
		0.326761, 0.936144, 0.129853,
		27.731308, 42.331886, 55.068108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.512836, 41.918530, 54.242825>,  <27.502575, 41.676586, 54.977211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.512836, 41.918530, 54.242825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.731192, 42.157604, 54.477695>,  <27.862206, 42.301048, 54.618618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.731192, 42.157604, 54.477695>,  <27.512836, 41.918530, 54.242825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.731192, 42.157604, 54.477695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684667, 0.085736, -0.723796,
		-0.482946, 0.797132, -0.362414,
		0.545889, 0.597687, 0.587176,
		27.894958, 42.336910, 54.653847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.695263, 42.561390, 53.866604>,  <27.512836, 41.918530, 54.242825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.695263, 42.561390, 53.866604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.974819, 42.551147, 54.152512>,  <28.142553, 42.545002, 54.324059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.974819, 42.551147, 54.152512>,  <27.695263, 42.561390, 53.866604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.974819, 42.551147, 54.152512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715029, 0.001362, -0.699094,
		0.016925, 0.999671, 0.019257,
		0.698890, -0.025602, 0.714771,
		28.184486, 42.543468, 54.366943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.057520, 43.020641, 53.617695>,  <27.695263, 42.561390, 53.866604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.057520, 43.020641, 53.617695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300274, 42.828117, 53.870686>,  <28.445927, 42.712601, 54.022480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300274, 42.828117, 53.870686>,  <28.057520, 43.020641, 53.617695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.300274, 42.828117, 53.870686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745631, 0.069270, -0.662749,
		0.275178, 0.873808, 0.400921,
		0.606887, -0.481313, 0.632476,
		28.482340, 42.683723, 54.060429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.663467, 43.398548, 53.648964>,  <28.057520, 43.020641, 53.617695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.663467, 43.398548, 53.648964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.760082, 43.025990, 53.757900>,  <28.818050, 42.802456, 53.823261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.760082, 43.025990, 53.757900>,  <28.663467, 43.398548, 53.648964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.760082, 43.025990, 53.757900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783151, 0.021375, -0.621464,
		0.573006, 0.363389, 0.734583,
		0.241535, -0.931392, 0.272340,
		28.832542, 42.746571, 53.839603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.401930, 43.465618, 53.663761>,  <28.663467, 43.398548, 53.648964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.401930, 43.465618, 53.663761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352577, 43.069210, 53.684349>,  <29.322966, 42.831364, 53.696701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352577, 43.069210, 53.684349>,  <29.401930, 43.465618, 53.663761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.352577, 43.069210, 53.684349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686155, -0.122662, -0.717039,
		0.716916, -0.053154, 0.695131,
		-0.123380, -0.991024, 0.051466,
		29.315563, 42.771904, 53.699787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.126062, 43.145523, 53.668518>,  <29.401930, 43.465618, 53.663761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.126062, 43.145523, 53.668518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860338, 42.887428, 53.517593>,  <29.700903, 42.732571, 53.427040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860338, 42.887428, 53.517593>,  <30.126062, 43.145523, 53.668518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860338, 42.887428, 53.517593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603818, -0.165729, -0.779703,
		0.440563, -0.745790, 0.499702,
		-0.664310, -0.645237, -0.377308,
		29.661045, 42.693855, 53.404400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499723, 42.667492, 53.336548>,  <30.126062, 43.145523, 53.668518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499723, 42.667492, 53.336548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.146286, 42.609188, 53.158554>,  <29.934223, 42.574207, 53.051758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.146286, 42.609188, 53.158554>,  <30.499723, 42.667492, 53.336548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.146286, 42.609188, 53.158554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468168, -0.257138, -0.845399,
		0.008804, -0.955318, 0.295447,
		-0.883596, -0.145762, -0.444985,
		29.881207, 42.565460, 53.025059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051010, 42.536755, 53.813725>,  <30.499723, 42.667492, 53.336548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051010, 42.536755, 53.813725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372036, 42.394238, 54.005119>,  <31.564651, 42.308727, 54.119957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372036, 42.394238, 54.005119>,  <31.051010, 42.536755, 53.813725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372036, 42.394238, 54.005119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393038, 0.287588, 0.873393,
		-0.448791, -0.889015, 0.090770,
		0.802563, -0.356294, 0.478483,
		31.612804, 42.287350, 54.148663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915791, 42.027290, 54.327145>,  <31.051010, 42.536755, 53.813725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915791, 42.027290, 54.327145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251465, 42.212585, 54.441109>,  <31.452869, 42.323761, 54.509487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251465, 42.212585, 54.441109>,  <30.915791, 42.027290, 54.327145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251465, 42.212585, 54.441109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407500, 0.188670, 0.893503,
		0.360150, -0.865919, 0.347099,
		0.839188, 0.463237, 0.284913,
		31.503222, 42.351559, 54.526581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.118704, 41.795746, 54.974823>,  <30.915791, 42.027290, 54.327145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.118704, 41.795746, 54.974823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305874, 42.149162, 54.966801>,  <31.418177, 42.361214, 54.961987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305874, 42.149162, 54.966801>,  <31.118704, 41.795746, 54.974823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305874, 42.149162, 54.966801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378911, 0.221068, 0.898641,
		0.798419, -0.412898, 0.438227,
		0.467925, 0.883541, -0.020053,
		31.446251, 42.414223, 54.960785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213203, 41.931175, 55.718018>,  <31.118704, 41.795746, 54.974823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213203, 41.931175, 55.718018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290920, 42.289471, 55.558064>,  <31.337549, 42.504448, 55.462090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290920, 42.289471, 55.558064>,  <31.213203, 41.931175, 55.718018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290920, 42.289471, 55.558064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499402, 0.441193, 0.745618,
		0.844304, 0.054838, 0.533052,
		0.194291, 0.895735, -0.399887,
		31.349207, 42.558189, 55.438099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525694, 42.288170, 56.250713>,  <31.213203, 41.931175, 55.718018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525694, 42.288170, 56.250713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377665, 42.570312, 56.008881>,  <31.288847, 42.739597, 55.863781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377665, 42.570312, 56.008881>,  <31.525694, 42.288170, 56.250713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377665, 42.570312, 56.008881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425059, 0.450114, 0.785317,
		0.826057, 0.547610, 0.133241,
		-0.370074, 0.705352, -0.604586,
		31.266642, 42.781918, 55.827503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563175, 43.002892, 56.563717>,  <31.525694, 42.288170, 56.250713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563175, 43.002892, 56.563717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257265, 42.980148, 56.307003>,  <31.073719, 42.966503, 56.152973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257265, 42.980148, 56.307003>,  <31.563175, 43.002892, 56.563717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257265, 42.980148, 56.307003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628663, 0.283964, 0.723980,
		0.141084, 0.957148, -0.252910,
		-0.764773, -0.056854, -0.641786,
		31.027834, 42.963093, 56.114468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170538, 43.549522, 56.711308>,  <31.563175, 43.002892, 56.563717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170538, 43.549522, 56.711308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902981, 43.307598, 56.538433>,  <30.742447, 43.162445, 56.434708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902981, 43.307598, 56.538433>,  <31.170538, 43.549522, 56.711308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902981, 43.307598, 56.538433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625843, 0.144456, 0.766455,
		-0.401125, 0.783160, -0.475141,
		-0.668894, -0.604808, -0.432191,
		30.702312, 43.126156, 56.408775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594940, 43.841908, 56.879047>,  <31.170538, 43.549522, 56.711308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.594940, 43.841908, 56.879047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.479105, 43.476864, 56.763611>,  <30.409605, 43.257839, 56.694347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.479105, 43.476864, 56.763611>,  <30.594940, 43.841908, 56.879047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479105, 43.476864, 56.763611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777362, 0.048335, 0.627194,
		-0.558434, 0.405966, -0.723424,
		-0.289586, -0.912609, -0.288590,
		30.392229, 43.203079, 56.677032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935661, 43.840752, 57.032398>,  <30.594940, 43.841908, 56.879047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935661, 43.840752, 57.032398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042421, 43.455761, 57.012764>,  <30.106478, 43.224766, 57.000984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042421, 43.455761, 57.012764>,  <29.935661, 43.840752, 57.032398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042421, 43.455761, 57.012764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713403, -0.231564, 0.661389,
		-0.647936, -0.141506, -0.748435,
		0.266901, -0.962473, -0.049088,
		30.122492, 43.167019, 56.998039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.295950, 43.485577, 57.125069>,  <29.935661, 43.840752, 57.032398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.295950, 43.485577, 57.125069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591402, 43.226326, 57.199207>,  <29.768673, 43.070774, 57.243690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591402, 43.226326, 57.199207>,  <29.295950, 43.485577, 57.125069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591402, 43.226326, 57.199207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550855, -0.421831, 0.720151,
		-0.388562, -0.634028, -0.668602,
		0.738632, -0.648126, 0.185350,
		29.812992, 43.031887, 57.254810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913578, 42.808506, 57.209885>,  <29.295950, 43.485577, 57.125069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.913578, 42.808506, 57.209885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.273172, 42.767914, 57.380306>,  <29.488930, 42.743561, 57.482559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.273172, 42.767914, 57.380306>,  <28.913578, 42.808506, 57.209885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.273172, 42.767914, 57.380306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433718, -0.341545, 0.833808,
		0.060906, -0.934371, -0.351057,
		0.898988, -0.101476, 0.426056,
		29.542870, 42.737473, 57.508121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871695, 42.254726, 57.656033>,  <28.913578, 42.808506, 57.209885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871695, 42.254726, 57.656033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.219229, 42.392181, 57.798603>,  <29.427750, 42.474655, 57.884144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.219229, 42.392181, 57.798603>,  <28.871695, 42.254726, 57.656033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.219229, 42.392181, 57.798603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251707, -0.313342, 0.915675,
		0.426343, -0.885285, -0.185746,
		0.868835, 0.343638, 0.356424,
		29.479879, 42.495274, 57.905529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.261497, 41.743626, 58.039867>,  <28.871695, 42.254726, 57.656033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.261497, 41.743626, 58.039867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.354866, 42.111099, 58.167320>,  <29.410887, 42.331585, 58.243793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.354866, 42.111099, 58.167320>,  <29.261497, 41.743626, 58.039867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.354866, 42.111099, 58.167320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288860, -0.247377, 0.924859,
		0.928479, -0.307923, 0.207629,
		0.233422, 0.918688, 0.318631,
		29.424892, 42.386707, 58.262909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671268, 41.552887, 58.511536>,  <29.261497, 41.743626, 58.039867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671268, 41.552887, 58.511536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.553169, 41.929161, 58.578403>,  <29.482309, 42.154926, 58.618523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.553169, 41.929161, 58.578403>,  <29.671268, 41.552887, 58.511536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.553169, 41.929161, 58.578403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227793, -0.239228, 0.943865,
		0.927868, 0.240596, 0.284913,
		-0.295249, 0.940683, 0.167165,
		29.464594, 42.211365, 58.628551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350363, 41.357574, 58.625271>,  <29.671268, 41.552887, 58.511536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350363, 41.357574, 58.625271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040848, 41.104954, 58.605686>,  <29.855139, 40.953381, 58.593937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040848, 41.104954, 58.605686>,  <30.350363, 41.357574, 58.625271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.040848, 41.104954, 58.605686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622352, -0.743554, -0.244551,
		0.118041, -0.219701, 0.968399,
		-0.773786, -0.631552, -0.048961,
		29.808712, 40.915489, 58.590996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591791, 40.633602, 58.755116>,  <30.350363, 41.357574, 58.625271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591791, 40.633602, 58.755116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.217119, 40.538853, 58.651947>,  <29.992315, 40.482002, 58.590046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.217119, 40.538853, 58.651947>,  <30.591791, 40.633602, 58.755116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.217119, 40.538853, 58.651947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296186, -0.928825, -0.222617,
		-0.186831, -0.284913, 0.940169,
		-0.936679, -0.236873, -0.257921,
		29.936115, 40.467793, 58.574570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341856, 40.118832, 59.220329>,  <30.591791, 40.633602, 58.755116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341856, 40.118832, 59.220329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.155472, 40.095055, 58.867207>,  <30.043642, 40.080788, 58.655334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.155472, 40.095055, 58.867207>,  <30.341856, 40.118832, 59.220329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.155472, 40.095055, 58.867207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319399, -0.941766, -0.105174,
		-0.825146, -0.330974, 0.457810,
		-0.465959, -0.059440, -0.882808,
		30.015684, 40.077221, 58.602364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154047, 39.440487, 59.075668>,  <30.341856, 40.118832, 59.220329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154047, 39.440487, 59.075668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102762, 39.563114, 58.698399>,  <30.071991, 39.636692, 58.472038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102762, 39.563114, 58.698399>,  <30.154047, 39.440487, 59.075668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102762, 39.563114, 58.698399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494712, -0.804483, -0.328735,
		-0.859548, -0.508747, -0.048520,
		-0.128210, 0.306567, -0.943175,
		30.064299, 39.655083, 58.415447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.173729, 38.831802, 58.758179>,  <30.154047, 39.440487, 59.075668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.173729, 38.831802, 58.758179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.222317, 39.093315, 58.459431>,  <30.251469, 39.250221, 58.280182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.222317, 39.093315, 58.459431>,  <30.173729, 38.831802, 58.758179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222317, 39.093315, 58.459431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637137, -0.628327, -0.446386,
		-0.761118, -0.421639, -0.492869,
		0.121469, 0.653778, -0.746873,
		30.258757, 39.289448, 58.235367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033714, 38.528793, 58.165279>,  <30.173729, 38.831802, 58.758179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033714, 38.528793, 58.165279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259085, 38.828171, 58.025345>,  <30.394306, 39.007797, 57.941383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259085, 38.828171, 58.025345>,  <30.033714, 38.528793, 58.165279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259085, 38.828171, 58.025345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526784, -0.651657, -0.545750,
		-0.636436, 0.123201, -0.761427,
		0.563426, 0.748442, -0.349837,
		30.428112, 39.052704, 57.920395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215935, 38.327133, 57.462975>,  <30.033714, 38.528793, 58.165279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215935, 38.327133, 57.462975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.501917, 38.580780, 57.580776>,  <30.673506, 38.732967, 57.651459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.501917, 38.580780, 57.580776>,  <30.215935, 38.327133, 57.462975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501917, 38.580780, 57.580776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685355, -0.552303, -0.474606,
		-0.138301, 0.541162, -0.829468,
		0.714956, 0.634118, 0.294504,
		30.716404, 38.771015, 57.669128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.705198, 38.307983, 56.878700>,  <30.215935, 38.327133, 57.462975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.705198, 38.307983, 56.878700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527994, 37.963001, 56.976612>,  <29.421671, 37.756012, 57.035358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527994, 37.963001, 56.976612>,  <29.705198, 38.307983, 56.878700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527994, 37.963001, 56.976612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661404, 0.498731, 0.560189,
		-0.605216, 0.086271, -0.791373,
		-0.443011, -0.862452, 0.244780,
		29.395090, 37.704266, 57.050045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.126867, 38.563545, 56.929382>,  <29.705198, 38.307983, 56.878700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.126867, 38.563545, 56.929382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.111637, 38.219418, 57.132713>,  <29.102499, 38.012939, 57.254711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.111637, 38.219418, 57.132713>,  <29.126867, 38.563545, 56.929382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.111637, 38.219418, 57.132713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652851, 0.406543, 0.639146,
		-0.756528, -0.307527, -0.577141,
		-0.038078, -0.860320, 0.508331,
		29.100214, 37.961323, 57.285213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.438799, 38.577103, 57.159603>,  <29.126867, 38.563545, 56.929382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.438799, 38.577103, 57.159603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.602194, 38.300430, 57.397835>,  <28.700230, 38.134426, 57.540775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.602194, 38.300430, 57.397835>,  <28.438799, 38.577103, 57.159603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.602194, 38.300430, 57.397835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780421, 0.073734, 0.620891,
		-0.473374, -0.718428, -0.509684,
		0.408485, -0.691682, 0.595580,
		28.724739, 38.092926, 57.576508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911650, 38.104134, 57.419983>,  <28.438799, 38.577103, 57.159603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.911650, 38.104134, 57.419983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.192612, 38.045971, 57.698689>,  <28.361189, 38.011074, 57.865913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.192612, 38.045971, 57.698689>,  <27.911650, 38.104134, 57.419983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.192612, 38.045971, 57.698689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668350, 0.201952, 0.715908,
		-0.244814, -0.968541, 0.044667,
		0.702406, -0.145411, 0.696765,
		28.403334, 38.002346, 57.907719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.689653, 37.648994, 57.904423>,  <27.911650, 38.104134, 57.419983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.689653, 37.648994, 57.904423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.979647, 37.857086, 58.084980>,  <28.153643, 37.981941, 58.193314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.979647, 37.857086, 58.084980>,  <27.689653, 37.648994, 57.904423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.979647, 37.857086, 58.084980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641500, 0.271415, 0.717503,
		0.250749, -0.809751, 0.530498,
		0.724984, 0.520228, 0.451398,
		28.197142, 38.013157, 58.220398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.690153, 37.557106, 58.683838>,  <27.689653, 37.648994, 57.904423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.690153, 37.557106, 58.683838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.873894, 37.909088, 58.635372>,  <27.984138, 38.120277, 58.606293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.873894, 37.909088, 58.635372>,  <27.690153, 37.557106, 58.683838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.873894, 37.909088, 58.635372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484439, 0.362518, 0.796178,
		0.744523, -0.307028, 0.592806,
		0.459352, 0.879951, -0.121167,
		28.011700, 38.173073, 58.599022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.786789, 37.730499, 59.410110>,  <27.690153, 37.557106, 58.683838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.786789, 37.730499, 59.410110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.853527, 38.064281, 59.200024>,  <27.893570, 38.264549, 59.073971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.853527, 38.064281, 59.200024>,  <27.786789, 37.730499, 59.410110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.853527, 38.064281, 59.200024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484771, 0.533274, 0.693264,
		0.858580, 0.138940, 0.493493,
		0.166845, 0.834454, -0.525213,
		27.903580, 38.314617, 59.042461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.096136, 38.337357, 59.914509>,  <27.786789, 37.730499, 59.410110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.096136, 38.337357, 59.914509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942305, 38.507996, 59.587067>,  <27.850006, 38.610378, 59.390602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942305, 38.507996, 59.587067>,  <28.096136, 38.337357, 59.914509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.942305, 38.507996, 59.587067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413313, 0.713368, 0.565931,
		0.825392, 0.555985, -0.098027,
		-0.384579, 0.426599, -0.818604,
		27.826931, 38.635975, 59.341484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.075394, 39.028893, 60.081745>,  <28.096136, 38.337357, 59.914509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.075394, 39.028893, 60.081745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825855, 39.021809, 59.769207>,  <27.676132, 39.017559, 59.581684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825855, 39.021809, 59.769207>,  <28.075394, 39.028893, 60.081745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825855, 39.021809, 59.769207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540504, 0.731890, 0.414960,
		0.564511, 0.681192, -0.466159,
		-0.623845, -0.017712, -0.781347,
		27.638702, 39.016495, 59.534801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<37.144905, 35.913071, 47.113403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.238529, 36.251461, 47.305046>,  <37.294704, 36.454494, 47.420033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.238529, 36.251461, 47.305046>,  <37.144905, 35.913071, 47.113403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238529, 36.251461, 47.305046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893702, -0.006798, 0.448609,
		0.382770, -0.533176, 0.754461,
		0.234058, 0.845977, 0.479102,
		37.308746, 36.505253, 47.448776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066895, 35.767059, 47.855583>,  <37.144905, 35.913071, 47.113403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066895, 35.767059, 47.855583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.039555, 36.161163, 47.792858>,  <37.023151, 36.397625, 47.755222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.039555, 36.161163, 47.792858>,  <37.066895, 35.767059, 47.855583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039555, 36.161163, 47.792858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978007, -0.035128, 0.205592,
		0.197053, 0.167416, 0.965993,
		-0.068353, 0.985260, -0.156812,
		37.019047, 36.456741, 47.745815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777679, 35.992844, 48.406120>,  <37.066895, 35.767059, 47.855583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777679, 35.992844, 48.406120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.727570, 36.287987, 48.140827>,  <36.697502, 36.465073, 47.981651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.727570, 36.287987, 48.140827>,  <36.777679, 35.992844, 48.406120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727570, 36.287987, 48.140827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982288, 0.001640, 0.187371,
		0.139341, 0.674955, 0.724583,
		-0.125278, 0.737857, -0.663228,
		36.689987, 36.509342, 47.941860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416920, 36.412682, 48.758408>,  <36.777679, 35.992844, 48.406120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416920, 36.412682, 48.758408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.355156, 36.506989, 48.374622>,  <36.318096, 36.563572, 48.144352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.355156, 36.506989, 48.374622>,  <36.416920, 36.412682, 48.758408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355156, 36.506989, 48.374622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984536, 0.044609, 0.169409,
		0.082742, 0.970784, 0.225236,
		-0.154412, 0.235771, -0.959463,
		36.308834, 36.577721, 48.086784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889053, 36.966385, 48.784561>,  <36.416920, 36.412682, 48.758408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889053, 36.966385, 48.784561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.890373, 36.820889, 48.411964>,  <35.891167, 36.733589, 48.188404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.890373, 36.820889, 48.411964>,  <35.889053, 36.966385, 48.784561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890373, 36.820889, 48.411964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998653, -0.049451, 0.015772,
		-0.051800, 0.930186, -0.363414,
		0.003300, -0.363741, -0.931494,
		35.891365, 36.711765, 48.132515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518322, 37.414806, 48.334309>,  <35.889053, 36.966385, 48.784561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518322, 37.414806, 48.334309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.511528, 37.062164, 48.145638>,  <35.507450, 36.850578, 48.032433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.511528, 37.062164, 48.145638>,  <35.518322, 37.414806, 48.334309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511528, 37.062164, 48.145638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997762, 0.045460, -0.049029,
		0.064667, 0.469793, -0.880405,
		-0.016989, -0.881605, -0.471682,
		35.506432, 36.797684, 48.004131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020367, 37.548100, 47.775238>,  <35.518322, 37.414806, 48.334309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020367, 37.548100, 47.775238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.057884, 37.151104, 47.806656>,  <35.080395, 36.912907, 47.825504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.057884, 37.151104, 47.806656>,  <35.020367, 37.548100, 47.775238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057884, 37.151104, 47.806656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995300, -0.095386, -0.016743,
		0.024109, -0.076602, -0.996770,
		0.093795, -0.992489, 0.078541,
		35.086021, 36.853359, 47.830219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827026, 37.340637, 47.210197>,  <35.020367, 37.548100, 47.775238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827026, 37.340637, 47.210197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.802246, 37.033970, 47.465816>,  <34.787376, 36.849968, 47.619186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.802246, 37.033970, 47.465816>,  <34.827026, 37.340637, 47.210197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802246, 37.033970, 47.465816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948535, -0.153997, -0.276708,
		0.310555, -0.623301, -0.717671,
		-0.061953, -0.766669, 0.639047,
		34.783661, 36.803970, 47.657532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584869, 36.713421, 46.809036>,  <34.827026, 37.340637, 47.210197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584869, 36.713421, 46.809036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.478065, 36.659138, 47.190674>,  <34.413982, 36.626568, 47.419655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.478065, 36.659138, 47.190674>,  <34.584869, 36.713421, 46.809036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478065, 36.659138, 47.190674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942072, -0.171788, -0.288078,
		0.202995, -0.975742, -0.081976,
		-0.267007, -0.135706, 0.954092,
		34.397964, 36.618427, 47.476902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942062, 36.385433, 46.715309>,  <34.584869, 36.713421, 46.809036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942062, 36.385433, 46.715309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.946186, 36.410931, 47.114475>,  <33.948658, 36.426231, 47.353973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.946186, 36.410931, 47.114475>,  <33.942062, 36.385433, 46.715309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946186, 36.410931, 47.114475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996228, -0.085332, 0.015739,
		0.086157, -0.994311, 0.062635,
		0.010304, 0.063755, 0.997913,
		33.949276, 36.430054, 47.413849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540810, 35.828537, 47.035622>,  <33.942062, 36.385433, 46.715309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540810, 35.828537, 47.035622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.555866, 36.144920, 47.279907>,  <33.564899, 36.334751, 47.426479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.555866, 36.144920, 47.279907>,  <33.540810, 35.828537, 47.035622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555866, 36.144920, 47.279907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980291, 0.147835, -0.131050,
		-0.193940, -0.593748, 0.780929,
		0.037638, 0.790954, 0.610717,
		33.567158, 36.382206, 47.463123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887012, 35.752724, 47.436115>,  <33.540810, 35.828537, 47.035622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887012, 35.752724, 47.436115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.983505, 36.122471, 47.554333>,  <33.041401, 36.344318, 47.625263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.983505, 36.122471, 47.554333>,  <32.887012, 35.752724, 47.436115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983505, 36.122471, 47.554333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970046, 0.220701, 0.101501,
		0.028598, -0.311176, 0.949922,
		0.241233, 0.924371, 0.295543,
		33.055874, 36.399780, 47.642994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446796, 35.862045, 48.016167>,  <32.887012, 35.752724, 47.436115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446796, 35.862045, 48.016167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.566360, 36.192997, 47.825970>,  <32.638100, 36.391567, 47.711849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.566360, 36.192997, 47.825970>,  <32.446796, 35.862045, 48.016167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566360, 36.192997, 47.825970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952677, 0.287610, -0.098425,
		0.055322, 0.482414, 0.874194,
		0.298909, 0.827380, -0.475496,
		32.656033, 36.441212, 47.683319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804066, 35.573322, 48.126118>,  <32.446796, 35.862045, 48.016167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804066, 35.573322, 48.126118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.587793, 35.660339, 47.801075>,  <31.458029, 35.712551, 47.606049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.587793, 35.660339, 47.801075>,  <31.804066, 35.573322, 48.126118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587793, 35.660339, 47.801075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802720, 0.155492, 0.575728,
		0.251602, 0.963585, 0.090557,
		-0.540682, 0.217546, -0.812611,
		31.425589, 35.725605, 47.557293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294172, 36.108570, 48.356915>,  <31.804066, 35.573322, 48.126118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294172, 36.108570, 48.356915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.126198, 36.001251, 48.010117>,  <31.025414, 35.936859, 47.802040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.126198, 36.001251, 48.010117>,  <31.294172, 36.108570, 48.356915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126198, 36.001251, 48.010117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906524, 0.169516, 0.386625,
		0.043240, 0.948305, -0.314401,
		-0.419935, -0.268294, -0.866991,
		31.000217, 35.920761, 47.750019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771311, 36.687305, 48.109592>,  <31.294172, 36.108570, 48.356915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771311, 36.687305, 48.109592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.669624, 36.329227, 47.963169>,  <30.608612, 36.114380, 47.875317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.669624, 36.329227, 47.963169>,  <30.771311, 36.687305, 48.109592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669624, 36.329227, 47.963169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923411, 0.112129, 0.367069,
		-0.287554, 0.431334, -0.855140,
		-0.254215, -0.895197, -0.366055,
		30.593359, 36.060669, 47.853352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138611, 36.768299, 48.159962>,  <30.771311, 36.687305, 48.109592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138611, 36.768299, 48.159962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.148680, 36.377274, 48.076313>,  <30.154720, 36.142658, 48.026123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.148680, 36.377274, 48.076313>,  <30.138611, 36.768299, 48.159962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.148680, 36.377274, 48.076313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911975, -0.108141, 0.395735,
		-0.409471, 0.180755, -0.894237,
		0.025172, -0.977565, -0.209125,
		30.156231, 36.084003, 48.013577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.512934, 36.565746, 47.858452>,  <30.138611, 36.768299, 48.159962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.512934, 36.565746, 47.858452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.637188, 36.214893, 48.004959>,  <29.711740, 36.004383, 48.092865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.637188, 36.214893, 48.004959>,  <29.512934, 36.565746, 47.858452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.637188, 36.214893, 48.004959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940438, -0.227604, 0.252533,
		-0.138139, -0.422900, -0.895585,
		0.310635, -0.877127, 0.366271,
		29.730379, 35.951756, 48.114841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879442, 36.248135, 47.789654>,  <29.512934, 36.565746, 47.858452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.879442, 36.248135, 47.789654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.128283, 36.038719, 48.022511>,  <29.277588, 35.913071, 48.162224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.128283, 36.038719, 48.022511>,  <28.879442, 36.248135, 47.789654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.128283, 36.038719, 48.022511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781558, -0.459352, 0.422093,
		0.046427, -0.717566, -0.694941,
		0.622102, -0.523540, 0.582146,
		29.314913, 35.881657, 48.197155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.687222, 35.477097, 47.843433>,  <28.879442, 36.248135, 47.789654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.687222, 35.477097, 47.843433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.870737, 35.613533, 48.171619>,  <28.980846, 35.695396, 48.368530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.870737, 35.613533, 48.171619>,  <28.687222, 35.477097, 47.843433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870737, 35.613533, 48.171619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737353, -0.369094, 0.565757,
		0.495807, -0.864536, 0.082172,
		0.458788, 0.341096, 0.820467,
		29.008373, 35.715862, 48.417759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.644688, 34.960850, 48.302151>,  <28.687222, 35.477097, 47.843433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.644688, 34.960850, 48.302151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.697636, 35.287704, 48.526566>,  <28.729404, 35.483818, 48.661213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.697636, 35.287704, 48.526566>,  <28.644688, 34.960850, 48.302151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697636, 35.287704, 48.526566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713371, -0.314437, 0.626284,
		0.688172, -0.483125, 0.541304,
		0.132368, 0.817141, 0.561034,
		28.737347, 35.532848, 48.694874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555233, 34.773895, 48.951313>,  <28.644688, 34.960850, 48.302151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.555233, 34.773895, 48.951313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.493874, 35.168232, 48.978390>,  <28.457058, 35.404835, 48.994637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.493874, 35.168232, 48.978390>,  <28.555233, 34.773895, 48.951313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.493874, 35.168232, 48.978390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778827, -0.162779, 0.605749,
		0.608191, 0.040205, 0.792772,
		-0.153401, 0.985843, 0.067688,
		28.447853, 35.463985, 48.998695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.521147, 34.864349, 49.651550>,  <28.555233, 34.773895, 48.951313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.521147, 34.864349, 49.651550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.334423, 35.179756, 49.491390>,  <28.222389, 35.368999, 49.395294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.334423, 35.179756, 49.491390>,  <28.521147, 34.864349, 49.651550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.334423, 35.179756, 49.491390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728162, -0.085771, 0.680017,
		0.501864, 0.608998, 0.614210,
		-0.466811, 0.788520, -0.400404,
		28.194380, 35.416313, 49.371269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.188414, 35.158726, 50.282097>,  <28.521147, 34.864349, 49.651550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.188414, 35.158726, 50.282097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.017197, 35.334862, 49.966408>,  <27.914467, 35.440544, 49.776993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.017197, 35.334862, 49.966408>,  <28.188414, 35.158726, 50.282097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.017197, 35.334862, 49.966408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874328, 0.019278, 0.484952,
		0.228761, 0.897622, 0.376753,
		-0.428040, 0.440344, -0.789227,
		27.888784, 35.466965, 49.729641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930338, 35.789585, 50.529678>,  <28.188414, 35.158726, 50.282097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.930338, 35.789585, 50.529678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.720478, 35.720467, 50.196239>,  <27.594563, 35.678993, 49.996178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.720478, 35.720467, 50.196239>,  <27.930338, 35.789585, 50.529678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.720478, 35.720467, 50.196239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847042, 0.203983, 0.490827,
		0.085224, 0.963603, -0.253389,
		-0.524649, -0.172801, -0.833596,
		27.563084, 35.668625, 49.946159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.453180, 36.326313, 50.501122>,  <27.930338, 35.789585, 50.529678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.453180, 36.326313, 50.501122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.311369, 36.034302, 50.267414>,  <27.226282, 35.859097, 50.127190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.311369, 36.034302, 50.267414>,  <27.453180, 36.326313, 50.501122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.311369, 36.034302, 50.267414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890067, 0.072016, 0.450105,
		-0.286513, 0.679613, -0.675305,
		-0.354530, -0.730028, -0.584267,
		27.205009, 35.815292, 50.092133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.728539, 36.525021, 50.436378>,  <27.453180, 36.326313, 50.501122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.728539, 36.525021, 50.436378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.762447, 36.151585, 50.297112>,  <26.782793, 35.927525, 50.213551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.762447, 36.151585, 50.297112>,  <26.728539, 36.525021, 50.436378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.762447, 36.151585, 50.297112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855548, -0.247311, 0.454835,
		-0.510736, 0.259317, -0.819697,
		0.084774, -0.933591, -0.348168,
		26.787880, 35.871506, 50.192661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.058077, 36.420071, 50.154049>,  <26.728539, 36.525021, 50.436378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.058077, 36.420071, 50.154049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.245235, 36.074448, 50.228321>,  <26.357531, 35.867073, 50.272884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.245235, 36.074448, 50.228321>,  <26.058077, 36.420071, 50.154049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.245235, 36.074448, 50.228321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805578, -0.330565, 0.491702,
		-0.363480, -0.379643, -0.850737,
		0.467896, -0.864059, 0.185678,
		26.385605, 35.815231, 50.284023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.573673, 35.873608, 50.005333>,  <26.058077, 36.420071, 50.154049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.573673, 35.873608, 50.005333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.819290, 35.706486, 50.273178>,  <25.966661, 35.606213, 50.433887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.819290, 35.706486, 50.273178>,  <25.573673, 35.873608, 50.005333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.819290, 35.706486, 50.273178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779872, -0.190627, 0.596206,
		-0.121449, -0.888314, -0.442887,
		0.614044, -0.417803, 0.669619,
		26.003504, 35.581142, 50.474064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.148764, 35.403229, 50.369816>,  <25.573673, 35.873608, 50.005333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.148764, 35.403229, 50.369816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.478729, 35.408222, 50.595863>,  <25.676708, 35.411217, 50.731491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.478729, 35.408222, 50.595863>,  <25.148764, 35.403229, 50.369816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.478729, 35.408222, 50.595863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518107, -0.383058, 0.764743,
		0.226020, -0.923640, -0.309522,
		0.824912, 0.012482, 0.565123,
		25.726202, 35.411968, 50.765400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.284784, 34.720524, 50.778500>,  <25.148764, 35.403229, 50.369816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.284784, 34.720524, 50.778500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.453753, 35.017811, 50.986034>,  <25.555134, 35.196182, 51.110554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.453753, 35.017811, 50.986034>,  <25.284784, 34.720524, 50.778500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.453753, 35.017811, 50.986034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543975, -0.249993, 0.800996,
		0.725018, -0.620592, 0.298688,
		0.422422, 0.743216, 0.518836,
		25.580479, 35.240776, 51.141685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.425745, 34.398209, 51.414337>,  <25.284784, 34.720524, 50.778500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.425745, 34.398209, 51.414337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.438826, 34.788059, 51.502918>,  <25.446674, 35.021969, 51.556068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.438826, 34.788059, 51.502918>,  <25.425745, 34.398209, 51.414337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.438826, 34.788059, 51.502918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578399, -0.162248, 0.799456,
		0.815098, -0.154231, 0.558415,
		0.032699, 0.974622, 0.221455,
		25.448635, 35.080444, 51.569355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.558863, 34.286961, 52.016495>,  <25.425745, 34.398209, 51.414337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.558863, 34.286961, 52.016495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.429155, 34.664810, 51.996319>,  <25.351332, 34.891518, 51.984215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.429155, 34.664810, 51.996319>,  <25.558863, 34.286961, 52.016495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.429155, 34.664810, 51.996319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596929, -0.162970, 0.785568,
		0.733843, 0.284842, 0.616716,
		-0.324269, 0.944620, -0.050436,
		25.331875, 34.948196, 51.981190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.544086, 34.600918, 52.735859>,  <25.558863, 34.286961, 52.016495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.544086, 34.600918, 52.735859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.273176, 34.761036, 52.488937>,  <25.110630, 34.857105, 52.340786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.273176, 34.761036, 52.488937>,  <25.544086, 34.600918, 52.735859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.273176, 34.761036, 52.488937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722544, -0.203747, 0.660619,
		0.138667, 0.893450, 0.427223,
		-0.677276, 0.400293, -0.617303,
		25.069994, 34.881123, 52.303745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.155516, 35.172226, 53.026066>,  <25.544086, 34.600918, 52.735859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.155516, 35.172226, 53.026066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.941732, 34.951885, 52.769657>,  <24.813461, 34.819679, 52.615810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.941732, 34.951885, 52.769657>,  <25.155516, 35.172226, 53.026066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.941732, 34.951885, 52.769657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621026, -0.258508, 0.739932,
		-0.573306, 0.793556, -0.203934,
		-0.534459, -0.550856, -0.641023,
		24.781395, 34.786629, 52.577351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<35.185463, 32.451633, 47.534271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.816826, 32.463985, 47.379501>,  <34.595642, 32.471397, 47.286640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.816826, 32.463985, 47.379501>,  <35.185463, 32.451633, 47.534271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816826, 32.463985, 47.379501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348519, 0.373030, 0.859874,
		0.170885, 0.927305, -0.333020,
		-0.921592, 0.030876, -0.386929,
		34.540348, 32.473248, 47.263424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902145, 33.093624, 47.668507>,  <35.185463, 32.451633, 47.534271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902145, 33.093624, 47.668507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.560577, 32.893593, 47.610889>,  <34.355637, 32.773575, 47.576321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.560577, 32.893593, 47.610889>,  <34.902145, 33.093624, 47.668507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560577, 32.893593, 47.610889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324932, 0.296129, 0.898180,
		-0.406504, 0.813775, -0.415361,
		-0.853917, -0.500078, -0.144044,
		34.304401, 32.743568, 47.567677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409508, 33.600124, 47.850204>,  <34.902145, 33.093624, 47.668507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409508, 33.600124, 47.850204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.228104, 33.243629, 47.848316>,  <34.119263, 33.029732, 47.847183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.228104, 33.243629, 47.848316>,  <34.409508, 33.600124, 47.850204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228104, 33.243629, 47.848316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601979, 0.302404, 0.739036,
		-0.657230, 0.338000, -0.673650,
		-0.453508, -0.891240, -0.004720,
		34.092052, 32.976257, 47.846901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642323, 33.711945, 47.782749>,  <34.409508, 33.600124, 47.850204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642323, 33.711945, 47.782749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.697964, 33.346649, 47.935928>,  <33.731350, 33.127472, 48.027836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.697964, 33.346649, 47.935928>,  <33.642323, 33.711945, 47.782749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697964, 33.346649, 47.935928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657054, 0.204206, 0.725658,
		-0.740899, -0.352556, -0.571641,
		0.139103, -0.913238, 0.382944,
		33.739693, 33.072678, 48.050812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944939, 33.486771, 47.964283>,  <33.642323, 33.711945, 47.782749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944939, 33.486771, 47.964283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.204521, 33.271782, 48.179684>,  <33.360271, 33.142788, 48.308922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.204521, 33.271782, 48.179684>,  <32.944939, 33.486771, 47.964283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204521, 33.271782, 48.179684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472090, 0.270585, 0.838996,
		-0.596647, -0.798690, -0.078138,
		0.648955, -0.537473, 0.538498,
		33.399208, 33.110538, 48.341232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538914, 33.078594, 48.468369>,  <32.944939, 33.486771, 47.964283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538914, 33.078594, 48.468369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.914970, 33.078938, 48.604687>,  <33.140602, 33.079144, 48.686478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.914970, 33.078938, 48.604687>,  <32.538914, 33.078594, 48.468369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914970, 33.078938, 48.604687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332703, 0.218909, 0.917272,
		-0.073816, -0.975745, 0.206090,
		0.940138, 0.000857, 0.340792,
		33.197010, 33.079193, 48.706924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571728, 32.601288, 49.006493>,  <32.538914, 33.078594, 48.468369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571728, 32.601288, 49.006493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.870472, 32.860893, 49.064438>,  <33.049717, 33.016655, 49.099205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.870472, 32.860893, 49.064438>,  <32.571728, 32.601288, 49.006493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870472, 32.860893, 49.064438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321955, 0.162294, 0.932741,
		0.581851, -0.743264, 0.330163,
		0.746856, 0.649015, 0.144866,
		33.094528, 33.055599, 49.107899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645241, 32.746212, 49.739853>,  <32.571728, 32.601288, 49.006493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645241, 32.746212, 49.739853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.869129, 33.042290, 49.590816>,  <33.003464, 33.219936, 49.501396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.869129, 33.042290, 49.590816>,  <32.645241, 32.746212, 49.739853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869129, 33.042290, 49.590816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125198, 0.368923, 0.920989,
		0.819170, -0.562144, 0.113823,
		0.559720, 0.740196, -0.372590,
		33.037045, 33.264347, 49.479038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321064, 32.627373, 50.028721>,  <32.645241, 32.746212, 49.739853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321064, 32.627373, 50.028721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.268616, 33.011501, 49.930267>,  <33.237144, 33.241978, 49.871197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.268616, 33.011501, 49.930267>,  <33.321064, 32.627373, 50.028721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268616, 33.011501, 49.930267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075364, 0.257214, 0.963411,
		0.988497, 0.107776, -0.106101,
		-0.131123, 0.960326, -0.246133,
		33.229279, 33.299599, 49.856426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923824, 33.048786, 50.202126>,  <33.321064, 32.627373, 50.028721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923824, 33.048786, 50.202126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.629539, 33.318817, 50.180214>,  <33.452969, 33.480835, 50.167068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.629539, 33.318817, 50.180214>,  <33.923824, 33.048786, 50.202126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629539, 33.318817, 50.180214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108226, 0.197014, 0.974409,
		0.668591, 0.710956, -0.218007,
		-0.735713, 0.675075, -0.054778,
		33.408825, 33.521339, 50.163780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181896, 33.659290, 50.576080>,  <33.923824, 33.048786, 50.202126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181896, 33.659290, 50.576080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.786655, 33.720818, 50.576057>,  <33.549511, 33.757732, 50.576046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.786655, 33.720818, 50.576057>,  <34.181896, 33.659290, 50.576080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786655, 33.720818, 50.576057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071935, 0.462414, 0.883741,
		0.135956, 0.873221, -0.467976,
		-0.988100, 0.153814, -0.000053,
		33.490227, 33.766960, 50.576042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085411, 34.365246, 50.892483>,  <34.181896, 33.659290, 50.576080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085411, 34.365246, 50.892483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.725811, 34.195812, 50.936970>,  <33.510052, 34.094151, 50.963661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.725811, 34.195812, 50.936970>,  <34.085411, 34.365246, 50.892483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725811, 34.195812, 50.936970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166069, 0.564707, 0.808410,
		-0.405234, 0.708294, -0.578018,
		-0.899003, -0.423586, 0.111213,
		33.456112, 34.068737, 50.970333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834702, 34.444393, 51.135868>,  <34.085411, 34.365246, 50.892483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834702, 34.444393, 51.135868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.069061, 34.526333, 51.449493>,  <35.209675, 34.575497, 51.637669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.069061, 34.526333, 51.449493>,  <34.834702, 34.444393, 51.135868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069061, 34.526333, 51.449493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799793, -0.302091, -0.518722,
		0.130598, 0.931008, -0.340834,
		0.585898, 0.204853, 0.784066,
		35.244831, 34.587788, 51.684711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331059, 34.868618, 50.907207>,  <34.834702, 34.444393, 51.135868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331059, 34.868618, 50.907207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.486324, 34.695686, 51.232761>,  <35.579483, 34.591927, 51.428093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.486324, 34.695686, 51.232761>,  <35.331059, 34.868618, 50.907207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486324, 34.695686, 51.232761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888372, -0.059429, -0.455261,
		0.245193, 0.899754, 0.361004,
		0.388169, -0.432333, 0.813888,
		35.602776, 34.565987, 51.476929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887653, 35.196442, 50.914314>,  <35.331059, 34.868618, 50.907207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887653, 35.196442, 50.914314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.957939, 34.887417, 51.158371>,  <36.000111, 34.702003, 51.304806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.957939, 34.887417, 51.158371>,  <35.887653, 35.196442, 50.914314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957939, 34.887417, 51.158371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962372, 0.004311, -0.271700,
		0.207275, 0.634925, 0.744250,
		0.175717, -0.772562, 0.610141,
		36.010654, 34.655647, 51.341412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498554, 35.359737, 51.352726>,  <35.887653, 35.196442, 50.914314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498554, 35.359737, 51.352726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.486954, 34.960125, 51.339539>,  <36.479996, 34.720356, 51.331627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.486954, 34.960125, 51.339539>,  <36.498554, 35.359737, 51.352726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486954, 34.960125, 51.339539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948139, -0.017046, -0.317400,
		0.316532, -0.040461, 0.947719,
		-0.028997, -0.999036, -0.032967,
		36.478256, 34.660416, 51.329647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060959, 35.187988, 51.689362>,  <36.498554, 35.359737, 51.352726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060959, 35.187988, 51.689362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.947071, 34.881458, 51.458996>,  <36.878738, 34.697540, 51.320774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.947071, 34.881458, 51.458996>,  <37.060959, 35.187988, 51.689362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947071, 34.881458, 51.458996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926064, -0.064663, -0.371786,
		0.247668, -0.639192, 0.728076,
		-0.284722, -0.766324, -0.575918,
		36.861656, 34.651562, 51.286221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619415, 34.748081, 51.693443>,  <37.060959, 35.187988, 51.689362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619415, 34.748081, 51.693443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.424274, 34.598930, 51.377731>,  <37.307190, 34.509441, 51.188305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.424274, 34.598930, 51.377731>,  <37.619415, 34.748081, 51.693443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424274, 34.598930, 51.377731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868625, -0.117709, -0.481284,
		0.086552, -0.920386, 0.381312,
		-0.487851, -0.372873, -0.789282,
		37.277920, 34.487068, 51.140945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844051, 33.996738, 51.486416>,  <37.619415, 34.748081, 51.693443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844051, 33.996738, 51.486416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.684746, 34.162834, 51.159256>,  <37.589161, 34.262489, 50.962959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.684746, 34.162834, 51.159256>,  <37.844051, 33.996738, 51.486416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684746, 34.162834, 51.159256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801939, -0.275236, -0.530226,
		-0.445285, -0.867078, -0.223376,
		-0.398266, 0.415236, -0.817902,
		37.565266, 34.287403, 50.913887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934296, 33.485123, 50.945080>,  <37.844051, 33.996738, 51.486416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934296, 33.485123, 50.945080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.891045, 33.845650, 50.777302>,  <37.865093, 34.061966, 50.676636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.891045, 33.845650, 50.777302>,  <37.934296, 33.485123, 50.945080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891045, 33.845650, 50.777302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731972, -0.213319, -0.647080,
		-0.672700, -0.376994, -0.636671,
		-0.108131, 0.901316, -0.419449,
		37.858604, 34.116043, 50.651466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230324, 33.428047, 50.291637>,  <37.934296, 33.485123, 50.945080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230324, 33.428047, 50.291637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.188030, 33.825771, 50.286388>,  <38.162655, 34.064404, 50.283237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.188030, 33.825771, 50.286388>,  <38.230324, 33.428047, 50.291637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188030, 33.825771, 50.286388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787852, 0.075709, -0.611194,
		-0.606722, -0.074961, -0.791372,
		-0.105729, 0.994308, -0.013124,
		38.156311, 34.124065, 50.282452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640598, 33.673332, 49.592770>,  <38.230324, 33.428047, 50.291637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640598, 33.673332, 49.592770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.591743, 34.003960, 49.812538>,  <38.562431, 34.202335, 49.944397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.591743, 34.003960, 49.812538>,  <38.640598, 33.673332, 49.592770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591743, 34.003960, 49.812538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682724, 0.471760, -0.557970,
		-0.720396, 0.306953, -0.621940,
		-0.122135, 0.826573, 0.549418,
		38.555103, 34.251930, 49.977364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436172, 34.235950, 49.136635>,  <38.640598, 33.673332, 49.592770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436172, 34.235950, 49.136635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.590157, 34.418018, 49.457790>,  <38.682549, 34.527260, 49.650482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.590157, 34.418018, 49.457790>,  <38.436172, 34.235950, 49.136635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590157, 34.418018, 49.457790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679756, 0.448603, -0.580247,
		-0.624289, 0.769138, -0.136713,
		0.384960, 0.455173, 0.802884,
		38.705643, 34.554569, 49.698654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405731, 34.932007, 48.947826>,  <38.436172, 34.235950, 49.136635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405731, 34.932007, 48.947826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.683151, 34.898468, 49.234032>,  <38.849606, 34.878345, 49.405754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.683151, 34.898468, 49.234032>,  <38.405731, 34.932007, 48.947826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683151, 34.898468, 49.234032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627107, 0.559106, -0.542344,
		-0.354572, 0.824846, 0.440350,
		0.693553, -0.083847, 0.715510,
		38.891216, 34.873314, 49.448685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679050, 35.669495, 49.105450>,  <38.405731, 34.932007, 48.947826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679050, 35.669495, 49.105450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.953442, 35.392673, 49.195332>,  <39.118076, 35.226582, 49.249260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.953442, 35.392673, 49.195332>,  <38.679050, 35.669495, 49.105450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953442, 35.392673, 49.195332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726325, 0.632878, -0.268175,
		0.043378, 0.347173, 0.936797,
		0.685981, -0.692052, 0.224708,
		39.159237, 35.185059, 49.262745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657661, 36.287891, 49.622704>,  <38.679050, 35.669495, 49.105450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657661, 36.287891, 49.622704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.670204, 36.409382, 50.003601>,  <38.677731, 36.482277, 50.232140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.670204, 36.409382, 50.003601>,  <38.657661, 36.287891, 49.622704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670204, 36.409382, 50.003601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182477, 0.934959, -0.304227,
		-0.982710, 0.183301, -0.026108,
		0.031355, 0.303731, 0.952242,
		38.679611, 36.500500, 50.289272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282650, 36.979744, 49.668201>,  <38.657661, 36.287891, 49.622704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282650, 36.979744, 49.668201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.503727, 36.964203, 50.001194>,  <38.636372, 36.954880, 50.200989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.503727, 36.964203, 50.001194>,  <38.282650, 36.979744, 49.668201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503727, 36.964203, 50.001194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209089, 0.973427, -0.093390,
		-0.806731, 0.225678, 0.546127,
		0.552691, -0.038849, 0.832480,
		38.669533, 36.952549, 50.250938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244259, 37.614162, 50.020565>,  <38.282650, 36.979744, 49.668201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244259, 37.614162, 50.020565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.592373, 37.478516, 50.163456>,  <38.801239, 37.397129, 50.249191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.592373, 37.478516, 50.163456>,  <38.244259, 37.614162, 50.020565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592373, 37.478516, 50.163456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414410, 0.896106, -0.158928,
		-0.266217, 0.286350, 0.920398,
		0.870283, -0.339113, 0.357225,
		38.853458, 37.376781, 50.270622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571674, 37.849751, 49.361027>,  <38.244259, 37.614162, 50.020565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571674, 37.849751, 49.361027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.593143, 37.460300, 49.272331>,  <38.606026, 37.226631, 49.219112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.593143, 37.460300, 49.272331>,  <38.571674, 37.849751, 49.361027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593143, 37.460300, 49.272331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890346, -0.147204, 0.430832,
		-0.452111, 0.174304, -0.874765,
		0.053673, -0.973627, -0.221743,
		38.609245, 37.168213, 49.205807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630413, 38.405838, 48.798016>,  <38.571674, 37.849751, 49.361027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630413, 38.405838, 48.798016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.593884, 38.585613, 48.442562>,  <38.571964, 38.693478, 48.229290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.593884, 38.585613, 48.442562>,  <38.630413, 38.405838, 48.798016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593884, 38.585613, 48.442562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551841, 0.719973, 0.420846,
		0.828934, 0.528818, 0.182264,
		-0.091325, 0.449434, -0.888633,
		38.566486, 38.720444, 48.175972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053471, 39.131397, 48.682629>,  <38.630413, 38.405838, 48.798016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053471, 39.131397, 48.682629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.693050, 39.062294, 48.523495>,  <38.476799, 39.020832, 48.428017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.693050, 39.062294, 48.523495>,  <39.053471, 39.131397, 48.682629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693050, 39.062294, 48.523495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383886, 0.744551, 0.546146,
		0.201855, 0.644825, -0.737194,
		-0.901047, -0.172756, -0.397831,
		38.422737, 39.010468, 48.404144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732201, 39.750481, 48.489021>,  <39.053471, 39.131397, 48.682629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732201, 39.750481, 48.489021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.412415, 39.510433, 48.499660>,  <38.220543, 39.366405, 48.506046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.412415, 39.510433, 48.499660>,  <38.732201, 39.750481, 48.489021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412415, 39.510433, 48.499660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447211, 0.624164, 0.640642,
		-0.401065, 0.500277, -0.767379,
		-0.799469, -0.600119, 0.026601,
		38.172573, 39.330399, 48.507641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166016, 40.191185, 48.291023>,  <38.732201, 39.750481, 48.489021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166016, 40.191185, 48.291023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.007645, 39.875221, 48.478333>,  <37.912621, 39.685642, 48.590717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.007645, 39.875221, 48.478333>,  <38.166016, 40.191185, 48.291023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007645, 39.875221, 48.478333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520092, 0.613165, 0.594586,
		-0.756798, -0.008128, -0.653598,
		-0.395931, -0.789913, 0.468270,
		37.888866, 39.638248, 48.618813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523418, 40.356514, 48.331642>,  <38.166016, 40.191185, 48.291023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523418, 40.356514, 48.331642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.543980, 40.057766, 48.596832>,  <37.556316, 39.878517, 48.755947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.543980, 40.057766, 48.596832>,  <37.523418, 40.356514, 48.331642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543980, 40.057766, 48.596832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547074, 0.534329, 0.644361,
		-0.835504, -0.395823, -0.381127,
		0.051406, -0.746871, 0.662979,
		37.559402, 39.833706, 48.795727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822983, 40.205662, 48.429718>,  <37.523418, 40.356514, 48.331642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822983, 40.205662, 48.429718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.025551, 40.075291, 48.749046>,  <37.147091, 39.997070, 48.940643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.025551, 40.075291, 48.749046>,  <36.822983, 40.205662, 48.429718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025551, 40.075291, 48.749046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689023, 0.403685, 0.601902,
		-0.518444, -0.854875, -0.020134,
		0.506423, -0.325925, 0.798316,
		37.177479, 39.977512, 48.988541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272690, 39.887257, 48.882637>,  <36.822983, 40.205662, 48.429718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272690, 39.887257, 48.882637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.591778, 39.955608, 49.113964>,  <36.783230, 39.996620, 49.252758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.591778, 39.955608, 49.113964>,  <36.272690, 39.887257, 48.882637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591778, 39.955608, 49.113964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601996, 0.281815, 0.747115,
		-0.035314, -0.944130, 0.327675,
		0.797718, 0.170876, 0.578314,
		36.831093, 40.006870, 49.287457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260929, 39.464195, 49.601837>,  <36.272690, 39.887257, 48.882637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260929, 39.464195, 49.601837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.478931, 39.797398, 49.639935>,  <36.609734, 39.997318, 49.662792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.478931, 39.797398, 49.639935>,  <36.260929, 39.464195, 49.601837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478931, 39.797398, 49.639935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635660, 0.336457, 0.694790,
		0.546719, -0.439206, 0.712879,
		0.545009, 0.833003, 0.095239,
		36.642433, 40.047298, 49.668507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248268, 39.550972, 50.300510>,  <36.260929, 39.464195, 49.601837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248268, 39.550972, 50.300510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.383286, 39.889599, 50.135887>,  <36.464294, 40.092777, 50.037113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.383286, 39.889599, 50.135887>,  <36.248268, 39.550972, 50.300510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383286, 39.889599, 50.135887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523062, 0.532191, 0.665717,
		0.782605, -0.009438, 0.622447,
		0.337543, 0.846572, -0.411559,
		36.484550, 40.143570, 50.012421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584625, 39.987690, 50.846687>,  <36.248268, 39.550972, 50.300510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584625, 39.987690, 50.846687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.484184, 40.259560, 50.571011>,  <36.423920, 40.422680, 50.405605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.484184, 40.259560, 50.571011>,  <36.584625, 39.987690, 50.846687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484184, 40.259560, 50.571011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501304, 0.517768, 0.693260,
		0.828035, 0.519575, 0.210712,
		-0.251101, 0.679675, -0.689195,
		36.408855, 40.463463, 50.364250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572376, 40.545818, 51.304230>,  <36.584625, 39.987690, 50.846687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572376, 40.545818, 51.304230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.393520, 40.669872, 50.968639>,  <36.286209, 40.744305, 50.767284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.393520, 40.669872, 50.968639>,  <36.572376, 40.545818, 51.304230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393520, 40.669872, 50.968639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467170, 0.718895, 0.514726,
		0.762771, 0.622099, -0.176560,
		-0.447138, 0.310134, -0.838978,
		36.259380, 40.762913, 50.716946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547619, 41.265717, 51.396942>,  <36.572376, 40.545818, 51.304230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547619, 41.265717, 51.396942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.285252, 41.175266, 51.108879>,  <36.127831, 41.120995, 50.936039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.285252, 41.175266, 51.108879>,  <36.547619, 41.265717, 51.396942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285252, 41.175266, 51.108879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628276, 0.692361, 0.354833,
		0.418373, 0.685203, -0.596206,
		-0.655922, -0.226129, -0.720161,
		36.088474, 41.107426, 50.892830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352821, 41.910946, 51.044033>,  <36.547619, 41.265717, 51.396942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352821, 41.910946, 51.044033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.054176, 41.651493, 50.984909>,  <35.874989, 41.495823, 50.949436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.054176, 41.651493, 50.984909>,  <36.352821, 41.910946, 51.044033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054176, 41.651493, 50.984909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661701, 0.701123, 0.265665,
		-0.068684, 0.296156, -0.952667,
		-0.746615, -0.648627, -0.147811,
		35.830193, 41.456905, 50.940567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702461, 42.333111, 50.849915>,  <36.352821, 41.910946, 51.044033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702461, 42.333111, 50.849915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.536640, 41.978283, 50.931160>,  <35.437149, 41.765385, 50.979908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.536640, 41.978283, 50.931160>,  <35.702461, 42.333111, 50.849915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536640, 41.978283, 50.931160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780168, 0.461336, 0.422501,
		-0.468491, 0.016687, -0.883311,
		-0.414553, -0.887068, 0.203113,
		35.412273, 41.712162, 50.992092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026146, 42.407967, 50.669701>,  <35.702461, 42.333111, 50.849915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026146, 42.407967, 50.669701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.043289, 42.109207, 50.935123>,  <35.053577, 41.929951, 51.094379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.043289, 42.109207, 50.935123>,  <35.026146, 42.407967, 50.669701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043289, 42.109207, 50.935123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721123, 0.436554, 0.537961,
		-0.691480, -0.501565, -0.519892,
		0.042862, -0.746895, 0.663559,
		35.056149, 41.885139, 51.134190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233189, 42.169758, 50.775921>,  <35.026146, 42.407967, 50.669701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233189, 42.169758, 50.775921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.446762, 42.048889, 51.091797>,  <34.574905, 41.976368, 51.281322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.446762, 42.048889, 51.091797>,  <34.233189, 42.169758, 50.775921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446762, 42.048889, 51.091797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765747, 0.223222, 0.603162,
		-0.358535, -0.926749, -0.112203,
		0.533934, -0.302174, 0.789688,
		34.606941, 41.958237, 51.328705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754543, 41.826748, 51.178619>,  <34.233189, 42.169758, 50.775921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754543, 41.826748, 51.178619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.047829, 41.901463, 51.440159>,  <34.223801, 41.946293, 51.597080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.047829, 41.901463, 51.440159>,  <33.754543, 41.826748, 51.178619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047829, 41.901463, 51.440159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679589, 0.167752, 0.714155,
		0.023713, -0.967972, 0.249937,
		0.733210, 0.186789, 0.653845,
		34.267792, 41.957500, 51.636311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506199, 41.490372, 51.766132>,  <33.754543, 41.826748, 51.178619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506199, 41.490372, 51.766132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.793674, 41.740990, 51.886753>,  <33.966160, 41.891361, 51.959126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.793674, 41.740990, 51.886753>,  <33.506199, 41.490372, 51.766132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793674, 41.740990, 51.886753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621029, 0.383320, 0.683659,
		0.312749, -0.678610, 0.664587,
		0.718687, 0.626542, 0.301554,
		34.009281, 41.928951, 51.977219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585529, 41.374493, 52.449043>,  <33.506199, 41.490372, 51.766132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585529, 41.374493, 52.449043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.728031, 41.742489, 52.383671>,  <33.813534, 41.963287, 52.344448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.728031, 41.742489, 52.383671>,  <33.585529, 41.374493, 52.449043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728031, 41.742489, 52.383671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556799, 0.349477, 0.753552,
		0.750372, -0.177459, 0.636750,
		0.356254, 0.919986, -0.163429,
		33.834908, 42.018486, 52.334641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794193, 41.651890, 53.025631>,  <33.585529, 41.374493, 52.449043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794193, 41.651890, 53.025631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.730053, 41.985779, 52.814911>,  <33.691566, 42.186111, 52.688480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.730053, 41.985779, 52.814911>,  <33.794193, 41.651890, 53.025631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730053, 41.985779, 52.814911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614246, 0.333388, 0.715230,
		0.772651, 0.438274, 0.459267,
		-0.160353, 0.834726, -0.526801,
		33.681946, 42.236198, 52.656872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942039, 42.188068, 53.529621>,  <33.794193, 41.651890, 53.025631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942039, 42.188068, 53.529621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.715290, 42.339764, 53.237091>,  <33.579243, 42.430779, 53.061573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.715290, 42.339764, 53.237091>,  <33.942039, 42.188068, 53.529621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715290, 42.339764, 53.237091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602560, 0.414492, 0.681995,
		0.561766, 0.827271, -0.006452,
		-0.566869, 0.379234, -0.731328,
		33.545231, 42.453533, 53.017693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805428, 42.835606, 53.666222>,  <33.942039, 42.188068, 53.529621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805428, 42.835606, 53.666222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.508739, 42.785862, 53.402592>,  <33.330727, 42.756016, 53.244415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.508739, 42.785862, 53.402592>,  <33.805428, 42.835606, 53.666222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508739, 42.785862, 53.402592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628368, 0.472452, 0.618016,
		0.234523, 0.872539, -0.428574,
		-0.741723, -0.124363, -0.659075,
		33.286224, 42.748554, 53.204868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459454, 43.447784, 53.611076>,  <33.805428, 42.835606, 53.666222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459454, 43.447784, 53.611076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.181919, 43.193386, 53.475964>,  <33.015400, 43.040745, 53.394897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.181919, 43.193386, 53.475964>,  <33.459454, 43.447784, 53.611076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181919, 43.193386, 53.475964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688801, 0.449264, 0.568959,
		-0.210105, 0.627429, -0.749793,
		-0.693836, -0.635999, -0.337781,
		32.973766, 43.002586, 53.374630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817856, 43.787815, 53.571976>,  <33.459454, 43.447784, 53.611076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817856, 43.787815, 53.571976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.719456, 43.401241, 53.601593>,  <32.660416, 43.169296, 53.619366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.719456, 43.401241, 53.601593>,  <32.817856, 43.787815, 53.571976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719456, 43.401241, 53.601593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760725, 0.239849, 0.603134,
		-0.600651, 0.092042, -0.794195,
		-0.246000, -0.966437, 0.074047,
		32.645657, 43.111309, 53.623806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338089, 43.965042, 54.085258>,  <32.817856, 43.787815, 53.571976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338089, 43.965042, 54.085258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.600052, 44.151936, 54.322842>,  <32.757229, 44.264072, 54.465393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.600052, 44.151936, 54.322842>,  <32.338089, 43.965042, 54.085258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600052, 44.151936, 54.322842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360290, 0.883936, -0.298075,
		-0.664293, -0.018786, 0.747236,
		0.654909, 0.467231, 0.593961,
		32.796524, 44.292107, 54.501030>
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
