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
	<24.085258, 34.608204, 34.686481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.207270, 34.941322, 34.871269>,  <24.280476, 35.141193, 34.982143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.207270, 34.941322, 34.871269>,  <24.085258, 34.608204, 34.686481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.207270, 34.941322, 34.871269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644555, -0.537630, 0.543602,
		0.701075, 0.131950, -0.700773,
		0.305028, 0.832793, 0.461968,
		24.298779, 35.191158, 35.009861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.871443, 34.830975, 34.564716>,  <24.085258, 34.608204, 34.686481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.871443, 34.830975, 34.564716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.732101, 34.954479, 34.918739>,  <24.648497, 35.028580, 35.131153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.732101, 34.954479, 34.918739>,  <24.871443, 34.830975, 34.564716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.732101, 34.954479, 34.918739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665676, -0.583266, 0.465485,
		0.659944, 0.751311, -0.002351,
		-0.348353, 0.308759, 0.885053,
		24.627596, 35.047108, 35.184254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.470238, 35.040619, 35.065784>,  <24.871443, 34.830975, 34.564716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.470238, 35.040619, 35.065784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.136242, 34.904270, 35.238571>,  <24.935844, 34.822460, 35.342243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.136242, 34.904270, 35.238571>,  <25.470238, 35.040619, 35.065784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.136242, 34.904270, 35.238571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544415, -0.625910, 0.558435,
		0.080015, 0.701457, 0.708206,
		-0.834991, -0.340875, 0.431965,
		24.885744, 34.802010, 35.368160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.156139, 35.350048, 34.911354>,  <25.470238, 35.040619, 35.065784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.156139, 35.350048, 34.911354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.832294, 35.270214, 34.690559>,  <25.637987, 35.222313, 34.558083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.832294, 35.270214, 34.690559>,  <26.156139, 35.350048, 34.911354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.832294, 35.270214, 34.690559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128484, 0.857343, -0.498453,
		0.572727, -0.474476, -0.668473,
		-0.809614, -0.199589, -0.551986,
		25.589411, 35.210339, 34.524963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.016819, 35.583347, 35.439697>,  <26.156139, 35.350048, 34.911354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.016819, 35.583347, 35.439697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.857609, 35.294403, 35.665890>,  <25.762083, 35.121037, 35.801605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.857609, 35.294403, 35.665890>,  <26.016819, 35.583347, 35.439697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.857609, 35.294403, 35.665890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764938, -0.601606, -0.230088,
		0.506403, 0.340976, 0.792017,
		-0.398028, -0.722361, 0.565481,
		25.738201, 35.077694, 35.835533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622248, 35.313908, 35.792854>,  <26.016819, 35.583347, 35.439697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.622248, 35.313908, 35.792854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.345636, 35.025402, 35.777042>,  <26.179668, 34.852299, 35.767555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.345636, 35.025402, 35.777042>,  <26.622248, 35.313908, 35.792854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.345636, 35.025402, 35.777042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722213, -0.689310, -0.057089,
		0.013928, -0.068028, 0.997586,
		-0.691530, -0.721265, -0.039530,
		26.138178, 34.809021, 35.765182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.693520, 34.686874, 36.285507>,  <26.622248, 35.313908, 35.792854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.693520, 34.686874, 36.285507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.477386, 34.573917, 35.968449>,  <26.347708, 34.506142, 35.778214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.477386, 34.573917, 35.968449>,  <26.693520, 34.686874, 36.285507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.477386, 34.573917, 35.968449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645738, -0.743133, -0.175429,
		-0.539504, -0.606635, 0.583892,
		-0.540331, -0.282396, -0.792651,
		26.315287, 34.489197, 35.730652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.444559, 34.020638, 36.285435>,  <26.693520, 34.686874, 36.285507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.444559, 34.020638, 36.285435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.495556, 34.114155, 35.899879>,  <26.526154, 34.170265, 35.668545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.495556, 34.114155, 35.899879>,  <26.444559, 34.020638, 36.285435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.495556, 34.114155, 35.899879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688603, -0.720299, -0.083633,
		-0.713843, -0.653076, -0.252825,
		0.127491, 0.233796, -0.963891,
		26.533804, 34.184292, 35.610714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.120203, 33.511719, 35.838360>,  <26.444559, 34.020638, 36.285435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.120203, 33.511719, 35.838360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.457247, 33.689941, 35.717373>,  <26.659473, 33.796875, 35.644779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.457247, 33.689941, 35.717373>,  <26.120203, 33.511719, 35.838360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.457247, 33.689941, 35.717373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356248, -0.882384, -0.307385,
		-0.403853, 0.151252, -0.902234,
		0.842610, 0.445557, -0.302470,
		26.710030, 33.823608, 35.626633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.323736, 33.332710, 35.136925>,  <26.120203, 33.511719, 35.838360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.323736, 33.332710, 35.136925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.652878, 33.428661, 35.342979>,  <26.850363, 33.486233, 35.466614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.652878, 33.428661, 35.342979>,  <26.323736, 33.332710, 35.136925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.652878, 33.428661, 35.342979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442146, -0.839720, -0.315243,
		0.356952, 0.487166, -0.797028,
		0.822856, 0.239876, 0.515138,
		26.899734, 33.500626, 35.497520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.808811, 33.170784, 34.647167>,  <26.323736, 33.332710, 35.136925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.808811, 33.170784, 34.647167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998747, 33.197784, 34.998158>,  <27.112709, 33.213985, 35.208752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998747, 33.197784, 34.998158>,  <26.808811, 33.170784, 34.647167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.998747, 33.197784, 34.998158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537838, -0.811457, -0.228620,
		0.696604, 0.580500, -0.421619,
		0.474840, 0.067505, 0.877479,
		27.141199, 33.218037, 35.261402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.526920, 33.035816, 34.593773>,  <26.808811, 33.170784, 34.647167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.526920, 33.035816, 34.593773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.456232, 32.973160, 34.982460>,  <27.413818, 32.935566, 35.215672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.456232, 32.973160, 34.982460>,  <27.526920, 33.035816, 34.593773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.456232, 32.973160, 34.982460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502797, -0.863088, -0.047692,
		0.846147, 0.480148, 0.231288,
		-0.176722, -0.156646, 0.971716,
		27.403215, 32.926167, 35.273975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.137793, 32.962807, 34.826664>,  <27.526920, 33.035816, 34.593773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.137793, 32.962807, 34.826664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906536, 32.777508, 35.095337>,  <27.767782, 32.666328, 35.256542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906536, 32.777508, 35.095337>,  <28.137793, 32.962807, 34.826664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906536, 32.777508, 35.095337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593888, -0.803403, -0.042908,
		0.559508, 0.374097, 0.739596,
		-0.578142, -0.463245, 0.671682,
		27.733093, 32.638535, 35.296841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.558792, 32.602505, 35.181580>,  <28.137793, 32.962807, 34.826664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.558792, 32.602505, 35.181580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.216549, 32.405781, 35.246140>,  <28.011202, 32.287746, 35.284874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.216549, 32.405781, 35.246140>,  <28.558792, 32.602505, 35.181580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.216549, 32.405781, 35.246140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505225, -0.861315, 0.053705,
		0.112602, 0.127493, 0.985427,
		-0.855610, -0.491815, 0.161399,
		27.959866, 32.258236, 35.294559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.729124, 32.090530, 35.719601>,  <28.558792, 32.602505, 35.181580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.729124, 32.090530, 35.719601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.397575, 31.941587, 35.552589>,  <28.198647, 31.852222, 35.452385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.397575, 31.941587, 35.552589>,  <28.729124, 32.090530, 35.719601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.397575, 31.941587, 35.552589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426390, -0.903627, -0.040605,
		-0.362168, -0.211685, 0.907758,
		-0.828870, -0.372353, -0.417525,
		28.148914, 31.829882, 35.427330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.676802, 31.528374, 36.037525>,  <28.729124, 32.090530, 35.719601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.676802, 31.528374, 36.037525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.464190, 31.454889, 35.706776>,  <28.336622, 31.410799, 35.508324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.464190, 31.454889, 35.706776>,  <28.676802, 31.528374, 36.037525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.464190, 31.454889, 35.706776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344705, -0.938621, -0.013045,
		-0.773728, -0.291962, 0.562231,
		-0.531530, -0.183711, -0.826877,
		28.304731, 31.399776, 35.458714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369532, 30.827551, 36.162411>,  <28.676802, 31.528374, 36.037525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369532, 30.827551, 36.162411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.365522, 30.908033, 35.770611>,  <28.363117, 30.956322, 35.535530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.365522, 30.908033, 35.770611>,  <28.369532, 30.827551, 36.162411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.365522, 30.908033, 35.770611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130506, -0.970905, -0.200774,
		-0.991397, -0.129842, -0.016529,
		-0.010021, 0.201204, -0.979498,
		28.362516, 30.968395, 35.476761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017279, 30.274912, 35.969486>,  <28.369532, 30.827551, 36.162411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017279, 30.274912, 35.969486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180656, 30.427803, 35.637928>,  <28.278683, 30.519537, 35.438992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180656, 30.427803, 35.637928>,  <28.017279, 30.274912, 35.969486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.180656, 30.427803, 35.637928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196438, -0.923632, -0.329113,
		-0.891394, -0.028403, -0.452338,
		0.408446, 0.382226, -0.828900,
		28.303190, 30.542471, 35.389259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.813723, 29.836294, 35.402180>,  <28.017279, 30.274912, 35.969486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.813723, 29.836294, 35.402180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.166330, 29.985821, 35.286812>,  <28.377895, 30.075537, 35.217590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.166330, 29.985821, 35.286812>,  <27.813723, 29.836294, 35.402180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.166330, 29.985821, 35.286812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264003, -0.896697, -0.355298,
		-0.391443, 0.237058, -0.889143,
		0.881518, 0.373816, -0.288422,
		28.430786, 30.097965, 35.200287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.909336, 29.448851, 34.832294>,  <27.813723, 29.836294, 35.402180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.909336, 29.448851, 34.832294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.261189, 29.637552, 34.856625>,  <28.472300, 29.750772, 34.871223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.261189, 29.637552, 34.856625>,  <27.909336, 29.448851, 34.832294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.261189, 29.637552, 34.856625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400332, -0.665185, -0.630289,
		-0.256878, 0.578773, -0.773974,
		0.879630, 0.471754, 0.060830,
		28.525078, 29.779078, 34.874874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.117933, 29.646013, 34.162750>,  <27.909336, 29.448851, 34.832294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.117933, 29.646013, 34.162750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.450764, 29.644186, 34.384609>,  <28.650461, 29.643089, 34.517723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.450764, 29.644186, 34.384609>,  <28.117933, 29.646013, 34.162750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.450764, 29.644186, 34.384609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392557, -0.701600, -0.594691,
		0.391855, 0.712557, -0.581990,
		0.832075, -0.004569, 0.554645,
		28.700386, 29.642815, 34.551003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650511, 29.656433, 33.692356>,  <28.117933, 29.646013, 34.162750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650511, 29.656433, 33.692356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.808363, 29.534742, 34.039162>,  <28.903074, 29.461729, 34.247246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.808363, 29.534742, 34.039162>,  <28.650511, 29.656433, 33.692356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.808363, 29.534742, 34.039162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580143, -0.649231, -0.491867,
		0.712530, 0.697098, -0.079714,
		0.394632, -0.304225, 0.867013,
		28.926752, 29.443476, 34.299267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.385130, 29.715393, 33.599293>,  <28.650511, 29.656433, 33.692356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.385130, 29.715393, 33.599293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.301949, 29.434557, 33.871712>,  <29.252039, 29.266056, 34.035164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.301949, 29.434557, 33.871712>,  <29.385130, 29.715393, 33.599293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301949, 29.434557, 33.871712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545088, -0.661316, -0.515307,
		0.812179, 0.264071, 0.520223,
		-0.207954, -0.702089, 0.681048,
		29.239563, 29.223930, 34.076027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968609, 29.345959, 33.590958>,  <29.385130, 29.715393, 33.599293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.968609, 29.345959, 33.590958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.706442, 29.117811, 33.788990>,  <29.549141, 28.980923, 33.907810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.706442, 29.117811, 33.788990>,  <29.968609, 29.345959, 33.590958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706442, 29.117811, 33.788990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462705, -0.821325, -0.333662,
		0.596934, 0.010389, 0.802223,
		-0.655419, -0.570367, 0.495084,
		29.509815, 28.946701, 33.937515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422413, 28.857737, 33.633125>,  <29.968609, 29.345959, 33.590958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422413, 28.857737, 33.633125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.050352, 28.719265, 33.682072>,  <29.827116, 28.636183, 33.711441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.050352, 28.719265, 33.682072>,  <30.422413, 28.857737, 33.633125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.050352, 28.719265, 33.682072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224042, -0.799160, -0.557806,
		0.290894, -0.491429, 0.820901,
		-0.930154, -0.346179, 0.122371,
		29.771305, 28.615412, 33.718784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462307, 28.145119, 33.800900>,  <30.422413, 28.857737, 33.633125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462307, 28.145119, 33.800900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101892, 28.195848, 33.634983>,  <29.885643, 28.226286, 33.535435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101892, 28.195848, 33.634983>,  <30.462307, 28.145119, 33.800900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101892, 28.195848, 33.634983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185828, -0.751214, -0.633361,
		-0.391920, -0.647760, 0.653303,
		-0.901036, 0.126825, -0.414788,
		29.831581, 28.233896, 33.510548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980375, 27.552208, 33.891834>,  <30.462307, 28.145119, 33.800900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980375, 27.552208, 33.891834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921888, 27.766470, 33.559162>,  <29.886797, 27.895027, 33.359558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921888, 27.766470, 33.559162>,  <29.980375, 27.552208, 33.891834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.921888, 27.766470, 33.559162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143732, -0.820291, -0.553591,
		-0.978755, -0.200484, 0.042950,
		-0.146218, 0.535657, -0.831680,
		29.878023, 27.927168, 33.309658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.521067, 27.201086, 33.352161>,  <29.980375, 27.552208, 33.891834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.521067, 27.201086, 33.352161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760988, 27.463657, 33.169147>,  <29.904942, 27.621201, 33.059341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760988, 27.463657, 33.169147>,  <29.521067, 27.201086, 33.352161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760988, 27.463657, 33.169147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119571, -0.638924, -0.759920,
		-0.791161, 0.401097, -0.461721,
		0.599806, 0.656428, -0.457532,
		29.940929, 27.660585, 33.031887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251682, 27.428671, 32.632610>,  <29.521067, 27.201086, 33.352161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.251682, 27.428671, 32.632610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.648640, 27.427294, 32.681828>,  <29.886814, 27.426468, 32.711357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.648640, 27.427294, 32.681828>,  <29.251682, 27.428671, 32.632610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.648640, 27.427294, 32.681828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092875, -0.635055, -0.766863,
		0.080776, 0.772459, -0.629906,
		0.992396, -0.003442, 0.123040,
		29.946358, 27.426262, 32.718739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663858, 27.783388, 32.086563>,  <29.251682, 27.428671, 32.632610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663858, 27.783388, 32.086563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.849556, 27.469692, 32.251217>,  <29.960974, 27.281475, 32.350010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.849556, 27.469692, 32.251217>,  <29.663858, 27.783388, 32.086563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.849556, 27.469692, 32.251217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024197, -0.453348, -0.891005,
		0.885377, 0.423603, -0.191488,
		0.464243, -0.784242, 0.411634,
		29.988829, 27.234419, 32.374706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252577, 27.469667, 31.701456>,  <29.663858, 27.783388, 32.086563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252577, 27.469667, 31.701456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031435, 27.182375, 31.870453>,  <29.898750, 27.010000, 31.971851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031435, 27.182375, 31.870453>,  <30.252577, 27.469667, 31.701456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031435, 27.182375, 31.870453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221243, -0.362304, -0.905421,
		0.803371, -0.594039, 0.041398,
		-0.552853, -0.718230, 0.422491,
		29.865580, 26.966906, 31.997200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949322, 27.438673, 31.993080>,  <30.252577, 27.469667, 31.701456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949322, 27.438673, 31.993080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.993769, 27.250729, 32.343369>,  <31.020437, 27.137962, 32.553543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.993769, 27.250729, 32.343369>,  <30.949322, 27.438673, 31.993080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993769, 27.250729, 32.343369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483910, 0.795238, 0.365277,
		-0.868035, 0.383182, 0.315733,
		0.111116, -0.469860, 0.875720,
		31.027103, 27.109770, 32.606083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567406, 27.835264, 32.492908>,  <30.949322, 27.438673, 31.993080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567406, 27.835264, 32.492908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899614, 27.624771, 32.565918>,  <31.098940, 27.498474, 32.609722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899614, 27.624771, 32.565918>,  <30.567406, 27.835264, 32.492908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899614, 27.624771, 32.565918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397922, 0.789869, 0.466653,
		-0.389738, -0.314934, 0.865402,
		0.830519, -0.526235, 0.182522,
		31.148769, 27.466900, 32.620674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868673, 28.170210, 33.014412>,  <30.567406, 27.835264, 32.492908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868673, 28.170210, 33.014412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150314, 27.898720, 32.930916>,  <31.319300, 27.735826, 32.880817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150314, 27.898720, 32.930916>,  <30.868673, 28.170210, 33.014412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150314, 27.898720, 32.930916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703553, 0.626974, 0.334540,
		-0.096186, -0.382410, 0.918973,
		0.704104, -0.678724, -0.208739,
		31.361546, 27.695103, 32.868294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345255, 27.971191, 33.598347>,  <30.868673, 28.170210, 33.014412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345255, 27.971191, 33.598347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502171, 27.963476, 33.230492>,  <31.596319, 27.958847, 33.009777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502171, 27.963476, 33.230492>,  <31.345255, 27.971191, 33.598347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.502171, 27.963476, 33.230492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584694, 0.777040, 0.233113,
		0.710101, -0.629156, 0.316100,
		0.392287, -0.019288, -0.919641,
		31.619856, 27.957689, 32.954601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059082, 28.103666, 33.569103>,  <31.345255, 27.971191, 33.598347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059082, 28.103666, 33.569103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.946806, 28.216738, 33.202213>,  <31.879438, 28.284580, 32.982079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.946806, 28.216738, 33.202213>,  <32.059082, 28.103666, 33.569103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946806, 28.216738, 33.202213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569747, 0.818131, 0.077783,
		0.772398, -0.500753, -0.390702,
		-0.280695, 0.282681, -0.917225,
		31.862598, 28.301542, 32.927044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665016, 28.522947, 33.243065>,  <32.059082, 28.103666, 33.569103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665016, 28.522947, 33.243065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366096, 28.634983, 33.002037>,  <32.186745, 28.702204, 32.857422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366096, 28.634983, 33.002037>,  <32.665016, 28.522947, 33.243065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366096, 28.634983, 33.002037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361793, 0.932131, -0.015418,
		0.557355, -0.229527, -0.797918,
		-0.747303, 0.280088, -0.602569,
		32.141907, 28.719009, 32.821266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946724, 29.003784, 32.789593>,  <32.665016, 28.522947, 33.243065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946724, 29.003784, 32.789593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551460, 29.060091, 32.765182>,  <32.314301, 29.093876, 32.750538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551460, 29.060091, 32.765182>,  <32.946724, 29.003784, 32.789593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551460, 29.060091, 32.765182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150025, 0.969829, -0.192159,
		0.032134, -0.199039, -0.979465,
		-0.988160, 0.140769, -0.061025,
		32.255013, 29.102322, 32.746876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948837, 29.431044, 32.255836>,  <32.946724, 29.003784, 32.789593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948837, 29.431044, 32.255836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610867, 29.475649, 32.465088>,  <32.408085, 29.502413, 32.590641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610867, 29.475649, 32.465088>,  <32.948837, 29.431044, 32.255836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610867, 29.475649, 32.465088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071331, 0.992782, -0.096418,
		-0.530108, -0.044151, -0.846780,
		-0.844924, 0.111513, 0.523133,
		32.357388, 29.509104, 32.622028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548035, 29.998854, 31.854002>,  <32.948837, 29.431044, 32.255836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548035, 29.998854, 31.854002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420666, 29.992294, 32.233124>,  <32.344242, 29.988359, 32.460598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420666, 29.992294, 32.233124>,  <32.548035, 29.998854, 31.854002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420666, 29.992294, 32.233124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027925, 0.999254, 0.026670,
		-0.947537, 0.034960, -0.317729,
		-0.318425, -0.016398, 0.947806,
		32.325138, 29.987375, 32.517467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027443, 30.350363, 31.852364>,  <32.548035, 29.998854, 31.854002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027443, 30.350363, 31.852364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079544, 30.361525, 32.248798>,  <32.110806, 30.368221, 32.486660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079544, 30.361525, 32.248798>,  <32.027443, 30.350363, 31.852364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079544, 30.361525, 32.248798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192103, 0.981372, -0.002381,
		-0.972692, -0.190080, 0.133188,
		0.130254, 0.027902, 0.991088,
		32.118622, 30.369896, 32.546124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385435, 30.684582, 32.253506>,  <32.027443, 30.350363, 31.852364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385435, 30.684582, 32.253506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709389, 30.703823, 32.487350>,  <31.903761, 30.715368, 32.627659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709389, 30.703823, 32.487350>,  <31.385435, 30.684582, 32.253506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709389, 30.703823, 32.487350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227559, 0.944347, 0.237540,
		-0.540652, -0.325414, 0.775759,
		0.809885, 0.048104, 0.584614,
		31.952354, 30.718254, 32.662735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153625, 30.981325, 32.926628>,  <31.385435, 30.684582, 32.253506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153625, 30.981325, 32.926628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.551214, 31.020346, 32.906620>,  <31.789768, 31.043758, 32.894615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.551214, 31.020346, 32.906620>,  <31.153625, 30.981325, 32.926628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551214, 31.020346, 32.906620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077276, 0.947096, 0.311509,
		0.077761, -0.305767, 0.948926,
		0.993973, 0.097553, -0.050019,
		31.849405, 31.049612, 32.891613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292620, 31.316425, 33.609539>,  <31.153625, 30.981325, 32.926628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292620, 31.316425, 33.609539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640394, 31.377182, 33.421494>,  <31.849060, 31.413637, 33.308666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640394, 31.377182, 33.421494>,  <31.292620, 31.316425, 33.609539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640394, 31.377182, 33.421494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130243, 0.847432, 0.514680,
		0.476565, -0.508711, 0.717007,
		0.869438, 0.151893, -0.470112,
		31.901226, 31.422750, 33.280460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802164, 31.384535, 34.150547>,  <31.292620, 31.316425, 33.609539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802164, 31.384535, 34.150547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976168, 31.530907, 33.821461>,  <32.080570, 31.618731, 33.624008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976168, 31.530907, 33.821461>,  <31.802164, 31.384535, 34.150547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976168, 31.530907, 33.821461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305843, 0.799325, 0.517241,
		0.846892, -0.476627, 0.235797,
		0.435010, 0.365931, -0.822716,
		32.106670, 31.640686, 33.574646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560101, 31.619110, 34.277748>,  <31.802164, 31.384535, 34.150547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560101, 31.619110, 34.277748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412594, 31.819799, 33.964752>,  <32.324089, 31.940212, 33.776955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412594, 31.819799, 33.964752>,  <32.560101, 31.619110, 34.277748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412594, 31.819799, 33.964752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092923, 0.817702, 0.568093,
		0.924866, 0.282205, -0.254918,
		-0.368766, 0.501722, -0.782488,
		32.301964, 31.970316, 33.730007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939667, 32.199059, 34.244251>,  <32.560101, 31.619110, 34.277748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939667, 32.199059, 34.244251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598648, 32.280876, 34.051865>,  <32.394039, 32.329967, 33.936432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598648, 32.280876, 34.051865>,  <32.939667, 32.199059, 34.244251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598648, 32.280876, 34.051865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151801, 0.783661, 0.602355,
		0.500126, 0.586545, -0.637055,
		-0.852544, 0.204548, -0.480967,
		32.342884, 32.342239, 33.907574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945263, 32.928085, 33.963509>,  <32.939667, 32.199059, 34.244251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945263, 32.928085, 33.963509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559559, 32.823738, 33.982037>,  <32.328136, 32.761127, 33.993153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559559, 32.823738, 33.982037>,  <32.945263, 32.928085, 33.963509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559559, 32.823738, 33.982037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169258, 0.741004, 0.649819,
		-0.203838, 0.618757, -0.758677,
		-0.964262, -0.260870, 0.046316,
		32.270279, 32.745476, 33.995930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559391, 33.521961, 33.870216>,  <32.945263, 32.928085, 33.963509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559391, 33.521961, 33.870216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305359, 33.270645, 34.049961>,  <32.152939, 33.119854, 34.157806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305359, 33.270645, 34.049961>,  <32.559391, 33.521961, 33.870216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305359, 33.270645, 34.049961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264500, 0.723445, 0.637704,
		-0.725754, 0.286135, -0.625627,
		-0.635076, -0.628294, 0.449360,
		32.114838, 33.082157, 34.184769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996805, 33.929413, 34.092213>,  <32.559391, 33.521961, 33.870216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996805, 33.929413, 34.092213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914021, 33.603500, 34.308842>,  <31.864349, 33.407951, 34.438820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914021, 33.603500, 34.308842>,  <31.996805, 33.929413, 34.092213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914021, 33.603500, 34.308842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615809, 0.538630, 0.575028,
		-0.760228, -0.214495, -0.613225,
		-0.206961, -0.814781, 0.541570,
		31.851933, 33.359066, 34.471313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312340, 33.917130, 34.092091>,  <31.996805, 33.929413, 34.092213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312340, 33.917130, 34.092091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440355, 33.707497, 34.407791>,  <31.517164, 33.581718, 34.597210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440355, 33.707497, 34.407791>,  <31.312340, 33.917130, 34.092091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440355, 33.707497, 34.407791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441496, 0.654581, 0.613681,
		-0.838245, -0.544854, -0.021887,
		0.320040, -0.524078, 0.789250,
		31.536367, 33.550274, 34.644566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681133, 33.850254, 34.432556>,  <31.312340, 33.917130, 34.092091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681133, 33.850254, 34.432556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965166, 33.754967, 34.697594>,  <31.135586, 33.697796, 34.856617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965166, 33.754967, 34.697594>,  <30.681133, 33.850254, 34.432556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965166, 33.754967, 34.697594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519800, 0.457423, 0.721507,
		-0.474962, -0.856748, 0.200983,
		0.710084, -0.238218, 0.662596,
		31.178192, 33.683502, 34.896374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338535, 33.471668, 35.000950>,  <30.681133, 33.850254, 34.432556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338535, 33.471668, 35.000950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687126, 33.626019, 35.122028>,  <30.896280, 33.718628, 35.194675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687126, 33.626019, 35.122028>,  <30.338535, 33.471668, 35.000950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687126, 33.626019, 35.122028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465099, 0.454460, 0.759703,
		0.155584, -0.802850, 0.575521,
		0.871479, 0.385872, 0.302698,
		30.948570, 33.741779, 35.212837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349081, 33.385292, 35.750149>,  <30.338535, 33.471668, 35.000950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349081, 33.385292, 35.750149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632006, 33.659336, 35.680470>,  <30.801760, 33.823761, 35.638664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632006, 33.659336, 35.680470>,  <30.349081, 33.385292, 35.750149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632006, 33.659336, 35.680470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377851, 0.574674, 0.725933,
		0.597450, -0.447636, 0.665339,
		0.707307, 0.685108, -0.174199,
		30.844198, 33.864868, 35.628212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568892, 33.672890, 36.442581>,  <30.349081, 33.385292, 35.750149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568892, 33.672890, 36.442581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.695488, 33.937885, 36.171009>,  <30.771446, 34.096882, 36.008068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.695488, 33.937885, 36.171009>,  <30.568892, 33.672890, 36.442581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.695488, 33.937885, 36.171009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301820, 0.748852, 0.590021,
		0.899299, 0.018178, 0.436956,
		0.316490, 0.662488, -0.678928,
		30.790436, 34.136631, 35.967331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053375, 34.109406, 36.797527>,  <30.568892, 33.672890, 36.442581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053375, 34.109406, 36.797527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963516, 34.330391, 36.476448>,  <30.909601, 34.462982, 36.283802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963516, 34.330391, 36.476448>,  <31.053375, 34.109406, 36.797527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963516, 34.330391, 36.476448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269217, 0.756500, 0.596012,
		0.936513, 0.349991, -0.021212,
		-0.224646, 0.552462, -0.802695,
		30.896122, 34.496128, 36.235638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387081, 34.767864, 36.864983>,  <31.053375, 34.109406, 36.797527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387081, 34.767864, 36.864983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.084444, 34.818474, 36.608372>,  <30.902863, 34.848839, 36.454407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.084444, 34.818474, 36.608372>,  <31.387081, 34.767864, 36.864983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084444, 34.818474, 36.608372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332096, 0.770794, 0.543682,
		0.563275, 0.624394, -0.541159,
		-0.756593, 0.126525, -0.641527,
		30.857466, 34.856430, 36.415913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371981, 35.417332, 36.434887>,  <31.387081, 34.767864, 36.864983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371981, 35.417332, 36.434887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.014999, 35.284294, 36.556808>,  <30.800810, 35.204472, 36.629963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.014999, 35.284294, 36.556808>,  <31.371981, 35.417332, 36.434887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.014999, 35.284294, 36.556808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068664, 0.767910, 0.636867,
		-0.445881, 0.547446, -0.708162,
		-0.892455, -0.332592, 0.304807,
		30.747263, 35.184517, 36.648251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.920906, 35.840134, 36.234970>,  <31.371981, 35.417332, 36.434887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.920906, 35.840134, 36.234970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854794, 35.640945, 36.575489>,  <30.815126, 35.521431, 36.779800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854794, 35.640945, 36.575489>,  <30.920906, 35.840134, 36.234970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854794, 35.640945, 36.575489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181003, 0.833190, 0.522526,
		-0.969495, 0.240451, -0.047577,
		-0.165283, -0.497974, 0.851295,
		30.805208, 35.491554, 36.830879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.403341, 36.200550, 36.724255>,  <30.920906, 35.840134, 36.234970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.403341, 36.200550, 36.724255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669872, 36.014183, 36.957123>,  <30.829790, 35.902363, 37.096844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669872, 36.014183, 36.957123>,  <30.403341, 36.200550, 36.724255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669872, 36.014183, 36.957123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278274, 0.879722, 0.385555,
		-0.691788, -0.094903, 0.715837,
		0.666328, -0.465921, 0.582172,
		30.869770, 35.874405, 37.131775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.316790, 36.350937, 37.468849>,  <30.403341, 36.200550, 36.724255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.316790, 36.350937, 37.468849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677870, 36.271797, 37.316017>,  <30.894518, 36.224312, 37.224316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677870, 36.271797, 37.316017>,  <30.316790, 36.350937, 37.468849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677870, 36.271797, 37.316017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273397, 0.949449, 0.154276,
		0.332244, -0.243725, 0.911160,
		0.902701, -0.197851, -0.382082,
		30.948681, 36.212440, 37.201393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001078, 36.493393, 37.920086>,  <30.316790, 36.350937, 37.468849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001078, 36.493393, 37.920086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.123713, 36.200623, 38.163490>,  <31.197294, 36.024960, 38.309532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.123713, 36.200623, 38.163490>,  <31.001078, 36.493393, 37.920086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.123713, 36.200623, 38.163490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808592, -0.137014, -0.572194,
		0.502178, 0.667468, 0.549821,
		0.306588, -0.731924, 0.608515,
		31.215689, 35.981045, 38.346046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707651, 36.535400, 37.972107>,  <31.001078, 36.493393, 37.920086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707651, 36.535400, 37.972107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655228, 36.144020, 38.035938>,  <31.623774, 35.909191, 38.074238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655228, 36.144020, 38.035938>,  <31.707651, 36.535400, 37.972107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655228, 36.144020, 38.035938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717019, -0.204710, -0.666317,
		0.684623, 0.027093, 0.728394,
		-0.131056, -0.978448, 0.159575,
		31.615911, 35.850487, 38.083809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306709, 36.240482, 38.110748>,  <31.707651, 36.535400, 37.972107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306709, 36.240482, 38.110748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.063091, 35.966339, 37.951073>,  <31.916920, 35.801853, 37.855267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.063091, 35.966339, 37.951073>,  <32.306709, 36.240482, 38.110748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063091, 35.966339, 37.951073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626317, -0.106803, -0.772218,
		0.486608, -0.720336, 0.494296,
		-0.609049, -0.685354, -0.399187,
		31.880377, 35.760735, 37.831318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714417, 35.694336, 38.481915>,  <32.306709, 36.240482, 38.110748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714417, 35.694336, 38.481915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888763, 36.014820, 38.317924>,  <32.993370, 36.207111, 38.219532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888763, 36.014820, 38.317924>,  <32.714417, 35.694336, 38.481915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888763, 36.014820, 38.317924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786299, 0.117361, -0.606597,
		-0.437898, 0.586757, 0.681147,
		0.435865, 0.801213, -0.409975,
		33.019524, 36.255184, 38.194931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727974, 36.254066, 38.959480>,  <32.714417, 35.694336, 38.481915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727974, 36.254066, 38.959480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110901, 36.160961, 38.890926>,  <33.340656, 36.105099, 38.849792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110901, 36.160961, 38.890926>,  <32.727974, 36.254066, 38.959480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110901, 36.160961, 38.890926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198379, 0.097811, 0.975233,
		-0.210231, -0.967603, 0.139811,
		0.957313, -0.232760, -0.171389,
		33.398094, 36.091133, 38.839508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888233, 35.806591, 39.556114>,  <32.727974, 36.254066, 38.959480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888233, 35.806591, 39.556114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226021, 35.944771, 39.392391>,  <33.428696, 36.027679, 39.294159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226021, 35.944771, 39.392391>,  <32.888233, 35.806591, 39.556114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226021, 35.944771, 39.392391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386737, 0.135404, 0.912195,
		0.370543, -0.928616, -0.019255,
		0.844472, 0.345454, -0.409303,
		33.479362, 36.048409, 39.269600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368767, 35.501698, 39.950794>,  <32.888233, 35.806591, 39.556114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368767, 35.501698, 39.950794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578453, 35.789852, 39.769138>,  <33.704266, 35.962746, 39.660145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578453, 35.789852, 39.769138>,  <33.368767, 35.501698, 39.950794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578453, 35.789852, 39.769138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497875, 0.173391, 0.849739,
		0.690882, -0.671553, -0.267767,
		0.524216, 0.720384, -0.454142,
		33.735718, 36.005966, 39.632896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128616, 35.371304, 40.124237>,  <33.368767, 35.501698, 39.950794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128616, 35.371304, 40.124237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087749, 35.749847, 40.001617>,  <34.063229, 35.976974, 39.928043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087749, 35.749847, 40.001617>,  <34.128616, 35.371304, 40.124237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087749, 35.749847, 40.001617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592182, 0.305469, 0.745660,
		0.799302, -0.105355, -0.591623,
		-0.102164, 0.946356, -0.306551,
		34.057102, 36.033752, 39.909653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732578, 35.540497, 40.131981>,  <34.128616, 35.371304, 40.124237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732578, 35.540497, 40.131981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503841, 35.863361, 40.190609>,  <34.366600, 36.057079, 40.225784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503841, 35.863361, 40.190609>,  <34.732578, 35.540497, 40.131981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503841, 35.863361, 40.190609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455656, 0.163944, 0.874928,
		0.682180, 0.567109, -0.461539,
		-0.571847, 0.807161, 0.146567,
		34.332287, 36.105511, 40.234581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160095, 36.001823, 40.552307>,  <34.732578, 35.540497, 40.131981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160095, 36.001823, 40.552307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790802, 36.152142, 40.584358>,  <34.569225, 36.242332, 40.603588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790802, 36.152142, 40.584358>,  <35.160095, 36.001823, 40.552307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790802, 36.152142, 40.584358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135337, 0.122855, 0.983153,
		0.359620, 0.918523, -0.164283,
		-0.923232, 0.375795, 0.080129,
		34.513832, 36.264881, 40.608398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256653, 36.466320, 41.097282>,  <35.160095, 36.001823, 40.552307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256653, 36.466320, 41.097282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862614, 36.408283, 41.060326>,  <34.626190, 36.373459, 41.038151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862614, 36.408283, 41.060326>,  <35.256653, 36.466320, 41.097282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862614, 36.408283, 41.060326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097977, 0.031844, 0.994679,
		-0.141383, 0.988905, -0.045585,
		-0.985095, -0.145097, -0.092388,
		34.567085, 36.364754, 41.032608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894211, 37.082413, 41.539597>,  <35.256653, 36.466320, 41.097282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894211, 37.082413, 41.539597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630310, 36.784454, 41.499870>,  <34.471970, 36.605679, 41.476036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630310, 36.784454, 41.499870>,  <34.894211, 37.082413, 41.539597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630310, 36.784454, 41.499870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096090, -0.047451, 0.994241,
		-0.745316, 0.665494, -0.040271,
		-0.659750, -0.744893, -0.099313,
		34.432384, 36.560986, 41.470078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299240, 37.223728, 42.032734>,  <34.894211, 37.082413, 41.539597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299240, 37.223728, 42.032734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316719, 36.836117, 41.935516>,  <34.327206, 36.603550, 41.877186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316719, 36.836117, 41.935516>,  <34.299240, 37.223728, 42.032734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316719, 36.836117, 41.935516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055495, -0.240542, 0.969051,
		-0.997503, -0.055832, 0.043265,
		0.043697, -0.969032, -0.243040,
		34.329826, 36.545406, 41.862606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982719, 37.044617, 42.572224>,  <34.299240, 37.223728, 42.032734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982719, 37.044617, 42.572224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146709, 36.712143, 42.421997>,  <34.245102, 36.512657, 42.331860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146709, 36.712143, 42.421997>,  <33.982719, 37.044617, 42.572224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146709, 36.712143, 42.421997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091347, -0.372277, 0.923615,
		-0.907513, -0.412963, -0.076696,
		0.409971, -0.831187, -0.375569,
		34.269699, 36.462788, 42.309326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655426, 36.442062, 42.976269>,  <33.982719, 37.044617, 42.572224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655426, 36.442062, 42.976269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009014, 36.331635, 42.825333>,  <34.221169, 36.265377, 42.734772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009014, 36.331635, 42.825333>,  <33.655426, 36.442062, 42.976269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009014, 36.331635, 42.825333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259850, -0.380847, 0.887375,
		-0.388703, -0.882458, -0.264913,
		0.883962, -0.276087, -0.377343,
		34.274204, 36.248814, 42.712132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828869, 35.713779, 43.231499>,  <33.655426, 36.442062, 42.976269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828869, 35.713779, 43.231499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144970, 35.954460, 43.185085>,  <34.334629, 36.098869, 43.157238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144970, 35.954460, 43.185085>,  <33.828869, 35.713779, 43.231499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144970, 35.954460, 43.185085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428365, -0.407027, 0.806742,
		0.438188, -0.687231, -0.579400,
		0.790250, 0.601700, -0.116031,
		34.382046, 36.134972, 43.150276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316986, 35.290955, 43.050110>,  <33.828869, 35.713779, 43.231499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316986, 35.290955, 43.050110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488235, 35.622005, 43.195293>,  <34.590984, 35.820637, 43.282406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488235, 35.622005, 43.195293>,  <34.316986, 35.290955, 43.050110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488235, 35.622005, 43.195293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208153, -0.481138, 0.851574,
		0.879424, -0.289024, -0.378258,
		0.428120, 0.827630, 0.362963,
		34.616673, 35.870293, 43.304184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979301, 35.119278, 43.164280>,  <34.316986, 35.290955, 43.050110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979301, 35.119278, 43.164280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879124, 35.423405, 43.404011>,  <34.819019, 35.605881, 43.547852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879124, 35.423405, 43.404011>,  <34.979301, 35.119278, 43.164280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879124, 35.423405, 43.404011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361910, -0.500653, 0.786363,
		0.897942, 0.413842, -0.149782,
		-0.250441, 0.760317, 0.599331,
		34.803993, 35.651501, 43.583809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387478, 35.066948, 43.739487>,  <34.979301, 35.119278, 43.164280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387478, 35.066948, 43.739487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171066, 35.360336, 43.904079>,  <35.041222, 35.536369, 44.002834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171066, 35.360336, 43.904079>,  <35.387478, 35.066948, 43.739487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171066, 35.360336, 43.904079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211951, -0.354566, 0.910692,
		0.813860, 0.579922, 0.036371,
		-0.541026, 0.733466, 0.411482,
		35.008759, 35.580376, 44.027523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836922, 35.289413, 44.262909>,  <35.387478, 35.066948, 43.739487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836922, 35.289413, 44.262909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475311, 35.414558, 44.379421>,  <35.258343, 35.489647, 44.449329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475311, 35.414558, 44.379421>,  <35.836922, 35.289413, 44.262909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475311, 35.414558, 44.379421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166411, -0.370072, 0.913977,
		0.393748, 0.874735, 0.282491,
		-0.904030, 0.312867, 0.291281,
		35.204102, 35.508419, 44.466805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007160, 35.727428, 44.889832>,  <35.836922, 35.289413, 44.262909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007160, 35.727428, 44.889832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616997, 35.645046, 44.921211>,  <35.382896, 35.595615, 44.940041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616997, 35.645046, 44.921211>,  <36.007160, 35.727428, 44.889832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616997, 35.645046, 44.921211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125307, -0.225417, 0.966170,
		-0.181308, 0.952243, 0.245683,
		-0.975410, -0.205960, 0.078453,
		35.324375, 35.583260, 44.944748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832539, 36.027729, 45.515015>,  <36.007160, 35.727428, 44.889832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832539, 36.027729, 45.515015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547745, 35.762474, 45.422638>,  <35.376869, 35.603321, 45.367210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547745, 35.762474, 45.422638>,  <35.832539, 36.027729, 45.515015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547745, 35.762474, 45.422638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007719, -0.336257, 0.941739,
		-0.702154, 0.668719, 0.244527,
		-0.711983, -0.663133, -0.230942,
		35.334148, 35.563534, 45.353355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292950, 36.142448, 46.002705>,  <35.832539, 36.027729, 45.515015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292950, 36.142448, 46.002705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250858, 35.765079, 45.876919>,  <35.225605, 35.538658, 45.801449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250858, 35.765079, 45.876919>,  <35.292950, 36.142448, 46.002705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250858, 35.765079, 45.876919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155146, -0.296775, 0.942260,
		-0.982271, 0.147940, -0.115139,
		-0.105227, -0.943419, -0.314466,
		35.219292, 35.482056, 45.782578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683308, 35.916317, 46.406654>,  <35.292950, 36.142448, 46.002705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683308, 35.916317, 46.406654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889130, 35.588264, 46.306561>,  <35.012623, 35.391434, 46.246502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889130, 35.588264, 46.306561>,  <34.683308, 35.916317, 46.406654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889130, 35.588264, 46.306561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148423, -0.372622, 0.916037,
		-0.844513, -0.434211, -0.313461,
		0.514556, -0.820130, -0.250238,
		35.043495, 35.342224, 46.231491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290943, 35.356266, 46.687347>,  <34.683308, 35.916317, 46.406654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290943, 35.356266, 46.687347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665440, 35.230373, 46.624863>,  <34.890137, 35.154839, 46.587372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665440, 35.230373, 46.624863>,  <34.290943, 35.356266, 46.687347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665440, 35.230373, 46.624863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023336, -0.499307, 0.866111,
		-0.350591, -0.807241, -0.474814,
		0.936238, -0.314731, -0.156215,
		34.946312, 35.135952, 46.577999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241276, 34.682583, 46.835403>,  <34.290943, 35.356266, 46.687347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241276, 34.682583, 46.835403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633038, 34.761421, 46.852917>,  <34.868095, 34.808723, 46.863422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633038, 34.761421, 46.852917>,  <34.241276, 34.682583, 46.835403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633038, 34.761421, 46.852917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072260, -0.544681, 0.835524,
		0.188521, -0.815155, -0.547706,
		0.979407, 0.197091, 0.043781,
		34.926861, 34.820549, 46.866051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661350, 34.095638, 46.947411>,  <34.241276, 34.682583, 46.835403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661350, 34.095638, 46.947411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887947, 34.388035, 47.099586>,  <35.023907, 34.563473, 47.190891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887947, 34.388035, 47.099586>,  <34.661350, 34.095638, 46.947411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887947, 34.388035, 47.099586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002025, -0.460423, 0.887697,
		0.824064, -0.503645, -0.259346,
		0.566493, 0.730994, 0.380438,
		35.057896, 34.607334, 47.213718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914043, 33.835663, 47.533688>,  <34.661350, 34.095638, 46.947411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914043, 33.835663, 47.533688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046303, 34.208035, 47.595711>,  <35.125656, 34.431458, 47.632923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046303, 34.208035, 47.595711>,  <34.914043, 33.835663, 47.533688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046303, 34.208035, 47.595711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023214, -0.172271, 0.984776,
		0.943470, -0.322011, -0.078571,
		0.330644, 0.930931, 0.155057,
		35.145496, 34.487312, 47.642227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314190, 33.751598, 48.106544>,  <34.914043, 33.835663, 47.533688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314190, 33.751598, 48.106544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216114, 34.138634, 48.082371>,  <35.157269, 34.370853, 48.067867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216114, 34.138634, 48.082371>,  <35.314190, 33.751598, 48.106544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216114, 34.138634, 48.082371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133669, 0.027999, 0.990630,
		0.960215, 0.250973, 0.122472,
		-0.245193, 0.967589, -0.060432,
		35.142555, 34.428909, 48.064240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663879, 33.816429, 48.633335>,  <35.314190, 33.751598, 48.106544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663879, 33.816429, 48.633335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404877, 34.113422, 48.564686>,  <35.249477, 34.291618, 48.523499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404877, 34.113422, 48.564686>,  <35.663879, 33.816429, 48.633335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404877, 34.113422, 48.564686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180684, 0.069203, 0.981104,
		0.740332, 0.666278, 0.089346,
		-0.647504, 0.742486, -0.171619,
		35.210625, 34.336166, 48.513199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826534, 34.452660, 48.920807>,  <35.663879, 33.816429, 48.633335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826534, 34.452660, 48.920807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443100, 34.341003, 48.943405>,  <35.213039, 34.274010, 48.956963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443100, 34.341003, 48.943405>,  <35.826534, 34.452660, 48.920807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443100, 34.341003, 48.943405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069859, -0.038153, 0.996827,
		-0.276097, 0.959493, 0.056073,
		-0.958588, -0.279138, 0.056495,
		35.155525, 34.257263, 48.960354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481701, 34.851322, 49.528851>,  <35.826534, 34.452660, 48.920807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481701, 34.851322, 49.528851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246613, 34.534863, 49.461117>,  <35.105560, 34.344986, 49.420475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246613, 34.534863, 49.461117>,  <35.481701, 34.851322, 49.528851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246613, 34.534863, 49.461117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035815, -0.234535, 0.971448,
		-0.808274, 0.564871, 0.166175,
		-0.587716, -0.791147, -0.169338,
		35.070297, 34.297520, 49.410316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873611, 34.934155, 50.053101>,  <35.481701, 34.851322, 49.528851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873611, 34.934155, 50.053101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962673, 34.562103, 49.936283>,  <35.016109, 34.338871, 49.866192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962673, 34.562103, 49.936283>,  <34.873611, 34.934155, 50.053101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962673, 34.562103, 49.936283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012458, -0.296820, 0.954852,
		-0.974818, -0.216240, -0.054501,
		0.222654, -0.930128, -0.292039,
		35.029469, 34.283066, 49.848671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611427, 34.399784, 50.461285>,  <34.873611, 34.934155, 50.053101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611427, 34.399784, 50.461285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902382, 34.162579, 50.323162>,  <35.076954, 34.020256, 50.240288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902382, 34.162579, 50.323162>,  <34.611427, 34.399784, 50.461285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902382, 34.162579, 50.323162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169766, -0.332042, 0.927862,
		-0.664893, -0.733538, -0.140850,
		0.727390, -0.593018, -0.345302,
		35.120598, 33.984673, 50.219570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348152, 33.733017, 50.636505>,  <34.611427, 34.399784, 50.461285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348152, 33.733017, 50.636505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742065, 33.724781, 50.567471>,  <34.978413, 33.719837, 50.526051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742065, 33.724781, 50.567471>,  <34.348152, 33.733017, 50.636505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742065, 33.724781, 50.567471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122305, -0.623420, 0.772263,
		-0.123497, -0.781616, -0.611412,
		0.984779, -0.020594, -0.172586,
		35.037498, 33.718601, 50.515694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550091, 33.015129, 50.677494>,  <34.348152, 33.733017, 50.636505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550091, 33.015129, 50.677494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897083, 33.208164, 50.725800>,  <35.105278, 33.323986, 50.754784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897083, 33.208164, 50.725800>,  <34.550091, 33.015129, 50.677494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897083, 33.208164, 50.725800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174689, -0.522807, 0.834360,
		0.465792, -0.702694, -0.537828,
		0.867480, 0.482591, 0.120766,
		35.157326, 33.352943, 50.762028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047855, 32.467068, 50.839748>,  <34.550091, 33.015129, 50.677494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047855, 32.467068, 50.839748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226082, 32.806423, 50.954082>,  <35.333019, 33.010036, 51.022682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226082, 32.806423, 50.954082>,  <35.047855, 32.467068, 50.839748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226082, 32.806423, 50.954082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372616, -0.466058, 0.802463,
		0.814018, -0.251046, -0.523785,
		0.445569, 0.848390, 0.285836,
		35.359753, 33.060940, 51.039833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799683, 32.439682, 50.792191>,  <35.047855, 32.467068, 50.839748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799683, 32.439682, 50.792191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743732, 32.729343, 51.062313>,  <35.710163, 32.903141, 51.224384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743732, 32.729343, 51.062313>,  <35.799683, 32.439682, 50.792191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743732, 32.729343, 51.062313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464519, -0.554309, 0.690625,
		0.874446, 0.410296, -0.258846,
		-0.139880, 0.724154, 0.675304,
		35.701767, 32.946590, 51.264904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249424, 32.461514, 51.304672>,  <35.799683, 32.439682, 50.792191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249424, 32.461514, 51.304672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037876, 32.707092, 51.539062>,  <35.910946, 32.854439, 51.679695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037876, 32.707092, 51.539062>,  <36.249424, 32.461514, 51.304672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037876, 32.707092, 51.539062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410933, -0.418861, 0.809747,
		0.742583, 0.669047, -0.030768,
		-0.528871, 0.613948, 0.585972,
		35.879215, 32.891277, 51.714855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738914, 32.580799, 51.839485>,  <36.249424, 32.461514, 51.304672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738914, 32.580799, 51.839485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401237, 32.729820, 51.993649>,  <36.198631, 32.819233, 52.086147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401237, 32.729820, 51.993649>,  <36.738914, 32.580799, 51.839485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401237, 32.729820, 51.993649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270501, -0.324661, 0.906325,
		0.462785, 0.869366, 0.173300,
		-0.844192, 0.372555, 0.385413,
		36.147980, 32.841587, 52.109272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894657, 32.964226, 52.397167>,  <36.738914, 32.580799, 51.839485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894657, 32.964226, 52.397167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521423, 32.834942, 52.460278>,  <36.297485, 32.757370, 52.498146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521423, 32.834942, 52.460278>,  <36.894657, 32.964226, 52.397167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521423, 32.834942, 52.460278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296689, -0.443706, 0.845636,
		-0.203310, 0.835859, 0.509907,
		-0.933082, -0.323209, 0.157780,
		36.241497, 32.737980, 52.507610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745781, 32.929306, 53.102367>,  <36.894657, 32.964226, 52.397167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745781, 32.929306, 53.102367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433895, 32.713413, 52.975414>,  <36.246761, 32.583878, 52.899242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433895, 32.713413, 52.975414>,  <36.745781, 32.929306, 53.102367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433895, 32.713413, 52.975414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045653, -0.554559, 0.830891,
		-0.624465, 0.633371, 0.457039,
		-0.779718, -0.539728, -0.317387,
		36.199982, 32.551495, 52.880199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323204, 32.930649, 53.626892>,  <36.745781, 32.929306, 53.102367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323204, 32.930649, 53.626892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193459, 32.613804, 53.420071>,  <36.115612, 32.423698, 53.295979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193459, 32.613804, 53.420071>,  <36.323204, 32.930649, 53.626892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193459, 32.613804, 53.420071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037157, -0.556859, 0.829776,
		-0.945203, 0.249936, 0.210057,
		-0.324363, -0.792111, -0.517057,
		36.096149, 32.376171, 53.264954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717697, 32.678455, 53.961254>,  <36.323204, 32.930649, 53.626892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717697, 32.678455, 53.961254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905285, 32.397995, 53.746422>,  <36.017838, 32.229721, 53.617523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905285, 32.397995, 53.746422>,  <35.717697, 32.678455, 53.961254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905285, 32.397995, 53.746422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109979, -0.557008, 0.823193,
		-0.876339, -0.445122, -0.184110,
		0.468972, -0.701148, -0.537082,
		36.045975, 32.187653, 53.585297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413010, 31.924206, 54.006554>,  <35.717697, 32.678455, 53.961254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413010, 31.924206, 54.006554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795029, 31.859135, 53.907425>,  <36.024242, 31.820093, 53.847946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795029, 31.859135, 53.907425>,  <35.413010, 31.924206, 54.006554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795029, 31.859135, 53.907425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167172, -0.394837, 0.903414,
		-0.244813, -0.904235, -0.349895,
		0.955050, -0.162675, -0.247824,
		36.081543, 31.810331, 53.833076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624153, 31.163311, 54.126881>,  <35.413010, 31.924206, 54.006554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624153, 31.163311, 54.126881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892910, 31.450657, 54.199013>,  <36.054165, 31.623064, 54.242290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892910, 31.450657, 54.199013>,  <35.624153, 31.163311, 54.126881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892910, 31.450657, 54.199013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102585, -0.331389, 0.937900,
		0.733514, -0.611665, -0.296350,
		0.671888, 0.718364, 0.180331,
		36.094475, 31.666166, 54.253113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303738, 30.912504, 54.326233>,  <35.624153, 31.163311, 54.126881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303738, 30.912504, 54.326233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205036, 31.254053, 54.509544>,  <36.145817, 31.458982, 54.619530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205036, 31.254053, 54.509544>,  <36.303738, 30.912504, 54.326233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205036, 31.254053, 54.509544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025783, -0.478517, 0.877700,
		0.968735, 0.204761, 0.140092,
		-0.246755, 0.853871, 0.458276,
		36.131008, 31.510214, 54.647026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977551, 30.512451, 53.708214>,  <36.303738, 30.912504, 54.326233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977551, 30.512451, 53.708214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989998, 30.509836, 53.308414>,  <35.997467, 30.508268, 53.068535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989998, 30.509836, 53.308414>,  <35.977551, 30.512451, 53.708214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989998, 30.509836, 53.308414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834868, 0.549994, 0.022400,
		0.549570, -0.835143, 0.022575,
		0.031123, -0.006537, -0.999494,
		35.999336, 30.507875, 53.008568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165272, 29.845654, 53.422417>,  <35.977551, 30.512451, 53.708214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165272, 29.845654, 53.422417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561295, 29.900766, 53.411041>,  <36.798908, 29.933834, 53.404217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561295, 29.900766, 53.411041>,  <36.165272, 29.845654, 53.422417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561295, 29.900766, 53.411041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116698, 0.917185, 0.380989,
		0.078578, -0.373881, 0.924142,
		0.990054, 0.137782, -0.028439,
		36.858311, 29.942101, 53.402508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595211, 29.958015, 54.076984>,  <36.165272, 29.845654, 53.422417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595211, 29.958015, 54.076984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744411, 30.161238, 53.766438>,  <36.833931, 30.283171, 53.580109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744411, 30.161238, 53.766438>,  <36.595211, 29.958015, 54.076984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744411, 30.161238, 53.766438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013729, 0.839688, 0.542896,
		0.927730, -0.191842, 0.320179,
		0.373000, 0.508056, -0.776369,
		36.856312, 30.313654, 53.533527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334225, 29.776024, 54.184383>,  <36.595211, 29.958015, 54.076984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334225, 29.776024, 54.184383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460880, 29.472471, 53.956757>,  <37.536873, 29.290340, 53.820179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460880, 29.472471, 53.956757>,  <37.334225, 29.776024, 54.184383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460880, 29.472471, 53.956757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107841, 0.567248, -0.816456,
		0.942397, 0.319888, 0.097772,
		0.316636, -0.758882, -0.569070,
		37.555870, 29.244806, 53.786037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605934, 30.202986, 53.650021>,  <37.334225, 29.776024, 54.184383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605934, 30.202986, 53.650021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545063, 29.830204, 53.518383>,  <37.508541, 29.606535, 53.439400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545063, 29.830204, 53.518383>,  <37.605934, 30.202986, 53.650021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545063, 29.830204, 53.518383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030473, 0.337239, -0.940926,
		0.987884, -0.133156, -0.079719,
		-0.152174, -0.931955, -0.329095,
		37.499413, 29.550617, 53.419655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187851, 30.008118, 53.182583>,  <37.605934, 30.202986, 53.650021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187851, 30.008118, 53.182583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831516, 29.844591, 53.103298>,  <37.617718, 29.746475, 53.055729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831516, 29.844591, 53.103298>,  <38.187851, 30.008118, 53.182583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831516, 29.844591, 53.103298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048318, 0.348545, -0.936046,
		0.451757, -0.843436, -0.290742,
		-0.890831, -0.408817, -0.198211,
		37.564266, 29.721947, 53.043835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289879, 29.781199, 52.548210>,  <38.187851, 30.008118, 53.182583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289879, 29.781199, 52.548210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.898197, 29.810780, 52.623775>,  <37.663189, 29.828529, 52.669113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.898197, 29.810780, 52.623775>,  <38.289879, 29.781199, 52.548210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898197, 29.810780, 52.623775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126711, 0.504260, -0.854205,
		-0.158433, -0.860379, -0.484403,
		-0.979206, 0.073955, 0.188911,
		37.604435, 29.832966, 52.680450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153316, 29.330275, 51.958469>,  <38.289879, 29.781199, 52.548210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153316, 29.330275, 51.958469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.880779, 29.604998, 52.059719>,  <37.717258, 29.769833, 52.120468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.880779, 29.604998, 52.059719>,  <38.153316, 29.330275, 51.958469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880779, 29.604998, 52.059719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049081, 0.302164, -0.951992,
		-0.730321, -0.661053, -0.172166,
		-0.681339, 0.686809, 0.253122,
		37.676376, 29.811041, 52.135654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485039, 29.196159, 51.640099>,  <38.153316, 29.330275, 51.958469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485039, 29.196159, 51.640099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504700, 29.587175, 51.722076>,  <37.516495, 29.821785, 51.771263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504700, 29.587175, 51.722076>,  <37.485039, 29.196159, 51.640099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504700, 29.587175, 51.722076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218890, 0.210743, -0.952720,
		-0.974511, 0.001965, 0.224331,
		0.049148, 0.977539, 0.204941,
		37.519444, 29.880438, 51.783558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933750, 29.442837, 51.172653>,  <37.485039, 29.196159, 51.640099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933750, 29.442837, 51.172653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154636, 29.759903, 51.275986>,  <37.287167, 29.950144, 51.337986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154636, 29.759903, 51.275986>,  <36.933750, 29.442837, 51.172653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154636, 29.759903, 51.275986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231456, 0.443444, -0.865902,
		-0.800927, 0.418373, 0.428345,
		0.552217, 0.792667, 0.258331,
		37.320301, 29.997704, 51.353485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555080, 30.060955, 50.879143>,  <36.933750, 29.442837, 51.172653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555080, 30.060955, 50.879143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915054, 30.201897, 50.981876>,  <37.131039, 30.286461, 51.043518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915054, 30.201897, 50.981876>,  <36.555080, 30.060955, 50.879143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915054, 30.201897, 50.981876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052709, 0.496810, -0.866257,
		-0.432830, 0.793112, 0.428524,
		0.899934, 0.352354, 0.256839,
		37.185036, 30.307604, 51.058929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454258, 30.671043, 50.845272>,  <36.555080, 30.060955, 50.879143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454258, 30.671043, 50.845272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847340, 30.629715, 50.783810>,  <37.083191, 30.604918, 50.746933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847340, 30.629715, 50.783810>,  <36.454258, 30.671043, 50.845272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847340, 30.629715, 50.783810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096720, 0.421216, -0.901788,
		0.157899, 0.901056, 0.403938,
		0.982707, -0.103323, -0.153659,
		37.142151, 30.598719, 50.737713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658062, 31.294561, 50.602390>,  <36.454258, 30.671043, 50.845272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658062, 31.294561, 50.602390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971912, 31.064829, 50.509003>,  <37.160221, 30.926989, 50.452969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971912, 31.064829, 50.509003>,  <36.658062, 31.294561, 50.602390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971912, 31.064829, 50.509003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250713, 0.638354, -0.727769,
		0.567016, 0.512492, 0.644860,
		0.784624, -0.574332, -0.233469,
		37.207298, 30.892529, 50.438961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175655, 31.750219, 50.434414>,  <36.658062, 31.294561, 50.602390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175655, 31.750219, 50.434414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238476, 31.398666, 50.254238>,  <37.276169, 31.187735, 50.146133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238476, 31.398666, 50.254238>,  <37.175655, 31.750219, 50.434414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238476, 31.398666, 50.254238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288459, 0.477036, -0.830197,
		0.944525, 0.000445, 0.328439,
		0.157047, -0.878884, -0.450444,
		37.285591, 31.135002, 50.119106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706474, 31.920408, 50.051682>,  <37.175655, 31.750219, 50.434414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706474, 31.920408, 50.051682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565403, 31.586746, 49.882069>,  <37.480759, 31.386549, 49.780300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565403, 31.586746, 49.882069>,  <37.706474, 31.920408, 50.051682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565403, 31.586746, 49.882069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312352, 0.322212, -0.893653,
		0.882072, -0.447622, 0.146912,
		-0.352682, -0.834155, -0.424030,
		37.459599, 31.336500, 49.754860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322746, 31.575188, 49.809357>,  <37.706474, 31.920408, 50.051682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322746, 31.575188, 49.809357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008865, 31.438198, 49.602688>,  <37.820538, 31.356005, 49.478687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008865, 31.438198, 49.602688>,  <38.322746, 31.575188, 49.809357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008865, 31.438198, 49.602688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484525, 0.180989, -0.855850,
		0.386621, -0.921929, 0.023916,
		-0.784704, -0.342477, -0.516672,
		37.773453, 31.335455, 49.447685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618973, 31.077448, 49.246231>,  <38.322746, 31.575188, 49.809357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618973, 31.077448, 49.246231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260826, 31.223911, 49.144840>,  <38.045937, 31.311789, 49.084007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260826, 31.223911, 49.144840>,  <38.618973, 31.077448, 49.246231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260826, 31.223911, 49.144840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321502, 0.137628, -0.936854,
		-0.308153, -0.920319, -0.240948,
		-0.895365, 0.366159, -0.253473,
		37.992218, 31.333759, 49.068798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506149, 30.858757, 48.546703>,  <38.618973, 31.077448, 49.246231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506149, 30.858757, 48.546703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223553, 31.140083, 48.578251>,  <38.053997, 31.308880, 48.597179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223553, 31.140083, 48.578251>,  <38.506149, 30.858757, 48.546703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223553, 31.140083, 48.578251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213196, 0.317756, -0.923893,
		-0.674849, -0.635906, -0.374436,
		-0.706489, 0.703317, 0.078865,
		38.011604, 31.351078, 48.601910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223907, 30.851536, 47.908081>,  <38.506149, 30.858757, 48.546703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223907, 30.851536, 47.908081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089916, 31.203098, 48.043911>,  <38.009521, 31.414036, 48.125408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089916, 31.203098, 48.043911>,  <38.223907, 30.851536, 47.908081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089916, 31.203098, 48.043911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123468, 0.316343, -0.940576,
		-0.934102, -0.356998, 0.002549,
		-0.334978, 0.878908, 0.339575,
		37.989422, 31.466770, 48.145782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571674, 31.035461, 47.733974>,  <38.223907, 30.851536, 47.908081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571674, 31.035461, 47.733974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722149, 31.400103, 47.800266>,  <37.812431, 31.618887, 47.840042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722149, 31.400103, 47.800266>,  <37.571674, 31.035461, 47.733974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722149, 31.400103, 47.800266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288863, 0.285344, -0.913858,
		-0.880366, 0.295903, 0.370670,
		0.376182, 0.911603, 0.165732,
		37.835003, 31.673584, 47.849987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009079, 31.529451, 47.529392>,  <37.571674, 31.035461, 47.733974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009079, 31.529451, 47.529392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339172, 31.755104, 47.518436>,  <37.537228, 31.890495, 47.511864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339172, 31.755104, 47.518436>,  <37.009079, 31.529451, 47.529392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339172, 31.755104, 47.518436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338435, 0.455079, -0.823629,
		-0.452171, 0.688953, 0.566467,
		0.825229, 0.564134, -0.027392,
		37.586742, 31.924345, 47.510220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814297, 32.226654, 47.346157>,  <37.009079, 31.529451, 47.529392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814297, 32.226654, 47.346157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203545, 32.219559, 47.254303>,  <37.437092, 32.215302, 47.199192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203545, 32.219559, 47.254303>,  <36.814297, 32.226654, 47.346157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203545, 32.219559, 47.254303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185885, 0.528210, -0.828517,
		0.135987, 0.848928, 0.510713,
		0.973116, -0.017734, -0.229633,
		37.495480, 32.214237, 47.185413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006935, 32.906456, 47.076424>,  <36.814297, 32.226654, 47.346157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006935, 32.906456, 47.076424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282482, 32.649296, 46.942467>,  <37.447807, 32.494999, 46.862091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282482, 32.649296, 46.942467>,  <37.006935, 32.906456, 47.076424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282482, 32.649296, 46.942467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125809, 0.348943, -0.928661,
		0.713891, 0.681852, 0.159492,
		0.688863, -0.642897, -0.334891,
		37.489140, 32.456429, 46.841999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471794, 33.259766, 46.763199>,  <37.006935, 32.906456, 47.076424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471794, 33.259766, 46.763199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484146, 32.902760, 46.583218>,  <37.491558, 32.688557, 46.475227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484146, 32.902760, 46.583218>,  <37.471794, 33.259766, 46.763199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484146, 32.902760, 46.583218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019127, 0.449559, -0.893046,
		0.999340, 0.036180, -0.003190,
		0.030876, -0.892517, -0.449955,
		37.493408, 32.635006, 46.448231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913761, 33.390182, 46.215042>,  <37.471794, 33.259766, 46.763199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913761, 33.390182, 46.215042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711758, 33.053635, 46.138031>,  <37.590557, 32.851707, 46.091824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711758, 33.053635, 46.138031>,  <37.913761, 33.390182, 46.215042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711758, 33.053635, 46.138031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213089, 0.337695, -0.916818,
		0.836396, -0.421976, -0.349825,
		-0.505009, -0.841367, -0.192528,
		37.560253, 32.801224, 46.080273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117306, 33.178116, 45.591404>,  <37.913761, 33.390182, 46.215042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117306, 33.178116, 45.591404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.784023, 32.958202, 45.615116>,  <37.584053, 32.826256, 45.629341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.784023, 32.958202, 45.615116>,  <38.117306, 33.178116, 45.591404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784023, 32.958202, 45.615116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176486, 0.162803, -0.970746,
		0.524049, -0.819289, -0.232677,
		-0.833202, -0.549782, 0.059277,
		37.534061, 32.793266, 45.632900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001251, 32.774090, 44.976524>,  <38.117306, 33.178116, 45.591404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001251, 32.774090, 44.976524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627182, 32.767857, 45.118061>,  <37.402740, 32.764114, 45.202984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627182, 32.767857, 45.118061>,  <38.001251, 32.774090, 44.976524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627182, 32.767857, 45.118061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353827, -0.003950, -0.935302,
		0.015971, -0.999871, -0.001820,
		-0.935175, -0.015582, 0.353845,
		37.346630, 32.763180, 45.224213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632423, 32.339821, 44.564003>,  <38.001251, 32.774090, 44.976524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632423, 32.339821, 44.564003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316738, 32.533260, 44.715408>,  <37.127327, 32.649323, 44.806252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316738, 32.533260, 44.715408>,  <37.632423, 32.339821, 44.564003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316738, 32.533260, 44.715408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465509, -0.069092, -0.882342,
		-0.400549, -0.872558, 0.279649,
		-0.789216, 0.483600, 0.378509,
		37.079975, 32.678341, 44.828960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940926, 31.951237, 44.388973>,  <37.632423, 32.339821, 44.564003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940926, 31.951237, 44.388973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829926, 32.324520, 44.480289>,  <36.763325, 32.548489, 44.535080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829926, 32.324520, 44.480289>,  <36.940926, 31.951237, 44.388973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829926, 32.324520, 44.480289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468937, 0.075827, -0.879971,
		-0.838506, -0.351245, 0.416574,
		-0.277498, 0.933208, 0.228293,
		36.746677, 32.604481, 44.548779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204315, 32.047955, 44.115730>,  <36.940926, 31.951237, 44.388973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204315, 32.047955, 44.115730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374565, 32.408195, 44.150959>,  <36.476715, 32.624340, 44.172096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374565, 32.408195, 44.150959>,  <36.204315, 32.047955, 44.115730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374565, 32.408195, 44.150959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341419, 0.249957, -0.906065,
		-0.838020, 0.355575, 0.413871,
		0.425624, 0.900604, 0.088069,
		36.502251, 32.678375, 44.177380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886974, 32.437370, 43.666313>,  <36.204315, 32.047955, 44.115730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886974, 32.437370, 43.666313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148380, 32.730106, 43.743587>,  <36.305225, 32.905750, 43.789951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148380, 32.730106, 43.743587>,  <35.886974, 32.437370, 43.666313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148380, 32.730106, 43.743587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016161, 0.241681, -0.970221,
		-0.756740, 0.637177, 0.146116,
		0.653516, 0.731844, 0.193187,
		36.344437, 32.949661, 43.801544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568783, 33.118675, 43.503902>,  <35.886974, 32.437370, 43.666313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568783, 33.118675, 43.503902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966618, 33.150471, 43.477116>,  <36.205318, 33.169548, 43.461044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966618, 33.150471, 43.477116>,  <35.568783, 33.118675, 43.503902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966618, 33.150471, 43.477116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083240, 0.223369, -0.971173,
		-0.062237, 0.971488, 0.228776,
		0.994584, 0.079487, -0.066965,
		36.264992, 33.174316, 43.457027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701942, 33.697323, 43.238350>,  <35.568783, 33.118675, 43.503902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701942, 33.697323, 43.238350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065445, 33.541183, 43.179295>,  <36.283546, 33.447498, 43.143860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065445, 33.541183, 43.179295>,  <35.701942, 33.697323, 43.238350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065445, 33.541183, 43.179295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025629, 0.300902, -0.953310,
		0.416550, 0.870106, 0.263441,
		0.908752, -0.390350, -0.147641,
		36.338070, 33.424080, 43.135002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140915, 34.199364, 42.890583>,  <35.701942, 33.697323, 43.238350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140915, 34.199364, 42.890583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293484, 33.838333, 42.810711>,  <36.385025, 33.621716, 42.762787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293484, 33.838333, 42.810711>,  <36.140915, 34.199364, 42.890583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293484, 33.838333, 42.810711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233878, 0.303205, -0.923779,
		0.894325, 0.305650, 0.326742,
		0.381423, -0.902577, -0.199679,
		36.407909, 33.567558, 42.750809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764641, 34.403080, 42.546276>,  <36.140915, 34.199364, 42.890583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764641, 34.403080, 42.546276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675739, 34.026169, 42.446110>,  <36.622398, 33.800022, 42.386009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675739, 34.026169, 42.446110>,  <36.764641, 34.403080, 42.546276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675739, 34.026169, 42.446110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155885, 0.219189, -0.963149,
		0.962446, -0.253102, 0.098171,
		-0.222257, -0.942282, -0.250413,
		36.609062, 33.743484, 42.370987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382713, 34.110199, 42.234535>,  <36.764641, 34.403080, 42.546276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382713, 34.110199, 42.234535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079983, 33.884434, 42.102684>,  <36.898346, 33.748974, 42.023575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079983, 33.884434, 42.102684>,  <37.382713, 34.110199, 42.234535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079983, 33.884434, 42.102684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227194, 0.245701, -0.942345,
		0.612859, -0.788081, -0.057722,
		-0.756827, -0.564410, -0.329627,
		36.852936, 33.715111, 42.003796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639984, 33.817459, 41.555130>,  <37.382713, 34.110199, 42.234535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639984, 33.817459, 41.555130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.243610, 33.764004, 41.549583>,  <37.005787, 33.731930, 41.546253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.243610, 33.764004, 41.549583>,  <37.639984, 33.817459, 41.555130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243610, 33.764004, 41.549583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020087, 0.249428, -0.968185,
		0.132844, -0.959128, -0.249851,
		-0.990933, -0.133637, -0.013869,
		36.946331, 33.723911, 41.545422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405163, 33.440083, 40.974098>,  <37.639984, 33.817459, 41.555130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405163, 33.440083, 40.974098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057842, 33.619293, 41.059254>,  <36.849449, 33.726822, 41.110348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057842, 33.619293, 41.059254>,  <37.405163, 33.440083, 40.974098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057842, 33.619293, 41.059254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172999, 0.128711, -0.976476,
		-0.464892, -0.884705, -0.034251,
		-0.868301, 0.448030, 0.212890,
		36.797352, 33.753704, 41.123119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847187, 33.177574, 40.443054>,  <37.405163, 33.440083, 40.974098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847187, 33.177574, 40.443054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656570, 33.493637, 40.597229>,  <36.542202, 33.683273, 40.689735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656570, 33.493637, 40.597229>,  <36.847187, 33.177574, 40.443054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656570, 33.493637, 40.597229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117877, 0.377031, -0.918669,
		-0.871215, -0.483215, -0.086528,
		-0.476538, 0.790159, 0.385435,
		36.513607, 33.730686, 40.712860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321541, 33.167225, 40.057507>,  <36.847187, 33.177574, 40.443054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321541, 33.167225, 40.057507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369041, 33.532928, 40.212444>,  <36.397541, 33.752350, 40.305408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369041, 33.532928, 40.212444>,  <36.321541, 33.167225, 40.057507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369041, 33.532928, 40.212444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191818, 0.403879, -0.894476,
		-0.974219, 0.031924, 0.223333,
		0.118755, 0.914255, 0.387343,
		36.404667, 33.807205, 40.328648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740696, 33.599506, 39.797413>,  <36.321541, 33.167225, 40.057507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740696, 33.599506, 39.797413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034962, 33.853474, 39.891800>,  <36.211521, 34.005856, 39.948433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034962, 33.853474, 39.891800>,  <35.740696, 33.599506, 39.797413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034962, 33.853474, 39.891800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011224, 0.359746, -0.932983,
		-0.677256, 0.683711, 0.271777,
		0.735661, 0.634919, 0.235967,
		36.255661, 34.043949, 39.962589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570938, 34.113487, 39.377167>,  <35.740696, 33.599506, 39.797413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570938, 34.113487, 39.377167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952778, 34.196873, 39.462292>,  <36.181881, 34.246902, 39.513367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952778, 34.196873, 39.462292>,  <35.570938, 34.113487, 39.377167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952778, 34.196873, 39.462292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120084, 0.384506, -0.915279,
		-0.272628, 0.899277, 0.342016,
		0.954596, 0.208460, 0.212816,
		36.239159, 34.259411, 39.526134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712299, 34.758240, 38.980846>,  <35.570938, 34.113487, 39.377167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712299, 34.758240, 38.980846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071613, 34.589268, 39.029236>,  <36.287201, 34.487885, 39.058270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071613, 34.589268, 39.029236>,  <35.712299, 34.758240, 38.980846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071613, 34.589268, 39.029236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270247, 0.314040, -0.910135,
		0.346481, 0.850253, 0.396259,
		0.898286, -0.422432, 0.120970,
		36.341099, 34.462540, 39.065525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309471, 35.327229, 38.896095>,  <35.712299, 34.758240, 38.980846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309471, 35.327229, 38.896095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455097, 34.966442, 38.803215>,  <36.542473, 34.749969, 38.747486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455097, 34.966442, 38.803215>,  <36.309471, 35.327229, 38.896095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455097, 34.966442, 38.803215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301845, 0.350115, -0.886741,
		0.881106, 0.252741, 0.399717,
		0.364063, -0.901965, -0.232200,
		36.564316, 34.695854, 38.733555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808681, 35.479389, 38.390713>,  <36.309471, 35.327229, 38.896095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808681, 35.479389, 38.390713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796341, 35.080200, 38.368416>,  <36.788937, 34.840687, 38.355038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796341, 35.080200, 38.368416>,  <36.808681, 35.479389, 38.390713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796341, 35.080200, 38.368416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371075, 0.040344, -0.927726,
		0.928090, -0.049309, 0.369077,
		-0.030856, -0.997968, -0.055741,
		36.787083, 34.780811, 38.351692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473671, 35.198799, 38.096127>,  <36.808681, 35.479389, 38.390713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473671, 35.198799, 38.096127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195511, 34.917606, 38.036476>,  <37.028614, 34.748890, 38.000687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195511, 34.917606, 38.036476>,  <37.473671, 35.198799, 38.096127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195511, 34.917606, 38.036476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312702, -0.109167, -0.943557,
		0.647022, -0.702782, 0.295738,
		-0.695400, -0.702980, -0.149127,
		36.986893, 34.706711, 37.991737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831802, 34.819939, 37.720333>,  <37.473671, 35.198799, 38.096127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831802, 34.819939, 37.720333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450245, 34.722973, 37.649540>,  <37.221310, 34.664795, 37.607063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450245, 34.722973, 37.649540>,  <37.831802, 34.819939, 37.720333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450245, 34.722973, 37.649540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215070, -0.140740, -0.966404,
		0.209361, -0.959910, 0.186387,
		-0.953894, -0.242414, -0.176982,
		37.164078, 34.650249, 37.596447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160000, 34.452614, 38.388977>,  <37.831802, 34.819939, 37.720333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160000, 34.452614, 38.388977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483803, 34.687042, 38.375042>,  <38.678085, 34.827698, 38.366680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483803, 34.687042, 38.375042>,  <38.160000, 34.452614, 38.388977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483803, 34.687042, 38.375042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417007, -0.532195, 0.736800,
		0.413275, -0.610976, -0.675213,
		0.809512, 0.586069, -0.034839,
		38.726658, 34.862862, 38.364590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722504, 34.010002, 38.265057>,  <38.160000, 34.452614, 38.388977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722504, 34.010002, 38.265057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864681, 34.342190, 38.436630>,  <38.949986, 34.541504, 38.539574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864681, 34.342190, 38.436630>,  <38.722504, 34.010002, 38.265057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864681, 34.342190, 38.436630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501225, -0.556689, 0.662474,
		0.788946, -0.020478, -0.614121,
		0.355440, 0.830469, 0.428934,
		38.971313, 34.591331, 38.565311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420486, 33.855957, 38.330750>,  <38.722504, 34.010002, 38.265057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420486, 33.855957, 38.330750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334728, 34.153351, 38.584129>,  <39.283276, 34.331787, 38.736156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334728, 34.153351, 38.584129>,  <39.420486, 33.855957, 38.330750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334728, 34.153351, 38.584129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550585, -0.443689, 0.707105,
		0.806780, 0.500366, -0.314230,
		-0.214391, 0.743488, 0.633453,
		39.270412, 34.376396, 38.774166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063747, 34.031746, 38.644333>,  <39.420486, 33.855957, 38.330750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063747, 34.031746, 38.644333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809666, 34.195728, 38.906158>,  <39.657215, 34.294117, 39.063255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809666, 34.195728, 38.906158>,  <40.063747, 34.031746, 38.644333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809666, 34.195728, 38.906158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554525, -0.347845, 0.755980,
		0.537602, 0.843175, -0.006375,
		-0.635205, 0.409952, 0.654564,
		39.619102, 34.318714, 39.102528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522202, 34.384602, 39.181667>,  <40.063747, 34.031746, 38.644333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522202, 34.384602, 39.181667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.159344, 34.317852, 39.336197>,  <39.941631, 34.277802, 39.428917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.159344, 34.317852, 39.336197>,  <40.522202, 34.384602, 39.181667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159344, 34.317852, 39.336197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416582, -0.226038, 0.880549,
		-0.059616, 0.959719, 0.274564,
		-0.907141, -0.166873, 0.386326,
		39.887203, 34.267792, 39.452095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618069, 34.721443, 39.754589>,  <40.522202, 34.384602, 39.181667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.618069, 34.721443, 39.754589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301521, 34.482327, 39.805794>,  <40.111595, 34.338856, 39.836517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301521, 34.482327, 39.805794>,  <40.618069, 34.721443, 39.754589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301521, 34.482327, 39.805794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283931, -0.173947, 0.942935,
		-0.541412, 0.782552, 0.307387,
		-0.791364, -0.597792, 0.128014,
		40.064114, 34.302990, 39.844196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337852, 34.939594, 40.384243>,  <40.618069, 34.721443, 39.754589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337852, 34.939594, 40.384243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205109, 34.565723, 40.333248>,  <40.125462, 34.341400, 40.302650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205109, 34.565723, 40.333248>,  <40.337852, 34.939594, 40.384243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205109, 34.565723, 40.333248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136223, -0.181213, 0.973964,
		-0.933442, 0.305850, 0.187462,
		-0.331858, -0.934675, -0.127488,
		40.105553, 34.285320, 40.295002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825016, 34.854694, 40.845402>,  <40.337852, 34.939594, 40.384243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825016, 34.854694, 40.845402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912910, 34.472523, 40.766529>,  <39.965645, 34.243221, 40.719208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912910, 34.472523, 40.766529>,  <39.825016, 34.854694, 40.845402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912910, 34.472523, 40.766529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227282, -0.146420, 0.962758,
		-0.948715, -0.256364, 0.184978,
		0.219732, -0.955426, -0.197178,
		39.978828, 34.185894, 40.707375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358040, 34.420750, 41.315502>,  <39.825016, 34.854694, 40.845402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358040, 34.420750, 41.315502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667652, 34.197475, 41.195972>,  <39.853420, 34.063511, 41.124252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667652, 34.197475, 41.195972>,  <39.358040, 34.420750, 41.315502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667652, 34.197475, 41.195972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236633, -0.182731, 0.954261,
		-0.587264, -0.809341, -0.009354,
		0.774032, -0.558190, -0.298828,
		39.899860, 34.030018, 41.106323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332993, 33.809666, 41.781376>,  <39.358040, 34.420750, 41.315502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332993, 33.809666, 41.781376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690876, 33.830555, 41.603943>,  <39.905605, 33.843090, 41.497482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690876, 33.830555, 41.603943>,  <39.332993, 33.809666, 41.781376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690876, 33.830555, 41.603943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439448, -0.280562, 0.853329,
		-0.079888, -0.958414, -0.273971,
		0.894709, 0.052226, -0.443587,
		39.959290, 33.846222, 41.470867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564484, 33.214935, 41.954948>,  <39.332993, 33.809666, 41.781376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564484, 33.214935, 41.954948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891792, 33.426472, 41.864830>,  <40.088177, 33.553394, 41.810760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891792, 33.426472, 41.864830>,  <39.564484, 33.214935, 41.954948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891792, 33.426472, 41.864830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435362, -0.314238, 0.843632,
		0.375348, -0.788407, -0.487369,
		0.818275, 0.528837, -0.225293,
		40.137276, 33.585121, 41.797241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245373, 32.813789, 42.003414>,  <39.564484, 33.214935, 41.954948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245373, 32.813789, 42.003414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343624, 33.199768, 42.040394>,  <40.402573, 33.431355, 42.062580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343624, 33.199768, 42.040394>,  <40.245373, 32.813789, 42.003414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343624, 33.199768, 42.040394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556073, -0.218380, 0.801931,
		0.794009, -0.145566, -0.590221,
		0.245626, 0.964946, 0.092451,
		40.417313, 33.489250, 42.068130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864616, 32.767086, 42.227493>,  <40.245373, 32.813789, 42.003414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864616, 32.767086, 42.227493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.752598, 33.137169, 42.329922>,  <40.685387, 33.359219, 42.391376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.752598, 33.137169, 42.329922>,  <40.864616, 32.767086, 42.227493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752598, 33.137169, 42.329922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339687, -0.153980, 0.927848,
		0.897878, 0.346825, -0.271158,
		-0.280048, 0.925204, 0.256068,
		40.668583, 33.414730, 42.406742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391472, 33.030231, 42.488434>,  <40.864616, 32.767086, 42.227493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391472, 33.030231, 42.488434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066536, 33.202343, 42.645897>,  <40.871574, 33.305611, 42.740376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066536, 33.202343, 42.645897>,  <41.391472, 33.030231, 42.488434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066536, 33.202343, 42.645897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312703, -0.248402, 0.916795,
		0.492265, 0.867845, 0.067236,
		-0.812337, 0.430281, 0.393658,
		40.822834, 33.331429, 42.763996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608295, 33.556454, 42.950325>,  <41.391472, 33.030231, 42.488434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.608295, 33.556454, 42.950325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231045, 33.468094, 43.049698>,  <41.004696, 33.415077, 43.109322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231045, 33.468094, 43.049698>,  <41.608295, 33.556454, 42.950325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231045, 33.468094, 43.049698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285200, -0.153685, 0.946067,
		-0.170802, 0.963113, 0.207944,
		-0.943127, -0.220896, 0.248430,
		40.948105, 33.401825, 43.124226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569210, 33.726242, 43.657509>,  <41.608295, 33.556454, 42.950325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569210, 33.726242, 43.657509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231667, 33.512833, 43.634682>,  <41.029140, 33.384789, 43.620983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231667, 33.512833, 43.634682>,  <41.569210, 33.726242, 43.657509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231667, 33.512833, 43.634682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142479, -0.325353, 0.934797,
		-0.517304, 0.780704, 0.350567,
		-0.843858, -0.533522, -0.057072,
		40.978508, 33.352776, 43.617561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331619, 33.835316, 44.264790>,  <41.569210, 33.726242, 43.657509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331619, 33.835316, 44.264790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.089748, 33.549877, 44.123283>,  <40.944626, 33.378616, 44.038380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.089748, 33.549877, 44.123283>,  <41.331619, 33.835316, 44.264790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089748, 33.549877, 44.123283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110125, -0.364996, 0.924473,
		-0.788822, 0.597965, 0.142120,
		-0.604675, -0.713594, -0.353768,
		40.908344, 33.335800, 44.017155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689663, 33.912998, 44.745884>,  <41.331619, 33.835316, 44.264790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689663, 33.912998, 44.745884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699921, 33.548752, 44.580898>,  <40.706074, 33.330204, 44.481907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699921, 33.548752, 44.580898>,  <40.689663, 33.912998, 44.745884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699921, 33.548752, 44.580898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339677, -0.395984, 0.853121,
		-0.940192, 0.118228, -0.319468,
		0.025641, -0.910614, -0.412461,
		40.707615, 33.275566, 44.457161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065964, 33.520058, 44.826702>,  <40.689663, 33.912998, 44.745884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065964, 33.520058, 44.826702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.347702, 33.237110, 44.802929>,  <40.516743, 33.067341, 44.788666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.347702, 33.237110, 44.802929>,  <40.065964, 33.520058, 44.826702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.347702, 33.237110, 44.802929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342324, -0.411813, 0.844526,
		-0.621865, -0.574490, -0.532207,
		0.704342, -0.707368, -0.059431,
		40.559006, 33.024899, 44.785099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688999, 33.013699, 45.099621>,  <40.065964, 33.520058, 44.826702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688999, 33.013699, 45.099621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075157, 32.909527, 45.105175>,  <40.306850, 32.847023, 45.108509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075157, 32.909527, 45.105175>,  <39.688999, 33.013699, 45.099621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075157, 32.909527, 45.105175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168563, -0.582442, 0.795203,
		-0.199002, -0.770025, -0.606184,
		0.965393, -0.260428, 0.013891,
		40.364777, 32.831398, 45.109341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695301, 32.257397, 45.146229>,  <39.688999, 33.013699, 45.099621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695301, 32.257397, 45.146229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044395, 32.407318, 45.271351>,  <40.253853, 32.497272, 45.346424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044395, 32.407318, 45.271351>,  <39.695301, 32.257397, 45.146229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044395, 32.407318, 45.271351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072364, -0.534354, 0.842157,
		0.482793, -0.757620, -0.439230,
		0.872740, 0.374803, 0.312807,
		40.306217, 32.519760, 45.365192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009563, 31.780474, 45.511269>,  <39.695301, 32.257397, 45.146229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009563, 31.780474, 45.511269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208447, 32.100334, 45.645935>,  <40.327774, 32.292252, 45.726734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208447, 32.100334, 45.645935>,  <40.009563, 31.780474, 45.511269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208447, 32.100334, 45.645935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013415, -0.380894, 0.924521,
		0.867530, -0.464191, -0.178655,
		0.497204, 0.799654, 0.336664,
		40.357609, 32.340229, 45.746933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649677, 31.555485, 46.027954>,  <40.009563, 31.780474, 45.511269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649677, 31.555485, 46.027954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530460, 31.929916, 46.102707>,  <40.458931, 32.154575, 46.147560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530460, 31.929916, 46.102707>,  <40.649677, 31.555485, 46.027954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530460, 31.929916, 46.102707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046932, -0.181176, 0.982330,
		0.953398, 0.301549, 0.010067,
		-0.298044, 0.936079, 0.186885,
		40.441048, 32.210739, 46.158772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013653, 31.836115, 46.663395>,  <40.649677, 31.555485, 46.027954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013653, 31.836115, 46.663395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723152, 32.109150, 46.630814>,  <40.548851, 32.272972, 46.611267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723152, 32.109150, 46.630814>,  <41.013653, 31.836115, 46.663395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723152, 32.109150, 46.630814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069551, 0.044914, 0.996567,
		0.683901, 0.729424, 0.014856,
		-0.726252, 0.682586, -0.081449,
		40.505276, 32.313927, 46.606380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100288, 32.337234, 47.129360>,  <41.013653, 31.836115, 46.663395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.100288, 32.337234, 47.129360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710331, 32.413948, 47.084114>,  <40.476357, 32.459976, 47.056965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710331, 32.413948, 47.084114>,  <41.100288, 32.337234, 47.129360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710331, 32.413948, 47.084114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130451, -0.080250, 0.988202,
		0.180445, 0.978150, 0.103254,
		-0.974896, 0.191786, -0.113120,
		40.417862, 32.471485, 47.050179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995148, 32.763458, 47.665268>,  <41.100288, 32.337234, 47.129360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995148, 32.763458, 47.665268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618080, 32.716965, 47.540134>,  <40.391838, 32.689068, 47.465054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618080, 32.716965, 47.540134>,  <40.995148, 32.763458, 47.665268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618080, 32.716965, 47.540134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333205, 0.275301, 0.901767,
		-0.018691, 0.954306, -0.298247,
		-0.942669, -0.116232, -0.312834,
		40.335278, 32.682095, 47.446285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633175, 33.351334, 47.864746>,  <40.995148, 32.763458, 47.665268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633175, 33.351334, 47.864746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351116, 33.068733, 47.840675>,  <40.181881, 32.899174, 47.826233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351116, 33.068733, 47.840675>,  <40.633175, 33.351334, 47.864746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351116, 33.068733, 47.840675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245567, 0.163711, 0.955456,
		-0.665180, 0.688515, -0.288934,
		-0.705147, -0.706503, -0.060179,
		40.139572, 32.856781, 47.822620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965668, 33.655777, 48.227715>,  <40.633175, 33.351334, 47.864746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965668, 33.655777, 48.227715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949402, 33.256157, 48.233898>,  <39.939644, 33.016384, 48.237610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949402, 33.256157, 48.233898>,  <39.965668, 33.655777, 48.227715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949402, 33.256157, 48.233898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206344, 0.023537, 0.978197,
		-0.977634, 0.036588, -0.207106,
		-0.040665, -0.999053, 0.015461,
		39.937202, 32.956440, 48.238537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406853, 33.500366, 48.600700>,  <39.965668, 33.655777, 48.227715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406853, 33.500366, 48.600700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.641750, 33.178131, 48.632114>,  <39.782688, 32.984791, 48.650963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.641750, 33.178131, 48.632114>,  <39.406853, 33.500366, 48.600700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641750, 33.178131, 48.632114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255326, -0.092298, 0.962440,
		-0.768084, -0.585239, -0.259889,
		0.587244, -0.805591, 0.078534,
		39.817924, 32.936455, 48.655674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049393, 33.078854, 49.119030>,  <39.406853, 33.500366, 48.600700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049393, 33.078854, 49.119030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424202, 32.942078, 49.090572>,  <39.649086, 32.860012, 49.073498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424202, 32.942078, 49.090572>,  <39.049393, 33.078854, 49.119030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424202, 32.942078, 49.090572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087121, 0.031577, 0.995697,
		-0.338223, -0.939190, 0.059378,
		0.937024, -0.341941, -0.071143,
		39.705311, 32.839497, 49.069229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119526, 32.708595, 49.732552>,  <39.049393, 33.078854, 49.119030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119526, 32.708595, 49.732552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497524, 32.759243, 49.611919>,  <39.724323, 32.789631, 49.539539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497524, 32.759243, 49.611919>,  <39.119526, 32.708595, 49.732552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497524, 32.759243, 49.611919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276440, 0.183652, 0.943320,
		0.174816, -0.974804, 0.138551,
		0.944998, 0.126606, -0.301580,
		39.781021, 32.797230, 49.521446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469700, 32.311153, 50.188377>,  <39.119526, 32.708595, 49.732552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469700, 32.311153, 50.188377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753521, 32.544804, 50.030731>,  <39.923813, 32.684994, 49.936142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753521, 32.544804, 50.030731>,  <39.469700, 32.311153, 50.188377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753521, 32.544804, 50.030731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315360, 0.236925, 0.918920,
		0.630141, -0.776314, -0.016098,
		0.709556, 0.584126, -0.394115,
		39.966389, 32.720043, 49.912498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069847, 32.138279, 50.588577>,  <39.469700, 32.311153, 50.188377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069847, 32.138279, 50.588577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179451, 32.497734, 50.451534>,  <40.245213, 32.713406, 50.369308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179451, 32.497734, 50.451534>,  <40.069847, 32.138279, 50.588577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179451, 32.497734, 50.451534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200375, 0.295075, 0.934227,
		0.940621, -0.324636, -0.099211,
		0.274009, 0.898634, -0.342603,
		40.261654, 32.767323, 50.348755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645538, 32.303360, 51.008911>,  <40.069847, 32.138279, 50.588577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645538, 32.303360, 51.008911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.522980, 32.658054, 50.870453>,  <40.449444, 32.870872, 50.787376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.522980, 32.658054, 50.870453>,  <40.645538, 32.303360, 51.008911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.522980, 32.658054, 50.870453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045237, 0.349663, 0.935783,
		0.950827, 0.302383, -0.067024,
		-0.306401, 0.886736, -0.346148,
		40.431061, 32.924076, 50.766609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104626, 32.768204, 51.348419>,  <40.645538, 32.303360, 51.008911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104626, 32.768204, 51.348419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768990, 32.945358, 51.222065>,  <40.567608, 33.051651, 51.146252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768990, 32.945358, 51.222065>,  <41.104626, 32.768204, 51.348419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768990, 32.945358, 51.222065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178465, 0.324424, 0.928924,
		0.513891, 0.835822, -0.193179,
		-0.839087, 0.442890, -0.315883,
		40.517265, 33.078224, 51.127300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010738, 33.395966, 51.784672>,  <41.104626, 32.768204, 51.348419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010738, 33.395966, 51.784672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.633133, 33.349751, 51.661060>,  <40.406570, 33.322021, 51.586895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.633133, 33.349751, 51.661060>,  <41.010738, 33.395966, 51.784672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633133, 33.349751, 51.661060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327413, 0.212840, 0.920598,
		-0.040591, 0.970232, -0.238751,
		-0.944009, -0.115538, -0.309027,
		40.349930, 33.315090, 51.568352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705914, 34.054638, 52.023232>,  <41.010738, 33.395966, 51.784672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705914, 34.054638, 52.023232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412350, 33.791225, 51.956654>,  <40.236210, 33.633179, 51.916706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412350, 33.791225, 51.956654>,  <40.705914, 34.054638, 52.023232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412350, 33.791225, 51.956654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444737, 0.280659, 0.850552,
		-0.513404, 0.698256, -0.498855,
		-0.733911, -0.658536, -0.166449,
		40.192177, 33.593666, 51.906719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074577, 34.431656, 52.274479>,  <40.705914, 34.054638, 52.023232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074577, 34.431656, 52.274479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041626, 34.033436, 52.256149>,  <40.021854, 33.794506, 52.245152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041626, 34.033436, 52.256149>,  <40.074577, 34.431656, 52.274479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041626, 34.033436, 52.256149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520008, 0.003717, 0.854153,
		-0.850179, 0.094193, -0.517999,
		-0.082381, -0.995547, -0.045821,
		40.016911, 33.734772, 52.242401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184532, 34.929874, 52.956322>,  <40.074577, 34.431656, 52.274479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184532, 34.929874, 52.956322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422600, 35.232323, 53.065178>,  <40.565441, 35.413792, 53.130493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422600, 35.232323, 53.065178>,  <40.184532, 34.929874, 52.956322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422600, 35.232323, 53.065178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312793, 0.093970, -0.945161,
		-0.740227, 0.647653, -0.180581,
		0.595167, 0.756118, 0.272140,
		40.601151, 35.459160, 53.146820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969978, 35.527725, 52.576824>,  <40.184532, 34.929874, 52.956322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969978, 35.527725, 52.576824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355003, 35.592152, 52.664032>,  <40.586018, 35.630806, 52.716354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355003, 35.592152, 52.664032>,  <39.969978, 35.527725, 52.576824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355003, 35.592152, 52.664032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174410, 0.247685, -0.953013,
		-0.207495, 0.955359, 0.210321,
		0.962563, 0.161064, 0.218017,
		40.643772, 35.640472, 52.729439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131184, 36.196312, 52.344589>,  <39.969978, 35.527725, 52.576824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131184, 36.196312, 52.344589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.479134, 35.999020, 52.342251>,  <40.687904, 35.880646, 52.340847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.479134, 35.999020, 52.342251>,  <40.131184, 36.196312, 52.344589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.479134, 35.999020, 52.342251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184552, 0.336436, -0.923445,
		0.457440, 0.802206, 0.383686,
		0.869879, -0.493231, -0.005851,
		40.740097, 35.851051, 52.340496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567757, 36.674583, 51.968079>,  <40.131184, 36.196312, 52.344589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567757, 36.674583, 51.968079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726398, 36.307697, 51.983150>,  <40.821583, 36.087566, 51.992195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726398, 36.307697, 51.983150>,  <40.567757, 36.674583, 51.968079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726398, 36.307697, 51.983150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246323, 0.066787, -0.966884,
		0.884324, 0.392754, 0.252419,
		0.396606, -0.917215, 0.037683,
		40.845379, 36.032532, 51.994453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032032, 36.720963, 51.422588>,  <40.567757, 36.674583, 51.968079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032032, 36.720963, 51.422588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.018291, 36.324604, 51.474670>,  <41.010048, 36.086788, 51.505920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.018291, 36.324604, 51.474670>,  <41.032032, 36.720963, 51.422588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.018291, 36.324604, 51.474670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201901, -0.134476, -0.970130,
		0.978803, -0.007033, 0.204681,
		-0.034347, -0.990892, 0.130206,
		41.007988, 36.027336, 51.513733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.582794, 36.377155, 51.102158>,  <41.032032, 36.720963, 51.422588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.582794, 36.377155, 51.102158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.327457, 36.070328, 51.127861>,  <41.174255, 35.886230, 51.143284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.327457, 36.070328, 51.127861>,  <41.582794, 36.377155, 51.102158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327457, 36.070328, 51.127861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184436, -0.233461, -0.954714,
		0.747333, -0.597579, 0.290502,
		-0.638338, -0.767069, 0.064258,
		41.135956, 35.840206, 51.147137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.944496, 35.717571, 50.808048>,  <41.582794, 36.377155, 51.102158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.944496, 35.717571, 50.808048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546566, 35.679798, 50.793007>,  <41.307808, 35.657135, 50.783981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546566, 35.679798, 50.793007>,  <41.944496, 35.717571, 50.808048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546566, 35.679798, 50.793007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058420, -0.228431, -0.971806,
		0.083182, -0.968969, 0.232765,
		-0.994821, -0.094435, -0.037606,
		41.248119, 35.651466, 50.781727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700993, 34.969379, 50.570030>,  <41.944496, 35.717571, 50.808048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.700993, 34.969379, 50.570030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397335, 35.220028, 50.499561>,  <41.215141, 35.370419, 50.457279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397335, 35.220028, 50.499561>,  <41.700993, 34.969379, 50.570030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397335, 35.220028, 50.499561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068053, -0.345580, -0.935918,
		-0.647351, -0.698512, 0.304990,
		-0.759148, 0.626623, -0.176176,
		41.169590, 35.408016, 50.446709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266193, 34.625332, 50.110104>,  <41.700993, 34.969379, 50.570030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266193, 34.625332, 50.110104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161049, 35.007423, 50.055779>,  <41.097961, 35.236679, 50.023186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161049, 35.007423, 50.055779>,  <41.266193, 34.625332, 50.110104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161049, 35.007423, 50.055779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161237, -0.182272, -0.969938,
		-0.951265, -0.233065, 0.201931,
		-0.262865, 0.955226, -0.135810,
		41.082188, 35.293991, 50.015034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615364, 34.722363, 49.628017>,  <41.266193, 34.625332, 50.110104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615364, 34.722363, 49.628017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792049, 35.079906, 49.597301>,  <40.898060, 35.294434, 49.578873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792049, 35.079906, 49.597301>,  <40.615364, 34.722363, 49.628017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792049, 35.079906, 49.597301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464140, 0.154437, -0.872194,
		-0.767763, 0.420902, 0.483095,
		0.441716, 0.893863, -0.076787,
		40.924564, 35.348064, 49.574265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113873, 35.121529, 49.265949>,  <40.615364, 34.722363, 49.628017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113873, 35.121529, 49.265949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460079, 35.321026, 49.247505>,  <40.667805, 35.440723, 49.236439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460079, 35.321026, 49.247505>,  <40.113873, 35.121529, 49.265949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460079, 35.321026, 49.247505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198860, 0.257683, -0.945544,
		-0.459705, 0.827558, 0.322210,
		0.865521, 0.498746, -0.046110,
		40.719734, 35.470650, 49.233673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982037, 35.669582, 48.918221>,  <40.113873, 35.121529, 49.265949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982037, 35.669582, 48.918221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377583, 35.713737, 48.878311>,  <40.614910, 35.740231, 48.854366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377583, 35.713737, 48.878311>,  <39.982037, 35.669582, 48.918221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377583, 35.713737, 48.878311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130392, 0.319809, -0.938467,
		-0.071681, 0.941030, 0.330642,
		0.988868, 0.110383, -0.099778,
		40.674244, 35.746853, 48.848377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047642, 36.304226, 48.669479>,  <39.982037, 35.669582, 48.918221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047642, 36.304226, 48.669479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398804, 36.134670, 48.580399>,  <40.609501, 36.032936, 48.526951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398804, 36.134670, 48.580399>,  <40.047642, 36.304226, 48.669479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398804, 36.134670, 48.580399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094314, 0.302913, -0.948340,
		0.469456, 0.853556, 0.225949,
		0.877904, -0.423893, -0.222707,
		40.662174, 36.007504, 48.513588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296082, 36.703575, 48.092335>,  <40.047642, 36.304226, 48.669479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296082, 36.703575, 48.092335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528824, 36.379532, 48.063599>,  <40.668468, 36.185104, 48.046356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528824, 36.379532, 48.063599>,  <40.296082, 36.703575, 48.092335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528824, 36.379532, 48.063599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106279, 0.163309, -0.980834,
		0.806316, 0.563071, 0.181120,
		0.581858, -0.810112, -0.071836,
		40.703381, 36.136497, 48.042049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861553, 36.894516, 47.718330>,  <40.296082, 36.703575, 48.092335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861553, 36.894516, 47.718330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.851440, 36.496674, 47.678093>,  <40.845371, 36.257969, 47.653950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.851440, 36.496674, 47.678093>,  <40.861553, 36.894516, 47.718330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851440, 36.496674, 47.678093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038624, 0.101526, -0.994083,
		0.998934, -0.021251, -0.040982,
		-0.025286, -0.994606, -0.100597,
		40.843853, 36.198292, 47.647915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329479, 36.837944, 47.237778>,  <40.861553, 36.894516, 47.718330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.329479, 36.837944, 47.237778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133068, 36.489487, 47.238556>,  <41.015221, 36.280415, 47.239021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133068, 36.489487, 47.238556>,  <41.329479, 36.837944, 47.237778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133068, 36.489487, 47.238556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026032, 0.012443, -0.999584,
		0.870753, -0.490877, -0.028787,
		-0.491031, -0.871140, 0.001944,
		40.985760, 36.228146, 47.239140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.673546, 36.418816, 46.831284>,  <41.329479, 36.837944, 47.237778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.673546, 36.418816, 46.831284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310726, 36.251133, 46.815598>,  <41.093037, 36.150524, 46.806187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310726, 36.251133, 46.815598>,  <41.673546, 36.418816, 46.831284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310726, 36.251133, 46.815598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113556, -0.153878, -0.981543,
		0.405432, -0.894756, 0.187177,
		-0.907045, -0.419205, -0.039218,
		41.038612, 36.125370, 46.803833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792671, 36.007435, 46.371746>,  <41.673546, 36.418816, 46.831284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792671, 36.007435, 46.371746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394577, 35.968605, 46.367947>,  <41.155720, 35.945305, 46.365665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394577, 35.968605, 46.367947>,  <41.792671, 36.007435, 46.371746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394577, 35.968605, 46.367947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039519, -0.312247, -0.949179,
		0.089176, -0.945028, 0.314595,
		-0.995232, -0.097077, -0.009501,
		41.096008, 35.939484, 46.365097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625923, 35.326801, 46.059349>,  <41.792671, 36.007435, 46.371746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625923, 35.326801, 46.059349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.282284, 35.527370, 46.018322>,  <41.076099, 35.647713, 45.993706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.282284, 35.527370, 46.018322>,  <41.625923, 35.326801, 46.059349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282284, 35.527370, 46.018322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014363, -0.223944, -0.974496,
		-0.511607, -0.835716, 0.199592,
		-0.859100, 0.501426, -0.102568,
		41.024555, 35.677799, 45.987553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201626, 34.936722, 45.691936>,  <41.625923, 35.326801, 46.059349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201626, 34.936722, 45.691936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.075027, 35.309574, 45.621552>,  <40.999069, 35.533287, 45.579319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.075027, 35.309574, 45.621552>,  <41.201626, 34.936722, 45.691936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075027, 35.309574, 45.621552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256034, -0.262559, -0.930327,
		-0.913387, -0.249395, 0.321757,
		-0.316499, 0.932129, -0.175964,
		40.980080, 35.589214, 45.568764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595222, 34.888550, 45.268860>,  <41.201626, 34.936722, 45.691936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595222, 34.888550, 45.268860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712978, 35.267483, 45.218414>,  <40.783630, 35.494843, 45.188148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712978, 35.267483, 45.218414>,  <40.595222, 34.888550, 45.268860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712978, 35.267483, 45.218414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101360, -0.100265, -0.989784,
		-0.950296, 0.304164, 0.066504,
		0.294389, 0.947329, -0.126111,
		40.801296, 35.551682, 45.180580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199623, 35.068878, 44.720013>,  <40.595222, 34.888550, 45.268860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199623, 35.068878, 44.720013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.498508, 35.334702, 44.722057>,  <40.677841, 35.494198, 44.723282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.498508, 35.334702, 44.722057>,  <40.199623, 35.068878, 44.720013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498508, 35.334702, 44.722057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015668, -0.009930, -0.999828,
		-0.664396, 0.747168, -0.017833,
		0.747217, 0.664561, 0.005109,
		40.722675, 35.534069, 44.723591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013580, 35.580296, 44.105793>,  <40.199623, 35.068878, 44.720013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013580, 35.580296, 44.105793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402557, 35.600121, 44.196911>,  <40.635944, 35.612015, 44.251583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402557, 35.600121, 44.196911>,  <40.013580, 35.580296, 44.105793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402557, 35.600121, 44.196911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217132, 0.163110, -0.962418,
		-0.084855, 0.985362, 0.147854,
		0.972447, 0.049562, 0.227795,
		40.694290, 35.614990, 44.265251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186424, 36.243408, 43.903229>,  <40.013580, 35.580296, 44.105793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186424, 36.243408, 43.903229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514751, 36.014931, 43.902939>,  <40.711746, 35.877846, 43.902763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514751, 36.014931, 43.902939>,  <40.186424, 36.243408, 43.903229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514751, 36.014931, 43.902939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122828, 0.177743, -0.976381,
		0.557830, 0.801341, 0.216053,
		0.820816, -0.571192, -0.000724,
		40.760998, 35.843575, 43.902721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781864, 36.635227, 43.672634>,  <40.186424, 36.243408, 43.903229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.781864, 36.635227, 43.672634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899960, 36.261127, 43.594505>,  <40.970818, 36.036667, 43.547626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899960, 36.261127, 43.594505>,  <40.781864, 36.635227, 43.672634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899960, 36.261127, 43.594505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380061, 0.302526, -0.874089,
		0.876578, 0.183828, 0.444767,
		0.295236, -0.935246, -0.195322,
		40.988529, 35.980553, 43.535908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380924, 36.707806, 43.354691>,  <40.781864, 36.635227, 43.672634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.380924, 36.707806, 43.354691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298851, 36.331043, 43.248318>,  <41.249607, 36.104988, 43.184494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298851, 36.331043, 43.248318>,  <41.380924, 36.707806, 43.354691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298851, 36.331043, 43.248318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400040, 0.167271, -0.901104,
		0.893235, -0.291272, 0.342479,
		-0.205179, -0.941903, -0.265933,
		41.237297, 36.048473, 43.168537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.929100, 36.523182, 42.955978>,  <41.380924, 36.707806, 43.354691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.929100, 36.523182, 42.955978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.641148, 36.261288, 42.863819>,  <41.468376, 36.104149, 42.808525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.641148, 36.261288, 42.863819>,  <41.929100, 36.523182, 42.955978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641148, 36.261288, 42.863819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232822, 0.084924, -0.968804,
		0.653881, -0.751068, 0.091302,
		-0.719885, -0.654739, -0.230396,
		41.425182, 36.064865, 42.794701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.307228, 36.072788, 42.481812>,  <41.929100, 36.523182, 42.955978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.307228, 36.072788, 42.481812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.920078, 36.002796, 42.409595>,  <41.687786, 35.960800, 42.366268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.920078, 36.002796, 42.409595>,  <42.307228, 36.072788, 42.481812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.920078, 36.002796, 42.409595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178985, 0.024735, -0.983541,
		0.176570, -0.984260, 0.007379,
		-0.967878, -0.174984, -0.180535,
		41.629715, 35.950302, 42.355434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.260403, 35.593952, 42.049824>,  <42.307228, 36.072788, 42.481812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.260403, 35.593952, 42.049824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.916790, 35.785236, 41.976742>,  <41.710621, 35.900005, 41.932892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.916790, 35.785236, 41.976742>,  <42.260403, 35.593952, 42.049824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916790, 35.785236, 41.976742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142326, -0.119725, -0.982553,
		-0.491739, -0.870048, 0.034786,
		-0.859032, 0.478208, -0.182703,
		41.659081, 35.928699, 41.921932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927540, 35.150990, 41.452034>,  <42.260403, 35.593952, 42.049824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927540, 35.150990, 41.452034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.755478, 35.512081, 41.449490>,  <41.652241, 35.728737, 41.447964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.755478, 35.512081, 41.449490>,  <41.927540, 35.150990, 41.452034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.755478, 35.512081, 41.449490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007618, -0.003417, -0.999965,
		-0.902722, -0.430191, -0.005408,
		-0.430157, 0.902731, -0.006362,
		41.626431, 35.782902, 41.447582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389732, 35.088623, 40.991180>,  <41.927540, 35.150990, 41.452034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.389732, 35.088623, 40.991180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445744, 35.483051, 41.027100>,  <41.479351, 35.719707, 41.048653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445744, 35.483051, 41.027100>,  <41.389732, 35.088623, 40.991180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445744, 35.483051, 41.027100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153461, 0.111213, -0.981876,
		-0.978183, 0.123709, 0.166896,
		0.140028, 0.986067, 0.089802,
		41.487751, 35.778870, 41.054039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069324, 35.327724, 40.420845>,  <41.389732, 35.088623, 40.991180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069324, 35.327724, 40.420845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.262314, 35.660786, 40.529587>,  <41.378109, 35.860622, 40.594833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.262314, 35.660786, 40.529587>,  <41.069324, 35.327724, 40.420845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262314, 35.660786, 40.529587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022799, 0.322202, -0.946397,
		-0.875611, 0.450417, 0.174439,
		0.482478, 0.832653, 0.271854,
		41.407059, 35.910580, 40.611145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755081, 35.883839, 40.093281>,  <41.069324, 35.327724, 40.420845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755081, 35.883839, 40.093281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133087, 35.988506, 40.171741>,  <41.359890, 36.051308, 40.218819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133087, 35.988506, 40.171741>,  <40.755081, 35.883839, 40.093281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133087, 35.988506, 40.171741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092611, 0.361124, -0.927908,
		-0.313637, 0.895053, 0.317035,
		0.945016, 0.261665, 0.196154,
		41.416592, 36.067005, 40.230587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828850, 36.672806, 39.927891>,  <40.755081, 35.883839, 40.093281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828850, 36.672806, 39.927891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190765, 36.502518, 39.923534>,  <41.407913, 36.400345, 39.920921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190765, 36.502518, 39.923534>,  <40.828850, 36.672806, 39.927891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190765, 36.502518, 39.923534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119985, 0.279376, -0.952656,
		0.408605, 0.860647, 0.303856,
		0.904790, -0.425718, -0.010890,
		41.462204, 36.374802, 39.920269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328331, 37.200428, 39.778099>,  <40.828850, 36.672806, 39.927891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.328331, 37.200428, 39.778099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496983, 36.854301, 39.669682>,  <41.598175, 36.646626, 39.604633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496983, 36.854301, 39.669682>,  <41.328331, 37.200428, 39.778099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496983, 36.854301, 39.669682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294712, 0.413450, -0.861512,
		0.857539, 0.283361, 0.429341,
		0.421630, -0.865312, -0.271040,
		41.623470, 36.594707, 39.588371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615040, 37.396999, 39.209297>,  <41.328331, 37.200428, 39.778099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.615040, 37.396999, 39.209297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651550, 37.001194, 39.164532>,  <41.673458, 36.763710, 39.137672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651550, 37.001194, 39.164532>,  <41.615040, 37.396999, 39.209297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.651550, 37.001194, 39.164532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326772, 0.135923, -0.935278,
		0.940685, 0.048800, 0.335753,
		0.091278, -0.989517, -0.111914,
		41.678932, 36.704338, 39.130959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.312199, 37.282970, 38.926872>,  <41.615040, 37.396999, 39.209297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.312199, 37.282970, 38.926872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.089161, 36.962975, 38.838226>,  <41.955338, 36.770977, 38.785038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.089161, 36.962975, 38.838226>,  <42.312199, 37.282970, 38.926872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.089161, 36.962975, 38.838226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332899, 0.029066, -0.942514,
		0.760441, -0.599313, 0.250108,
		-0.557591, -0.799987, -0.221613,
		41.921883, 36.722977, 38.771744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660240, 36.969177, 38.408745>,  <42.312199, 37.282970, 38.926872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660240, 36.969177, 38.408745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322296, 36.762634, 38.352760>,  <42.119530, 36.638710, 38.319168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322296, 36.762634, 38.352760>,  <42.660240, 36.969177, 38.408745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322296, 36.762634, 38.352760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147058, 0.027390, -0.988749,
		0.514379, -0.855936, 0.052793,
		-0.844860, -0.516356, -0.139962,
		42.068840, 36.607727, 38.310772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.805080, 36.558826, 37.864017>,  <42.660240, 36.969177, 38.408745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.805080, 36.558826, 37.864017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.409473, 36.609978, 37.893677>,  <42.172112, 36.640667, 37.911472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.409473, 36.609978, 37.893677>,  <42.805080, 36.558826, 37.864017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.409473, 36.609978, 37.893677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046717, 0.205502, -0.977541,
		-0.140245, -0.970266, -0.197270,
		-0.989014, 0.127879, 0.074148,
		42.112770, 36.648342, 37.915920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.586685, 36.229515, 37.334686>,  <42.805080, 36.558826, 37.864017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.586685, 36.229515, 37.334686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.285202, 36.484665, 37.397991>,  <42.104313, 36.637753, 37.435974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.285202, 36.484665, 37.397991>,  <42.586685, 36.229515, 37.334686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285202, 36.484665, 37.397991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059146, 0.174002, -0.982967,
		-0.654546, -0.750228, -0.093419,
		-0.753705, 0.637872, 0.158266,
		42.059090, 36.676025, 37.445473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.296890, 36.280083, 36.701210>,  <42.586685, 36.229515, 37.334686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.296890, 36.280083, 36.701210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.587669, 36.528366, 36.818695>,  <42.762135, 36.677338, 36.889187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.587669, 36.528366, 36.818695>,  <42.296890, 36.280083, 36.701210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.587669, 36.528366, 36.818695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479576, -0.152771, -0.864099,
		-0.491485, 0.769012, -0.408734,
		0.726945, 0.620711, 0.293716,
		42.805752, 36.714581, 36.906811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.407005, 36.937778, 36.326912>,  <42.296890, 36.280083, 36.701210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.407005, 36.937778, 36.326912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.736984, 36.750561, 36.453651>,  <42.934971, 36.638229, 36.529694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.736984, 36.750561, 36.453651>,  <42.407005, 36.937778, 36.326912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.736984, 36.750561, 36.453651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272656, -0.161501, -0.948460,
		0.495093, 0.868822, -0.005615,
		0.824950, -0.468045, 0.316847,
		42.984470, 36.610146, 36.548706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.015961, 37.152206, 35.981743>,  <42.407005, 36.937778, 36.326912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.015961, 37.152206, 35.981743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.086407, 36.784801, 36.123348>,  <43.128674, 36.564358, 36.208313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.086407, 36.784801, 36.123348>,  <43.015961, 37.152206, 35.981743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.086407, 36.784801, 36.123348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006219, -0.358591, -0.933474,
		0.984350, 0.166600, -0.057442,
		0.176115, -0.918508, 0.354015,
		43.139240, 36.509251, 36.229553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.542561, 36.806759, 35.484020>,  <43.015961, 37.152206, 35.981743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.542561, 36.806759, 35.484020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.300892, 36.560677, 35.686604>,  <43.155891, 36.413029, 35.808155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.300892, 36.560677, 35.686604>,  <43.542561, 36.806759, 35.484020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.300892, 36.560677, 35.686604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256662, -0.451465, -0.854578,
		0.754391, -0.646298, 0.114860,
		-0.604167, -0.615206, 0.506461,
		43.119640, 36.376114, 35.838543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811871, 36.093494, 35.452068>,  <43.542561, 36.806759, 35.484020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811871, 36.093494, 35.452068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.419048, 36.163185, 35.480946>,  <43.183353, 36.204998, 35.498272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.419048, 36.163185, 35.480946>,  <43.811871, 36.093494, 35.452068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.419048, 36.163185, 35.480946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153347, -0.514886, -0.843432,
		-0.109776, -0.839367, 0.532364,
		-0.982055, 0.174225, 0.072193,
		43.124432, 36.215454, 35.502602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.407429, 35.371593, 35.605503>,  <43.811871, 36.093494, 35.452068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.407429, 35.371593, 35.605503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.269680, 35.676170, 35.385826>,  <43.187031, 35.858917, 35.254021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.269680, 35.676170, 35.385826>,  <43.407429, 35.371593, 35.605503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.269680, 35.676170, 35.385826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075840, -0.605627, -0.792127,
		-0.935766, -0.231134, 0.266307,
		-0.344370, 0.761442, -0.549196,
		43.166370, 35.904602, 35.221069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.744999, 35.276646, 35.244247>,  <43.407429, 35.371593, 35.605503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.744999, 35.276646, 35.244247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.989071, 35.509293, 35.029064>,  <43.135513, 35.648880, 34.899956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.989071, 35.509293, 35.029064>,  <42.744999, 35.276646, 35.244247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.989071, 35.509293, 35.029064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006883, -0.682884, -0.730494,
		-0.792230, 0.442033, -0.420688,
		0.610184, 0.581615, -0.537959,
		43.172127, 35.683777, 34.867676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.494373, 35.358257, 34.489357>,  <42.744999, 35.276646, 35.244247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.494373, 35.358257, 34.489357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890133, 35.416012, 34.495682>,  <43.127586, 35.450665, 34.499477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890133, 35.416012, 34.495682>,  <42.494373, 35.358257, 34.489357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890133, 35.416012, 34.495682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106895, -0.650083, -0.752307,
		-0.098344, 0.746019, -0.658623,
		0.989395, 0.144389, 0.015814,
		43.186951, 35.459328, 34.500427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.768482, 35.397865, 33.800907>,  <42.494373, 35.358257, 34.489357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.768482, 35.397865, 33.800907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096905, 35.308254, 34.010929>,  <43.293957, 35.254486, 34.136944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096905, 35.308254, 34.010929>,  <42.768482, 35.397865, 33.800907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.096905, 35.308254, 34.010929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237156, -0.702786, -0.670708,
		0.519259, 0.675207, -0.523895,
		0.821053, -0.224027, 0.525057,
		43.343220, 35.241047, 34.168446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.374249, 35.488571, 33.390160>,  <42.768482, 35.397865, 33.800907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.374249, 35.488571, 33.390160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.471142, 35.224091, 33.674171>,  <43.529278, 35.065403, 33.844578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.471142, 35.224091, 33.674171>,  <43.374249, 35.488571, 33.390160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.471142, 35.224091, 33.674171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128334, -0.703557, -0.698955,
		0.961693, 0.260432, -0.085572,
		0.242235, -0.661198, 0.710028,
		43.543812, 35.025730, 33.887180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.793846, 34.956406, 32.962753>,  <43.374249, 35.488571, 33.390160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.793846, 34.956406, 32.962753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.716183, 34.775646, 33.311028>,  <43.669582, 34.667191, 33.519993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.716183, 34.775646, 33.311028>,  <43.793846, 34.956406, 32.962753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.716183, 34.775646, 33.311028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010034, -0.888440, -0.458882,
		0.980918, -0.080361, 0.177036,
		-0.194163, -0.451902, 0.870681,
		43.657932, 34.640076, 33.572231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.192467, 34.424171, 32.924782>,  <43.793846, 34.956406, 32.962753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.192467, 34.424171, 32.924782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.952705, 34.308327, 33.223267>,  <43.808849, 34.238819, 33.402359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.952705, 34.308327, 33.223267>,  <44.192467, 34.424171, 32.924782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.952705, 34.308327, 33.223267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009415, -0.929636, -0.368358,
		0.800389, -0.227822, 0.554504,
		-0.599407, -0.289609, 0.746216,
		43.772884, 34.221443, 33.447132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.517178, 33.831043, 33.175606>,  <44.192467, 34.424171, 32.924782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.517178, 33.831043, 33.175606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.131496, 33.820759, 33.281174>,  <43.900089, 33.814587, 33.344513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.131496, 33.820759, 33.281174>,  <44.517178, 33.831043, 33.175606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.131496, 33.820759, 33.281174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066640, -0.939846, -0.335034,
		0.256660, -0.340628, 0.904488,
		-0.964202, -0.025715, 0.263921,
		43.842236, 33.813046, 33.360352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.422283, 33.285213, 33.491894>,  <44.517178, 33.831043, 33.175606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.422283, 33.285213, 33.491894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.039680, 33.346931, 33.392864>,  <43.810120, 33.383961, 33.333447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.039680, 33.346931, 33.392864>,  <44.422283, 33.285213, 33.491894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.039680, 33.346931, 33.392864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074420, -0.949653, -0.304338,
		-0.282064, -0.272677, 0.919830,
		-0.956505, 0.154296, -0.247570,
		43.752728, 33.393219, 33.318592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.037121, 32.776924, 33.722324>,  <44.422283, 33.285213, 33.491894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.037121, 32.776924, 33.722324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.779362, 32.917309, 33.450565>,  <43.624706, 33.001537, 33.287510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.779362, 32.917309, 33.450565>,  <44.037121, 32.776924, 33.722324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.779362, 32.917309, 33.450565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129542, -0.925720, -0.355333,
		-0.753639, -0.140965, 0.641995,
		-0.644397, 0.350958, -0.679397,
		43.586044, 33.022594, 33.246746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.515778, 32.303909, 33.730583>,  <44.037121, 32.776924, 33.722324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.515778, 32.303909, 33.730583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.445049, 32.483055, 33.380009>,  <43.402611, 32.590542, 33.169662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.445049, 32.483055, 33.380009>,  <43.515778, 32.303909, 33.730583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.445049, 32.483055, 33.380009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037312, -0.886781, -0.460681,
		-0.983535, -0.114161, 0.140092,
		-0.176822, 0.447869, -0.876440,
		43.392002, 32.617416, 33.117077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.063488, 31.937120, 33.395847>,  <43.515778, 32.303909, 33.730583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.063488, 31.937120, 33.395847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.192265, 32.139057, 33.075474>,  <43.269531, 32.260220, 32.883251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.192265, 32.139057, 33.075474>,  <43.063488, 31.937120, 33.395847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.192265, 32.139057, 33.075474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216333, -0.784362, -0.581357,
		-0.921712, 0.360431, -0.143307,
		0.321944, 0.504841, -0.800929,
		43.288849, 32.290508, 32.835194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.532917, 31.825506, 32.823792>,  <43.063488, 31.937120, 33.395847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.532917, 31.825506, 32.823792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.888573, 31.900612, 32.656857>,  <43.101967, 31.945675, 32.556694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.888573, 31.900612, 32.656857>,  <42.532917, 31.825506, 32.823792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.888573, 31.900612, 32.656857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170568, -0.710269, -0.682953,
		-0.424658, 0.678427, -0.599502,
		0.889141, 0.187765, -0.417339,
		43.155315, 31.956942, 32.531654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.413033, 31.727936, 32.126541>,  <42.532917, 31.825506, 32.823792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.413033, 31.727936, 32.126541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.812710, 31.741619, 32.135017>,  <43.052517, 31.749828, 32.140102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.812710, 31.741619, 32.135017>,  <42.413033, 31.727936, 32.126541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.812710, 31.741619, 32.135017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039552, -0.738303, -0.673308,
		-0.007389, 0.673601, -0.739058,
		0.999190, 0.034206, 0.021187,
		43.112469, 31.751881, 32.141373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630634, 31.688913, 31.426788>,  <42.413033, 31.727936, 32.126541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630634, 31.688913, 31.426788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949486, 31.606213, 31.653711>,  <43.140797, 31.556593, 31.789865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949486, 31.606213, 31.653711>,  <42.630634, 31.688913, 31.426788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949486, 31.606213, 31.653711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203981, -0.792104, -0.575294,
		0.568310, 0.574304, -0.589236,
		0.797130, -0.206752, 0.567307,
		43.188625, 31.544188, 31.823904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.181316, 31.525942, 30.936552>,  <42.630634, 31.688913, 31.426788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.181316, 31.525942, 30.936552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286091, 31.351933, 31.281143>,  <43.348953, 31.247526, 31.487898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286091, 31.351933, 31.281143>,  <43.181316, 31.525942, 30.936552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.286091, 31.351933, 31.281143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396136, -0.765516, -0.507012,
		0.880038, 0.474066, -0.028185,
		0.261933, -0.435025, 0.861478,
		43.364670, 31.221424, 31.539587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.681587, 31.053797, 30.750097>,  <43.181316, 31.525942, 30.936552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.681587, 31.053797, 30.750097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.586334, 30.913080, 31.112211>,  <43.529182, 30.828650, 31.329479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.586334, 30.913080, 31.112211>,  <43.681587, 31.053797, 30.750097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.586334, 30.913080, 31.112211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322161, -0.907935, -0.268080,
		0.916246, 0.227810, 0.329538,
		-0.238128, -0.351792, 0.905283,
		43.514896, 30.807543, 31.383797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.256199, 30.629948, 30.993826>,  <43.681587, 31.053797, 30.750097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.256199, 30.629948, 30.993826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.945496, 30.529345, 31.224787>,  <43.759075, 30.468983, 31.363363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.945496, 30.529345, 31.224787>,  <44.256199, 30.629948, 30.993826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.945496, 30.529345, 31.224787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271817, -0.960894, -0.052890,
		0.568125, 0.115865, 0.814745,
		-0.776756, -0.251509, 0.577402,
		43.712467, 30.453892, 31.398008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.476894, 30.162716, 31.556839>,  <44.256199, 30.629948, 30.993826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.476894, 30.162716, 31.556839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.092403, 30.097534, 31.467861>,  <43.861710, 30.058424, 31.414474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.092403, 30.097534, 31.467861>,  <44.476894, 30.162716, 31.556839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.092403, 30.097534, 31.467861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151347, -0.986112, 0.068393,
		-0.230501, 0.032075, 0.972543,
		-0.961230, -0.162956, -0.222446,
		43.804035, 30.048647, 31.401127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.409081, 29.596813, 31.911037>,  <44.476894, 30.162716, 31.556839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.409081, 29.596813, 31.911037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.108208, 29.609772, 31.647772>,  <43.927685, 29.617546, 31.489813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.108208, 29.609772, 31.647772>,  <44.409081, 29.596813, 31.911037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.108208, 29.609772, 31.647772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070214, -0.989165, -0.128929,
		-0.655209, -0.143190, 0.741754,
		-0.752178, 0.032394, -0.658163,
		43.882553, 29.619490, 31.450323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.893906, 28.963737, 32.039532>,  <44.409081, 29.596813, 31.911037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.893906, 28.963737, 32.039532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.854660, 29.080648, 31.659016>,  <43.831112, 29.150795, 31.430706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.854660, 29.080648, 31.659016>,  <43.893906, 28.963737, 32.039532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.854660, 29.080648, 31.659016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069707, -0.955570, -0.286402,
		-0.992731, 0.038211, 0.114126,
		-0.098112, 0.292276, -0.951288,
		43.825226, 29.168331, 31.373629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.502335, 28.466772, 31.826342>,  <43.893906, 28.963737, 32.039532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.502335, 28.466772, 31.826342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.649471, 28.623896, 31.489202>,  <43.737751, 28.718170, 31.286919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.649471, 28.623896, 31.489202>,  <43.502335, 28.466772, 31.826342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.649471, 28.623896, 31.489202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057549, -0.895043, -0.442252,
		-0.928107, 0.211183, -0.306627,
		0.367840, 0.392811, -0.842848,
		43.759823, 28.741739, 31.236347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.015831, 28.259619, 31.188808>,  <43.502335, 28.466772, 31.826342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.015831, 28.259619, 31.188808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.374207, 28.351748, 31.036890>,  <43.589233, 28.407024, 30.945740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.374207, 28.351748, 31.036890>,  <43.015831, 28.259619, 31.188808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.374207, 28.351748, 31.036890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007160, -0.862432, -0.506122,
		-0.444121, 0.450734, -0.774335,
		0.895938, 0.230324, -0.379797,
		43.642986, 28.420845, 30.922951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.042049, 28.198912, 30.498308>,  <43.015831, 28.259619, 31.188808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.042049, 28.198912, 30.498308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.411079, 28.143938, 30.642511>,  <43.632500, 28.110954, 30.729033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.411079, 28.143938, 30.642511>,  <43.042049, 28.198912, 30.498308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.411079, 28.143938, 30.642511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077030, -0.849977, -0.521158,
		0.378046, 0.508578, -0.773582,
		0.922577, -0.137433, 0.360506,
		43.687851, 28.102709, 30.750664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306713, 27.943239, 29.894899>,  <43.042049, 28.198912, 30.498308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.306713, 27.943239, 29.894899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.515575, 27.772810, 30.190414>,  <43.640892, 27.670553, 30.367723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.515575, 27.772810, 30.190414>,  <43.306713, 27.943239, 29.894899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.515575, 27.772810, 30.190414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035963, -0.876492, -0.480071,
		0.852089, 0.224105, -0.472993,
		0.522160, -0.426074, 0.738789,
		43.672222, 27.644987, 30.412052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.521713, 28.173658, 29.239513>,  <43.306713, 27.943239, 29.894899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.521713, 28.173658, 29.239513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.487000, 28.571800, 29.256195>,  <43.466171, 28.810684, 29.266203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.487000, 28.571800, 29.256195>,  <43.521713, 28.173658, 29.239513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.487000, 28.571800, 29.256195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494761, 0.079397, -0.865395,
		-0.864685, -0.054472, -0.499353,
		-0.086787, 0.995353, 0.041703,
		43.460964, 28.870407, 29.268705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.685272, 28.542690, 28.602648>,  <43.521713, 28.173658, 29.239513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.685272, 28.542690, 28.602648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.803600, 28.782692, 28.899965>,  <43.874599, 28.926693, 29.078356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.803600, 28.782692, 28.899965>,  <43.685272, 28.542690, 28.602648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.803600, 28.782692, 28.899965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561113, 0.520581, -0.643543,
		-0.773072, 0.607446, -0.182670,
		0.295823, 0.600004, 0.743292,
		43.892345, 28.962694, 29.122953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.503418, 29.235525, 28.368090>,  <43.685272, 28.542690, 28.602648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.503418, 29.235525, 28.368090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.796955, 29.201273, 28.637651>,  <43.973076, 29.180721, 28.799389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.796955, 29.201273, 28.637651>,  <43.503418, 29.235525, 28.368090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.796955, 29.201273, 28.637651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578169, 0.599548, -0.553410,
		-0.356649, 0.795745, 0.489482,
		0.733841, -0.085630, 0.673903,
		44.017109, 29.175585, 28.839823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.648266, 29.927568, 28.513937>,  <43.503418, 29.235525, 28.368090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.648266, 29.927568, 28.513937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.946159, 29.672832, 28.593744>,  <44.124897, 29.519991, 28.641628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.946159, 29.672832, 28.593744>,  <43.648266, 29.927568, 28.513937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.946159, 29.672832, 28.593744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666245, 0.726768, -0.167111,
		-0.038581, 0.257381, 0.965539,
		0.744735, -0.636838, 0.199519,
		44.169579, 29.481781, 28.653601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.192184, 30.284466, 28.357151>,  <43.648266, 29.927568, 28.513937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.192184, 30.284466, 28.357151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.394424, 29.965824, 28.489695>,  <44.515766, 29.774639, 28.569220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.394424, 29.965824, 28.489695>,  <44.192184, 30.284466, 28.357151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.394424, 29.965824, 28.489695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861719, 0.485206, -0.148378,
		-0.042578, 0.360557, 0.931765,
		0.505596, -0.796602, 0.331358,
		44.546104, 29.726843, 28.589102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.631424, 30.553993, 28.740807>,  <44.192184, 30.284466, 28.357151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.631424, 30.553993, 28.740807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.759705, 30.196787, 28.614525>,  <44.836674, 29.982464, 28.538755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.759705, 30.196787, 28.614525>,  <44.631424, 30.553993, 28.740807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.759705, 30.196787, 28.614525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842207, 0.421369, -0.336356,
		0.433399, -0.158018, 0.887240,
		0.320705, -0.893017, -0.315705,
		44.855915, 29.928883, 28.519814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.351444, 31.282621, 28.646650>,  <44.631424, 30.553993, 28.740807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.351444, 31.282621, 28.646650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480003, 31.271154, 29.025253>,  <44.557140, 31.264275, 29.252415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480003, 31.271154, 29.025253>,  <44.351444, 31.282621, 28.646650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.480003, 31.271154, 29.025253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549194, -0.819912, 0.161651,
		0.771419, -0.571772, -0.279265,
		0.321401, -0.028670, 0.946509,
		44.576424, 31.262554, 29.309206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.017887, 31.391285, 28.843941>,  <44.351444, 31.282621, 28.646650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.017887, 31.391285, 28.843941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.914555, 31.771240, 28.773544>,  <44.852554, 31.999214, 28.731306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.914555, 31.771240, 28.773544>,  <45.017887, 31.391285, 28.843941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.914555, 31.771240, 28.773544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706377, 0.310006, 0.636340,
		0.659011, 0.040070, -0.751065,
		-0.258333, 0.949890, -0.175993,
		44.837055, 32.056206, 28.720747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.620205, 31.845928, 28.685661>,  <45.017887, 31.391285, 28.843941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.620205, 31.845928, 28.685661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.346050, 32.088684, 28.846626>,  <45.181557, 32.234337, 28.943205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.346050, 32.088684, 28.846626>,  <45.620205, 31.845928, 28.685661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.346050, 32.088684, 28.846626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721676, 0.492397, 0.486547,
		0.097132, 0.623884, -0.775457,
		-0.685382, 0.606889, 0.402415,
		45.140434, 32.270752, 28.967350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.776173, 32.451599, 28.471142>,  <45.620205, 31.845928, 28.685661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.776173, 32.451599, 28.471142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.573887, 32.506058, 28.811897>,  <45.452515, 32.538734, 29.016350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.573887, 32.506058, 28.811897>,  <45.776173, 32.451599, 28.471142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.573887, 32.506058, 28.811897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757586, 0.542461, 0.363041,
		-0.412690, 0.828975, -0.377474,
		-0.505717, 0.136146, 0.851889,
		45.422173, 32.546902, 29.067465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.928101, 33.153408, 28.658245>,  <45.776173, 32.451599, 28.471142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.928101, 33.153408, 28.658245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.777752, 32.979679, 28.985680>,  <45.687542, 32.875443, 29.182140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.777752, 32.979679, 28.985680>,  <45.928101, 33.153408, 28.658245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.777752, 32.979679, 28.985680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645500, 0.511077, 0.567565,
		-0.664867, 0.741730, 0.088256,
		-0.375874, -0.434324, 0.818585,
		45.664989, 32.849380, 29.231255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.948757, 33.706303, 29.102079>,  <45.928101, 33.153408, 28.658245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.948757, 33.706303, 29.102079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.929337, 33.386768, 29.341913>,  <45.917683, 33.195045, 29.485813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.929337, 33.386768, 29.341913>,  <45.948757, 33.706303, 29.102079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.929337, 33.386768, 29.341913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534911, 0.486155, 0.691031,
		-0.843512, 0.354276, 0.403702,
		-0.048554, -0.798838, 0.599584,
		45.914772, 33.147118, 29.521788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.870564, 33.965736, 29.711445>,  <45.948757, 33.706303, 29.102079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.870564, 33.965736, 29.711445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.987625, 33.603821, 29.835194>,  <46.057861, 33.386673, 29.909443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.987625, 33.603821, 29.835194>,  <45.870564, 33.965736, 29.711445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.987625, 33.603821, 29.835194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437546, 0.414391, 0.798018,
		-0.850239, -0.098181, 0.517160,
		0.292657, -0.904788, 0.309373,
		46.075420, 33.332386, 29.928005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.644512, 33.924534, 30.323952>,  <45.870564, 33.965736, 29.711445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.644512, 33.924534, 30.323952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.920933, 33.635410, 30.323036>,  <46.086784, 33.461937, 30.322487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.920933, 33.635410, 30.323036>,  <45.644512, 33.924534, 30.323952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.920933, 33.635410, 30.323036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297831, 0.281859, 0.912059,
		-0.658596, -0.630959, 0.410052,
		0.691048, -0.722805, -0.002288,
		46.128246, 33.418568, 30.322350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.682846, 33.780910, 30.968012>,  <45.644512, 33.924534, 30.323952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.682846, 33.780910, 30.968012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.018196, 33.635967, 30.805128>,  <46.219406, 33.549004, 30.707397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.018196, 33.635967, 30.805128>,  <45.682846, 33.780910, 30.968012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.018196, 33.635967, 30.805128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508419, 0.250447, 0.823885,
		-0.196555, -0.897761, 0.394198,
		0.838377, -0.362356, -0.407212,
		46.269711, 33.527260, 30.682964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.961960, 33.269512, 31.403925>,  <45.682846, 33.780910, 30.968012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.961960, 33.269512, 31.403925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.262157, 33.430054, 31.193907>,  <46.442276, 33.526379, 31.067896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.262157, 33.430054, 31.193907>,  <45.961960, 33.269512, 31.403925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.262157, 33.430054, 31.193907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350492, 0.431813, 0.831080,
		0.560278, -0.807745, 0.183403,
		0.750497, 0.401354, -0.525043,
		46.487305, 33.550461, 31.036394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.589851, 33.116821, 31.799824>,  <45.961960, 33.269512, 31.403925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.589851, 33.116821, 31.799824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.661652, 33.423611, 31.553400>,  <46.704731, 33.607685, 31.405546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.661652, 33.423611, 31.553400>,  <46.589851, 33.116821, 31.799824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.661652, 33.423611, 31.553400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347016, 0.536610, 0.769175,
		0.920522, -0.351847, -0.169832,
		0.179498, 0.766977, -0.616058,
		46.715500, 33.653702, 31.368582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.138802, 33.421841, 32.073631>,  <46.589851, 33.116821, 31.799824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.138802, 33.421841, 32.073631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.028206, 33.721527, 31.832891>,  <46.961849, 33.901340, 31.688448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.028206, 33.721527, 31.832891>,  <47.138802, 33.421841, 32.073631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.028206, 33.721527, 31.832891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273929, 0.661724, 0.697914,
		0.921150, 0.028100, -0.388191,
		-0.276487, 0.749221, -0.601850,
		46.945259, 33.946293, 31.652336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.739983, 33.846798, 32.013721>,  <47.138802, 33.421841, 32.073631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.739983, 33.846798, 32.013721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.407890, 34.049732, 31.921349>,  <47.208633, 34.171494, 31.865925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.407890, 34.049732, 31.921349>,  <47.739983, 33.846798, 32.013721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.407890, 34.049732, 31.921349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187922, 0.644779, 0.740909,
		0.524788, 0.571728, -0.630654,
		-0.830231, 0.507334, -0.230932,
		47.158821, 34.201931, 31.852070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.889755, 34.660114, 32.165710>,  <47.739983, 33.846798, 32.013721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.889755, 34.660114, 32.165710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.489853, 34.651340, 32.165516>,  <47.249912, 34.646076, 32.165398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.489853, 34.651340, 32.165516>,  <47.889755, 34.660114, 32.165710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.489853, 34.651340, 32.165516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014908, 0.662890, 0.748568,
		-0.016098, 0.748395, -0.663058,
		-0.999759, -0.021936, -0.000486,
		47.189926, 34.644760, 32.165371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.681316, 35.312176, 32.431557>,  <47.889755, 34.660114, 32.165710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.681316, 35.312176, 32.431557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.338467, 35.106697, 32.446793>,  <47.132755, 34.983410, 32.455933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.338467, 35.106697, 32.446793>,  <47.681316, 35.312176, 32.431557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.338467, 35.106697, 32.446793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270517, 0.511830, 0.815384,
		-0.438355, 0.688583, -0.577666,
		-0.857126, -0.513696, 0.038090,
		47.081329, 34.952587, 32.458221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.177074, 35.786625, 32.733768>,  <47.681316, 35.312176, 32.431557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.177074, 35.786625, 32.733768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.026619, 35.420460, 32.791103>,  <46.936344, 35.200760, 32.825504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.026619, 35.420460, 32.791103>,  <47.177074, 35.786625, 32.733768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.026619, 35.420460, 32.791103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605221, 0.359866, 0.710073,
		-0.701588, 0.180339, -0.689385,
		-0.376140, -0.915409, 0.143333,
		46.913776, 35.145836, 32.834103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.450874, 35.968571, 32.817654>,  <47.177074, 35.786625, 32.733768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.450874, 35.968571, 32.817654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.539261, 35.626030, 33.004349>,  <46.592293, 35.420506, 33.116364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.539261, 35.626030, 33.004349>,  <46.450874, 35.968571, 32.817654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.539261, 35.626030, 33.004349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440671, 0.339261, 0.831090,
		-0.870048, -0.389319, -0.302403,
		0.220966, -0.856349, 0.466735,
		46.605549, 35.369125, 33.144371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.766666, 35.714573, 33.033764>,  <46.450874, 35.968571, 32.817654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.766666, 35.714573, 33.033764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.059589, 35.539940, 33.242805>,  <46.235344, 35.435162, 33.368229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.059589, 35.539940, 33.242805>,  <45.766666, 35.714573, 33.033764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.059589, 35.539940, 33.242805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519659, 0.137687, 0.843207,
		-0.440085, -0.889066, -0.126044,
		0.732311, -0.436582, 0.522605,
		46.279282, 35.408966, 33.399586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.446785, 35.128216, 33.424118>,  <45.766666, 35.714573, 33.033764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.446785, 35.128216, 33.424118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.788799, 35.234760, 33.602093>,  <45.994007, 35.298687, 33.708878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.788799, 35.234760, 33.602093>,  <45.446785, 35.128216, 33.424118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.788799, 35.234760, 33.602093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470836, 0.039190, 0.881350,
		0.217321, -0.963076, 0.158922,
		0.855035, 0.266362, 0.444934,
		46.045311, 35.314667, 33.735573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.482147, 34.721798, 34.017544>,  <45.446785, 35.128216, 33.424118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.482147, 34.721798, 34.017544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.740883, 35.011707, 34.112457>,  <45.896122, 35.185654, 34.169407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.740883, 35.011707, 34.112457>,  <45.482147, 34.721798, 34.017544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.740883, 35.011707, 34.112457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493026, 0.160030, 0.855170,
		0.581832, -0.670144, 0.460846,
		0.646836, 0.724774, 0.237288,
		45.934933, 35.229141, 34.183643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.620613, 34.673336, 34.794788>,  <45.482147, 34.721798, 34.017544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.620613, 34.673336, 34.794788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.787689, 35.024223, 34.700115>,  <45.887936, 35.234756, 34.643311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.787689, 35.024223, 34.700115>,  <45.620613, 34.673336, 34.794788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.787689, 35.024223, 34.700115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499649, 0.439337, 0.746548,
		0.758873, -0.193564, 0.621808,
		0.417688, 0.877220, -0.236687,
		45.912994, 35.287388, 34.629108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.914974, 34.978451, 35.345779>,  <45.620613, 34.673336, 34.794788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.914974, 34.978451, 35.345779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.824245, 35.282028, 35.101627>,  <45.769806, 35.464172, 34.955135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.824245, 35.282028, 35.101627>,  <45.914974, 34.978451, 35.345779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.824245, 35.282028, 35.101627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491928, 0.451618, 0.744344,
		0.840570, 0.469097, 0.270906,
		-0.226824, 0.758940, -0.610379,
		45.756199, 35.509708, 34.918514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.915409, 35.535763, 35.781395>,  <45.914974, 34.978451, 35.345779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.915409, 35.535763, 35.781395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.706951, 35.665146, 35.465473>,  <45.581879, 35.742775, 35.275921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.706951, 35.665146, 35.465473>,  <45.915409, 35.535763, 35.781395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.706951, 35.665146, 35.465473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555794, 0.573659, 0.601671,
		0.647693, 0.752523, -0.119181,
		-0.521140, 0.323457, -0.789802,
		45.550610, 35.762184, 35.228531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.208668, 35.714596, 35.240864>,  <45.915409, 35.535763, 35.781395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.208668, 35.714596, 35.240864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.338665, 35.340996, 35.300217>,  <46.416664, 35.116837, 35.335831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.338665, 35.340996, 35.300217>,  <46.208668, 35.714596, 35.240864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.338665, 35.340996, 35.300217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874044, 0.236723, -0.424275,
		0.361148, 0.267580, 0.893294,
		0.324991, -0.934004, 0.148384,
		46.436161, 35.060795, 35.344730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.924164, 35.760872, 35.484974>,  <46.208668, 35.714596, 35.240864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.924164, 35.760872, 35.484974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.861393, 35.400959, 35.322121>,  <46.823730, 35.185009, 35.224407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.861393, 35.400959, 35.322121>,  <46.924164, 35.760872, 35.484974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.861393, 35.400959, 35.322121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858972, 0.079089, -0.505877,
		0.487381, -0.429104, 0.760480,
		-0.156929, -0.899786, -0.407135,
		46.814316, 35.131023, 35.199982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.457581, 35.170341, 35.610744>,  <46.924164, 35.760872, 35.484974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.457581, 35.170341, 35.610744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.279671, 35.150448, 35.253040>,  <47.172924, 35.138512, 35.038418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.279671, 35.150448, 35.253040>,  <47.457581, 35.170341, 35.610744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.279671, 35.150448, 35.253040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893937, 0.036912, -0.446671,
		0.055222, -0.998080, 0.028039,
		-0.444778, -0.049731, -0.894259,
		47.146236, 35.135529, 34.984764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.707207, 34.676441, 35.249092>,  <47.457581, 35.170341, 35.610744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.707207, 34.676441, 35.249092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.582912, 34.956512, 34.991970>,  <47.508335, 35.124554, 34.837696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.582912, 34.956512, 34.991970>,  <47.707207, 34.676441, 35.249092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.582912, 34.956512, 34.991970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859460, -0.081832, -0.504611,
		-0.405918, -0.709264, -0.576346,
		-0.310739, 0.700177, -0.642801,
		47.489689, 35.166565, 34.799129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.948456, 37.795578, 46.853157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.554066, 37.736534, 46.884285>,  <36.317432, 37.701107, 46.902962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.554066, 37.736534, 46.884285>,  <36.948456, 37.795578, 46.853157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554066, 37.736534, 46.884285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085693, 0.047752, -0.995177,
		0.143187, -0.987892, -0.059732,
		-0.985979, -0.147615, 0.077818,
		36.258270, 37.692249, 46.907631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933418, 37.392841, 46.306690>,  <36.948456, 37.795578, 46.853157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933418, 37.392841, 46.306690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.563919, 37.527153, 46.380371>,  <36.342220, 37.607742, 46.424580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.563919, 37.527153, 46.380371>,  <36.933418, 37.392841, 46.306690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563919, 37.527153, 46.380371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209474, -0.040312, -0.976983,
		-0.320627, -0.941077, 0.107576,
		-0.923753, 0.335782, 0.184206,
		36.286793, 37.627888, 46.435635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377544, 36.913864, 46.117577>,  <36.933418, 37.392841, 46.306690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377544, 36.913864, 46.117577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.189125, 37.266258, 46.099792>,  <36.076073, 37.477695, 46.089123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.189125, 37.266258, 46.099792>,  <36.377544, 36.913864, 46.117577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189125, 37.266258, 46.099792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128753, -0.118528, -0.984568,
		-0.872660, -0.458055, 0.169263,
		-0.471049, 0.880986, -0.044459,
		36.047810, 37.530556, 46.086456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647671, 36.860615, 45.656265>,  <36.377544, 36.913864, 46.117577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647671, 36.860615, 45.656265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.803722, 37.228451, 45.674816>,  <35.897354, 37.449154, 45.685947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.803722, 37.228451, 45.674816>,  <35.647671, 36.860615, 45.656265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803722, 37.228451, 45.674816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064734, 0.077633, -0.994878,
		-0.918483, 0.385126, 0.089815,
		0.390126, 0.919593, 0.046373,
		35.920761, 37.504330, 45.688728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262501, 37.122700, 45.013073>,  <35.647671, 36.860615, 45.656265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262501, 37.122700, 45.013073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.551575, 37.378551, 45.117836>,  <35.725021, 37.532063, 45.180695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.551575, 37.378551, 45.117836>,  <35.262501, 37.122700, 45.013073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551575, 37.378551, 45.117836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118718, 0.258421, -0.958710,
		-0.680902, 0.723942, 0.110822,
		0.722689, 0.639631, 0.261904,
		35.768383, 37.570442, 45.196407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062996, 37.741634, 44.934544>,  <35.262501, 37.122700, 45.013073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062996, 37.741634, 44.934544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.457657, 37.798038, 44.901978>,  <35.694454, 37.831879, 44.882439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.457657, 37.798038, 44.901978>,  <35.062996, 37.741634, 44.934544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457657, 37.798038, 44.901978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096105, 0.100714, -0.990263,
		-0.131434, 0.984872, 0.112921,
		0.986655, 0.141006, -0.081414,
		35.753654, 37.840340, 44.877552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242188, 38.196468, 44.375843>,  <35.062996, 37.741634, 44.934544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242188, 38.196468, 44.375843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.619743, 38.071743, 44.419373>,  <35.846279, 37.996910, 44.445488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.619743, 38.071743, 44.419373>,  <35.242188, 38.196468, 44.375843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619743, 38.071743, 44.419373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150061, 0.111412, -0.982379,
		0.294193, 0.943590, 0.151951,
		0.943892, -0.311811, 0.108820,
		35.902912, 37.978199, 44.452019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578178, 38.603168, 43.921097>,  <35.242188, 38.196468, 44.375843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578178, 38.603168, 43.921097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.828186, 38.298046, 43.987408>,  <35.978191, 38.114971, 44.027195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.828186, 38.298046, 43.987408>,  <35.578178, 38.603168, 43.921097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828186, 38.298046, 43.987408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328980, 0.064814, -0.942110,
		0.707903, 0.643371, 0.291458,
		0.625016, -0.762806, 0.165774,
		36.015690, 38.069202, 44.037140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108532, 38.849163, 43.519691>,  <35.578178, 38.603168, 43.921097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108532, 38.849163, 43.519691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.169533, 38.466961, 43.620697>,  <36.206135, 38.237640, 43.681301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.169533, 38.466961, 43.620697>,  <36.108532, 38.849163, 43.519691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169533, 38.466961, 43.620697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481886, -0.151179, -0.863094,
		0.862861, 0.253305, 0.437388,
		0.152502, -0.955501, 0.252510,
		36.215282, 38.180309, 43.696449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862698, 38.630680, 43.404213>,  <36.108532, 38.849163, 43.519691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862698, 38.630680, 43.404213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.638691, 38.300549, 43.375332>,  <36.504288, 38.102470, 43.358002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.638691, 38.300549, 43.375332>,  <36.862698, 38.630680, 43.404213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638691, 38.300549, 43.375332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322867, -0.137152, -0.936454,
		0.762981, -0.547740, 0.343280,
		-0.560015, -0.825330, -0.072203,
		36.470688, 38.052948, 43.353672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290169, 38.183308, 43.169636>,  <36.862698, 38.630680, 43.404213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290169, 38.183308, 43.169636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.927265, 38.033291, 43.093506>,  <36.709522, 37.943283, 43.047829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.927265, 38.033291, 43.093506>,  <37.290169, 38.183308, 43.169636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927265, 38.033291, 43.093506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277810, -0.194668, -0.940705,
		0.315752, -0.906338, 0.280805,
		-0.907261, -0.375040, -0.190323,
		36.655087, 37.920780, 43.036407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400566, 37.507164, 42.906796>,  <37.290169, 38.183308, 43.169636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400566, 37.507164, 42.906796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.038227, 37.592529, 42.760426>,  <36.820824, 37.643749, 42.672604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.038227, 37.592529, 42.760426>,  <37.400566, 37.507164, 42.906796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038227, 37.592529, 42.760426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245544, -0.439386, -0.864088,
		-0.345188, -0.872580, 0.345614,
		-0.905844, 0.213409, -0.365927,
		36.766476, 37.656551, 42.650646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217697, 36.962307, 42.314281>,  <37.400566, 37.507164, 42.906796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217697, 36.962307, 42.314281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.978214, 37.275230, 42.245537>,  <36.834522, 37.462986, 42.204288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.978214, 37.275230, 42.245537>,  <37.217697, 36.962307, 42.314281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978214, 37.275230, 42.245537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165786, -0.088887, -0.982148,
		-0.783619, -0.616516, -0.076478,
		-0.598712, 0.782309, -0.171863,
		36.798599, 37.509922, 42.193977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917496, 36.770672, 41.763706>,  <37.217697, 36.962307, 42.314281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917496, 36.770672, 41.763706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.792950, 37.150566, 41.750690>,  <36.718224, 37.378502, 41.742882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.792950, 37.150566, 41.750690>,  <36.917496, 36.770672, 41.763706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792950, 37.150566, 41.750690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007817, -0.036799, -0.999292,
		-0.950258, -0.310889, 0.018882,
		-0.311364, 0.949733, -0.032538,
		36.699539, 37.435486, 41.740929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461517, 36.814148, 41.219509>,  <36.917496, 36.770672, 41.763706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461517, 36.814148, 41.219509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.591488, 37.187672, 41.279400>,  <36.669468, 37.411785, 41.315334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.591488, 37.187672, 41.279400>,  <36.461517, 36.814148, 41.219509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591488, 37.187672, 41.279400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102235, 0.122711, -0.987163,
		-0.940198, 0.336059, -0.055597,
		0.324923, 0.933813, 0.149729,
		36.688965, 37.467815, 41.324318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040283, 37.291298, 40.744160>,  <36.461517, 36.814148, 41.219509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040283, 37.291298, 40.744160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.385971, 37.480942, 40.811508>,  <36.593384, 37.594727, 40.851917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.385971, 37.480942, 40.811508>,  <36.040283, 37.291298, 40.744160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385971, 37.480942, 40.811508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111738, 0.145438, -0.983037,
		-0.490556, 0.868371, 0.072714,
		0.864216, 0.474109, 0.168375,
		36.645237, 37.623173, 40.862022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016251, 37.770496, 40.235081>,  <36.040283, 37.291298, 40.744160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016251, 37.770496, 40.235081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.400436, 37.742882, 40.342960>,  <36.630947, 37.726311, 40.407688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.400436, 37.742882, 40.342960>,  <36.016251, 37.770496, 40.235081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400436, 37.742882, 40.342960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276694, 0.129700, -0.952165,
		0.030757, 0.989147, 0.143675,
		0.960466, -0.069040, 0.269702,
		36.688576, 37.722172, 40.423870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321434, 38.258408, 39.873444>,  <36.016251, 37.770496, 40.235081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321434, 38.258408, 39.873444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.656757, 38.077267, 39.994881>,  <36.857952, 37.968582, 40.067741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.656757, 38.077267, 39.994881>,  <36.321434, 38.258408, 39.873444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656757, 38.077267, 39.994881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418879, 0.178553, -0.890314,
		0.348975, 0.873523, 0.339373,
		0.838306, -0.452854, 0.303590,
		36.908249, 37.941410, 40.085957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797577, 38.578861, 39.470932>,  <36.321434, 38.258408, 39.873444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797577, 38.578861, 39.470932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.964512, 38.233032, 39.582897>,  <37.064671, 38.025536, 39.650078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.964512, 38.233032, 39.582897>,  <36.797577, 38.578861, 39.470932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964512, 38.233032, 39.582897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548573, -0.005889, -0.836082,
		0.724499, 0.502480, 0.471821,
		0.417336, -0.864569, 0.279914,
		37.089714, 37.973663, 39.666870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646366, 38.564030, 39.345196>,  <36.797577, 38.578861, 39.470932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646366, 38.564030, 39.345196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.504333, 38.190105, 39.342545>,  <37.419113, 37.965752, 39.340954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.504333, 38.190105, 39.342545>,  <37.646366, 38.564030, 39.345196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504333, 38.190105, 39.342545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513551, -0.189136, -0.836954,
		0.781141, -0.300592, 0.547233,
		-0.355083, -0.934811, -0.006627,
		37.397808, 37.909660, 39.340557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229225, 38.198956, 39.236649>,  <37.646366, 38.564030, 39.345196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229225, 38.198956, 39.236649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.927753, 37.952847, 39.144207>,  <37.746872, 37.805180, 39.088741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.927753, 37.952847, 39.144207>,  <38.229225, 38.198956, 39.236649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927753, 37.952847, 39.144207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522276, -0.347196, -0.778898,
		0.398995, -0.707740, 0.583015,
		-0.753678, -0.615271, -0.231107,
		37.701649, 37.768265, 39.074875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633640, 37.664639, 38.845760>,  <38.229225, 38.198956, 39.236649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633640, 37.664639, 38.845760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.244362, 37.621418, 38.764557>,  <38.010796, 37.595486, 38.715836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.244362, 37.621418, 38.764557>,  <38.633640, 37.664639, 38.845760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244362, 37.621418, 38.764557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222262, -0.215213, -0.950938,
		0.059064, -0.970571, 0.233461,
		-0.973197, -0.108055, -0.203010,
		37.952404, 37.589001, 38.703655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359840, 37.621483, 39.027355>,  <38.633640, 37.664639, 38.845760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359840, 37.621483, 39.027355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.694073, 37.836472, 38.981857>,  <39.894611, 37.965466, 38.954559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.694073, 37.836472, 38.981857>,  <39.359840, 37.621483, 39.027355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694073, 37.836472, 38.981857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117917, 0.026750, 0.992663,
		0.536568, -0.842860, -0.041025,
		0.835578, 0.537469, -0.113741,
		39.944748, 37.997711, 38.947735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784279, 37.299122, 39.408184>,  <39.359840, 37.621483, 39.027355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784279, 37.299122, 39.408184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.938667, 37.665314, 39.362713>,  <40.031300, 37.885029, 39.335430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.938667, 37.665314, 39.362713>,  <39.784279, 37.299122, 39.408184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938667, 37.665314, 39.362713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192086, 0.040774, 0.980531,
		0.902291, -0.400294, -0.160113,
		0.385973, 0.915479, -0.113681,
		40.054459, 37.939957, 39.328609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362511, 37.362984, 39.842518>,  <39.784279, 37.299122, 39.408184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.362511, 37.362984, 39.842518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.268326, 37.747524, 39.785450>,  <40.211815, 37.978249, 39.751209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.268326, 37.747524, 39.785450>,  <40.362511, 37.362984, 39.842518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268326, 37.747524, 39.785450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152050, 0.181425, 0.971579,
		0.959915, 0.207081, -0.188893,
		-0.235465, 0.961354, -0.142666,
		40.197685, 38.035931, 39.742649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912312, 37.736561, 40.168377>,  <40.362511, 37.362984, 39.842518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912312, 37.736561, 40.168377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.598965, 37.984203, 40.146309>,  <40.410957, 38.132790, 40.133068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.598965, 37.984203, 40.146309>,  <40.912312, 37.736561, 40.168377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598965, 37.984203, 40.146309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073993, 0.181021, 0.980692,
		0.617135, 0.764162, -0.187616,
		-0.783370, 0.619102, -0.055172,
		40.363953, 38.169933, 40.129757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145500, 38.325745, 40.480305>,  <40.912312, 37.736561, 40.168377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145500, 38.325745, 40.480305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.747375, 38.347485, 40.512318>,  <40.508503, 38.360531, 40.531525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.747375, 38.347485, 40.512318>,  <41.145500, 38.325745, 40.480305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747375, 38.347485, 40.512318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093375, 0.323449, 0.941627,
		0.025296, 0.944683, -0.327007,
		-0.995310, 0.054353, 0.080028,
		40.448784, 38.363792, 40.536327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038414, 38.926453, 40.800068>,  <41.145500, 38.325745, 40.480305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038414, 38.926453, 40.800068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.694622, 38.731731, 40.862446>,  <40.488346, 38.614899, 40.899872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.694622, 38.731731, 40.862446>,  <41.038414, 38.926453, 40.800068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694622, 38.731731, 40.862446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069075, 0.191661, 0.979027,
		-0.506486, 0.852223, -0.131102,
		-0.859477, -0.486807, 0.155941,
		40.436779, 38.585690, 40.909229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556812, 39.345299, 41.174110>,  <41.038414, 38.926453, 40.800068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556812, 39.345299, 41.174110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.477379, 38.957233, 41.229736>,  <40.429718, 38.724392, 41.263111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.477379, 38.957233, 41.229736>,  <40.556812, 39.345299, 41.174110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477379, 38.957233, 41.229736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103809, 0.161918, 0.981329,
		-0.974570, 0.180443, -0.132867,
		-0.198588, -0.970166, 0.139069,
		40.417801, 38.666183, 41.271458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143154, 39.411930, 41.758644>,  <40.556812, 39.345299, 41.174110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143154, 39.411930, 41.758644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.230232, 39.024998, 41.706684>,  <40.282478, 38.792839, 41.675510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.230232, 39.024998, 41.706684>,  <40.143154, 39.411930, 41.758644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230232, 39.024998, 41.706684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188617, -0.172275, 0.966822,
		-0.957618, -0.185971, -0.219959,
		0.217694, -0.967334, -0.129896,
		40.295540, 38.734798, 41.667717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575134, 39.199158, 42.143997>,  <40.143154, 39.411930, 41.758644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575134, 39.199158, 42.143997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.832748, 38.895779, 42.104053>,  <39.987316, 38.713753, 42.080086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.832748, 38.895779, 42.104053>,  <39.575134, 39.199158, 42.143997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832748, 38.895779, 42.104053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339821, -0.400591, 0.850910,
		-0.685374, -0.514084, -0.515733,
		0.644037, -0.758449, -0.099859,
		40.025959, 38.668243, 42.074097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280037, 38.780659, 42.565632>,  <39.575134, 39.199158, 42.143997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280037, 38.780659, 42.565632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.641838, 38.617191, 42.516865>,  <39.858917, 38.519112, 42.487606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.641838, 38.617191, 42.516865>,  <39.280037, 38.780659, 42.565632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641838, 38.617191, 42.516865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042635, -0.371098, 0.927614,
		-0.424338, -0.833829, -0.353082,
		0.904500, -0.408675, -0.121921,
		39.913189, 38.494591, 42.480289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308262, 38.049366, 42.724571>,  <39.280037, 38.780659, 42.565632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308262, 38.049366, 42.724571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.675831, 38.198654, 42.775623>,  <39.896370, 38.288227, 42.806255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.675831, 38.198654, 42.775623>,  <39.308262, 38.049366, 42.724571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675831, 38.198654, 42.775623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028141, -0.260709, 0.965007,
		0.393438, -0.890356, -0.229067,
		0.918920, 0.373224, 0.127628,
		39.951508, 38.310623, 42.813911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678753, 37.555080, 43.086021>,  <39.308262, 38.049366, 42.724571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678753, 37.555080, 43.086021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.911777, 37.875198, 43.142788>,  <40.051594, 38.067268, 43.176849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.911777, 37.875198, 43.142788>,  <39.678753, 37.555080, 43.086021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911777, 37.875198, 43.142788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023692, -0.157814, 0.987185,
		0.812440, -0.578460, -0.072976,
		0.582563, 0.800299, 0.141919,
		40.086548, 38.115288, 43.185364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242722, 37.426075, 43.591381>,  <39.678753, 37.555080, 43.086021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242722, 37.426075, 43.591381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.176090, 37.820469, 43.595032>,  <40.136112, 38.057106, 43.597221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.176090, 37.820469, 43.595032>,  <40.242722, 37.426075, 43.591381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176090, 37.820469, 43.595032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063643, -0.019986, 0.997773,
		0.983972, 0.165629, 0.066080,
		-0.166581, 0.985986, 0.009124,
		40.126118, 38.116264, 43.597771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567696, 37.644154, 44.127998>,  <40.242722, 37.426075, 43.591381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567696, 37.644154, 44.127998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.341080, 37.967506, 44.064060>,  <40.205109, 38.161518, 44.025696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.341080, 37.967506, 44.064060>,  <40.567696, 37.644154, 44.127998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341080, 37.967506, 44.064060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175934, 0.070850, 0.981849,
		0.805035, 0.584378, 0.102083,
		-0.566538, 0.808383, -0.159848,
		40.171120, 38.210022, 44.016106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645096, 38.089363, 44.742653>,  <40.567696, 37.644154, 44.127998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645096, 38.089363, 44.742653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.322987, 38.253349, 44.571323>,  <40.129723, 38.351742, 44.468525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.322987, 38.253349, 44.571323>,  <40.645096, 38.089363, 44.742653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322987, 38.253349, 44.571323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474298, -0.011936, 0.880283,
		0.355775, 0.912022, 0.204059,
		-0.805273, 0.409967, -0.428324,
		40.081406, 38.376339, 44.442825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469250, 38.741882, 45.137585>,  <40.645096, 38.089363, 44.742653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469250, 38.741882, 45.137585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.137440, 38.621033, 44.949711>,  <39.938354, 38.548523, 44.836987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.137440, 38.621033, 44.949711>,  <40.469250, 38.741882, 45.137585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137440, 38.621033, 44.949711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502095, 0.035254, 0.864094,
		-0.244508, 0.952615, -0.180941,
		-0.829528, -0.302127, -0.469683,
		39.888580, 38.530396, 44.808807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025696, 39.246597, 45.347870>,  <40.469250, 38.741882, 45.137585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025696, 39.246597, 45.347870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.832081, 38.909157, 45.254883>,  <39.715912, 38.706692, 45.199089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.832081, 38.909157, 45.254883>,  <40.025696, 39.246597, 45.347870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832081, 38.909157, 45.254883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379124, -0.037260, 0.924595,
		-0.788654, 0.535672, -0.301796,
		-0.484035, -0.843604, -0.232472,
		39.686871, 38.656075, 45.185143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473888, 39.389870, 45.684612>,  <40.025696, 39.246597, 45.347870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473888, 39.389870, 45.684612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.493362, 38.996666, 45.613815>,  <39.505047, 38.760746, 45.571335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.493362, 38.996666, 45.613815>,  <39.473888, 39.389870, 45.684612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493362, 38.996666, 45.613815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398911, -0.181597, 0.898828,
		-0.915696, 0.026843, -0.400974,
		0.048689, -0.983007, -0.176996,
		39.507969, 38.701763, 45.560719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.785690, 39.237808, 45.784340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.021164, 38.915085, 45.804375>,  <39.162449, 38.721451, 45.816395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.021164, 38.915085, 45.804375>,  <38.785690, 39.237808, 45.784340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021164, 38.915085, 45.804375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379790, -0.221355, 0.898199,
		-0.713590, -0.547776, -0.436727,
		0.588684, -0.806810, 0.050083,
		39.197769, 38.673042, 45.819401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352566, 38.690434, 46.119766>,  <38.785690, 39.237808, 45.784340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352566, 38.690434, 46.119766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.712383, 38.521137, 46.162998>,  <38.928276, 38.419559, 46.188938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.712383, 38.521137, 46.162998>,  <38.352566, 38.690434, 46.119766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712383, 38.521137, 46.162998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302471, -0.425005, 0.853160,
		-0.315159, -0.800148, -0.510330,
		0.899548, -0.423241, 0.108077,
		38.982246, 38.394165, 46.195419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251484, 38.044289, 46.248436>,  <38.352566, 38.690434, 46.119766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251484, 38.044289, 46.248436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.614849, 38.116322, 46.399361>,  <38.832867, 38.159542, 46.489914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.614849, 38.116322, 46.399361>,  <38.251484, 38.044289, 46.248436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614849, 38.116322, 46.399361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226644, -0.546256, 0.806373,
		0.351321, -0.818032, -0.455409,
		0.908409, 0.180080, 0.377313,
		38.887371, 38.170345, 46.512554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582348, 37.428833, 46.456429>,  <38.251484, 38.044289, 46.248436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582348, 37.428833, 46.456429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.776047, 37.719536, 46.651295>,  <38.892265, 37.893955, 46.768215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.776047, 37.719536, 46.651295>,  <38.582348, 37.428833, 46.456429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776047, 37.719536, 46.651295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094377, -0.510173, 0.854878,
		0.869826, -0.459950, -0.178461,
		0.484248, 0.726753, 0.487170,
		38.921322, 37.937561, 46.797447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912548, 37.091885, 46.928066>,  <38.582348, 37.428833, 46.456429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912548, 37.091885, 46.928066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.948780, 37.471111, 47.050026>,  <38.970520, 37.698647, 47.123199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.948780, 37.471111, 47.050026>,  <38.912548, 37.091885, 46.928066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948780, 37.471111, 47.050026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289937, -0.267788, 0.918818,
		0.952749, -0.171630, 0.250623,
		0.090583, 0.948068, 0.304897,
		38.975956, 37.755531, 47.141495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326691, 37.094261, 47.632317>,  <38.912548, 37.091885, 46.928066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326691, 37.094261, 47.632317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.078789, 37.406723, 47.602104>,  <38.930046, 37.594200, 47.583977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.078789, 37.406723, 47.602104>,  <39.326691, 37.094261, 47.632317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078789, 37.406723, 47.602104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277574, -0.128161, 0.952117,
		0.734066, 0.611048, 0.296256,
		-0.619757, 0.781150, -0.075533,
		38.892860, 37.641068, 47.579445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530617, 37.452965, 48.209042>,  <39.326691, 37.094261, 47.632317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530617, 37.452965, 48.209042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.175140, 37.600834, 48.100544>,  <38.961857, 37.689556, 48.035446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.175140, 37.600834, 48.100544>,  <39.530617, 37.452965, 48.209042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175140, 37.600834, 48.100544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253059, 0.097875, 0.962487,
		0.382354, 0.923993, 0.006569,
		-0.888688, 0.369673, -0.271248,
		38.908535, 37.711735, 48.019169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417183, 37.910351, 48.633446>,  <39.530617, 37.452965, 48.209042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417183, 37.910351, 48.633446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.047459, 37.825054, 48.506840>,  <38.825626, 37.773876, 48.430874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.047459, 37.825054, 48.506840>,  <39.417183, 37.910351, 48.633446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047459, 37.825054, 48.506840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312726, -0.052214, 0.948407,
		-0.218764, 0.975604, -0.018424,
		-0.924308, -0.213239, -0.316519,
		38.770164, 37.761082, 48.411884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924587, 38.430470, 48.871899>,  <39.417183, 37.910351, 48.633446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924587, 38.430470, 48.871899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.742081, 38.079243, 48.814178>,  <38.632576, 37.868507, 48.779545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.742081, 38.079243, 48.814178>,  <38.924587, 38.430470, 48.871899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742081, 38.079243, 48.814178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200096, -0.056769, 0.978130,
		-0.867053, 0.475164, -0.149796,
		-0.456269, -0.878064, -0.144300,
		38.605202, 37.815823, 48.770889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340340, 38.498760, 49.232628>,  <38.924587, 38.430470, 48.871899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340340, 38.498760, 49.232628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.412682, 38.108147, 49.185871>,  <38.456089, 37.873779, 49.157818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.412682, 38.108147, 49.185871>,  <38.340340, 38.498760, 49.232628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412682, 38.108147, 49.185871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177819, -0.149361, 0.972662,
		-0.967301, -0.155128, -0.200660,
		0.180858, -0.976538, -0.116892,
		38.466938, 37.815186, 49.150803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870857, 38.269062, 49.685135>,  <38.340340, 38.498760, 49.232628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870857, 38.269062, 49.685135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.089924, 37.939957, 49.624306>,  <38.221363, 37.742493, 49.587807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.089924, 37.939957, 49.624306>,  <37.870857, 38.269062, 49.685135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089924, 37.939957, 49.624306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194093, -0.301724, 0.933429,
		-0.813872, -0.481693, -0.324937,
		0.547668, -0.822760, -0.152072,
		38.254223, 37.693130, 49.578686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562424, 37.841167, 50.031895>,  <37.870857, 38.269062, 49.685135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562424, 37.841167, 50.031895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.924637, 37.678349, 49.984043>,  <38.141964, 37.580658, 49.955330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.924637, 37.678349, 49.984043>,  <37.562424, 37.841167, 50.031895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924637, 37.678349, 49.984043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038631, -0.359911, 0.932186,
		-0.422508, -0.839506, -0.341637,
		0.905535, -0.407054, -0.119634,
		38.196297, 37.556232, 49.948154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474468, 37.247086, 50.389366>,  <37.562424, 37.841167, 50.031895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474468, 37.247086, 50.389366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.867947, 37.318859, 50.394238>,  <38.104034, 37.361923, 50.397160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.867947, 37.318859, 50.394238>,  <37.474468, 37.247086, 50.389366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867947, 37.318859, 50.394238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070611, -0.447615, 0.891434,
		0.165406, -0.876039, -0.452986,
		0.983695, 0.179434, 0.012181,
		38.163055, 37.372688, 50.397892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849380, 36.627422, 50.486435>,  <37.474468, 37.247086, 50.389366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849380, 36.627422, 50.486435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.062805, 36.937569, 50.621559>,  <38.190861, 37.123657, 50.702633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.062805, 36.937569, 50.621559>,  <37.849380, 36.627422, 50.486435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062805, 36.937569, 50.621559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000753, -0.398986, 0.916957,
		0.845759, -0.489509, -0.212301,
		0.533563, 0.775365, 0.337815,
		38.222874, 37.170177, 50.722904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165096, 36.271313, 51.129814>,  <37.849380, 36.627422, 50.486435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165096, 36.271313, 51.129814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.298023, 36.646656, 51.167850>,  <38.377781, 36.871864, 51.190674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.298023, 36.646656, 51.167850>,  <38.165096, 36.271313, 51.129814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298023, 36.646656, 51.167850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409255, -0.234299, 0.881824,
		0.849750, -0.254130, -0.461891,
		0.332319, 0.938361, 0.095092,
		38.397720, 36.928165, 51.196377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708103, 36.150879, 51.489922>,  <38.165096, 36.271313, 51.129814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708103, 36.150879, 51.489922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.631649, 36.535919, 51.566730>,  <38.585777, 36.766941, 51.612816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.631649, 36.535919, 51.566730>,  <38.708103, 36.150879, 51.489922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631649, 36.535919, 51.566730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253741, -0.140520, 0.957011,
		0.948200, 0.231642, -0.217392,
		-0.191136, 0.962599, 0.192018,
		38.574306, 36.824699, 51.624336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309277, 36.428749, 51.733624>,  <38.708103, 36.150879, 51.489922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309277, 36.428749, 51.733624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.015182, 36.672943, 51.851425>,  <38.838726, 36.819462, 51.922108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.015182, 36.672943, 51.851425>,  <39.309277, 36.428749, 51.733624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015182, 36.672943, 51.851425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394908, 0.032680, 0.918139,
		0.550888, 0.791352, -0.265114,
		-0.735235, 0.610487, 0.294508,
		38.794613, 36.856091, 51.939777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700577, 37.007439, 52.185455>,  <39.309277, 36.428749, 51.733624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700577, 37.007439, 52.185455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.317345, 37.009186, 52.300041>,  <39.087406, 37.010235, 52.368793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.317345, 37.009186, 52.300041>,  <39.700577, 37.007439, 52.185455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317345, 37.009186, 52.300041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286071, -0.039893, 0.957378,
		0.015605, 0.999194, 0.036972,
		-0.958081, 0.004363, 0.286463,
		39.029919, 37.010494, 52.385979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534542, 37.617210, 52.702141>,  <39.700577, 37.007439, 52.185455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534542, 37.617210, 52.702141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.264885, 37.326534, 52.754982>,  <39.103088, 37.152130, 52.786686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.264885, 37.326534, 52.754982>,  <39.534542, 37.617210, 52.702141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264885, 37.326534, 52.754982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324191, -0.130419, 0.936959,
		-0.663646, 0.674476, 0.323507,
		-0.674147, -0.726686, 0.132106,
		39.062641, 37.108528, 52.794613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490242, 37.593117, 53.430756>,  <39.534542, 37.617210, 52.702141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490242, 37.593117, 53.430756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.269131, 37.270298, 53.347706>,  <39.136463, 37.076607, 53.297878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.269131, 37.270298, 53.347706>,  <39.490242, 37.593117, 53.430756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269131, 37.270298, 53.347706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011306, -0.241860, 0.970245,
		-0.833252, 0.538677, 0.124570,
		-0.552777, -0.807051, -0.207620,
		39.103298, 37.028183, 53.285419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951836, 37.562122, 53.906094>,  <39.490242, 37.593117, 53.430756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951836, 37.562122, 53.906094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.000767, 37.185333, 53.781048>,  <39.030125, 36.959259, 53.706020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.000767, 37.185333, 53.781048>,  <38.951836, 37.562122, 53.906094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000767, 37.185333, 53.781048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051733, -0.308496, 0.949818,
		-0.991140, -0.132362, 0.010993,
		0.122328, -0.941971, -0.312611,
		39.037464, 36.902740, 53.687263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490437, 37.215836, 54.274033>,  <38.951836, 37.562122, 53.906094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490437, 37.215836, 54.274033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.766521, 36.957588, 54.143322>,  <38.932171, 36.802639, 54.064896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.766521, 36.957588, 54.143322>,  <38.490437, 37.215836, 54.274033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766521, 36.957588, 54.143322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074161, -0.386104, 0.919469,
		-0.719797, -0.658863, -0.218614,
		0.690212, -0.645618, -0.326779,
		38.973587, 36.763905, 54.045288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454807, 36.452854, 54.490406>,  <38.490437, 37.215836, 54.274033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454807, 36.452854, 54.490406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.830254, 36.587589, 54.460636>,  <39.055523, 36.668430, 54.442772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.830254, 36.587589, 54.460636>,  <38.454807, 36.452854, 54.490406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830254, 36.587589, 54.460636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099157, -0.056789, 0.993450,
		0.330403, -0.939849, -0.086703,
		0.938617, 0.336836, -0.074429,
		39.111839, 36.688641, 54.438309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267456, 35.951622, 53.904835>,  <38.454807, 36.452854, 54.490406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267456, 35.951622, 53.904835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.414238, 36.297337, 53.767227>,  <38.502308, 36.504765, 53.684662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.414238, 36.297337, 53.767227>,  <38.267456, 35.951622, 53.904835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414238, 36.297337, 53.767227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362925, 0.473528, 0.802531,
		0.856521, -0.169641, 0.487436,
		0.366957, 0.864288, -0.344019,
		38.524326, 36.556622, 53.664021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183426, 35.277859, 54.031872>,  <38.267456, 35.951622, 53.904835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183426, 35.277859, 54.031872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.816906, 35.377083, 54.157639>,  <37.596992, 35.436615, 54.233097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.816906, 35.377083, 54.157639>,  <38.183426, 35.277859, 54.031872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816906, 35.377083, 54.157639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389108, -0.365633, -0.845522,
		-0.094778, -0.897095, 0.431552,
		-0.916304, 0.248057, 0.314413,
		37.542015, 35.451500, 54.251961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700230, 34.624775, 54.089767>,  <38.183426, 35.277859, 54.031872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700230, 34.624775, 54.089767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.492420, 34.962193, 54.035320>,  <37.367733, 35.164642, 54.002651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.492420, 34.962193, 54.035320>,  <37.700230, 34.624775, 54.089767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492420, 34.962193, 54.035320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389004, -0.375335, -0.841308,
		-0.760769, -0.384132, 0.523138,
		-0.519525, 0.843544, -0.136114,
		37.336563, 35.215256, 53.994488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112434, 34.429691, 53.748814>,  <37.700230, 34.624775, 54.089767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112434, 34.429691, 53.748814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.085201, 34.824165, 53.688419>,  <37.068859, 35.060852, 53.652184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.085201, 34.824165, 53.688419>,  <37.112434, 34.429691, 53.748814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085201, 34.824165, 53.688419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377186, -0.165544, -0.911222,
		-0.923632, -0.005093, 0.383247,
		-0.068085, 0.986189, -0.150981,
		37.064777, 35.120022, 53.643124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430260, 34.514481, 53.620636>,  <37.112434, 34.429691, 53.748814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430260, 34.514481, 53.620636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.641441, 34.803040, 53.441372>,  <36.768150, 34.976173, 53.333813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.641441, 34.803040, 53.441372>,  <36.430260, 34.514481, 53.620636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641441, 34.803040, 53.441372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465329, -0.195720, -0.863228,
		-0.710445, 0.664288, 0.232356,
		0.527955, 0.721398, -0.448161,
		36.799828, 35.019459, 53.306923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926197, 34.826611, 53.274540>,  <36.430260, 34.514481, 53.620636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926197, 34.826611, 53.274540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.240040, 34.997234, 53.094570>,  <36.428345, 35.099609, 52.986588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.240040, 34.997234, 53.094570>,  <35.926197, 34.826611, 53.274540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240040, 34.997234, 53.094570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466213, -0.072456, -0.881700,
		-0.408697, 0.901553, 0.142018,
		0.784610, 0.426559, -0.449928,
		36.475422, 35.125202, 52.959591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695759, 35.376579, 52.772285>,  <35.926197, 34.826611, 53.274540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695759, 35.376579, 52.772285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.065067, 35.289188, 52.645893>,  <36.286652, 35.236755, 52.570057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.065067, 35.289188, 52.645893>,  <35.695759, 35.376579, 52.772285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065067, 35.289188, 52.645893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333525, -0.047710, -0.941533,
		0.190625, 0.974676, -0.116916,
		0.923267, -0.218475, -0.315984,
		36.342049, 35.223644, 52.551098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865898, 35.944412, 52.292610>,  <35.695759, 35.376579, 52.772285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865898, 35.944412, 52.292610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.093754, 35.621075, 52.233150>,  <36.230465, 35.427071, 52.197475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.093754, 35.621075, 52.233150>,  <35.865898, 35.944412, 52.292610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093754, 35.621075, 52.233150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370651, -0.091229, -0.924281,
		0.733575, 0.581601, -0.351580,
		0.569637, -0.808343, -0.148647,
		36.264645, 35.378571, 52.188557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201431, 36.046333, 51.701752>,  <35.865898, 35.944412, 52.292610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201431, 36.046333, 51.701752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.175694, 35.651421, 51.759892>,  <36.160252, 35.414471, 51.794777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.175694, 35.651421, 51.759892>,  <36.201431, 36.046333, 51.701752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175694, 35.651421, 51.759892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261744, -0.123854, -0.957157,
		0.962990, -0.099632, -0.250447,
		-0.064344, -0.987286, 0.145348,
		36.156391, 35.355236, 51.803497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481281, 35.707104, 51.152027>,  <36.201431, 36.046333, 51.701752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481281, 35.707104, 51.152027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.201290, 35.463657, 51.301491>,  <36.033295, 35.317589, 51.391167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.201290, 35.463657, 51.301491>,  <36.481281, 35.707104, 51.152027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201290, 35.463657, 51.301491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435381, -0.051072, -0.898796,
		0.566105, -0.791820, -0.229231,
		-0.699978, -0.608615, 0.373655,
		35.991295, 35.281075, 51.413586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151672, 36.031891, 50.943565>,  <36.481281, 35.707104, 51.152027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151672, 36.031891, 50.943565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.896336, 35.787674, 50.756050>,  <36.743134, 35.641144, 50.643539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.896336, 35.787674, 50.756050>,  <37.151672, 36.031891, 50.943565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896336, 35.787674, 50.756050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059741, 0.567883, -0.820939,
		0.767433, -0.552044, -0.326028,
		-0.638340, -0.610538, -0.468791,
		36.704834, 35.604511, 50.615414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407917, 35.815647, 50.338036>,  <37.151672, 36.031891, 50.943565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407917, 35.815647, 50.338036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.010292, 35.815983, 50.294502>,  <36.771717, 35.816185, 50.268383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.010292, 35.815983, 50.294502>,  <37.407917, 35.815647, 50.338036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010292, 35.815983, 50.294502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096040, 0.477295, -0.873479,
		0.051212, -0.878743, -0.474540,
		-0.994059, 0.000842, -0.108837,
		36.712074, 35.816235, 50.261852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231220, 35.655846, 49.575245>,  <37.407917, 35.815647, 50.338036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231220, 35.655846, 49.575245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.902912, 35.843315, 49.705891>,  <36.705925, 35.955799, 49.784279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.902912, 35.843315, 49.705891>,  <37.231220, 35.655846, 49.575245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902912, 35.843315, 49.705891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085013, 0.465162, -0.881134,
		-0.564894, -0.750977, -0.341948,
		-0.820772, 0.468677, 0.326610,
		36.656681, 35.983917, 49.803875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789047, 35.614597, 49.010574>,  <37.231220, 35.655846, 49.575245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789047, 35.614597, 49.010574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.625793, 35.891846, 49.248230>,  <36.527840, 36.058197, 49.390823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.625793, 35.891846, 49.248230>,  <36.789047, 35.614597, 49.010574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625793, 35.891846, 49.248230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026778, 0.641444, -0.766702,
		-0.912528, -0.328828, -0.243236,
		-0.408136, 0.693124, 0.594141,
		36.503353, 36.099781, 49.426472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239792, 35.858841, 48.653225>,  <36.789047, 35.614597, 49.010574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239792, 35.858841, 48.653225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.318130, 36.151844, 48.914017>,  <36.365131, 36.327648, 49.070492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.318130, 36.151844, 48.914017>,  <36.239792, 35.858841, 48.653225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318130, 36.151844, 48.914017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127289, 0.678216, -0.723755,
		-0.972339, 0.058754, 0.226065,
		0.195844, 0.732510, 0.651977,
		36.376884, 36.371597, 49.109612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654778, 36.328247, 48.699268>,  <36.239792, 35.858841, 48.653225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654778, 36.328247, 48.699268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.976337, 36.540367, 48.806992>,  <36.169273, 36.667641, 48.871624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.976337, 36.540367, 48.806992>,  <35.654778, 36.328247, 48.699268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976337, 36.540367, 48.806992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256158, 0.717352, -0.647911,
		-0.536777, 0.451869, 0.712520,
		0.803899, 0.530302, 0.269308,
		36.217506, 36.699459, 48.887783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392811, 36.987633, 48.762077>,  <35.654778, 36.328247, 48.699268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392811, 36.987633, 48.762077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.785431, 37.063122, 48.749844>,  <36.021004, 37.108414, 48.742504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.785431, 37.063122, 48.749844>,  <35.392811, 36.987633, 48.762077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785431, 37.063122, 48.749844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152641, 0.677282, -0.719715,
		-0.115114, 0.711107, 0.693596,
		0.981554, 0.188721, -0.030580,
		36.079899, 37.119740, 48.740669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459217, 37.787838, 48.810871>,  <35.392811, 36.987633, 48.762077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459217, 37.787838, 48.810871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.773651, 37.602364, 48.647377>,  <35.962311, 37.491081, 48.549282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.773651, 37.602364, 48.647377>,  <35.459217, 37.787838, 48.810871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773651, 37.602364, 48.647377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151371, 0.496713, -0.854613,
		0.599293, 0.733671, 0.320273,
		0.786089, -0.463683, -0.408733,
		36.009480, 37.463257, 48.524757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802456, 38.299839, 48.398441>,  <35.459217, 37.787838, 48.810871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802456, 38.299839, 48.398441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.929958, 37.949974, 48.252365>,  <36.006458, 37.740055, 48.164719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.929958, 37.949974, 48.252365>,  <35.802456, 38.299839, 48.398441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929958, 37.949974, 48.252365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134486, 0.339653, -0.930887,
		0.938249, 0.345835, -0.009365,
		0.318752, -0.874663, -0.365189,
		36.025585, 37.687576, 48.142807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231384, 38.520527, 47.912621>,  <35.802456, 38.299839, 48.398441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231384, 38.520527, 47.912621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.109032, 38.145779, 47.844845>,  <36.035622, 37.920929, 47.804180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.109032, 38.145779, 47.844845>,  <36.231384, 38.520527, 47.912621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109032, 38.145779, 47.844845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097693, 0.207916, -0.973256,
		0.947045, -0.281144, -0.155123,
		-0.305878, -0.936872, -0.169440,
		36.017269, 37.864716, 47.794014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726875, 38.327682, 47.489910>,  <36.231384, 38.520527, 47.912621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726875, 38.327682, 47.489910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.407967, 38.097054, 47.418442>,  <36.216621, 37.958675, 47.375561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.407967, 38.097054, 47.418442>,  <36.726875, 38.327682, 47.489910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407967, 38.097054, 47.418442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067357, 0.209175, -0.975556,
		0.599856, -0.789814, -0.127932,
		-0.797267, -0.576576, -0.178674,
		36.168785, 37.924080, 47.364838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.707863, 28.851912, 30.347155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.371521, 28.714056, 30.514101>,  <44.169716, 28.631344, 30.614269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.371521, 28.714056, 30.514101>,  <44.707863, 28.851912, 30.347155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.371521, 28.714056, 30.514101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238998, 0.928254, 0.284998,
		-0.485645, 0.139891, -0.862891,
		-0.840850, -0.344637, 0.417368,
		44.119267, 28.610664, 30.639311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.183643, 29.236570, 30.117420>,  <44.707863, 28.851912, 30.347155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.183643, 29.236570, 30.117420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.071697, 29.099953, 30.476313>,  <44.004532, 29.017982, 30.691648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.071697, 29.099953, 30.476313>,  <44.183643, 29.236570, 30.117420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.071697, 29.099953, 30.476313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262776, 0.926139, 0.270584,
		-0.923378, -0.160045, -0.348941,
		-0.279862, -0.341544, 0.897232,
		43.987740, 28.997490, 30.745481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.491234, 29.555929, 30.217367>,  <44.183643, 29.236570, 30.117420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.491234, 29.555929, 30.217367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.589668, 29.437969, 30.586685>,  <43.648731, 29.367193, 30.808275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.589668, 29.437969, 30.586685>,  <43.491234, 29.555929, 30.217367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.589668, 29.437969, 30.586685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219979, 0.910738, 0.349521,
		-0.943954, -0.289120, 0.159252,
		0.246090, -0.294900, 0.923295,
		43.663494, 29.349499, 30.863674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.899933, 29.711483, 30.611153>,  <43.491234, 29.555929, 30.217367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.899933, 29.711483, 30.611153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.209953, 29.671368, 30.860706>,  <43.395966, 29.647299, 31.010439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.209953, 29.671368, 30.860706>,  <42.899933, 29.711483, 30.611153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.209953, 29.671368, 30.860706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189738, 0.904829, 0.381161,
		-0.602737, -0.413795, 0.682262,
		0.775054, -0.100289, 0.623886,
		43.442471, 29.641281, 31.047873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563988, 29.791561, 31.323078>,  <42.899933, 29.711483, 30.611153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.563988, 29.791561, 31.323078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.953407, 29.882132, 31.335304>,  <43.187057, 29.936474, 31.342640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.953407, 29.882132, 31.335304>,  <42.563988, 29.791561, 31.323078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.953407, 29.882132, 31.335304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210546, 0.837129, 0.504862,
		0.088726, -0.497943, 0.862659,
		0.973549, 0.226424, 0.030564,
		43.245472, 29.950058, 31.344473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639473, 30.018103, 32.038189>,  <42.563988, 29.791561, 31.323078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639473, 30.018103, 32.038189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.969093, 30.140791, 31.847672>,  <43.166866, 30.214403, 31.733362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.969093, 30.140791, 31.847672>,  <42.639473, 30.018103, 32.038189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.969093, 30.140791, 31.847672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211996, 0.946624, 0.242819,
		0.525347, -0.099124, 0.845094,
		0.824056, 0.306721, -0.476293,
		43.216309, 30.232807, 31.704784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.193203, 30.330097, 32.511585>,  <42.639473, 30.018103, 32.038189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.193203, 30.330097, 32.511585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.305698, 30.483852, 32.159870>,  <43.373196, 30.576105, 31.948841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.305698, 30.483852, 32.159870>,  <43.193203, 30.330097, 32.511585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.305698, 30.483852, 32.159870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019990, 0.913728, 0.405834,
		0.959429, -0.131714, 0.249295,
		0.281242, 0.384386, -0.879290,
		43.390072, 30.599169, 31.896084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765400, 30.765223, 32.657150>,  <43.193203, 30.330097, 32.511585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.765400, 30.765223, 32.657150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.619987, 30.891457, 32.306549>,  <43.532742, 30.967197, 32.096188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.619987, 30.891457, 32.306549>,  <43.765400, 30.765223, 32.657150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.619987, 30.891457, 32.306549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051161, 0.946215, 0.319468,
		0.930176, 0.071294, -0.360123,
		-0.363530, 0.315586, -0.876499,
		43.510929, 30.986132, 32.043598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.241016, 31.104820, 32.411194>,  <43.765400, 30.765223, 32.657150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.241016, 31.104820, 32.411194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.911892, 31.235491, 32.225178>,  <43.714417, 31.313892, 32.113567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.911892, 31.235491, 32.225178>,  <44.241016, 31.104820, 32.411194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.911892, 31.235491, 32.225178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157586, 0.917344, 0.365578,
		0.546028, 0.227518, -0.806281,
		-0.822812, 0.326675, -0.465041,
		43.665047, 31.333492, 32.085667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.408951, 31.718054, 32.417019>,  <44.241016, 31.104820, 32.411194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.408951, 31.718054, 32.417019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.025093, 31.718342, 32.304531>,  <43.794781, 31.718513, 32.237038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.025093, 31.718342, 32.304531>,  <44.408951, 31.718054, 32.417019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.025093, 31.718342, 32.304531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079754, 0.958245, 0.274602,
		0.269678, 0.285948, -0.919514,
		-0.959642, 0.000719, -0.281224,
		43.737202, 31.718557, 32.220165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.279606, 32.290497, 31.973326>,  <44.408951, 31.718054, 32.417019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.279606, 32.290497, 31.973326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.931782, 32.206589, 32.152145>,  <43.723087, 32.156242, 32.259438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.931782, 32.206589, 32.152145>,  <44.279606, 32.290497, 31.973326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.931782, 32.206589, 32.152145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004252, 0.902075, 0.431559,
		-0.493800, 0.377170, -0.783520,
		-0.869565, -0.209773, 0.447048,
		43.670914, 32.143658, 32.286259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.933537, 32.904415, 31.946636>,  <44.279606, 32.290497, 31.973326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.933537, 32.904415, 31.946636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.709728, 32.707508, 32.213352>,  <43.575443, 32.589363, 32.373383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.709728, 32.707508, 32.213352>,  <43.933537, 32.904415, 31.946636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.709728, 32.707508, 32.213352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195807, 0.860244, 0.470786,
		-0.805355, 0.132853, -0.577714,
		-0.559521, -0.492270, 0.666788,
		43.541870, 32.559826, 32.413387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.202686, 33.127182, 31.936312>,  <43.933537, 32.904415, 31.946636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.202686, 33.127182, 31.936312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.290573, 32.981331, 32.298256>,  <43.343304, 32.893822, 32.515423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.290573, 32.981331, 32.298256>,  <43.202686, 33.127182, 31.936312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.290573, 32.981331, 32.298256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163403, 0.900668, 0.402613,
		-0.961783, -0.236316, 0.138307,
		0.219712, -0.364626, 0.904861,
		43.356487, 32.871944, 32.569714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.859859, 33.563660, 32.342594>,  <43.202686, 33.127182, 31.936312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.859859, 33.563660, 32.342594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.060661, 33.362370, 32.623951>,  <43.181141, 33.241596, 32.792767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.060661, 33.362370, 32.623951>,  <42.859859, 33.563660, 32.342594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.060661, 33.362370, 32.623951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019027, 0.819524, 0.572729,
		-0.864658, -0.274126, 0.420977,
		0.502001, -0.503224, 0.703392,
		43.211262, 33.211403, 32.834969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.503666, 33.694931, 33.040802>,  <42.859859, 33.563660, 32.342594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.503666, 33.694931, 33.040802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.886395, 33.598381, 33.105587>,  <43.116032, 33.540451, 33.144459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.886395, 33.598381, 33.105587>,  <42.503666, 33.694931, 33.040802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.886395, 33.598381, 33.105587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124419, 0.843646, 0.522285,
		-0.262704, -0.479582, 0.837250,
		0.956821, -0.241376, 0.161960,
		43.173439, 33.525967, 33.154175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.589695, 33.763988, 33.772808>,  <42.503666, 33.694931, 33.040802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.589695, 33.763988, 33.772808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.967194, 33.768665, 33.640621>,  <43.193691, 33.771473, 33.561310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.967194, 33.768665, 33.640621>,  <42.589695, 33.763988, 33.772808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.967194, 33.768665, 33.640621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126184, 0.911020, 0.392582,
		0.305652, -0.412196, 0.858295,
		0.943745, 0.011691, -0.330467,
		43.250317, 33.772171, 33.541481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.924904, 33.907166, 34.392998>,  <42.589695, 33.763988, 33.772808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.924904, 33.907166, 34.392998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.195923, 34.009327, 34.117115>,  <43.358536, 34.070625, 33.951584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.195923, 34.009327, 34.117115>,  <42.924904, 33.907166, 34.392998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.195923, 34.009327, 34.117115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276076, 0.780877, 0.560369,
		0.681697, -0.570089, 0.458571,
		0.677548, 0.255401, -0.689710,
		43.399185, 34.085949, 33.910202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.566956, 33.956165, 34.680046>,  <42.924904, 33.907166, 34.392998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.566956, 33.956165, 34.680046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.619076, 34.168301, 34.344963>,  <43.650349, 34.295582, 34.143913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.619076, 34.168301, 34.344963>,  <43.566956, 33.956165, 34.680046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.619076, 34.168301, 34.344963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261110, 0.796732, 0.545013,
		0.956475, -0.289749, -0.034666,
		0.130298, 0.530343, -0.837711,
		43.658165, 34.327404, 34.093651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.108429, 34.299259, 34.772163>,  <43.566956, 33.956165, 34.680046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.108429, 34.299259, 34.772163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.940578, 34.524342, 34.487270>,  <43.839867, 34.659389, 34.316334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.940578, 34.524342, 34.487270>,  <44.108429, 34.299259, 34.772163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.940578, 34.524342, 34.487270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106020, 0.809676, 0.577222,
		0.901483, 0.166707, -0.399420,
		-0.419628, 0.562703, -0.712234,
		43.814690, 34.693153, 34.273602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.429024, 34.984196, 34.823578>,  <44.108429, 34.299259, 34.772163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.429024, 34.984196, 34.823578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.107330, 35.079483, 34.605789>,  <43.914314, 35.136658, 34.475117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.107330, 35.079483, 34.605789>,  <44.429024, 34.984196, 34.823578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.107330, 35.079483, 34.605789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133616, 0.820218, 0.556228,
		0.579093, 0.520090, -0.627820,
		-0.804238, 0.238221, -0.544474,
		43.866058, 35.150948, 34.442448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.444550, 35.677067, 34.557373>,  <44.429024, 34.984196, 34.823578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.444550, 35.677067, 34.557373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.051624, 35.602398, 34.551441>,  <43.815868, 35.557598, 34.547882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.051624, 35.602398, 34.551441>,  <44.444550, 35.677067, 34.557373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.051624, 35.602398, 34.551441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171817, 0.867009, 0.467733,
		-0.074457, 0.462007, -0.883745,
		-0.982311, -0.186668, -0.014825,
		43.756931, 35.546398, 34.546993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.873699, 36.186787, 34.200790>,  <44.444550, 35.677067, 34.557373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.873699, 36.186787, 34.200790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.105038, 36.079559, 34.508987>,  <45.243843, 36.015224, 34.693905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.105038, 36.079559, 34.508987>,  <44.873699, 36.186787, 34.200790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.105038, 36.079559, 34.508987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685856, -0.351620, -0.637154,
		0.441719, 0.896942, -0.019505,
		0.578348, -0.268065, 0.770490,
		45.278542, 35.999142, 34.740135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.438740, 36.566902, 34.207790>,  <44.873699, 36.186787, 34.200790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.438740, 36.566902, 34.207790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.549099, 36.245831, 34.419292>,  <45.615314, 36.053188, 34.546196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.549099, 36.245831, 34.419292>,  <45.438740, 36.566902, 34.207790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.549099, 36.245831, 34.419292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844942, -0.059709, -0.531515,
		0.458208, 0.593413, 0.661745,
		0.275895, -0.802680, 0.528759,
		45.631866, 36.005028, 34.577919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.141670, 36.471958, 34.150848>,  <45.438740, 36.566902, 34.207790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.141670, 36.471958, 34.150848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.075260, 36.125183, 34.338825>,  <46.035412, 35.917118, 34.451611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.075260, 36.125183, 34.338825>,  <46.141670, 36.471958, 34.150848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.075260, 36.125183, 34.338825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759124, -0.416539, -0.500227,
		0.629417, 0.273695, 0.727273,
		-0.166028, -0.866941, 0.469945,
		46.025452, 35.865101, 34.479809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.819691, 36.138828, 34.498001>,  <46.141670, 36.471958, 34.150848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.819691, 36.138828, 34.498001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.572189, 35.840954, 34.397934>,  <46.423687, 35.662228, 34.337894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.572189, 35.840954, 34.397934>,  <46.819691, 36.138828, 34.498001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.572189, 35.840954, 34.397934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687096, -0.358631, -0.631888,
		0.380844, -0.562870, 0.733577,
		-0.618755, -0.744688, -0.250163,
		46.386562, 35.617546, 34.322884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.202847, 35.573948, 34.257675>,  <46.819691, 36.138828, 34.498001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.202847, 35.573948, 34.257675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.837646, 35.482826, 34.122303>,  <46.618526, 35.428154, 34.041080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.837646, 35.482826, 34.122303>,  <47.202847, 35.573948, 34.257675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.837646, 35.482826, 34.122303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398174, -0.317009, -0.860792,
		0.088803, -0.920658, 0.380134,
		-0.913001, -0.227801, -0.338431,
		46.563747, 35.414486, 34.020775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.192600, 34.774944, 34.060543>,  <47.202847, 35.573948, 34.257675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.192600, 34.774944, 34.060543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.918423, 34.986198, 33.860046>,  <46.753918, 35.112949, 33.739750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.918423, 34.986198, 33.860046>,  <47.192600, 34.774944, 34.060543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.918423, 34.986198, 33.860046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249669, -0.476182, -0.843158,
		-0.683981, -0.703082, 0.194538,
		-0.685446, 0.528134, -0.501237,
		46.712788, 35.144638, 33.709675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.824310, 34.237572, 33.686764>,  <47.192600, 34.774944, 34.060543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.824310, 34.237572, 33.686764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.767689, 34.588528, 33.503395>,  <46.733715, 34.799103, 33.393375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.767689, 34.588528, 33.503395>,  <46.824310, 34.237572, 33.686764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.767689, 34.588528, 33.503395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240733, -0.418671, -0.875649,
		-0.960214, -0.234305, -0.151955,
		-0.141550, 0.877391, -0.458419,
		46.725224, 34.851746, 33.365868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.325905, 34.083775, 33.222607>,  <46.824310, 34.237572, 33.686764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.325905, 34.083775, 33.222607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.462265, 34.412514, 33.040028>,  <46.544083, 34.609756, 32.930481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.462265, 34.412514, 33.040028>,  <46.325905, 34.083775, 33.222607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.462265, 34.412514, 33.040028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085809, -0.510711, -0.855460,
		-0.936174, 0.252462, -0.244626,
		0.340904, 0.821850, -0.456451,
		46.564537, 34.659069, 32.903091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.033295, 34.213341, 32.575851>,  <46.325905, 34.083775, 33.222607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.033295, 34.213341, 32.575851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.356640, 34.447147, 32.547897>,  <46.550648, 34.587433, 32.531124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.356640, 34.447147, 32.547897>,  <46.033295, 34.213341, 32.575851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.356640, 34.447147, 32.547897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110245, -0.266926, -0.957390,
		-0.578266, 0.766217, -0.280214,
		0.808365, 0.584518, -0.069882,
		46.599148, 34.622501, 32.526932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.921051, 34.613136, 31.927778>,  <46.033295, 34.213341, 32.575851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.921051, 34.613136, 31.927778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.311134, 34.609554, 32.016216>,  <46.545185, 34.607407, 32.069279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.311134, 34.609554, 32.016216>,  <45.921051, 34.613136, 31.927778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.311134, 34.609554, 32.016216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208324, -0.299666, -0.931022,
		0.074591, 0.954002, -0.290373,
		0.975212, -0.008955, 0.221094,
		46.603699, 34.606869, 32.082546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.185909, 35.006454, 31.448740>,  <45.921051, 34.613136, 31.927778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.185909, 35.006454, 31.448740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.470661, 34.754456, 31.572886>,  <46.641514, 34.603256, 31.647373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.470661, 34.754456, 31.572886>,  <46.185909, 35.006454, 31.448740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.470661, 34.754456, 31.572886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089929, -0.356514, -0.929952,
		0.696518, 0.689926, -0.197141,
		0.711882, -0.629999, 0.310363,
		46.684227, 34.565456, 31.665995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.660828, 35.023369, 30.980114>,  <46.185909, 35.006454, 31.448740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.660828, 35.023369, 30.980114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.716198, 34.673199, 31.165356>,  <46.749420, 34.463097, 31.276501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.716198, 34.673199, 31.165356>,  <46.660828, 35.023369, 30.980114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.716198, 34.673199, 31.165356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041710, -0.462036, -0.885880,
		0.989494, 0.141946, -0.027445,
		0.138428, -0.875428, 0.463102,
		46.757725, 34.410572, 31.304287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.057629, 34.554382, 30.449253>,  <46.660828, 35.023369, 30.980114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.057629, 34.554382, 30.449253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.967812, 34.298218, 30.743044>,  <46.913921, 34.144520, 30.919319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.967812, 34.298218, 30.743044>,  <47.057629, 34.554382, 30.449253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.967812, 34.298218, 30.743044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137796, -0.725282, -0.674520,
		0.964673, -0.252666, 0.074611,
		-0.224542, -0.640410, 0.734476,
		46.900448, 34.106094, 30.963387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.502369, 33.940750, 30.320259>,  <47.057629, 34.554382, 30.449253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.502369, 33.940750, 30.320259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.192375, 33.827534, 30.546282>,  <47.006378, 33.759605, 30.681896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.192375, 33.827534, 30.546282>,  <47.502369, 33.940750, 30.320259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.192375, 33.827534, 30.546282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261703, -0.670116, -0.694590,
		0.575250, -0.686173, 0.445257,
		-0.774983, -0.283038, 0.565058,
		46.959881, 33.742622, 30.715799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.374222, 33.269279, 30.043247>,  <47.502369, 33.940750, 30.320259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.374222, 33.269279, 30.043247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.041824, 33.349148, 30.250935>,  <46.842388, 33.397068, 30.375547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.041824, 33.349148, 30.250935>,  <47.374222, 33.269279, 30.043247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.041824, 33.349148, 30.250935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538359, -0.523703, -0.660231,
		0.140086, -0.828171, 0.542687,
		-0.830991, 0.199671, 0.519217,
		46.792526, 33.409050, 30.406700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.112785, 32.554508, 30.152832>,  <47.374222, 33.269279, 30.043247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.112785, 32.554508, 30.152832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.805737, 32.804085, 30.211424>,  <46.621510, 32.953831, 30.246578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.805737, 32.804085, 30.211424>,  <47.112785, 32.554508, 30.152832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.805737, 32.804085, 30.211424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607283, -0.635046, -0.477414,
		-0.204858, -0.455426, 0.866383,
		-0.767620, 0.623942, 0.146478,
		46.575451, 32.991268, 30.255367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.485516, 32.149384, 30.217190>,  <47.112785, 32.554508, 30.152832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.485516, 32.149384, 30.217190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.358879, 32.517418, 30.124916>,  <46.282898, 32.738239, 30.069551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.358879, 32.517418, 30.124916>,  <46.485516, 32.149384, 30.217190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.358879, 32.517418, 30.124916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746271, -0.391720, -0.538177,
		-0.585532, 0.001772, 0.810647,
		-0.316593, 0.920083, -0.230687,
		46.263901, 32.793442, 30.055710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.786129, 32.116909, 30.421585>,  <46.485516, 32.149384, 30.217190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.786129, 32.116909, 30.421585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.855793, 32.403843, 30.151739>,  <45.897591, 32.576004, 29.989832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.855793, 32.403843, 30.151739>,  <45.786129, 32.116909, 30.421585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.855793, 32.403843, 30.151739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759307, -0.338383, -0.555833,
		-0.626994, 0.609043, 0.485741,
		0.174159, 0.717331, -0.674615,
		45.908039, 32.619041, 29.949354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.152359, 32.424767, 30.318581>,  <45.786129, 32.116909, 30.421585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.152359, 32.424767, 30.318581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.313148, 32.571438, 29.982969>,  <45.409622, 32.659439, 29.781603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.313148, 32.571438, 29.982969>,  <45.152359, 32.424767, 30.318581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.313148, 32.571438, 29.982969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767780, -0.364320, -0.527054,
		-0.498934, 0.856048, 0.135084,
		0.401969, 0.366680, -0.839027,
		45.433739, 32.681442, 29.731260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.640759, 32.768078, 30.046751>,  <45.152359, 32.424767, 30.318581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.640759, 32.768078, 30.046751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.893055, 32.702770, 29.743301>,  <45.044434, 32.663586, 29.561232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.893055, 32.702770, 29.743301>,  <44.640759, 32.768078, 30.046751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.893055, 32.702770, 29.743301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768905, -0.263313, -0.582624,
		-0.104632, 0.950795, -0.291619,
		0.630743, -0.163266, -0.758622,
		45.082279, 32.653790, 29.515715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.269451, 33.051880, 29.490908>,  <44.640759, 32.768078, 30.046751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.269451, 33.051880, 29.490908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.539162, 32.792347, 29.349844>,  <44.700989, 32.636627, 29.265205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.539162, 32.792347, 29.349844>,  <44.269451, 33.051880, 29.490908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.539162, 32.792347, 29.349844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705911, -0.426043, -0.565841,
		0.216888, 0.630479, -0.745288,
		0.674277, -0.648832, -0.352659,
		44.741444, 32.597698, 29.244047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.656780, 39.267185, 43.302021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473305, 38.913055, 43.271549>,  <40.363220, 38.700577, 43.253265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473305, 38.913055, 43.271549>,  <40.656780, 39.267185, 43.302021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473305, 38.913055, 43.271549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263434, -0.053607, -0.963187,
		0.848649, -0.461874, 0.257814,
		-0.458692, -0.885324, -0.076180,
		40.335697, 38.647457, 43.248695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120064, 38.902325, 42.925194>,  <40.656780, 39.267185, 43.302021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.120064, 38.902325, 42.925194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760155, 38.733616, 42.880451>,  <40.544209, 38.632393, 42.853607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760155, 38.733616, 42.880451>,  <41.120064, 38.902325, 42.925194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760155, 38.733616, 42.880451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174410, -0.112650, -0.978208,
		0.399978, -0.899678, 0.174920,
		-0.899777, -0.421769, -0.111856,
		40.490223, 38.607086, 42.846893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221550, 38.267822, 42.564793>,  <41.120064, 38.902325, 42.925194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221550, 38.267822, 42.564793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829224, 38.332275, 42.520905>,  <40.593826, 38.370949, 42.494572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829224, 38.332275, 42.520905>,  <41.221550, 38.267822, 42.564793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.829224, 38.332275, 42.520905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080557, -0.177521, -0.980814,
		-0.177521, -0.970836, 0.161134,
		0.980814, -0.161134, 0.109721,
		40.534981, 38.380615, 42.487988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964970, 37.686337, 42.168137>,  <41.221550, 38.267822, 42.564793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.964970, 37.686337, 42.168137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697243, 37.980640, 42.126827>,  <40.536606, 38.157223, 42.102039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697243, 37.980640, 42.126827>,  <40.964970, 37.686337, 42.168137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697243, 37.980640, 42.126827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012483, -0.150122, -0.988589,
		-0.742870, -0.660393, 0.109664,
		-0.669320, 0.735761, -0.103277,
		40.496449, 38.201370, 42.095844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374172, 37.427818, 41.755817>,  <40.964970, 37.686337, 42.168137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374172, 37.427818, 41.755817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335590, 37.824181, 41.718288>,  <40.312439, 38.061996, 41.695770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335590, 37.824181, 41.718288>,  <40.374172, 37.427818, 41.755817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335590, 37.824181, 41.718288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121886, -0.105315, -0.986941,
		-0.987846, -0.083762, 0.130936,
		-0.096457, 0.990905, -0.093826,
		40.306652, 38.121452, 41.690140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815029, 37.537155, 41.432354>,  <40.374172, 37.427818, 41.755817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815029, 37.537155, 41.432354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996422, 37.890137, 41.382347>,  <40.105255, 38.101925, 41.352345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996422, 37.890137, 41.382347>,  <39.815029, 37.537155, 41.432354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996422, 37.890137, 41.382347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213918, -0.028402, -0.976439,
		-0.865215, 0.469538, 0.175893,
		0.453479, 0.882456, -0.125017,
		40.132465, 38.154873, 41.344841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308739, 37.917629, 41.121357>,  <39.815029, 37.537155, 41.432354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308739, 37.917629, 41.121357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643402, 38.131313, 41.073006>,  <39.844200, 38.259525, 41.043995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643402, 38.131313, 41.073006>,  <39.308739, 37.917629, 41.121357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643402, 38.131313, 41.073006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234457, 0.149853, -0.960507,
		-0.495000, 0.831962, 0.250626,
		0.836663, 0.534212, -0.120882,
		39.894402, 38.291576, 41.036739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175041, 38.480556, 40.676846>,  <39.308739, 37.917629, 41.121357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175041, 38.480556, 40.676846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570980, 38.451298, 40.628086>,  <39.808544, 38.433743, 40.598831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570980, 38.451298, 40.628086>,  <39.175041, 38.480556, 40.676846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570980, 38.451298, 40.628086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104992, 0.201951, -0.973752,
		0.095847, 0.976660, 0.192220,
		0.989843, -0.073149, -0.121898,
		39.867931, 38.429352, 40.591518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290989, 38.917095, 40.040432>,  <39.175041, 38.480556, 40.676846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290989, 38.917095, 40.040432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625988, 38.702084, 40.079739>,  <39.826988, 38.573074, 40.103321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625988, 38.702084, 40.079739>,  <39.290989, 38.917095, 40.040432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625988, 38.702084, 40.079739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099435, -0.026908, -0.994680,
		0.537317, 0.842813, 0.030915,
		0.837498, -0.537533, 0.098263,
		39.877239, 38.540825, 40.109219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829388, 39.261787, 39.621254>,  <39.290989, 38.917095, 40.040432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829388, 39.261787, 39.621254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958054, 38.884628, 39.655834>,  <40.035252, 38.658333, 39.676582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958054, 38.884628, 39.655834>,  <39.829388, 39.261787, 39.621254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958054, 38.884628, 39.655834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141032, -0.042574, -0.989089,
		0.936293, 0.330345, 0.119284,
		0.321662, -0.942900, 0.086451,
		40.054554, 38.601757, 39.681770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490345, 39.149097, 39.229717>,  <39.829388, 39.261787, 39.621254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490345, 39.149097, 39.229717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315147, 38.791920, 39.271301>,  <40.210030, 38.577614, 39.296249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315147, 38.791920, 39.271301>,  <40.490345, 39.149097, 39.229717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315147, 38.791920, 39.271301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034851, -0.132419, -0.990581,
		0.898304, -0.430242, 0.089118,
		-0.437990, -0.892949, 0.103958,
		40.183750, 38.524036, 39.302490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949966, 38.790314, 38.878559>,  <40.490345, 39.149097, 39.229717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949966, 38.790314, 38.878559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625919, 38.557533, 38.906929>,  <40.431492, 38.417866, 38.923950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625919, 38.557533, 38.906929>,  <40.949966, 38.790314, 38.878559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625919, 38.557533, 38.906929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090366, 0.004415, -0.995899,
		0.579256, -0.813209, -0.056165,
		-0.810122, -0.581955, 0.070929,
		40.382881, 38.382946, 38.928207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944698, 38.121918, 38.419556>,  <40.949966, 38.790314, 38.878559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944698, 38.121918, 38.419556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566860, 38.225918, 38.499699>,  <40.340157, 38.288319, 38.547783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566860, 38.225918, 38.499699>,  <40.944698, 38.121918, 38.419556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566860, 38.225918, 38.499699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226106, -0.072910, -0.971370,
		-0.237949, -0.962852, 0.127658,
		-0.944593, 0.260001, 0.200357,
		40.283482, 38.303917, 38.559807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476074, 37.585571, 38.193546>,  <40.944698, 38.121918, 38.419556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476074, 37.585571, 38.193546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298901, 37.944130, 38.200150>,  <40.192596, 38.159267, 38.204113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298901, 37.944130, 38.200150>,  <40.476074, 37.585571, 38.193546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298901, 37.944130, 38.200150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286428, -0.124033, -0.950039,
		-0.849569, -0.425536, 0.311693,
		-0.442936, 0.896401, 0.016510,
		40.166019, 38.213051, 38.205101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136120, 37.562485, 37.719582>,  <40.476074, 37.585571, 38.193546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136120, 37.562485, 37.719582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418030, 37.293190, 37.630100>,  <41.587177, 37.131615, 37.576412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418030, 37.293190, 37.630100>,  <41.136120, 37.562485, 37.719582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418030, 37.293190, 37.630100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105010, -0.410857, 0.905632,
		-0.701617, -0.614775, -0.360258,
		0.704774, -0.673237, -0.223707,
		41.629463, 37.091217, 37.562988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882553, 36.896835, 38.043053>,  <41.136120, 37.562485, 37.719582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882553, 36.896835, 38.043053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272793, 36.824799, 37.992805>,  <41.506935, 36.781574, 37.962658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272793, 36.824799, 37.992805>,  <40.882553, 36.896835, 38.043053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272793, 36.824799, 37.992805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036304, -0.431921, 0.901181,
		-0.216553, -0.883748, -0.414842,
		0.975596, -0.180093, -0.125618,
		41.565472, 36.770771, 37.955120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909294, 36.106880, 38.151848>,  <40.882553, 36.896835, 38.043053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909294, 36.106880, 38.151848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280979, 36.245354, 38.203564>,  <41.503990, 36.328438, 38.234592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280979, 36.245354, 38.203564>,  <40.909294, 36.106880, 38.151848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.280979, 36.245354, 38.203564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050059, -0.464564, 0.884123,
		0.366138, -0.815067, -0.449009,
		0.929213, 0.346188, 0.129294,
		41.559742, 36.349209, 38.242352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224834, 35.613327, 38.547661>,  <40.909294, 36.106880, 38.151848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.224834, 35.613327, 38.547661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.436588, 35.949352, 38.595085>,  <41.563641, 36.150967, 38.623539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.436588, 35.949352, 38.595085>,  <41.224834, 35.613327, 38.547661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.436588, 35.949352, 38.595085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107118, -0.204812, 0.972922,
		0.841594, -0.502348, -0.198409,
		0.529382, 0.840059, 0.118558,
		41.595402, 36.201370, 38.630653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703537, 35.389084, 38.999195>,  <41.224834, 35.613327, 38.547661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703537, 35.389084, 38.999195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704006, 35.787292, 39.037006>,  <41.704288, 36.026218, 39.059692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704006, 35.787292, 39.037006>,  <41.703537, 35.389084, 38.999195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704006, 35.787292, 39.037006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073015, -0.094363, 0.992856,
		0.997330, 0.005733, -0.072800,
		0.001178, 0.995521, 0.094530,
		41.704361, 36.085949, 39.065365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.332619, 35.537212, 39.343914>,  <41.703537, 35.389084, 38.999195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.332619, 35.537212, 39.343914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086903, 35.842869, 39.422638>,  <41.939472, 36.026264, 39.469872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086903, 35.842869, 39.422638>,  <42.332619, 35.537212, 39.343914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.086903, 35.842869, 39.422638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043313, -0.216390, 0.975346,
		0.787892, 0.607668, 0.099828,
		-0.614288, 0.764144, 0.196812,
		41.902615, 36.072113, 39.481682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.600826, 35.687035, 39.960983>,  <42.332619, 35.537212, 39.343914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.600826, 35.687035, 39.960983> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271481, 35.913776, 39.950058>,  <42.073872, 36.049820, 39.943504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271481, 35.913776, 39.950058>,  <42.600826, 35.687035, 39.960983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.271481, 35.913776, 39.950058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013173, 0.029020, 0.999492,
		0.567356, 0.823309, -0.016427,
		-0.823367, 0.566852, -0.027310,
		42.024471, 36.083832, 39.941864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.659477, 36.291409, 40.481022>,  <42.600826, 35.687035, 39.960983>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.659477, 36.291409, 40.481022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268177, 36.250053, 40.409092>,  <42.033398, 36.225243, 40.365932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268177, 36.250053, 40.409092>,  <42.659477, 36.291409, 40.481022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.268177, 36.250053, 40.409092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186804, 0.062253, 0.980423,
		-0.090167, 0.992691, -0.080211,
		-0.978251, -0.103385, -0.179825,
		41.974701, 36.219036, 40.355145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249138, 36.785210, 40.940479>,  <42.659477, 36.291409, 40.481022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249138, 36.785210, 40.940479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959053, 36.530598, 40.835495>,  <41.785000, 36.377831, 40.772503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959053, 36.530598, 40.835495>,  <42.249138, 36.785210, 40.940479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.959053, 36.530598, 40.835495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370014, 0.038838, 0.928214,
		-0.580647, 0.770270, -0.263692,
		-0.725217, -0.636534, -0.262459,
		41.741489, 36.339638, 40.756756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621231, 37.094727, 41.229641>,  <42.249138, 36.785210, 40.940479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621231, 37.094727, 41.229641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.575237, 36.703686, 41.159138>,  <41.547642, 36.469059, 41.116837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.575237, 36.703686, 41.159138>,  <41.621231, 37.094727, 41.229641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575237, 36.703686, 41.159138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237119, -0.145293, 0.960554,
		-0.964652, 0.152246, -0.215102,
		-0.114988, -0.977605, -0.176258,
		41.540741, 36.410404, 41.106262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988365, 36.923935, 41.537525>,  <41.621231, 37.094727, 41.229641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988365, 36.923935, 41.537525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174259, 36.570900, 41.509048>,  <41.285793, 36.359081, 41.491962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174259, 36.570900, 41.509048>,  <40.988365, 36.923935, 41.537525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174259, 36.570900, 41.509048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240066, -0.202984, 0.949298,
		-0.852287, -0.424076, -0.306212,
		0.464731, -0.882585, -0.071194,
		41.313679, 36.306126, 41.487690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523331, 36.493984, 41.852657>,  <40.988365, 36.923935, 41.537525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523331, 36.493984, 41.852657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876415, 36.306118, 41.846584>,  <41.088268, 36.193398, 41.842941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876415, 36.306118, 41.846584>,  <40.523331, 36.493984, 41.852657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876415, 36.306118, 41.846584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140696, -0.294992, 0.945084,
		-0.448351, -0.832104, -0.326474,
		0.882715, -0.469663, -0.015186,
		41.141232, 36.165218, 41.842030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425980, 35.770866, 42.004513>,  <40.523331, 36.493984, 41.852657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425980, 35.770866, 42.004513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795792, 35.861290, 42.127239>,  <41.017681, 35.915543, 42.200874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795792, 35.861290, 42.127239>,  <40.425980, 35.770866, 42.004513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795792, 35.861290, 42.127239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268753, -0.184067, 0.945458,
		0.270199, -0.956566, -0.109424,
		0.924535, 0.226054, 0.306815,
		41.073151, 35.929108, 42.219284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454678, 35.253742, 42.520626>,  <40.425980, 35.770866, 42.004513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454678, 35.253742, 42.520626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748493, 35.511314, 42.606239>,  <40.924782, 35.665855, 42.657608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748493, 35.511314, 42.606239>,  <40.454678, 35.253742, 42.520626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748493, 35.511314, 42.606239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240296, -0.048138, 0.969505,
		0.634594, -0.763571, 0.119374,
		0.734539, 0.643927, 0.214031,
		40.968857, 35.704491, 42.670448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759418, 34.737846, 42.073723>,  <40.454678, 35.253742, 42.520626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759418, 34.737846, 42.073723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673717, 34.347179, 42.079472>,  <40.622295, 34.112778, 42.082920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673717, 34.347179, 42.079472>,  <40.759418, 34.737846, 42.073723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673717, 34.347179, 42.079472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163619, 0.021382, -0.986292,
		0.962977, -0.213668, -0.164384,
		-0.214254, -0.976672, 0.014370,
		40.609440, 34.054176, 42.083782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181911, 34.366295, 41.538319>,  <40.759418, 34.737846, 42.073723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.181911, 34.366295, 41.538319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866657, 34.128166, 41.600838>,  <40.677505, 33.985287, 41.638348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866657, 34.128166, 41.600838>,  <41.181911, 34.366295, 41.538319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866657, 34.128166, 41.600838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246539, 0.072673, -0.966404,
		0.563965, -0.800193, -0.204047,
		-0.788138, -0.595324, 0.156294,
		40.630215, 33.949570, 41.647724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.161457, 33.802647, 41.031429>,  <41.181911, 34.366295, 41.538319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.161457, 33.802647, 41.031429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786537, 33.816685, 41.170128>,  <40.561584, 33.825108, 41.253349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786537, 33.816685, 41.170128>,  <41.161457, 33.802647, 41.031429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786537, 33.816685, 41.170128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348508, -0.085414, -0.933406,
		-0.003132, -0.995727, 0.092287,
		-0.937301, 0.035087, 0.346751,
		40.505348, 33.827213, 41.274155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822773, 33.210712, 40.731186>,  <41.161457, 33.802647, 41.031429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822773, 33.210712, 40.731186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539661, 33.473934, 40.833965>,  <40.369797, 33.631866, 40.895634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539661, 33.473934, 40.833965>,  <40.822773, 33.210712, 40.731186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539661, 33.473934, 40.833965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338970, 0.002765, -0.940793,
		-0.619800, -0.752968, 0.221103,
		-0.707776, 0.658051, 0.256947,
		40.327328, 33.671349, 40.911049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303474, 32.953667, 40.385361>,  <40.822773, 33.210712, 40.731186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303474, 32.953667, 40.385361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191216, 33.319366, 40.502243>,  <40.123859, 33.538788, 40.572372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191216, 33.319366, 40.502243>,  <40.303474, 32.953667, 40.385361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191216, 33.319366, 40.502243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417248, 0.157956, -0.894960,
		-0.864373, -0.373091, 0.337139,
		-0.280648, 0.914250, 0.292204,
		40.107021, 33.593643, 40.589905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646530, 33.042271, 40.224667>,  <40.303474, 32.953667, 40.385361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646530, 33.042271, 40.224667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797630, 33.412621, 40.227634>,  <39.888290, 33.634830, 40.229416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797630, 33.412621, 40.227634>,  <39.646530, 33.042271, 40.224667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797630, 33.412621, 40.227634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553382, 0.232184, -0.799912,
		-0.742342, 0.298066, 0.600071,
		0.377754, 0.925877, 0.007416,
		39.910957, 33.690384, 40.229858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080685, 33.443798, 40.142754>,  <39.646530, 33.042271, 40.224667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080685, 33.443798, 40.142754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380386, 33.685398, 40.034088>,  <39.560207, 33.830360, 39.968887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380386, 33.685398, 40.034088>,  <39.080685, 33.443798, 40.142754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380386, 33.685398, 40.034088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571011, 0.381340, -0.726998,
		-0.335511, 0.699829, 0.630612,
		0.749252, 0.604003, -0.271666,
		39.605164, 33.866600, 39.952587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721478, 34.020462, 40.000595>,  <39.080685, 33.443798, 40.142754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721478, 34.020462, 40.000595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071083, 34.118587, 39.832821>,  <39.280846, 34.177464, 39.732155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071083, 34.118587, 39.832821>,  <38.721478, 34.020462, 40.000595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071083, 34.118587, 39.832821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485053, 0.389309, -0.783047,
		-0.028804, 0.887840, 0.459251,
		0.874011, 0.245315, -0.419435,
		39.333286, 34.192181, 39.706989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704815, 34.793835, 39.925819>,  <38.721478, 34.020462, 40.000595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704815, 34.793835, 39.925819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988262, 34.660702, 39.676956>,  <39.158333, 34.580822, 39.527637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988262, 34.660702, 39.676956>,  <38.704815, 34.793835, 39.925819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988262, 34.660702, 39.676956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400793, 0.535827, -0.743138,
		0.580706, 0.775961, 0.246304,
		0.708623, -0.332828, -0.622157,
		39.200848, 34.560852, 39.490311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015423, 35.385593, 39.578423>,  <38.704815, 34.793835, 39.925819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015423, 35.385593, 39.578423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101784, 35.075592, 39.340851>,  <39.153599, 34.889591, 39.198307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101784, 35.075592, 39.340851>,  <39.015423, 35.385593, 39.578423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101784, 35.075592, 39.340851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147709, 0.575355, -0.804456,
		0.965178, 0.261413, 0.009746,
		0.215903, -0.775003, -0.593933,
		39.166553, 34.843090, 39.162670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499809, 35.714642, 39.063465>,  <39.015423, 35.385593, 39.578423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499809, 35.714642, 39.063465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361786, 35.359867, 38.940643>,  <39.278973, 35.147003, 38.866951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361786, 35.359867, 38.940643>,  <39.499809, 35.714642, 39.063465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361786, 35.359867, 38.940643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008068, 0.329939, -0.943968,
		0.938548, -0.323244, -0.121003,
		-0.345055, -0.886935, -0.307056,
		39.258270, 35.093788, 38.848526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987350, 35.373665, 38.498592>,  <39.499809, 35.714642, 39.063465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987350, 35.373665, 38.498592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595898, 35.291443, 38.496227>,  <39.361027, 35.242107, 38.494808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595898, 35.291443, 38.496227>,  <39.987350, 35.373665, 38.498592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595898, 35.291443, 38.496227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040992, 0.223177, -0.973916,
		0.201505, -0.952860, -0.226834,
		-0.978629, -0.205547, -0.005912,
		39.302311, 35.229774, 38.494453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<41.535629, 32.967018, 45.705280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.161850, 32.865257, 45.605610>,  <40.937584, 32.804199, 45.545807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.161850, 32.865257, 45.605610>,  <41.535629, 32.967018, 45.705280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161850, 32.865257, 45.605610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248602, 0.034965, -0.967974,
		0.254968, -0.966466, 0.030572,
		-0.934446, -0.254403, -0.249181,
		40.881516, 32.788937, 45.530857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621002, 32.519524, 45.088970>,  <41.535629, 32.967018, 45.705280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621002, 32.519524, 45.088970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.233311, 32.617790, 45.095215>,  <41.000694, 32.676750, 45.098961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.233311, 32.617790, 45.095215>,  <41.621002, 32.519524, 45.088970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233311, 32.617790, 45.095215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025158, -0.035786, -0.999043,
		-0.244873, -0.968693, 0.040865,
		-0.969228, 0.245667, 0.015608,
		40.942543, 32.691490, 45.099895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.324802, 32.088768, 44.623840>,  <41.621002, 32.519524, 45.088970>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.324802, 32.088768, 44.623840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.105003, 32.420975, 44.660267>,  <40.973125, 32.620300, 44.682121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.105003, 32.420975, 44.660267>,  <41.324802, 32.088768, 44.623840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105003, 32.420975, 44.660267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002762, 0.110798, -0.993839,
		-0.835491, -0.545861, -0.063177,
		-0.549498, 0.830518, 0.091063,
		40.940155, 32.670132, 44.687584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966957, 32.067184, 44.007614>,  <41.324802, 32.088768, 44.623840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966957, 32.067184, 44.007614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.866150, 32.430782, 44.140411>,  <40.805664, 32.648941, 44.220089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.866150, 32.430782, 44.140411>,  <40.966957, 32.067184, 44.007614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866150, 32.430782, 44.140411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334416, 0.240125, -0.911321,
		-0.908103, -0.340695, 0.243465,
		-0.252020, 0.908992, 0.331993,
		40.790543, 32.703480, 44.240009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347054, 32.197498, 43.752254>,  <40.966957, 32.067184, 44.007614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347054, 32.197498, 43.752254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.473881, 32.562668, 43.855045>,  <40.549976, 32.781769, 43.916721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.473881, 32.562668, 43.855045>,  <40.347054, 32.197498, 43.752254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473881, 32.562668, 43.855045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386370, 0.371795, -0.844090,
		-0.866131, 0.168349, 0.470612,
		0.317072, 0.912922, 0.256978,
		40.569004, 32.836544, 43.932140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904728, 32.639881, 43.365990>,  <40.347054, 32.197498, 43.752254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904728, 32.639881, 43.365990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.218567, 32.862301, 43.475685>,  <40.406872, 32.995754, 43.541504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.218567, 32.862301, 43.475685>,  <39.904728, 32.639881, 43.365990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218567, 32.862301, 43.475685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038934, 0.485638, -0.873293,
		-0.618777, 0.674509, 0.402681,
		0.784601, 0.556052, 0.274240,
		40.453949, 33.029118, 43.557957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637253, 33.358490, 43.417614>,  <39.904728, 32.639881, 43.365990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637253, 33.358490, 43.417614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.025860, 33.359886, 43.322830>,  <40.259022, 33.360722, 43.265961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.025860, 33.359886, 43.322830>,  <39.637253, 33.358490, 43.417614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025860, 33.359886, 43.322830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200586, 0.544565, -0.814380,
		0.126197, 0.838711, 0.529752,
		0.971514, 0.003489, -0.236956,
		40.317314, 33.360931, 43.251743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703880, 33.992207, 43.188526>,  <39.637253, 33.358490, 43.417614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703880, 33.992207, 43.188526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.017342, 33.789227, 43.045204>,  <40.205418, 33.667439, 42.959213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.017342, 33.789227, 43.045204>,  <39.703880, 33.992207, 43.188526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017342, 33.789227, 43.045204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027652, 0.547726, -0.836200,
		0.620582, 0.665200, 0.415196,
		0.783654, -0.507450, -0.358303,
		40.252438, 33.636993, 42.937714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241207, 34.503956, 42.936470>,  <39.703880, 33.992207, 43.188526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.241207, 34.503956, 42.936470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.348988, 34.158375, 42.766304>,  <40.413654, 33.951027, 42.664204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.348988, 34.158375, 42.766304>,  <40.241207, 34.503956, 42.936470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348988, 34.158375, 42.766304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161605, 0.394926, -0.904388,
		0.949359, 0.312434, -0.033208,
		0.269447, -0.863955, -0.425417,
		40.429821, 33.899189, 42.638680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856258, 34.850422, 43.000763>,  <40.241207, 34.503956, 42.936470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856258, 34.850422, 43.000763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.014545, 35.213753, 43.054955>,  <41.109516, 35.431751, 43.087467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.014545, 35.213753, 43.054955>,  <40.856258, 34.850422, 43.000763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014545, 35.213753, 43.054955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066022, -0.118998, 0.990697,
		0.915996, -0.400981, 0.012880,
		0.395718, 0.908325, 0.135475,
		41.133263, 35.486252, 43.095596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.447491, 34.816078, 43.423977>,  <40.856258, 34.850422, 43.000763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.447491, 34.816078, 43.423977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.306229, 35.188965, 43.455620>,  <41.221470, 35.412697, 43.474606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.306229, 35.188965, 43.455620>,  <41.447491, 34.816078, 43.423977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.306229, 35.188965, 43.455620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138266, -0.031617, 0.989890,
		0.925291, 0.360522, -0.117728,
		-0.353155, 0.932214, 0.079103,
		41.200283, 35.468628, 43.479351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.817226, 35.050091, 44.031277>,  <41.447491, 34.816078, 43.423977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.817226, 35.050091, 44.031277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.507370, 35.299366, 43.988235>,  <41.321457, 35.448929, 43.962410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.507370, 35.299366, 43.988235>,  <41.817226, 35.050091, 44.031277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507370, 35.299366, 43.988235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037186, 0.124963, 0.991464,
		0.631310, 0.772028, -0.073628,
		-0.774639, 0.623183, -0.107599,
		41.274979, 35.486320, 43.955956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.958782, 35.718723, 44.402050>,  <41.817226, 35.050091, 44.031277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.958782, 35.718723, 44.402050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.561623, 35.686836, 44.366741>,  <41.323326, 35.667706, 44.345554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.561623, 35.686836, 44.366741>,  <41.958782, 35.718723, 44.402050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561623, 35.686836, 44.366741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107633, 0.286408, 0.952043,
		-0.050611, 0.954786, -0.292955,
		-0.992902, -0.079715, -0.088271,
		41.263752, 35.662922, 44.340260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729324, 36.312267, 44.681892>,  <41.958782, 35.718723, 44.402050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729324, 36.312267, 44.681892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.408142, 36.075722, 44.711697>,  <41.215435, 35.933792, 44.729580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.408142, 36.075722, 44.711697>,  <41.729324, 36.312267, 44.681892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408142, 36.075722, 44.711697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113438, 0.274348, 0.954916,
		-0.585149, 0.758299, -0.287372,
		-0.802952, -0.591367, 0.074514,
		41.167255, 35.898312, 44.734051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178516, 36.745064, 44.913433>,  <41.729324, 36.312267, 44.681892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178516, 36.745064, 44.913433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.058899, 36.371746, 44.992958>,  <40.987129, 36.147755, 45.040672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.058899, 36.371746, 44.992958>,  <41.178516, 36.745064, 44.913433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058899, 36.371746, 44.992958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032317, 0.218134, 0.975383,
		-0.953691, 0.285260, -0.095394,
		-0.299046, -0.933297, 0.198814,
		40.969185, 36.091755, 45.052601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662102, 36.828751, 45.329433>,  <41.178516, 36.745064, 44.913433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662102, 36.828751, 45.329433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.767250, 36.450802, 45.407520>,  <40.830338, 36.224033, 45.454372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.767250, 36.450802, 45.407520>,  <40.662102, 36.828751, 45.329433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767250, 36.450802, 45.407520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180393, 0.150638, 0.971991,
		-0.947817, -0.290725, -0.130850,
		0.262871, -0.944874, 0.195222,
		40.846111, 36.167339, 45.466087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114517, 36.484333, 45.655193>,  <40.662102, 36.828751, 45.329433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114517, 36.484333, 45.655193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.398670, 36.234554, 45.785069>,  <40.569160, 36.084686, 45.862995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.398670, 36.234554, 45.785069>,  <40.114517, 36.484333, 45.655193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398670, 36.234554, 45.785069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231875, 0.227930, 0.945665,
		-0.664525, -0.747070, 0.017123,
		0.710381, -0.624447, 0.324692,
		40.611786, 36.047218, 45.882477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859314, 36.207626, 46.272293>,  <40.114517, 36.484333, 45.655193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859314, 36.207626, 46.272293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.235569, 36.080051, 46.318748>,  <40.461323, 36.003506, 46.346622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.235569, 36.080051, 46.318748>,  <39.859314, 36.207626, 46.272293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235569, 36.080051, 46.318748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112018, 0.031296, 0.993213,
		-0.320410, -0.947258, -0.006290,
		0.940632, -0.318940, 0.116138,
		40.517757, 35.984371, 46.353588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838387, 35.659996, 46.714725>,  <39.859314, 36.207626, 46.272293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838387, 35.659996, 46.714725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.212360, 35.798538, 46.745537>,  <40.436745, 35.881664, 46.764023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.212360, 35.798538, 46.745537>,  <39.838387, 35.659996, 46.714725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212360, 35.798538, 46.745537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053888, -0.075971, 0.995653,
		0.350700, -0.935023, -0.052364,
		0.934936, 0.346354, 0.077030,
		40.492840, 35.902443, 46.768646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058212, 35.262474, 47.367958>,  <39.838387, 35.659996, 46.714725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058212, 35.262474, 47.367958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.354149, 35.524170, 47.305225>,  <40.531712, 35.681187, 47.267586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.354149, 35.524170, 47.305225>,  <40.058212, 35.262474, 47.367958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354149, 35.524170, 47.305225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270412, -0.075720, 0.959762,
		0.616042, -0.752484, -0.232937,
		0.739844, 0.654243, -0.156834,
		40.576103, 35.720444, 47.258175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685349, 34.834511, 47.606041>,  <40.058212, 35.262474, 47.367958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685349, 34.834511, 47.606041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.735210, 35.231346, 47.611954>,  <40.765129, 35.469448, 47.615501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.735210, 35.231346, 47.611954>,  <40.685349, 34.834511, 47.606041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735210, 35.231346, 47.611954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276280, -0.049015, 0.959827,
		0.952959, -0.115563, -0.280204,
		0.124654, 0.992090, 0.014781,
		40.772606, 35.528973, 47.616386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326481, 35.039284, 47.829575>,  <40.685349, 34.834511, 47.606041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326481, 35.039284, 47.829575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.116211, 35.371582, 47.902824>,  <40.990047, 35.570961, 47.946774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.116211, 35.371582, 47.902824>,  <41.326481, 35.039284, 47.829575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116211, 35.371582, 47.902824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294374, -0.024323, 0.955381,
		0.798129, 0.556126, -0.231763,
		-0.525675, 0.830742, 0.183122,
		40.958508, 35.620804, 47.957760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778366, 35.529720, 48.092907>,  <41.326481, 35.039284, 47.829575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.778366, 35.529720, 48.092907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.416256, 35.626625, 48.232498>,  <41.198990, 35.684769, 48.316254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.416256, 35.626625, 48.232498>,  <41.778366, 35.529720, 48.092907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.416256, 35.626625, 48.232498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367091, 0.032635, 0.929612,
		0.213821, 0.969662, -0.118476,
		-0.905276, 0.242262, 0.348976,
		41.144672, 35.699303, 48.337193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.242573, 35.147472, 48.379395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.603188, 34.980839, 48.426205>,  <34.819557, 34.880859, 48.454292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.603188, 34.980839, 48.426205>,  <34.242573, 35.147472, 48.379395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603188, 34.980839, 48.426205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216647, 0.200444, -0.955451,
		0.374567, 0.886725, 0.270959,
		0.901534, -0.416582, 0.117027,
		34.873650, 34.855865, 48.461311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885597, 35.686054, 48.301548>,  <34.242573, 35.147472, 48.379395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885597, 35.686054, 48.301548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.961956, 35.304195, 48.210148>,  <35.007771, 35.075081, 48.155308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.961956, 35.304195, 48.210148>,  <34.885597, 35.686054, 48.301548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961956, 35.304195, 48.210148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439297, 0.291257, -0.849816,
		0.877824, 0.061849, 0.474973,
		0.190900, -0.954644, -0.228502,
		35.019226, 35.017803, 48.141598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504295, 35.686710, 47.922779>,  <34.885597, 35.686054, 48.301548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504295, 35.686710, 47.922779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.355362, 35.336166, 47.800564>,  <35.266003, 35.125839, 47.727234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.355362, 35.336166, 47.800564>,  <35.504295, 35.686710, 47.922779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355362, 35.336166, 47.800564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364584, 0.164635, -0.916501,
		0.853491, -0.452638, 0.258209,
		-0.372332, -0.876364, -0.305539,
		35.243664, 35.073257, 47.708900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058914, 35.328979, 47.580639>,  <35.504295, 35.686710, 47.922779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058914, 35.328979, 47.580639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.713104, 35.171650, 47.455490>,  <35.505619, 35.077251, 47.380402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.713104, 35.171650, 47.455490>,  <36.058914, 35.328979, 47.580639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713104, 35.171650, 47.455490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321015, 0.046855, -0.945914,
		0.386713, -0.918204, 0.085756,
		-0.864525, -0.393327, -0.312877,
		35.453747, 35.053654, 47.361626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222939, 34.890743, 46.924347>,  <36.058914, 35.328979, 47.580639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222939, 34.890743, 46.924347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.824005, 34.867393, 46.906792>,  <35.584644, 34.853382, 46.896259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.824005, 34.867393, 46.906792>,  <36.222939, 34.890743, 46.924347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824005, 34.867393, 46.906792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037014, 0.114013, -0.992790,
		0.062954, -0.991763, -0.111548,
		-0.997330, -0.058371, -0.043887,
		35.524807, 34.849880, 46.893627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123333, 34.592564, 46.290989>,  <36.222939, 34.890743, 46.924347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123333, 34.592564, 46.290989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.753071, 34.708252, 46.388573>,  <35.530914, 34.777664, 46.447121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.753071, 34.708252, 46.388573>,  <36.123333, 34.592564, 46.290989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753071, 34.708252, 46.388573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179144, 0.232909, -0.955856,
		-0.333273, -0.928496, -0.163781,
		-0.925655, 0.289220, 0.243957,
		35.475376, 34.795017, 46.461761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645756, 34.269276, 45.864281>,  <36.123333, 34.592564, 46.290989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645756, 34.269276, 45.864281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.442539, 34.589752, 45.990768>,  <35.320610, 34.782036, 46.066662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.442539, 34.589752, 45.990768>,  <35.645756, 34.269276, 45.864281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442539, 34.589752, 45.990768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329658, 0.158312, -0.930732,
		-0.795753, -0.577092, 0.183690,
		-0.508037, 0.801189, 0.316220,
		35.290127, 34.830109, 46.085636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014496, 34.248814, 45.522064>,  <35.645756, 34.269276, 45.864281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014496, 34.248814, 45.522064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.080463, 34.635426, 45.600677>,  <35.120045, 34.867393, 45.647846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.080463, 34.635426, 45.600677>,  <35.014496, 34.248814, 45.522064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080463, 34.635426, 45.600677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226176, 0.231008, -0.946298,
		-0.960024, 0.111614, 0.256703,
		0.164920, 0.966528, 0.196529,
		35.129940, 34.925385, 45.659637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496933, 34.589943, 45.134186>,  <35.014496, 34.248814, 45.522064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496933, 34.589943, 45.134186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.739426, 34.900730, 45.202072>,  <34.884922, 35.087204, 45.242805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.739426, 34.900730, 45.202072>,  <34.496933, 34.589943, 45.134186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739426, 34.900730, 45.202072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220185, 0.369040, -0.902955,
		-0.764199, 0.510032, 0.394801,
		0.606233, 0.776967, 0.169719,
		34.921295, 35.133820, 45.252987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122051, 35.226368, 45.161297>,  <34.496933, 34.589943, 45.134186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122051, 35.226368, 45.161297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.500969, 35.317017, 45.070713>,  <34.728317, 35.371407, 45.016361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.500969, 35.317017, 45.070713>,  <34.122051, 35.226368, 45.161297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500969, 35.317017, 45.070713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308768, 0.457260, -0.834011,
		-0.085453, 0.859975, 0.503132,
		0.947291, 0.226620, -0.226459,
		34.785156, 35.385002, 45.002777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000977, 35.833668, 44.853939>,  <34.122051, 35.226368, 45.161297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000977, 35.833668, 44.853939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.371964, 35.743126, 44.734894>,  <34.594555, 35.688801, 44.663467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.371964, 35.743126, 44.734894>,  <34.000977, 35.833668, 44.853939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371964, 35.743126, 44.734894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127478, 0.556853, -0.820771,
		0.351512, 0.799175, 0.487606,
		0.927464, -0.226351, -0.297618,
		34.650204, 35.675220, 44.645607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371040, 36.568264, 44.630215>,  <34.000977, 35.833668, 44.853939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371040, 36.568264, 44.630215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.547115, 36.276672, 44.420525>,  <34.652760, 36.101715, 44.294708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.547115, 36.276672, 44.420525>,  <34.371040, 36.568264, 44.630215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547115, 36.276672, 44.420525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047028, 0.601752, -0.797297,
		0.896672, 0.326310, 0.299169,
		0.440192, -0.728983, -0.524229,
		34.679173, 36.057976, 44.263256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869057, 36.845669, 44.215195>,  <34.371040, 36.568264, 44.630215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869057, 36.845669, 44.215195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.843163, 36.489357, 44.035275>,  <34.827625, 36.275570, 43.927322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.843163, 36.489357, 44.035275>,  <34.869057, 36.845669, 44.215195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843163, 36.489357, 44.035275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105323, 0.442128, -0.890747,
		0.992329, -0.105034, 0.065199,
		-0.064732, -0.890781, -0.449799,
		34.823742, 36.222122, 43.900333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391224, 36.830429, 43.658119>,  <34.869057, 36.845669, 44.215195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391224, 36.830429, 43.658119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.148636, 36.533566, 43.544003>,  <35.003082, 36.355446, 43.475533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.148636, 36.533566, 43.544003>,  <35.391224, 36.830429, 43.658119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148636, 36.533566, 43.544003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055360, 0.318527, -0.946296,
		0.793177, -0.589694, -0.152091,
		-0.606470, -0.742160, -0.285294,
		34.966694, 36.310917, 43.458416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967537, 36.852875, 43.296703>,  <35.391224, 36.830429, 43.658119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967537, 36.852875, 43.296703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.089989, 37.233280, 43.313927>,  <36.163460, 37.461525, 43.324261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.089989, 37.233280, 43.313927>,  <35.967537, 36.852875, 43.296703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089989, 37.233280, 43.313927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066977, -0.023597, 0.997475,
		0.949630, -0.308243, 0.056473,
		0.306133, 0.951015, 0.043054,
		36.181828, 37.518585, 43.326843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330368, 36.776363, 43.859943>,  <35.967537, 36.852875, 43.296703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330368, 36.776363, 43.859943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.299244, 37.166962, 43.779552>,  <36.280571, 37.401321, 43.731316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.299244, 37.166962, 43.779552>,  <36.330368, 36.776363, 43.859943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299244, 37.166962, 43.779552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104529, 0.208472, 0.972426,
		0.991473, 0.054655, -0.118293,
		-0.077809, 0.976500, -0.200982,
		36.275902, 37.459911, 43.719257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843681, 37.089272, 44.227486>,  <36.330368, 36.776363, 43.859943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843681, 37.089272, 44.227486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.597778, 37.401539, 44.182526>,  <36.450237, 37.588898, 44.155548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.597778, 37.401539, 44.182526>,  <36.843681, 37.089272, 44.227486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597778, 37.401539, 44.182526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098514, 0.065392, 0.992985,
		0.782540, 0.621518, 0.036707,
		-0.614757, 0.780666, -0.112400,
		36.413353, 37.635738, 44.148808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075306, 37.531090, 44.661980>,  <36.843681, 37.089272, 44.227486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075306, 37.531090, 44.661980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.709156, 37.678215, 44.596493>,  <36.489468, 37.766491, 44.557201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.709156, 37.678215, 44.596493>,  <37.075306, 37.531090, 44.661980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709156, 37.678215, 44.596493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136374, 0.099332, 0.985665,
		0.378806, 0.924578, -0.040765,
		-0.915373, 0.367816, -0.163716,
		36.434544, 37.788559, 44.547379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983635, 38.164917, 45.012157>,  <37.075306, 37.531090, 44.661980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983635, 38.164917, 45.012157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.606251, 38.038437, 44.972355>,  <36.379822, 37.962551, 44.948471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.606251, 38.038437, 44.972355>,  <36.983635, 38.164917, 45.012157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606251, 38.038437, 44.972355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095600, -0.027892, 0.995029,
		-0.317402, 0.948283, -0.003913,
		-0.943460, -0.316198, -0.099509,
		36.323212, 37.943577, 44.942501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648544, 38.582394, 45.457764>,  <36.983635, 38.164917, 45.012157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648544, 38.582394, 45.457764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.392193, 38.280766, 45.400265>,  <36.238384, 38.099789, 45.365765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.392193, 38.280766, 45.400265>,  <36.648544, 38.582394, 45.457764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392193, 38.280766, 45.400265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303914, 0.077286, 0.949559,
		-0.704921, 0.652236, -0.278703,
		-0.640877, -0.754066, -0.143743,
		36.199928, 38.054546, 45.357143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023594, 38.777618, 45.640739>,  <36.648544, 38.582394, 45.457764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023594, 38.777618, 45.640739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.002728, 38.380901, 45.687420>,  <35.990208, 38.142872, 45.715427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.002728, 38.380901, 45.687420>,  <36.023594, 38.777618, 45.640739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002728, 38.380901, 45.687420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395082, 0.127826, 0.909709,
		-0.917163, 0.001353, -0.398509,
		-0.052170, -0.991796, 0.116703,
		35.987076, 38.083363, 45.722431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500935, 38.664402, 46.173107>,  <36.023594, 38.777618, 45.640739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500935, 38.664402, 46.173107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.659725, 38.298668, 46.141090>,  <35.755001, 38.079227, 46.121880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.659725, 38.298668, 46.141090>,  <35.500935, 38.664402, 46.173107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659725, 38.298668, 46.141090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254316, -0.193367, 0.947593,
		-0.881890, -0.355820, -0.309292,
		0.396980, -0.914331, -0.080038,
		35.778820, 38.024368, 46.117081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111080, 38.319084, 46.714489>,  <35.500935, 38.664402, 46.173107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111080, 38.319084, 46.714489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.426517, 38.092854, 46.617950>,  <35.615780, 37.957115, 46.560028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.426517, 38.092854, 46.617950>,  <35.111080, 38.319084, 46.714489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426517, 38.092854, 46.617950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080608, -0.294020, 0.952394,
		-0.609609, -0.770506, -0.186273,
		0.788593, -0.565573, -0.241346,
		35.663097, 37.923183, 46.545547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986298, 37.613674, 46.835312>,  <35.111080, 38.319084, 46.714489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986298, 37.613674, 46.835312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.384560, 37.641979, 46.859550>,  <35.623516, 37.658962, 46.874092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.384560, 37.641979, 46.859550>,  <34.986298, 37.613674, 46.835312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384560, 37.641979, 46.859550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026256, -0.410944, 0.911282,
		0.089385, -0.908910, -0.407299,
		0.995651, 0.070761, 0.060597,
		35.683254, 37.663208, 46.877731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218517, 37.024551, 47.134151>,  <34.986298, 37.613674, 46.835312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218517, 37.024551, 47.134151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.508389, 37.292583, 47.198441>,  <35.682312, 37.453403, 47.237015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.508389, 37.292583, 47.198441>,  <35.218517, 37.024551, 47.134151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508389, 37.292583, 47.198441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030525, -0.264231, 0.963976,
		0.688409, -0.693668, -0.211937,
		0.724680, 0.670079, 0.160725,
		35.725792, 37.493607, 47.246658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704334, 36.679455, 47.443207>,  <35.218517, 37.024551, 47.134151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704334, 36.679455, 47.443207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.838238, 37.044262, 47.538002>,  <35.918579, 37.263145, 47.594879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.838238, 37.044262, 47.538002>,  <35.704334, 36.679455, 47.443207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838238, 37.044262, 47.538002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389393, -0.362910, 0.846563,
		0.858085, -0.191111, -0.476620,
		0.334757, 0.912016, 0.236990,
		35.938663, 37.317867, 47.609100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519169, 36.625103, 47.596970>,  <35.704334, 36.679455, 47.443207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519169, 36.625103, 47.596970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.358288, 36.944801, 47.775600>,  <36.261761, 37.136620, 47.882778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.358288, 36.944801, 47.775600>,  <36.519169, 36.625103, 47.596970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358288, 36.944801, 47.775600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378458, -0.299011, 0.875992,
		0.833668, 0.521339, -0.182219,
		-0.402203, 0.799249, 0.446580,
		36.237625, 37.184574, 47.909576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082504, 36.917809, 47.948368>,  <36.519169, 36.625103, 47.596970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082504, 36.917809, 47.948368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.751041, 37.071064, 48.111599>,  <36.552162, 37.163017, 48.209538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.751041, 37.071064, 48.111599>,  <37.082504, 36.917809, 47.948368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751041, 37.071064, 48.111599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336755, -0.241107, 0.910200,
		0.447121, 0.891669, 0.070772,
		-0.828661, 0.383137, 0.408078,
		36.502441, 37.186005, 48.234024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601723, 37.429054, 48.019402>,  <37.082504, 36.917809, 47.948368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601723, 37.429054, 48.019402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.967461, 37.533283, 48.143383>,  <38.186905, 37.595821, 48.217770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.967461, 37.533283, 48.143383>,  <37.601723, 37.429054, 48.019402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967461, 37.533283, 48.143383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211828, 0.344557, -0.914554,
		-0.345107, 0.901876, 0.259847,
		0.914347, 0.260577, 0.309951,
		38.241764, 37.611458, 48.236370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745655, 38.153835, 47.564693>,  <37.601723, 37.429054, 48.019402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745655, 38.153835, 47.564693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.090984, 38.025135, 47.720203>,  <38.298183, 37.947914, 47.813507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.090984, 38.025135, 47.720203>,  <37.745655, 38.153835, 47.564693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090984, 38.025135, 47.720203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466884, 0.216852, -0.857318,
		0.191535, 0.921658, 0.337434,
		0.863327, -0.321749, 0.388772,
		38.349983, 37.928612, 47.836834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270557, 38.805378, 47.585529>,  <37.745655, 38.153835, 47.564693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270557, 38.805378, 47.585529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.442596, 38.444263, 47.585922>,  <38.545818, 38.227596, 47.586159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.442596, 38.444263, 47.585922>,  <38.270557, 38.805378, 47.585529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442596, 38.444263, 47.585922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617851, 0.293558, -0.729441,
		0.658239, 0.314335, 0.684043,
		0.430095, -0.902783, 0.000981,
		38.571625, 38.173428, 47.586216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990410, 38.969563, 47.587986>,  <38.270557, 38.805378, 47.585529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990410, 38.969563, 47.587986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.964016, 38.591370, 47.460415>,  <38.948181, 38.364456, 47.383873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.964016, 38.591370, 47.460415>,  <38.990410, 38.969563, 47.587986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964016, 38.591370, 47.460415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597440, 0.218568, -0.771553,
		0.799194, -0.241454, 0.550444,
		-0.065985, -0.945478, -0.318932,
		38.944221, 38.307728, 47.364735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669407, 38.821835, 47.404831>,  <38.990410, 38.969563, 47.587986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669407, 38.821835, 47.404831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.447933, 38.535793, 47.234154>,  <39.315048, 38.364170, 47.131748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.447933, 38.535793, 47.234154>,  <39.669407, 38.821835, 47.404831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447933, 38.535793, 47.234154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432584, 0.190844, -0.881164,
		0.711552, -0.672466, 0.203673,
		-0.553683, -0.715100, -0.426693,
		39.281830, 38.321262, 47.106144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131893, 38.337284, 46.960167>,  <39.669407, 38.821835, 47.404831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131893, 38.337284, 46.960167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.754120, 38.305988, 46.832466>,  <39.527454, 38.287209, 46.755844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.754120, 38.305988, 46.832466>,  <40.131893, 38.337284, 46.960167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754120, 38.305988, 46.832466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289590, 0.261446, -0.920752,
		0.155511, -0.962041, -0.224259,
		-0.944433, -0.078244, -0.319255,
		39.470791, 38.282516, 46.736691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186695, 37.884296, 46.348343>,  <40.131893, 38.337284, 46.960167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186695, 37.884296, 46.348343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.835197, 38.072979, 46.319221>,  <39.624298, 38.186188, 46.301750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.835197, 38.072979, 46.319221>,  <40.186695, 37.884296, 46.348343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835197, 38.072979, 46.319221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149775, 0.127695, -0.980439,
		-0.453184, -0.872460, -0.182862,
		-0.878744, 0.471707, -0.072804,
		39.571575, 38.214493, 46.297379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751869, 37.509136, 45.870323>,  <40.186695, 37.884296, 46.348343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751869, 37.509136, 45.870323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.598988, 37.878689, 45.862728>,  <39.507259, 38.100422, 45.858170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.598988, 37.878689, 45.862728>,  <39.751869, 37.509136, 45.870323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598988, 37.878689, 45.862728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126237, 0.031846, -0.991489,
		-0.915414, -0.381351, -0.128800,
		-0.382207, 0.923882, -0.018989,
		39.484325, 38.155853, 45.857033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358223, 37.412037, 45.317001>,  <39.751869, 37.509136, 45.870323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358223, 37.412037, 45.317001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.405308, 37.803493, 45.384422>,  <39.433559, 38.038368, 45.424877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.405308, 37.803493, 45.384422>,  <39.358223, 37.412037, 45.317001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405308, 37.803493, 45.384422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059570, 0.162472, -0.984913,
		-0.991260, 0.125975, -0.039173,
		0.117710, 0.978638, 0.168557,
		39.440620, 38.097084, 45.434990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841125, 37.669682, 44.896374>,  <39.358223, 37.412037, 45.317001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841125, 37.669682, 44.896374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.120724, 37.938892, 44.993073>,  <39.288483, 38.100418, 45.051090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.120724, 37.938892, 44.993073>,  <38.841125, 37.669682, 44.896374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120724, 37.938892, 44.993073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150658, 0.191870, -0.969788,
		-0.699075, 0.714300, 0.032720,
		0.698997, 0.673025, 0.241746,
		39.330421, 38.140800, 45.065598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806366, 38.061646, 44.285221>,  <38.841125, 37.669682, 44.896374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806366, 38.061646, 44.285221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.145309, 38.193901, 44.451427>,  <39.348675, 38.273254, 44.551151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.145309, 38.193901, 44.451427>,  <38.806366, 38.061646, 44.285221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145309, 38.193901, 44.451427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368242, 0.197904, -0.908423,
		-0.382592, 0.922774, 0.045941,
		0.847361, 0.330638, 0.415520,
		39.399517, 38.293091, 44.576084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842911, 38.666172, 43.998474>,  <38.806366, 38.061646, 44.285221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842911, 38.666172, 43.998474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.217339, 38.605305, 44.125355>,  <39.441998, 38.568787, 44.201485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.217339, 38.605305, 44.125355>,  <38.842911, 38.666172, 43.998474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217339, 38.605305, 44.125355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351582, 0.372140, -0.859012,
		0.012669, 0.915619, 0.401848,
		0.936071, -0.152166, 0.317200,
		39.498161, 38.559654, 44.220516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298717, 39.167961, 43.800873>,  <38.842911, 38.666172, 43.998474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298717, 39.167961, 43.800873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.560993, 38.873123, 43.866314>,  <39.718357, 38.696220, 43.905579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.560993, 38.873123, 43.866314>,  <39.298717, 39.167961, 43.800873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560993, 38.873123, 43.866314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326152, 0.081092, -0.941833,
		0.680952, 0.670908, 0.293575,
		0.655690, -0.737093, 0.163598,
		39.757702, 38.651997, 43.915394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044659, 39.378201, 43.694798>,  <39.298717, 39.167961, 43.800873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044659, 39.378201, 43.694798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.059677, 38.980907, 43.650852>,  <40.068687, 38.742531, 43.624485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.059677, 38.980907, 43.650852>,  <40.044659, 39.378201, 43.694798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059677, 38.980907, 43.650852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514623, 0.113462, -0.849876,
		0.856594, -0.024633, 0.515403,
		0.037544, -0.993237, -0.109867,
		40.070942, 38.682938, 43.617893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.571108, 28.029890, 33.928638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.918190, 28.215208, 33.856583>,  <29.126438, 28.326399, 33.813347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.918190, 28.215208, 33.856583>,  <28.571108, 28.029890, 33.928638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.918190, 28.215208, 33.856583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195032, 0.650642, 0.733912,
		0.457224, -0.601685, 0.654921,
		0.867703, 0.463293, -0.180141,
		29.178501, 28.354197, 33.802540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763235, 28.139927, 34.557709>,  <28.571108, 28.029890, 33.928638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763235, 28.139927, 34.557709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.995390, 28.392153, 34.351589>,  <29.134684, 28.543489, 34.227917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.995390, 28.392153, 34.351589>,  <28.763235, 28.139927, 34.557709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995390, 28.392153, 34.351589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025898, 0.646757, 0.762256,
		0.813928, -0.429060, 0.391701,
		0.580389, 0.630565, -0.515302,
		29.169506, 28.581322, 34.196999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237822, 28.368977, 35.041538>,  <28.763235, 28.139927, 34.557709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237822, 28.368977, 35.041538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.210554, 28.639534, 34.748188>,  <29.194195, 28.801868, 34.572178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.210554, 28.639534, 34.748188>,  <29.237822, 28.368977, 35.041538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210554, 28.639534, 34.748188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096693, 0.727150, 0.679634,
		0.992977, 0.117242, 0.015835,
		-0.068168, 0.676392, -0.733380,
		29.190104, 28.842451, 34.528175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539494, 28.930328, 35.343834>,  <29.237822, 28.368977, 35.041538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.539494, 28.930328, 35.343834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.341097, 29.090466, 35.035622>,  <29.222059, 29.186548, 34.850693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.341097, 29.090466, 35.035622>,  <29.539494, 28.930328, 35.343834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.341097, 29.090466, 35.035622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218593, 0.801229, 0.557001,
		0.840363, 0.444700, -0.309889,
		-0.495991, 0.400343, -0.770531,
		29.192299, 29.210569, 34.804462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.632839, 29.634275, 35.532879>,  <29.539494, 28.930328, 35.343834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.632839, 29.634275, 35.532879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.375471, 29.640535, 35.226738>,  <29.221050, 29.644291, 35.043053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.375471, 29.640535, 35.226738>,  <29.632839, 29.634275, 35.532879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.375471, 29.640535, 35.226738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203404, 0.960356, 0.190637,
		0.737996, 0.278335, -0.614729,
		-0.643420, 0.015651, -0.765354,
		29.182446, 29.645231, 34.997131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667202, 30.307951, 35.304802>,  <29.632839, 29.634275, 35.532879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.667202, 30.307951, 35.304802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.340771, 30.160131, 35.127060>,  <29.144913, 30.071440, 35.020416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.340771, 30.160131, 35.127060>,  <29.667202, 30.307951, 35.304802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.340771, 30.160131, 35.127060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411537, 0.911390, -0.002152,
		0.405777, 0.181112, -0.895848,
		-0.816077, -0.369548, -0.444356,
		29.095947, 30.049267, 34.993752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515564, 30.594309, 34.737831>,  <29.667202, 30.307951, 35.304802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.515564, 30.594309, 34.737831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.161493, 30.462112, 34.868824>,  <28.949051, 30.382795, 34.947418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.161493, 30.462112, 34.868824>,  <29.515564, 30.594309, 34.737831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.161493, 30.462112, 34.868824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344651, 0.938601, 0.015643,
		-0.312542, -0.099020, -0.944729,
		-0.885174, -0.330491, 0.327479,
		28.895941, 30.362965, 34.967068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053774, 31.128498, 34.431789>,  <29.515564, 30.594309, 34.737831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053774, 31.128498, 34.431789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.840683, 30.933275, 34.708340>,  <28.712830, 30.816141, 34.874271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.840683, 30.933275, 34.708340>,  <29.053774, 31.128498, 34.431789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.840683, 30.933275, 34.708340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602203, 0.792610, 0.095504,
		-0.594605, -0.365472, -0.716153,
		-0.532726, -0.488057, 0.691379,
		28.680864, 30.786858, 34.915752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.345900, 31.107935, 34.179359>,  <29.053774, 31.128498, 34.431789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.345900, 31.107935, 34.179359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.346390, 31.071781, 34.577721>,  <28.346684, 31.050089, 34.816738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.346390, 31.071781, 34.577721>,  <28.345900, 31.107935, 34.179359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.346390, 31.071781, 34.577721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701650, 0.709527, 0.065260,
		-0.712521, -0.698857, -0.062549,
		0.001227, -0.090386, 0.995906,
		28.346758, 31.044664, 34.876492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.639933, 31.101189, 34.413399>,  <28.345900, 31.107935, 34.179359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.639933, 31.101189, 34.413399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.833752, 31.198017, 34.749641>,  <27.950043, 31.256115, 34.951385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.833752, 31.198017, 34.749641>,  <27.639933, 31.101189, 34.413399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.833752, 31.198017, 34.749641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768476, 0.576892, 0.276841,
		-0.417922, -0.780126, 0.465559,
		0.484548, 0.242073, 0.840603,
		27.979116, 31.270639, 35.001823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.042297, 31.443493, 34.896248>,  <27.639933, 31.101189, 34.413399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.042297, 31.443493, 34.896248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.376911, 31.574768, 35.071747>,  <27.577679, 31.653534, 35.177048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.376911, 31.574768, 35.071747>,  <27.042297, 31.443493, 34.896248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376911, 31.574768, 35.071747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516945, 0.738147, 0.433482,
		-0.181597, -0.589432, 0.787142,
		0.836535, 0.328190, 0.438749,
		27.627872, 31.673225, 35.203373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.854399, 31.714928, 35.617062>,  <27.042297, 31.443493, 34.896248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.854399, 31.714928, 35.617062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.205509, 31.879477, 35.518852>,  <27.416176, 31.978207, 35.459927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.205509, 31.879477, 35.518852>,  <26.854399, 31.714928, 35.617062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.205509, 31.879477, 35.518852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303060, 0.873732, 0.380457,
		0.371031, -0.259548, 0.891611,
		0.877776, 0.411373, -0.245523,
		27.468842, 32.002888, 35.445194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.016005, 32.132271, 36.200104>,  <26.854399, 31.714928, 35.617062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.016005, 32.132271, 36.200104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.228809, 32.299118, 35.905357>,  <27.356491, 32.399227, 35.728508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.228809, 32.299118, 35.905357>,  <27.016005, 32.132271, 36.200104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.228809, 32.299118, 35.905357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241971, 0.908847, 0.339774,
		0.811427, -0.002463, 0.584448,
		0.532011, 0.417121, -0.736868,
		27.388412, 32.424255, 35.684296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.136683, 32.794670, 36.511539>,  <27.016005, 32.132271, 36.200104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.136683, 32.794670, 36.511539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.233852, 32.824398, 36.124660>,  <27.292154, 32.842236, 35.892532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.233852, 32.824398, 36.124660>,  <27.136683, 32.794670, 36.511539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233852, 32.824398, 36.124660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316910, 0.948432, -0.006719,
		0.916819, 0.308146, 0.253949,
		0.242923, 0.074319, -0.967194,
		27.306730, 32.846695, 35.834503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.679386, 33.275890, 36.447659>,  <27.136683, 32.794670, 36.511539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.679386, 33.275890, 36.447659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.516512, 33.266663, 36.082436>,  <27.418787, 33.261127, 35.863304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.516512, 33.266663, 36.082436>,  <27.679386, 33.275890, 36.447659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.516512, 33.266663, 36.082436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023980, 0.999606, -0.014560,
		0.913031, 0.015967, -0.407577,
		-0.407184, -0.023068, -0.913055,
		27.394358, 33.259743, 35.808517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925236, 33.887325, 36.151630>,  <27.679386, 33.275890, 36.447659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925236, 33.887325, 36.151630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.618589, 33.770130, 35.923084>,  <27.434601, 33.699814, 35.785957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.618589, 33.770130, 35.923084>,  <27.925236, 33.887325, 36.151630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.618589, 33.770130, 35.923084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324557, 0.944601, -0.048909,
		0.554042, 0.147946, -0.819238,
		-0.766617, -0.292987, -0.571365,
		27.388605, 33.682236, 35.751675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.975906, 34.287453, 35.444073>,  <27.925236, 33.887325, 36.151630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.975906, 34.287453, 35.444073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.599804, 34.179752, 35.527424>,  <27.374142, 34.115131, 35.577435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.599804, 34.179752, 35.527424>,  <27.975906, 34.287453, 35.444073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.599804, 34.179752, 35.527424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280596, 0.959464, -0.026372,
		-0.192833, -0.083267, -0.977692,
		-0.940256, -0.269251, 0.208381,
		27.317728, 34.098976, 35.589939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.393145, 34.475929, 36.067192>,  <27.975906, 34.287453, 35.444073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.393145, 34.475929, 36.067192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.686995, 34.578995, 36.318249>,  <28.863304, 34.640835, 36.468884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.686995, 34.578995, 36.318249>,  <28.393145, 34.475929, 36.067192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.686995, 34.578995, 36.318249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610039, 0.154040, -0.777254,
		-0.296950, 0.953878, -0.044021,
		0.734625, 0.257660, 0.627645,
		28.907381, 34.656292, 36.506542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808008, 35.181923, 36.063717>,  <28.393145, 34.475929, 36.067192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808008, 35.181923, 36.063717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.102205, 34.931911, 36.168320>,  <29.278723, 34.781902, 36.231083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.102205, 34.931911, 36.168320>,  <28.808008, 35.181923, 36.063717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.102205, 34.931911, 36.168320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515459, 0.265703, -0.814680,
		0.439718, 0.733986, 0.517602,
		0.735493, -0.625032, 0.261506,
		29.322853, 34.744400, 36.246773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369062, 35.543869, 35.842686>,  <28.808008, 35.181923, 36.063717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.369062, 35.543869, 35.842686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.470501, 35.162548, 35.908287>,  <29.531364, 34.933754, 35.947647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.470501, 35.162548, 35.908287>,  <29.369062, 35.543869, 35.842686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470501, 35.162548, 35.908287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512363, -0.011426, -0.858693,
		0.820471, 0.301790, 0.485541,
		0.253597, -0.953306, 0.164001,
		29.546579, 34.876556, 35.957489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930387, 35.132355, 35.544067>,  <29.369062, 35.543869, 35.842686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930387, 35.132355, 35.544067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.222507, 35.049129, 35.804337>,  <30.397779, 34.999195, 35.960499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.222507, 35.049129, 35.804337>,  <29.930387, 35.132355, 35.544067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222507, 35.049129, 35.804337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436092, -0.591158, -0.678495,
		0.525821, 0.779256, -0.340986,
		0.730298, -0.208066, 0.650672,
		30.441597, 34.986710, 35.999538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.464851, 35.121262, 35.143799>,  <29.930387, 35.132355, 35.544067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.464851, 35.121262, 35.143799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.602053, 34.933647, 35.469341>,  <30.684374, 34.821079, 35.664665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.602053, 34.933647, 35.469341>,  <30.464851, 35.121262, 35.143799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602053, 34.933647, 35.469341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501077, -0.641484, -0.580879,
		0.794526, 0.607045, 0.014992,
		0.343002, -0.469036, 0.813852,
		30.704954, 34.792938, 35.713497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137262, 34.970375, 35.080387>,  <30.464851, 35.121262, 35.143799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137262, 34.970375, 35.080387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.036989, 34.716362, 35.372662>,  <30.976826, 34.563953, 35.548027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.036989, 34.716362, 35.372662>,  <31.137262, 34.970375, 35.080387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036989, 34.716362, 35.372662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457409, -0.742912, -0.488731,
		0.853191, 0.211705, 0.476702,
		-0.250681, -0.635029, 0.730682,
		30.961784, 34.525852, 35.591866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781998, 34.761940, 35.373299>,  <31.137262, 34.970375, 35.080387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781998, 34.761940, 35.373299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.490395, 34.499996, 35.452999>,  <31.315432, 34.342831, 35.500820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.490395, 34.499996, 35.452999>,  <31.781998, 34.761940, 35.373299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490395, 34.499996, 35.452999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562444, -0.738976, -0.370905,
		0.390131, -0.158328, 0.907045,
		-0.729009, -0.654863, 0.199247,
		31.271692, 34.303535, 35.512772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020237, 34.252102, 35.706470>,  <31.781998, 34.761940, 35.373299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020237, 34.252102, 35.706470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.693087, 34.085426, 35.547752>,  <31.496796, 33.985420, 35.452522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.693087, 34.085426, 35.547752>,  <32.020237, 34.252102, 35.706470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693087, 34.085426, 35.547752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562234, -0.725390, -0.397117,
		-0.122355, -0.547884, 0.827558,
		-0.817877, -0.416692, -0.396795,
		31.447723, 33.960419, 35.428715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069836, 33.542934, 35.829632>,  <32.020237, 34.252102, 35.706470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069836, 33.542934, 35.829632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.794651, 33.570770, 35.540668>,  <31.629541, 33.587471, 35.367290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.794651, 33.570770, 35.540668>,  <32.069836, 33.542934, 35.829632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794651, 33.570770, 35.540668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419768, -0.773847, -0.474294,
		-0.592035, -0.629539, 0.503167,
		-0.687961, 0.069585, -0.722405,
		31.588263, 33.591644, 35.323948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007442, 32.827202, 35.615807>,  <32.069836, 33.542934, 35.829632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007442, 32.827202, 35.615807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.831184, 33.023510, 35.315147>,  <31.725428, 33.141293, 35.134750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.831184, 33.023510, 35.315147>,  <32.007442, 32.827202, 35.615807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831184, 33.023510, 35.315147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284676, -0.717708, -0.635495,
		-0.851345, -0.494007, 0.176548,
		-0.440649, 0.490767, -0.751649,
		31.698990, 33.170738, 35.089653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833752, 32.325352, 35.279552>,  <32.007442, 32.827202, 35.615807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833752, 32.325352, 35.279552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.824589, 32.630695, 35.021324>,  <31.819092, 32.813900, 34.866386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.824589, 32.630695, 35.021324>,  <31.833752, 32.325352, 35.279552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824589, 32.630695, 35.021324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204254, -0.628543, -0.750476,
		-0.978650, -0.149052, -0.141521,
		-0.022908, 0.763360, -0.645568,
		31.817717, 32.859703, 34.827656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363880, 32.142189, 34.694290>,  <31.833752, 32.325352, 35.279552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363880, 32.142189, 34.694290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.560226, 32.454018, 34.538696>,  <31.678034, 32.641117, 34.445339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.560226, 32.454018, 34.538696>,  <31.363880, 32.142189, 34.694290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560226, 32.454018, 34.538696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102383, -0.495001, -0.862839,
		-0.865198, 0.383714, -0.322795,
		0.490867, 0.779575, -0.388988,
		31.707487, 32.687889, 34.422001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058441, 32.209141, 34.068214>,  <31.363880, 32.142189, 34.694290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058441, 32.209141, 34.068214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.429686, 32.357689, 34.078705>,  <31.652433, 32.446819, 34.084999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.429686, 32.357689, 34.078705>,  <31.058441, 32.209141, 34.068214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429686, 32.357689, 34.078705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200273, -0.438650, -0.876057,
		-0.313842, 0.818332, -0.481493,
		0.928113, 0.371374, 0.026223,
		31.708120, 32.469101, 34.086571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177483, 32.414116, 33.246353>,  <31.058441, 32.209141, 34.068214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177483, 32.414116, 33.246353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.524836, 32.398483, 33.444096>,  <31.733248, 32.389103, 33.562740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.524836, 32.398483, 33.444096>,  <31.177483, 32.414116, 33.246353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524836, 32.398483, 33.444096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415234, -0.487675, -0.767954,
		0.271097, 0.872150, -0.407261,
		0.868382, -0.039081, 0.494354,
		31.785351, 32.386761, 33.592403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723513, 32.530197, 32.764988>,  <31.177483, 32.414116, 33.246353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723513, 32.530197, 32.764988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.908155, 32.347977, 33.069458>,  <32.018940, 32.238644, 33.252140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.908155, 32.347977, 33.069458>,  <31.723513, 32.530197, 32.764988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908155, 32.347977, 33.069458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326032, -0.710889, -0.623169,
		0.824997, 0.535829, -0.179630,
		0.461609, -0.455548, 0.761179,
		32.046638, 32.211311, 33.297813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453682, 32.330135, 32.547871>,  <31.723513, 32.530197, 32.764988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453682, 32.330135, 32.547871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.343353, 32.099892, 32.855789>,  <32.277157, 31.961744, 33.040543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.343353, 32.099892, 32.855789>,  <32.453682, 32.330135, 32.547871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343353, 32.099892, 32.855789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297497, -0.812665, -0.501070,
		0.914012, 0.090807, 0.395395,
		-0.275823, -0.575613, 0.769800,
		32.260605, 31.927208, 33.086731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909489, 31.742582, 32.511112>,  <32.453682, 32.330135, 32.547871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909489, 31.742582, 32.511112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.616592, 31.616035, 32.752354>,  <32.440857, 31.540108, 32.897099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.616592, 31.616035, 32.752354>,  <32.909489, 31.742582, 32.511112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616592, 31.616035, 32.752354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261255, -0.948291, -0.180248,
		0.628945, 0.025580, 0.777029,
		-0.732239, -0.316368, 0.603106,
		32.396919, 31.521126, 32.933285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165688, 31.133564, 32.785126>,  <32.909489, 31.742582, 32.511112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165688, 31.133564, 32.785126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.777260, 31.135803, 32.880623>,  <32.544205, 31.137146, 32.937920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.777260, 31.135803, 32.880623>,  <33.165688, 31.133564, 32.785126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777260, 31.135803, 32.880623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009384, -0.998059, 0.061566,
		0.238621, 0.062025, 0.969130,
		-0.971067, 0.005597, 0.238739,
		32.485939, 31.137482, 32.952244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040901, 30.796787, 33.389942>,  <33.165688, 31.133564, 32.785126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040901, 30.796787, 33.389942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.696499, 30.781952, 33.187042>,  <32.489857, 30.773050, 33.065304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.696499, 30.781952, 33.187042>,  <33.040901, 30.796787, 33.389942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696499, 30.781952, 33.187042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064661, -0.981263, 0.181501,
		-0.504472, 0.189072, 0.842472,
		-0.861003, -0.037087, -0.507245,
		32.438198, 30.770826, 33.034870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517765, 30.266403, 33.788258>,  <33.040901, 30.796787, 33.389942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517765, 30.266403, 33.788258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.409874, 30.316494, 33.406353>,  <32.345139, 30.346548, 33.177212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.409874, 30.316494, 33.406353>,  <32.517765, 30.266403, 33.788258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409874, 30.316494, 33.406353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072377, -0.991339, -0.109580,
		-0.960212, 0.039546, 0.276456,
		-0.269729, 0.125229, -0.954759,
		32.328957, 30.354063, 33.119926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842743, 29.978987, 33.700706>,  <32.517765, 30.266403, 33.788258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842743, 29.978987, 33.700706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.991716, 29.992588, 33.329731>,  <32.081100, 30.000748, 33.107147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.991716, 29.992588, 33.329731>,  <31.842743, 29.978987, 33.700706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991716, 29.992588, 33.329731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234413, -0.963479, -0.129457,
		-0.897966, 0.265617, -0.350862,
		0.372434, 0.034002, -0.927436,
		32.103447, 30.002789, 33.051498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238482, 29.824104, 33.134777>,  <31.842743, 29.978987, 33.700706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238482, 29.824104, 33.134777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.602108, 29.727678, 32.998840>,  <31.820284, 29.669823, 32.917278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.602108, 29.727678, 32.998840>,  <31.238482, 29.824104, 33.134777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602108, 29.727678, 32.998840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361338, -0.862234, -0.354947,
		-0.207455, 0.445466, -0.870932,
		0.909064, -0.241065, -0.339838,
		31.874826, 29.655359, 32.896889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065355, 29.461449, 32.574581>,  <31.238482, 29.824104, 33.134777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065355, 29.461449, 32.574581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.445339, 29.356279, 32.642048>,  <31.673330, 29.293179, 32.682526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.445339, 29.356279, 32.642048>,  <31.065355, 29.461449, 32.574581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445339, 29.356279, 32.642048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213405, -0.940553, -0.264232,
		0.228110, 0.215016, -0.949597,
		0.949960, -0.262923, 0.168664,
		31.730328, 29.277403, 32.692646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249088, 29.102459, 31.986309>,  <31.065355, 29.461449, 32.574581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249088, 29.102459, 31.986309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.496222, 28.994665, 32.281784>,  <31.644501, 28.929989, 32.459068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.496222, 28.994665, 32.281784>,  <31.249088, 29.102459, 31.986309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496222, 28.994665, 32.281784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139223, -0.962086, -0.234536,
		0.773885, 0.042062, -0.631927,
		0.617833, -0.269483, 0.738689,
		31.681572, 28.913820, 32.503391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666359, 28.575350, 31.688059>,  <31.249088, 29.102459, 31.986309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666359, 28.575350, 31.688059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.694429, 28.561979, 32.086849>,  <31.711271, 28.553957, 32.326122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.694429, 28.561979, 32.086849>,  <31.666359, 28.575350, 31.688059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694429, 28.561979, 32.086849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176004, -0.983344, -0.045359,
		0.981885, 0.178655, -0.063124,
		0.070176, -0.033427, 0.996974,
		31.715483, 28.551950, 32.385941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.921246, 35.872097, 48.777611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.524395, 35.824890, 48.794376>,  <41.286285, 35.796566, 48.804436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.524395, 35.824890, 48.794376>,  <41.921246, 35.872097, 48.777611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524395, 35.824890, 48.794376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049929, -0.065839, 0.996580,
		-0.114851, 0.990827, 0.071213,
		-0.992127, -0.118014, 0.041909,
		41.226757, 35.789486, 48.806950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677990, 36.310692, 49.233845>,  <41.921246, 35.872097, 48.777611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677990, 36.310692, 49.233845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.377136, 36.047424, 49.220531>,  <41.196625, 35.889465, 49.212543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.377136, 36.047424, 49.220531>,  <41.677990, 36.310692, 49.233845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377136, 36.047424, 49.220531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015825, -0.032458, 0.999348,
		-0.658821, 0.752170, 0.013997,
		-0.752134, -0.658169, -0.033287,
		41.151497, 35.849972, 49.210545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300034, 36.596691, 49.709953>,  <41.677990, 36.310692, 49.233845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300034, 36.596691, 49.709953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.168304, 36.224125, 49.647972>,  <41.089268, 36.000584, 49.610783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.168304, 36.224125, 49.647972>,  <41.300034, 36.596691, 49.709953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168304, 36.224125, 49.647972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189252, -0.095667, 0.977257,
		-0.925055, 0.351163, -0.144766,
		-0.329327, -0.931414, -0.154955,
		41.069508, 35.944702, 49.601486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653900, 36.517960, 50.012329>,  <41.300034, 36.596691, 49.709953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653900, 36.517960, 50.012329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.783203, 36.140434, 49.984856>,  <40.860786, 35.913918, 49.968372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.783203, 36.140434, 49.984856>,  <40.653900, 36.517960, 50.012329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783203, 36.140434, 49.984856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390450, -0.199140, 0.898828,
		-0.862005, -0.263737, -0.432887,
		0.323259, -0.943815, -0.068683,
		40.880180, 35.857288, 49.964252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110264, 36.132996, 50.324841>,  <40.653900, 36.517960, 50.012329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110264, 36.132996, 50.324841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.440346, 35.907101, 50.329136>,  <40.638393, 35.771564, 50.331711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.440346, 35.907101, 50.329136>,  <40.110264, 36.132996, 50.324841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440346, 35.907101, 50.329136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184566, -0.251628, 0.950063,
		-0.533835, -0.785973, -0.311875,
		0.825200, -0.564739, 0.010736,
		40.687904, 35.737679, 50.332355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944660, 35.669250, 50.691219>,  <40.110264, 36.132996, 50.324841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944660, 35.669250, 50.691219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.343925, 35.645512, 50.696075>,  <40.583485, 35.631268, 50.698990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.343925, 35.645512, 50.696075>,  <39.944660, 35.669250, 50.691219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343925, 35.645512, 50.696075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017305, -0.087265, 0.996035,
		-0.058046, -0.994416, -0.088131,
		0.998164, -0.059341, 0.012143,
		40.643375, 35.627708, 50.699718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093052, 35.131084, 51.256485>,  <39.944660, 35.669250, 50.691219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093052, 35.131084, 51.256485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.439198, 35.327175, 51.214863>,  <40.646885, 35.444828, 51.189888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.439198, 35.327175, 51.214863>,  <40.093052, 35.131084, 51.256485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439198, 35.327175, 51.214863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127526, -0.014612, 0.991728,
		0.484648, -0.871474, -0.075161,
		0.865363, 0.490224, -0.104054,
		40.698807, 35.474243, 51.183647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592445, 34.762482, 51.657860>,  <40.093052, 35.131084, 51.256485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592445, 34.762482, 51.657860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.740818, 35.132664, 51.627007>,  <40.829842, 35.354771, 51.608494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.740818, 35.132664, 51.627007>,  <40.592445, 34.762482, 51.657860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740818, 35.132664, 51.627007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157140, 0.019314, 0.987387,
		0.915268, -0.378376, -0.138261,
		0.370933, 0.925450, -0.077136,
		40.852097, 35.410297, 51.603867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367245, 34.857059, 51.846245>,  <40.592445, 34.762482, 51.657860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367245, 34.857059, 51.846245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.159958, 35.197037, 51.884304>,  <41.035587, 35.401024, 51.907139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.159958, 35.197037, 51.884304>,  <41.367245, 34.857059, 51.846245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159958, 35.197037, 51.884304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000482, -0.110958, 0.993825,
		0.855252, 0.515058, 0.057090,
		-0.518213, 0.849943, 0.095145,
		41.004494, 35.452019, 51.912849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761600, 35.081245, 52.331196>,  <41.367245, 34.857059, 51.846245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.761600, 35.081245, 52.331196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.440907, 35.320175, 52.339386>,  <41.248489, 35.463531, 52.344299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.440907, 35.320175, 52.339386>,  <41.761600, 35.081245, 52.331196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.440907, 35.320175, 52.339386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020075, -0.061149, 0.997927,
		0.597338, 0.799666, 0.061017,
		-0.801739, 0.597324, 0.020473,
		41.200386, 35.499371, 52.345528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881424, 35.622448, 52.841389>,  <41.761600, 35.081245, 52.331196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.881424, 35.622448, 52.841389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.485840, 35.574940, 52.805935>,  <41.248489, 35.546432, 52.784660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.485840, 35.574940, 52.805935>,  <41.881424, 35.622448, 52.841389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485840, 35.574940, 52.805935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095236, 0.051059, 0.994144,
		-0.113553, 0.991607, -0.061806,
		-0.988957, -0.118775, -0.088639,
		41.189152, 35.539307, 52.779343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591045, 36.241901, 53.348999>,  <41.881424, 35.622448, 52.841389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.591045, 36.241901, 53.348999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.282784, 35.988743, 53.319229>,  <41.097828, 35.836849, 53.301365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.282784, 35.988743, 53.319229>,  <41.591045, 36.241901, 53.348999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282784, 35.988743, 53.319229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214437, 0.147564, 0.965527,
		-0.600095, 0.760044, -0.249436,
		-0.770651, -0.632896, -0.074429,
		41.051590, 35.798874, 53.296902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038609, 36.584976, 53.724705>,  <41.591045, 36.241901, 53.348999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038609, 36.584976, 53.724705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.912647, 36.205341, 53.728146>,  <40.837070, 35.977562, 53.730209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.912647, 36.205341, 53.728146>,  <41.038609, 36.584976, 53.724705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912647, 36.205341, 53.728146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295871, 0.106777, 0.949241,
		-0.901828, 0.296377, -0.314431,
		-0.314907, -0.949083, 0.008606,
		40.818176, 35.920616, 53.730728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299381, 36.431824, 53.959507>,  <41.038609, 36.584976, 53.724705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299381, 36.431824, 53.959507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.515244, 36.111282, 54.062737>,  <40.644760, 35.918957, 54.124676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.515244, 36.111282, 54.062737>,  <40.299381, 36.431824, 53.959507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515244, 36.111282, 54.062737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281640, 0.117039, 0.952355,
		-0.793378, -0.586630, -0.162532,
		0.539657, -0.801354, 0.258075,
		40.677139, 35.870876, 54.140160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844238, 35.948814, 53.561295>,  <40.299381, 36.431824, 53.959507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844238, 35.948814, 53.561295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.557968, 36.172321, 53.728909>,  <39.386208, 36.306427, 53.829479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.557968, 36.172321, 53.728909>,  <39.844238, 35.948814, 53.561295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557968, 36.172321, 53.728909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289332, 0.308879, -0.906025,
		-0.635690, -0.769657, -0.059386,
		-0.715672, 0.558769, 0.419037,
		39.343266, 36.339951, 53.854618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230228, 35.704758, 53.259552>,  <39.844238, 35.948814, 53.561295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230228, 35.704758, 53.259552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.171925, 36.078499, 53.389626>,  <39.136940, 36.302742, 53.467670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.171925, 36.078499, 53.389626>,  <39.230228, 35.704758, 53.259552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171925, 36.078499, 53.389626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396892, 0.245856, -0.884326,
		-0.906218, -0.257963, 0.334999,
		-0.145762, 0.934350, 0.325183,
		39.128197, 36.358803, 53.487179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605968, 35.894428, 53.066208>,  <39.230228, 35.704758, 53.259552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605968, 35.894428, 53.066208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.765301, 36.256512, 53.125439>,  <38.860901, 36.473763, 53.160976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.765301, 36.256512, 53.125439>,  <38.605968, 35.894428, 53.066208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765301, 36.256512, 53.125439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389821, 0.313203, -0.865993,
		-0.830285, 0.287225, 0.477627,
		0.398329, 0.905210, 0.148081,
		38.884800, 36.528076, 53.169865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054062, 36.359909, 53.084904>,  <38.605968, 35.894428, 53.066208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054062, 36.359909, 53.084904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.377094, 36.569576, 52.976788>,  <38.570915, 36.695377, 52.911919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.377094, 36.569576, 52.976788>,  <38.054062, 36.359909, 53.084904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377094, 36.569576, 52.976788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482035, 0.322612, -0.814594,
		-0.339783, 0.788144, 0.513202,
		0.807583, 0.524167, -0.270295,
		38.619370, 36.726826, 52.895699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760674, 37.003910, 52.799152>,  <38.054062, 36.359909, 53.084904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760674, 37.003910, 52.799152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.140766, 37.001465, 52.674561>,  <38.368820, 37.000000, 52.599804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.140766, 37.001465, 52.674561>,  <37.760674, 37.003910, 52.799152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140766, 37.001465, 52.674561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301927, 0.228404, -0.925566,
		0.076800, 0.973547, 0.215192,
		0.950233, -0.006111, -0.311482,
		38.425835, 36.999630, 52.581116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778099, 37.560429, 52.389591>,  <37.760674, 37.003910, 52.799152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778099, 37.560429, 52.389591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.078823, 37.331215, 52.259102>,  <38.259258, 37.193687, 52.180809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.078823, 37.331215, 52.259102>,  <37.778099, 37.560429, 52.389591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078823, 37.331215, 52.259102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163563, 0.317214, -0.934143,
		0.638776, 0.755653, 0.144757,
		0.751806, -0.573031, -0.326225,
		38.304363, 37.159306, 52.161236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118576, 37.996681, 51.932625>,  <37.778099, 37.560429, 52.389591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118576, 37.996681, 51.932625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.241211, 37.627605, 51.839111>,  <38.314793, 37.406162, 51.783005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.241211, 37.627605, 51.839111>,  <38.118576, 37.996681, 51.932625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241211, 37.627605, 51.839111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147598, 0.288725, -0.945966,
		0.940329, 0.255516, 0.224706,
		0.306588, -0.922686, -0.233783,
		38.333187, 37.350800, 51.768978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859341, 38.006794, 51.674286>,  <38.118576, 37.996681, 51.932625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859341, 38.006794, 51.674286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.671024, 37.695251, 51.508518>,  <38.558033, 37.508327, 51.409058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.671024, 37.695251, 51.508518>,  <38.859341, 38.006794, 51.674286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671024, 37.695251, 51.508518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167715, 0.382161, -0.908749,
		0.866157, -0.497335, -0.049292,
		-0.470790, -0.778852, -0.414422,
		38.529789, 37.461597, 51.384193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225727, 37.925701, 51.026348>,  <38.859341, 38.006794, 51.674286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225727, 37.925701, 51.026348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.910892, 37.692211, 50.946598>,  <38.721992, 37.552116, 50.898746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.910892, 37.692211, 50.946598>,  <39.225727, 37.925701, 51.026348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910892, 37.692211, 50.946598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110115, 0.185065, -0.976538,
		0.606932, -0.790576, -0.081385,
		-0.787089, -0.583730, -0.199376,
		38.674767, 37.517094, 50.886784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391975, 37.705585, 50.315086>,  <39.225727, 37.925701, 51.026348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391975, 37.705585, 50.315086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.017780, 37.568680, 50.350243>,  <38.793262, 37.486538, 50.371338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.017780, 37.568680, 50.350243>,  <39.391975, 37.705585, 50.315086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017780, 37.568680, 50.350243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115964, 0.062386, -0.991292,
		0.333801, -0.937530, -0.098052,
		-0.935483, -0.342265, 0.087895,
		38.737137, 37.466000, 50.376610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409592, 37.108540, 49.899918>,  <39.391975, 37.705585, 50.315086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409592, 37.108540, 49.899918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.022957, 37.209507, 49.917824>,  <38.790977, 37.270088, 49.928566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.022957, 37.209507, 49.917824>,  <39.409592, 37.108540, 49.899918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022957, 37.209507, 49.917824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075424, -0.113131, -0.990713,
		-0.245009, -0.960982, 0.128389,
		-0.966582, 0.252417, 0.044763,
		38.732983, 37.285233, 49.931252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038074, 36.609772, 49.491692>,  <39.409592, 37.108540, 49.899918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038074, 36.609772, 49.491692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.813683, 36.940781, 49.500778>,  <38.679047, 37.139385, 49.506229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.813683, 36.940781, 49.500778>,  <39.038074, 36.609772, 49.491692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813683, 36.940781, 49.500778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101019, -0.041191, -0.994032,
		-0.821643, -0.559926, 0.106702,
		-0.560979, 0.827518, 0.022719,
		38.645390, 37.189037, 49.507595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611248, 36.526188, 48.981113>,  <39.038074, 36.609772, 49.491692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611248, 36.526188, 48.981113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.566231, 36.919285, 49.039848>,  <38.539219, 37.155144, 49.075089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.566231, 36.919285, 49.039848>,  <38.611248, 36.526188, 48.981113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566231, 36.919285, 49.039848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010147, 0.146627, -0.989140,
		-0.993595, -0.112815, -0.006530,
		-0.112547, 0.982738, 0.146833,
		38.532467, 37.214108, 49.083897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955883, 36.715660, 48.660301>,  <38.611248, 36.526188, 48.981113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955883, 36.715660, 48.660301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.201141, 37.031315, 48.674824>,  <38.348297, 37.220707, 48.683537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.201141, 37.031315, 48.674824>,  <37.955883, 36.715660, 48.660301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201141, 37.031315, 48.674824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161502, 0.170206, -0.972084,
		-0.773283, 0.590168, 0.231809,
		0.613148, 0.789133, 0.036304,
		38.385086, 37.268055, 48.685715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367889, 37.300411, 48.733250>,  <37.955883, 36.715660, 48.660301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367889, 37.300411, 48.733250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.969822, 37.261139, 48.732784>,  <36.730980, 37.237576, 48.732506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.969822, 37.261139, 48.732784>,  <37.367889, 37.300411, 48.733250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969822, 37.261139, 48.732784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047462, -0.491419, 0.869629,
		-0.085952, 0.865372, 0.493705,
		-0.995168, -0.098178, -0.001166,
		36.671272, 37.231686, 48.732433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147320, 37.430206, 49.414185>,  <37.367889, 37.300411, 48.733250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147320, 37.430206, 49.414185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.849934, 37.215305, 49.254875>,  <36.671501, 37.086365, 49.159290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.849934, 37.215305, 49.254875>,  <37.147320, 37.430206, 49.414185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849934, 37.215305, 49.254875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057087, -0.542373, 0.838196,
		-0.666333, 0.645907, 0.372566,
		-0.743466, -0.537249, -0.398274,
		36.626892, 37.054131, 49.135391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638584, 37.315559, 50.014431>,  <37.147320, 37.430206, 49.414185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638584, 37.315559, 50.014431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.536003, 37.030891, 49.752819>,  <36.474457, 36.860088, 49.595852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.536003, 37.030891, 49.752819>,  <36.638584, 37.315559, 50.014431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536003, 37.030891, 49.752819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120796, -0.647757, 0.752210,
		-0.958979, 0.271909, 0.080150,
		-0.256450, -0.711672, -0.654031,
		36.459068, 36.817390, 49.556610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019642, 37.004753, 50.195854>,  <36.638584, 37.315559, 50.014431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019642, 37.004753, 50.195854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.193359, 36.728851, 49.964119>,  <36.297588, 36.563309, 49.825077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.193359, 36.728851, 49.964119>,  <36.019642, 37.004753, 50.195854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193359, 36.728851, 49.964119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045491, -0.625538, 0.778866,
		-0.899623, -0.364610, -0.240289,
		0.434292, -0.689754, -0.579335,
		36.323647, 36.521927, 49.790318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600269, 36.468147, 50.360813>,  <36.019642, 37.004753, 50.195854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600269, 36.468147, 50.360813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.916939, 36.316181, 50.169430>,  <36.106941, 36.225002, 50.054600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.916939, 36.316181, 50.169430>,  <35.600269, 36.468147, 50.360813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916939, 36.316181, 50.169430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012485, -0.793037, 0.609046,
		-0.610816, -0.476193, -0.632570,
		0.791674, -0.379912, -0.478454,
		36.154442, 36.202206, 50.025894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389416, 35.830734, 50.263691>,  <35.600269, 36.468147, 50.360813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389416, 35.830734, 50.263691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.788940, 35.820812, 50.246914>,  <36.028656, 35.814857, 50.236847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.788940, 35.820812, 50.246914>,  <35.389416, 35.830734, 50.263691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788940, 35.820812, 50.246914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005066, -0.908913, 0.416956,
		-0.048467, -0.416248, -0.907958,
		0.998812, -0.024809, -0.041943,
		36.088585, 35.813370, 50.234329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616329, 35.211472, 50.189934>,  <35.389416, 35.830734, 50.263691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616329, 35.211472, 50.189934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.965775, 35.332737, 50.342190>,  <36.175442, 35.405495, 50.433544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.965775, 35.332737, 50.342190>,  <35.616329, 35.211472, 50.189934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965775, 35.332737, 50.342190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031041, -0.815343, 0.578146,
		0.485622, -0.493263, -0.721708,
		0.873618, 0.303163, 0.380637,
		36.227859, 35.423687, 50.456379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047066, 34.575939, 50.332844>,  <35.616329, 35.211472, 50.189934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047066, 34.575939, 50.332844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.137814, 34.875362, 50.582062>,  <36.192261, 35.055016, 50.731594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.137814, 34.875362, 50.582062>,  <36.047066, 34.575939, 50.332844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137814, 34.875362, 50.582062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045002, -0.647101, 0.761075,
		0.972885, -0.144625, -0.180494,
		0.226869, 0.748561, 0.623047,
		36.205875, 35.099930, 50.768974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338940, 33.928127, 50.751770>,  <36.047066, 34.575939, 50.332844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338940, 33.928127, 50.751770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.997292, 33.720295, 50.742718>,  <35.792301, 33.595596, 50.737286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.997292, 33.720295, 50.742718>,  <36.338940, 33.928127, 50.751770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997292, 33.720295, 50.742718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077053, 0.169463, -0.982520,
		0.514332, -0.837449, -0.184777,
		-0.854123, -0.519579, -0.022633,
		35.741055, 33.564423, 50.735928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321819, 33.587818, 50.185181>,  <36.338940, 33.928127, 50.751770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321819, 33.587818, 50.185181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.931889, 33.631981, 50.262669>,  <35.697929, 33.658478, 50.309162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.931889, 33.631981, 50.262669>,  <36.321819, 33.587818, 50.185181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931889, 33.631981, 50.262669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169032, 0.200661, -0.964968,
		-0.145407, -0.973420, -0.176948,
		-0.974825, 0.110403, 0.193716,
		35.639442, 33.665100, 50.320782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006027, 33.300354, 49.627308>,  <36.321819, 33.587818, 50.185181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006027, 33.300354, 49.627308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.726128, 33.521950, 49.807728>,  <35.558189, 33.654907, 49.915981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.726128, 33.521950, 49.807728>,  <36.006027, 33.300354, 49.627308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726128, 33.521950, 49.807728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426056, 0.183179, -0.885958,
		-0.573439, -0.812118, 0.107854,
		-0.699746, 0.553995, 0.451050,
		35.516205, 33.688148, 49.943043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297039, 33.066425, 49.359577>,  <36.006027, 33.300354, 49.627308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297039, 33.066425, 49.359577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.229084, 33.431686, 49.507790>,  <35.188313, 33.650841, 49.596718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.229084, 33.431686, 49.507790>,  <35.297039, 33.066425, 49.359577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229084, 33.431686, 49.507790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557190, 0.221121, -0.800403,
		-0.812820, -0.342437, 0.471233,
		-0.169888, 0.913150, 0.370534,
		35.178116, 33.705631, 49.618950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565117, 33.147095, 49.336407>,  <35.297039, 33.066425, 49.359577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565117, 33.147095, 49.336407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.735744, 33.506752, 49.375576>,  <34.838120, 33.722546, 49.399078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.735744, 33.506752, 49.375576>,  <34.565117, 33.147095, 49.336407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735744, 33.506752, 49.375576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355270, 0.266136, -0.896078,
		-0.831759, 0.347449, 0.432962,
		0.426568, 0.899139, 0.097923,
		34.863716, 33.776493, 49.404953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079498, 33.585537, 49.087429>,  <34.565117, 33.147095, 49.336407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079498, 33.585537, 49.087429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.434681, 33.764843, 49.046249>,  <34.647789, 33.872425, 49.021542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.434681, 33.764843, 49.046249>,  <34.079498, 33.585537, 49.087429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434681, 33.764843, 49.046249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204612, 0.184545, -0.961289,
		-0.411911, 0.874645, 0.255588,
		0.887954, 0.448262, -0.102946,
		34.701069, 33.899323, 49.015366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.538712, 32.550652, 52.517239> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.655094, 32.915989, 52.403294>,  <39.724922, 33.135193, 52.334927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.655094, 32.915989, 52.403294>,  <39.538712, 32.550652, 52.517239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655094, 32.915989, 52.403294> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169772, -0.342310, -0.924122,
		-0.941553, 0.220517, -0.254657,
		0.290956, 0.913343, -0.284865,
		39.742382, 33.189991, 52.317833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278126, 32.558250, 51.716080>,  <39.538712, 32.550652, 52.517239>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278126, 32.558250, 51.716080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.543198, 32.852234, 51.773617>,  <39.702240, 33.028622, 51.808140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.543198, 32.852234, 51.773617>,  <39.278126, 32.558250, 51.716080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543198, 32.852234, 51.773617> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199842, 0.011570, -0.979760,
		-0.721743, 0.678017, -0.139208,
		0.662684, 0.734955, 0.143847,
		39.742004, 33.072720, 51.816772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229820, 33.003857, 51.090744>,  <39.278126, 32.558250, 51.716080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229820, 33.003857, 51.090744> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.583843, 33.102032, 51.248951>,  <39.796257, 33.160938, 51.343876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.583843, 33.102032, 51.248951>,  <39.229820, 33.003857, 51.090744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583843, 33.102032, 51.248951> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332201, 0.262146, -0.906047,
		-0.326064, 0.933294, 0.150479,
		0.885056, 0.245440, 0.395518,
		39.849361, 33.175663, 51.367607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396286, 33.667885, 50.811031>,  <39.229820, 33.003857, 51.090744>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396286, 33.667885, 50.811031> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.739025, 33.481640, 50.899597>,  <39.944668, 33.369892, 50.952736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.739025, 33.481640, 50.899597>,  <39.396286, 33.667885, 50.811031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739025, 33.481640, 50.899597> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300318, 0.101661, -0.948406,
		0.419081, 0.879130, 0.226939,
		0.856843, -0.465613, 0.221415,
		39.996078, 33.341957, 50.966022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933846, 34.025253, 50.312737>,  <39.396286, 33.667885, 50.811031>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933846, 34.025253, 50.312737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.081223, 33.678326, 50.446606>,  <40.169651, 33.470169, 50.526928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.081223, 33.678326, 50.446606>,  <39.933846, 34.025253, 50.312737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081223, 33.678326, 50.446606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260517, -0.249246, -0.932742,
		0.892400, 0.430852, 0.134117,
		0.368446, -0.867319, 0.334672,
		40.191757, 33.418129, 50.547009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553226, 33.950241, 49.875042>,  <39.933846, 34.025253, 50.312737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553226, 33.950241, 49.875042> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.470676, 33.587181, 50.021240>,  <40.421146, 33.369347, 50.108959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.470676, 33.587181, 50.021240>,  <40.553226, 33.950241, 49.875042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470676, 33.587181, 50.021240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059834, -0.384544, -0.921166,
		0.976643, -0.168233, 0.133667,
		-0.206371, -0.907647, 0.365496,
		40.408764, 33.314888, 50.130890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.030392, 33.388432, 49.502419>,  <40.553226, 33.950241, 49.875042>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.030392, 33.388432, 49.502419> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.701279, 33.190247, 49.613808>,  <40.503811, 33.071335, 49.680641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.701279, 33.190247, 49.613808>,  <41.030392, 33.388432, 49.502419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701279, 33.190247, 49.613808> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095668, -0.362243, -0.927161,
		0.560247, -0.789493, 0.250648,
		-0.822783, -0.495460, 0.278475,
		40.454445, 33.041607, 49.697350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103611, 32.853745, 49.246540>,  <41.030392, 33.388432, 49.502419>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103611, 32.853745, 49.246540> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.709259, 32.834923, 49.310822>,  <40.472649, 32.823631, 49.349388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.709259, 32.834923, 49.310822>,  <41.103611, 32.853745, 49.246540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709259, 32.834923, 49.310822> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129046, -0.398063, -0.908236,
		0.106703, -0.916151, 0.386371,
		-0.985881, -0.047052, 0.160700,
		40.413494, 32.820808, 49.359032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860031, 32.281799, 49.009907>,  <41.103611, 32.853745, 49.246540>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860031, 32.281799, 49.009907> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.503979, 32.461857, 49.038319>,  <40.290348, 32.569893, 49.055367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.503979, 32.461857, 49.038319>,  <40.860031, 32.281799, 49.009907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503979, 32.461857, 49.038319> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253603, -0.359805, -0.897901,
		-0.378640, -0.817252, 0.434431,
		-0.890122, 0.450155, 0.071021,
		40.236942, 32.596901, 49.059628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362644, 31.760332, 48.734840>,  <40.860031, 32.281799, 49.009907>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.362644, 31.760332, 48.734840> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.194923, 32.121994, 48.702118>,  <40.094292, 32.338989, 48.682484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.194923, 32.121994, 48.702118>,  <40.362644, 31.760332, 48.734840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194923, 32.121994, 48.702118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149739, -0.157750, -0.976060,
		-0.895413, -0.397015, 0.201532,
		-0.419302, 0.904154, -0.081803,
		40.069134, 32.393242, 48.677578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957317, 31.625988, 48.212318>,  <40.362644, 31.760332, 48.734840>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957317, 31.625988, 48.212318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.929302, 32.024982, 48.207981>,  <39.912491, 32.264378, 48.205379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.929302, 32.024982, 48.207981>,  <39.957317, 31.625988, 48.212318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929302, 32.024982, 48.207981> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241662, -0.027517, -0.969971,
		-0.967829, -0.065318, 0.242982,
		-0.070042, 0.997485, -0.010846,
		39.908291, 32.324226, 48.204727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326405, 31.772551, 47.817963>,  <39.957317, 31.625988, 48.212318>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326405, 31.772551, 47.817963> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.553558, 32.101646, 47.808113>,  <39.689850, 32.299103, 47.802204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.553558, 32.101646, 47.808113>,  <39.326405, 31.772551, 47.817963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553558, 32.101646, 47.808113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174503, 0.091101, -0.980433,
		-0.804400, 0.561067, 0.195305,
		0.567882, 0.822742, -0.024626,
		39.723923, 32.348469, 47.800724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736343, 32.369534, 47.702168>,  <39.326405, 31.772551, 47.817963>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736343, 32.369534, 47.702168> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.345291, 32.292004, 47.669518>,  <38.110661, 32.245487, 47.649925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.345291, 32.292004, 47.669518>,  <38.736343, 32.369534, 47.702168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345291, 32.292004, 47.669518> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043467, -0.565967, 0.823281,
		-0.205770, 0.801320, 0.561734,
		-0.977635, -0.193824, -0.081628,
		38.052002, 32.233856, 47.645031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406429, 32.675583, 48.283463>,  <38.736343, 32.369534, 47.702168>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406429, 32.675583, 48.283463> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.203377, 32.373558, 48.117477>,  <38.081547, 32.192345, 48.017887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.203377, 32.373558, 48.117477>,  <38.406429, 32.675583, 48.283463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203377, 32.373558, 48.117477> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238763, -0.339481, 0.909805,
		-0.827832, 0.560920, -0.007951,
		-0.507629, -0.755064, -0.414960,
		38.051086, 32.147038, 47.992989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649097, 32.650063, 48.516750>,  <38.406429, 32.675583, 48.283463>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649097, 32.650063, 48.516750> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.765594, 32.280956, 48.415813>,  <37.835491, 32.059490, 48.355251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.765594, 32.280956, 48.415813>,  <37.649097, 32.650063, 48.516750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765594, 32.280956, 48.415813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460720, -0.366468, 0.808355,
		-0.838400, -0.119167, -0.531869,
		0.291242, -0.922768, -0.252345,
		37.852966, 32.004128, 48.340111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084518, 32.315815, 48.703411>,  <37.649097, 32.650063, 48.516750>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084518, 32.315815, 48.703411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.374393, 32.040890, 48.683704>,  <37.548321, 31.875935, 48.671879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.374393, 32.040890, 48.683704>,  <37.084518, 32.315815, 48.703411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374393, 32.040890, 48.683704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394774, -0.472715, 0.787841,
		-0.564782, -0.551491, -0.613905,
		0.724690, -0.687312, -0.049267,
		37.591801, 31.834696, 48.668926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715031, 31.639946, 48.642040>,  <37.084518, 32.315815, 48.703411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715031, 31.639946, 48.642040> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.081985, 31.556162, 48.777405>,  <37.302158, 31.505892, 48.858624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.081985, 31.556162, 48.777405>,  <36.715031, 31.639946, 48.642040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081985, 31.556162, 48.777405> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389280, -0.649151, 0.653502,
		0.082796, -0.731252, -0.677063,
		0.917391, -0.209460, 0.338409,
		37.357204, 31.493324, 48.878929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691483, 30.914310, 48.796200>,  <36.715031, 31.639946, 48.642040>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691483, 30.914310, 48.796200> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.028286, 31.019354, 48.984692>,  <37.230370, 31.082380, 49.097786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.028286, 31.019354, 48.984692>,  <36.691483, 30.914310, 48.796200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028286, 31.019354, 48.984692> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257860, -0.571343, 0.779151,
		0.473845, -0.777563, -0.413360,
		0.842009, 0.262608, 0.471230,
		37.280888, 31.098137, 49.126060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046238, 30.280693, 49.086250>,  <36.691483, 30.914310, 48.796200>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046238, 30.280693, 49.086250> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.202084, 30.586937, 49.291012>,  <37.295589, 30.770683, 49.413868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.202084, 30.586937, 49.291012>,  <37.046238, 30.280693, 49.086250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202084, 30.586937, 49.291012> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033145, -0.567120, 0.822968,
		0.920383, -0.303671, -0.246333,
		0.389611, 0.765610, 0.511902,
		37.318966, 30.816620, 49.444584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577835, 30.019165, 49.519043>,  <37.046238, 30.280693, 49.086250>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577835, 30.019165, 49.519043> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.508186, 30.371494, 49.695148>,  <37.466396, 30.582891, 49.800812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.508186, 30.371494, 49.695148>,  <37.577835, 30.019165, 49.519043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508186, 30.371494, 49.695148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106245, -0.427677, 0.897666,
		0.978977, 0.203075, -0.019118,
		-0.174117, 0.880825, 0.440261,
		37.455952, 30.635742, 49.827229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149029, 30.209064, 49.905327>,  <37.577835, 30.019165, 49.519043>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149029, 30.209064, 49.905327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.842747, 30.403343, 50.073990>,  <37.658978, 30.519911, 50.175190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.842747, 30.403343, 50.073990>,  <38.149029, 30.209064, 49.905327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842747, 30.403343, 50.073990> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186464, -0.459799, 0.868226,
		0.615573, 0.743428, 0.261505,
		-0.765703, 0.485695, 0.421662,
		37.613037, 30.549051, 50.200489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425198, 30.349752, 50.428261>,  <38.149029, 30.209064, 49.905327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425198, 30.349752, 50.428261> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.050411, 30.428049, 50.544041>,  <37.825539, 30.475027, 50.613510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.050411, 30.428049, 50.544041>,  <38.425198, 30.349752, 50.428261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050411, 30.428049, 50.544041> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235830, -0.257002, 0.937195,
		0.257839, 0.946380, 0.194640,
		-0.936965, 0.195743, 0.289450,
		37.769321, 30.486773, 50.630875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451782, 30.665831, 51.105663>,  <38.425198, 30.349752, 50.428261>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451782, 30.665831, 51.105663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.065296, 30.562756, 51.107452>,  <37.833405, 30.500910, 51.108528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.065296, 30.562756, 51.107452>,  <38.451782, 30.665831, 51.105663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065296, 30.562756, 51.107452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018087, -0.050476, 0.998561,
		-0.257092, 0.964909, 0.053431,
		-0.966218, -0.257689, 0.004476,
		37.775433, 30.485449, 51.108795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069427, 31.037992, 51.552578>,  <38.451782, 30.665831, 51.105663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069427, 31.037992, 51.552578> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.858700, 30.700542, 51.511089>,  <37.732265, 30.498072, 51.486198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.858700, 30.700542, 51.511089>,  <38.069427, 31.037992, 51.552578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858700, 30.700542, 51.511089> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000440, -0.121754, 0.992560,
		-0.849979, 0.522943, 0.063771,
		-0.526817, -0.843627, -0.103718,
		37.700653, 30.447454, 51.479973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502163, 31.130919, 52.079704>,  <38.069427, 31.037992, 51.552578>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502163, 31.130919, 52.079704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.539257, 30.744303, 51.984039>,  <37.561516, 30.512333, 51.926640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.539257, 30.744303, 51.984039>,  <37.502163, 31.130919, 52.079704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539257, 30.744303, 51.984039> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002101, -0.240387, 0.970675,
		-0.995688, -0.089515, -0.024323,
		0.092737, -0.966541, -0.239162,
		37.567078, 30.454340, 51.912289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968113, 30.806618, 52.474125>,  <37.502163, 31.130919, 52.079704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968113, 30.806618, 52.474125> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.244102, 30.529575, 52.389992>,  <37.409695, 30.363350, 52.339512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.244102, 30.529575, 52.389992>,  <36.968113, 30.806618, 52.474125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244102, 30.529575, 52.389992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046822, -0.332682, 0.941876,
		-0.722323, -0.640017, -0.261969,
		0.689969, -0.692604, -0.210337,
		37.451092, 30.321795, 52.326889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427910, 31.128345, 52.957596>,  <36.968113, 30.806618, 52.474125>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427910, 31.128345, 52.957596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.293495, 31.446146, 53.159924>,  <36.212845, 31.636826, 53.281319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.293495, 31.446146, 53.159924>,  <36.427910, 31.128345, 52.957596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293495, 31.446146, 53.159924> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349184, 0.393681, -0.850344,
		-0.874729, -0.462369, 0.145136,
		-0.336035, 0.794500, 0.505816,
		36.192684, 31.684496, 53.311668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726120, 31.332066, 52.604134>,  <36.427910, 31.128345, 52.957596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726120, 31.332066, 52.604134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.876804, 31.647995, 52.797737>,  <35.967216, 31.837553, 52.913898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.876804, 31.647995, 52.797737>,  <35.726120, 31.332066, 52.604134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876804, 31.647995, 52.797737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327433, 0.602308, -0.728019,
		-0.866532, 0.115770, 0.485510,
		0.376710, 0.789824, 0.484012,
		35.989819, 31.884943, 52.942940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233921, 31.867943, 52.322701>,  <35.726120, 31.332066, 52.604134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233921, 31.867943, 52.322701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.535656, 32.079674, 52.478024>,  <35.716698, 32.206711, 52.571217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.535656, 32.079674, 52.478024>,  <35.233921, 31.867943, 52.322701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535656, 32.079674, 52.478024> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302706, 0.805321, -0.509732,
		-0.582528, 0.266968, 0.767717,
		0.754341, 0.529326, 0.388309,
		35.761959, 32.238472, 52.594517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954151, 32.447262, 52.646976>,  <35.233921, 31.867943, 52.322701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954151, 32.447262, 52.646976> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.339836, 32.551167, 52.625771>,  <35.571247, 32.613510, 52.613049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.339836, 32.551167, 52.625771>,  <34.954151, 32.447262, 52.646976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339836, 32.551167, 52.625771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240476, 0.772735, -0.587411,
		-0.111623, 0.579139, 0.807551,
		0.964215, 0.259765, -0.053014,
		35.629101, 32.629097, 52.609867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960522, 33.183254, 52.654762>,  <34.954151, 32.447262, 52.646976>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960522, 33.183254, 52.654762> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.300224, 33.079552, 52.470787>,  <35.504047, 33.017330, 52.360401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.300224, 33.079552, 52.470787>,  <34.960522, 33.183254, 52.654762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300224, 33.079552, 52.470787> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182665, 0.673062, -0.716673,
		0.495371, 0.692656, 0.524247,
		0.849259, -0.259258, -0.459939,
		35.555000, 33.001774, 52.332806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218822, 33.712799, 52.389336>,  <34.960522, 33.183254, 52.654762>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218822, 33.712799, 52.389336> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.415478, 33.442352, 52.169823>,  <35.533470, 33.280083, 52.038116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.415478, 33.442352, 52.169823>,  <35.218822, 33.712799, 52.389336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415478, 33.442352, 52.169823> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194403, 0.529078, -0.826005,
		0.848822, 0.512780, 0.128676,
		0.491639, -0.676117, -0.548779,
		35.562969, 33.239517, 52.005188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362598, 34.029762, 51.811436>,  <35.218822, 33.712799, 52.389336>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362598, 34.029762, 51.811436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.498997, 33.681316, 51.670078>,  <35.580837, 33.472248, 51.585262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.498997, 33.681316, 51.670078>,  <35.362598, 34.029762, 51.811436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498997, 33.681316, 51.670078> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002107, 0.375215, -0.926935,
		0.940061, 0.316830, 0.126113,
		0.341000, -0.871110, -0.353393,
		35.601295, 33.419983, 51.564060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047825, 34.109997, 51.432240>,  <35.362598, 34.029762, 51.811436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047825, 34.109997, 51.432240> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.864826, 33.777920, 51.304817>,  <35.755028, 33.578674, 51.228363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.864826, 33.777920, 51.304817>,  <36.047825, 34.109997, 51.432240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864826, 33.777920, 51.304817> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158862, 0.428795, -0.889325,
		0.874907, -0.356254, -0.328057,
		-0.457494, -0.830192, -0.318560,
		35.727577, 33.528862, 51.209248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304466, 34.213612, 52.110435>,  <36.047825, 34.109997, 51.432240>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304466, 34.213612, 52.110435> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.314117, 34.567905, 51.925014>,  <36.319908, 34.780483, 51.813763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.314117, 34.567905, 51.925014>,  <36.304466, 34.213612, 52.110435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314117, 34.567905, 51.925014> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721582, 0.305497, 0.621283,
		0.691909, -0.349482, -0.631763,
		0.024126, 0.885739, -0.463556,
		36.321354, 34.833626, 51.785946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078449, 34.425144, 51.988171>,  <36.304466, 34.213612, 52.110435>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078449, 34.425144, 51.988171> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.843609, 34.746300, 52.029518>,  <36.702705, 34.938992, 52.054325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.843609, 34.746300, 52.029518>,  <37.078449, 34.425144, 51.988171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843609, 34.746300, 52.029518> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610668, 0.355442, 0.707634,
		0.531407, 0.478578, -0.698977,
		-0.587105, 0.802884, 0.103368,
		36.667477, 34.987164, 52.060528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521317, 35.058960, 52.072174>,  <37.078449, 34.425144, 51.988171>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521317, 35.058960, 52.072174> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.164799, 35.130165, 52.238979>,  <36.950886, 35.172890, 52.339062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.164799, 35.130165, 52.238979>,  <37.521317, 35.058960, 52.072174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164799, 35.130165, 52.238979> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451759, 0.427260, 0.783175,
		-0.038755, 0.886431, -0.461236,
		-0.891298, 0.178015, 0.417011,
		36.897408, 35.183571, 52.364082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643715, 35.557774, 52.406376>,  <37.521317, 35.058960, 52.072174>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643715, 35.557774, 52.406376> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.300846, 35.432114, 52.569630>,  <37.095127, 35.356716, 52.667580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.300846, 35.432114, 52.569630>,  <37.643715, 35.557774, 52.406376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300846, 35.432114, 52.569630> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225524, 0.483485, 0.845802,
		-0.463037, 0.817038, -0.343579,
		-0.857167, -0.314152, 0.408133,
		37.043697, 35.337868, 52.692070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218781, 36.117226, 52.808838>,  <37.643715, 35.557774, 52.406376>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218781, 36.117226, 52.808838> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.147316, 35.756886, 52.967106>,  <37.104439, 35.540684, 53.062065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.147316, 35.756886, 52.967106>,  <37.218781, 36.117226, 52.808838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147316, 35.756886, 52.967106> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093134, 0.384850, 0.918268,
		-0.979493, 0.200910, 0.015141,
		-0.178662, -0.900847, 0.395670,
		37.093716, 35.486633, 53.085808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023552, 36.422424, 53.461102>,  <37.218781, 36.117226, 52.808838>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023552, 36.422424, 53.461102> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.036633, 36.023640, 53.489368>,  <37.044483, 35.784367, 53.506329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.036633, 36.023640, 53.489368>,  <37.023552, 36.422424, 53.461102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036633, 36.023640, 53.489368> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153976, 0.074887, 0.985233,
		-0.987533, -0.021340, 0.155958,
		0.032704, -0.996964, 0.070667,
		37.046444, 35.724552, 53.510571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588058, 36.293701, 54.021496>,  <37.023552, 36.422424, 53.461102>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588058, 36.293701, 54.021496> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.839233, 35.982571, 54.011047>,  <36.989941, 35.795895, 54.004780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.839233, 35.982571, 54.011047>,  <36.588058, 36.293701, 54.021496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839233, 35.982571, 54.011047> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132337, 0.073639, 0.988466,
		-0.766928, -0.624153, 0.149175,
		0.627939, -0.777824, -0.026122,
		37.027615, 35.749222, 54.003212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377483, 35.898243, 54.614090>,  <36.588058, 36.293701, 54.021496>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377483, 35.898243, 54.614090> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.746136, 35.784149, 54.508842>,  <36.967327, 35.715691, 54.445694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.746136, 35.784149, 54.508842>,  <36.377483, 35.898243, 54.614090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746136, 35.784149, 54.508842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318559, 0.168900, 0.932734,
		-0.221611, -0.943457, 0.246530,
		0.921634, -0.285238, -0.263116,
		37.022625, 35.698578, 54.429909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.728874, 37.378117, 38.219173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090904, 37.419613, 38.384136>,  <37.308121, 37.444511, 38.483112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090904, 37.419613, 38.384136>,  <36.728874, 37.378117, 38.219173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090904, 37.419613, 38.384136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424274, 0.154508, 0.892255,
		0.028837, -0.982531, 0.183853,
		0.905074, 0.103734, 0.412407,
		37.362427, 37.450733, 38.507858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772980, 36.906433, 38.763645>,  <36.728874, 37.378117, 38.219173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772980, 36.906433, 38.763645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069607, 37.149841, 38.876629>,  <37.247581, 37.295887, 38.944420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069607, 37.149841, 38.876629>,  <36.772980, 36.906433, 38.763645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069607, 37.149841, 38.876629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385004, 0.041224, 0.921994,
		0.549407, -0.792467, 0.264853,
		0.741568, 0.608520, 0.282455,
		37.292076, 37.332397, 38.961365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845177, 36.787918, 39.604237>,  <36.772980, 36.906433, 38.763645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845177, 36.787918, 39.604237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045673, 37.121243, 39.510986>,  <37.165970, 37.321239, 39.455036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045673, 37.121243, 39.510986>,  <36.845177, 36.787918, 39.604237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045673, 37.121243, 39.510986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112654, 0.329962, 0.937248,
		0.857945, -0.443521, 0.259266,
		0.501237, 0.833315, -0.233125,
		37.196045, 37.371239, 39.441048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495369, 36.790253, 39.926418>,  <36.845177, 36.787918, 39.604237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495369, 36.790253, 39.926418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391228, 37.169353, 39.852688>,  <37.328743, 37.396816, 39.808449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391228, 37.169353, 39.852688>,  <37.495369, 36.790253, 39.926418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391228, 37.169353, 39.852688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074673, 0.170574, 0.982512,
		0.962621, 0.269566, 0.026362,
		-0.260355, 0.947755, -0.184327,
		37.313122, 37.453678, 39.797390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807095, 37.142345, 40.436726>,  <37.495369, 36.790253, 39.926418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807095, 37.142345, 40.436726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545311, 37.420391, 40.317726>,  <37.388241, 37.587219, 40.246326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545311, 37.420391, 40.317726>,  <37.807095, 37.142345, 40.436726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545311, 37.420391, 40.317726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207025, 0.213683, 0.954715,
		0.727204, 0.686409, 0.004059,
		-0.654457, 0.695113, -0.297495,
		37.348972, 37.628925, 40.228477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923878, 37.729702, 40.821133>,  <37.807095, 37.142345, 40.436726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923878, 37.729702, 40.821133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545235, 37.787804, 40.706013>,  <37.318047, 37.822666, 40.636940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545235, 37.787804, 40.706013>,  <37.923878, 37.729702, 40.821133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545235, 37.787804, 40.706013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250080, 0.232491, 0.939898,
		0.203435, 0.961691, -0.183753,
		-0.946612, 0.145255, -0.287797,
		37.261250, 37.831379, 40.619675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673599, 38.329414, 41.150703>,  <37.923878, 37.729702, 40.821133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673599, 38.329414, 41.150703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350220, 38.113319, 41.057278>,  <37.156193, 37.983662, 41.001221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350220, 38.113319, 41.057278>,  <37.673599, 38.329414, 41.150703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350220, 38.113319, 41.057278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427332, 0.265909, 0.864106,
		-0.404712, 0.798398, -0.445834,
		-0.808453, -0.540233, -0.233565,
		37.107685, 37.951248, 40.987209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143528, 38.704895, 41.342262>,  <37.673599, 38.329414, 41.150703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143528, 38.704895, 41.342262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009907, 38.328033, 41.331268>,  <36.929733, 38.101917, 41.324673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009907, 38.328033, 41.331268>,  <37.143528, 38.704895, 41.342262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009907, 38.328033, 41.331268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414402, 0.120621, 0.902065,
		-0.846568, 0.312729, -0.430724,
		-0.334056, -0.942152, -0.027482,
		36.909691, 38.045387, 41.323025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700783, 38.729137, 41.906010>,  <37.143528, 38.704895, 41.342262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700783, 38.729137, 41.906010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696617, 38.334961, 41.838123>,  <36.694118, 38.098457, 41.797390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696617, 38.334961, 41.838123>,  <36.700783, 38.729137, 41.906010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696617, 38.334961, 41.838123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445302, -0.147400, 0.883165,
		-0.895320, 0.084773, -0.437283,
		-0.010413, -0.985438, -0.169720,
		36.693493, 38.039330, 41.787209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000595, 38.475613, 42.122501>,  <36.700783, 38.729137, 41.906010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000595, 38.475613, 42.122501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243317, 38.157906, 42.134678>,  <36.388950, 37.967281, 42.141983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243317, 38.157906, 42.134678>,  <36.000595, 38.475613, 42.122501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243317, 38.157906, 42.134678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273647, -0.172791, 0.946182,
		-0.746265, -0.582474, -0.322200,
		0.606800, -0.794271, 0.030444,
		36.425358, 37.919624, 42.143810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499313, 37.932503, 42.402519>,  <36.000595, 38.475613, 42.122501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499313, 37.932503, 42.402519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.885685, 37.854343, 42.470398>,  <36.117508, 37.807446, 42.511124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.885685, 37.854343, 42.470398>,  <35.499313, 37.932503, 42.402519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885685, 37.854343, 42.470398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217196, -0.255523, 0.942090,
		-0.140722, -0.946851, -0.289257,
		0.965932, -0.195398, 0.169695,
		36.175465, 37.795723, 42.521305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568008, 37.288906, 42.722519>,  <35.499313, 37.932503, 42.402519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568008, 37.288906, 42.722519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882164, 37.515049, 42.823349>,  <36.070656, 37.650734, 42.883846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882164, 37.515049, 42.823349>,  <35.568008, 37.288906, 42.722519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882164, 37.515049, 42.823349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162467, -0.204681, 0.965251,
		0.597308, -0.799047, -0.068902,
		0.785384, 0.565358, 0.252076,
		36.117779, 37.684658, 42.898972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121243, 36.760441, 42.422924>,  <35.568008, 37.288906, 42.722519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121243, 36.760441, 42.422924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021091, 36.437515, 42.636677>,  <34.960999, 36.243759, 42.764927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021091, 36.437515, 42.636677>,  <35.121243, 36.760441, 42.422924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021091, 36.437515, 42.636677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431950, -0.400826, -0.807935,
		0.866446, -0.433115, -0.248359,
		-0.250380, -0.807311, 0.534378,
		34.945976, 36.195320, 42.796989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386810, 36.113598, 42.084904>,  <35.121243, 36.760441, 42.422924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386810, 36.113598, 42.084904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037853, 36.126007, 42.280033>,  <34.828480, 36.133453, 42.397110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037853, 36.126007, 42.280033>,  <35.386810, 36.113598, 42.084904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037853, 36.126007, 42.280033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487731, -0.121459, -0.864503,
		0.032427, -0.992111, 0.121093,
		-0.872392, 0.031027, 0.487822,
		34.776134, 36.135315, 42.426380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024879, 35.496933, 41.908306>,  <35.386810, 36.113598, 42.084904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024879, 35.496933, 41.908306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774319, 35.790993, 42.011982>,  <34.623981, 35.967426, 42.074188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774319, 35.790993, 42.011982>,  <35.024879, 35.496933, 41.908306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774319, 35.790993, 42.011982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314042, 0.066326, -0.947089,
		-0.713440, -0.674656, 0.189320,
		-0.626403, 0.735146, 0.259190,
		34.586399, 36.011536, 42.089741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453751, 35.362766, 41.561077>,  <35.024879, 35.496933, 41.908306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453751, 35.362766, 41.561077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367825, 35.739479, 41.664536>,  <34.316269, 35.965508, 41.726612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367825, 35.739479, 41.664536>,  <34.453751, 35.362766, 41.561077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367825, 35.739479, 41.664536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356045, 0.171091, -0.918673,
		-0.909443, -0.289437, 0.298563,
		-0.214817, 0.941782, 0.258650,
		34.303379, 36.022015, 41.742130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667450, 35.522129, 41.428787>,  <34.453751, 35.362766, 41.561077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667450, 35.522129, 41.428787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878887, 35.861568, 41.437412>,  <34.005749, 36.065231, 41.442585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878887, 35.861568, 41.437412>,  <33.667450, 35.522129, 41.428787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878887, 35.861568, 41.437412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069548, 0.068606, -0.995217,
		-0.846022, 0.524564, 0.095283,
		0.528592, 0.848602, 0.021560,
		34.037464, 36.116150, 41.443882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341976, 36.012032, 41.042171>,  <33.667450, 35.522129, 41.428787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341976, 36.012032, 41.042171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728771, 36.113190, 41.029663>,  <33.960850, 36.173885, 41.022156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728771, 36.113190, 41.029663>,  <33.341976, 36.012032, 41.042171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728771, 36.113190, 41.029663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042342, 0.038446, -0.998363,
		-0.251278, 0.966730, 0.047885,
		0.966989, 0.252894, -0.031273,
		34.018867, 36.189056, 41.020283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263035, 36.606319, 40.701530>,  <33.341976, 36.012032, 41.042171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263035, 36.606319, 40.701530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639637, 36.475613, 40.668575>,  <33.865601, 36.397190, 40.648800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639637, 36.475613, 40.668575>,  <33.263035, 36.606319, 40.701530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639637, 36.475613, 40.668575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004965, 0.257918, -0.966154,
		0.336953, 0.909233, 0.244454,
		0.941508, -0.326762, -0.082392,
		33.922089, 36.377583, 40.643856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552280, 37.112343, 40.173058>,  <33.263035, 36.606319, 40.701530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552280, 37.112343, 40.173058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793861, 36.793850, 40.187248>,  <33.938812, 36.602757, 40.195763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793861, 36.793850, 40.187248>,  <33.552280, 37.112343, 40.173058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793861, 36.793850, 40.187248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110897, 0.039870, -0.993032,
		0.789265, 0.603682, 0.112379,
		0.603956, -0.796227, 0.035478,
		33.975048, 36.554981, 40.197891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965904, 37.339779, 39.680950>,  <33.552280, 37.112343, 40.173058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965904, 37.339779, 39.680950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955040, 36.947193, 39.756840>,  <33.948521, 36.711643, 39.802372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955040, 36.947193, 39.756840>,  <33.965904, 37.339779, 39.680950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955040, 36.947193, 39.756840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032219, -0.188834, -0.981480,
		0.999112, -0.032773, -0.026493,
		-0.027163, -0.981462, 0.189722,
		33.946892, 36.652756, 39.813755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292862, 37.034298, 39.072235>,  <33.965904, 37.339779, 39.680950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292862, 37.034298, 39.072235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148323, 36.707623, 39.252213>,  <34.061600, 36.511620, 39.360199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148323, 36.707623, 39.252213>,  <34.292862, 37.034298, 39.072235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148323, 36.707623, 39.252213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189845, -0.408007, -0.893023,
		0.912899, -0.408114, -0.007610,
		-0.361351, -0.816684, 0.449948,
		34.039917, 36.462616, 39.387196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685791, 36.387413, 38.879330>,  <34.292862, 37.034298, 39.072235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685791, 36.387413, 38.879330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318245, 36.286495, 39.000679>,  <34.097717, 36.225945, 39.073490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318245, 36.286495, 39.000679>,  <34.685791, 36.387413, 38.879330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318245, 36.286495, 39.000679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162849, -0.457840, -0.873993,
		0.359400, -0.852485, 0.379607,
		-0.918865, -0.252294, 0.303374,
		34.042587, 36.210808, 39.091690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689667, 35.716511, 38.674049>,  <34.685791, 36.387413, 38.879330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689667, 35.716511, 38.674049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312031, 35.843681, 38.708977>,  <34.085449, 35.919983, 38.729935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312031, 35.843681, 38.708977>,  <34.689667, 35.716511, 38.674049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312031, 35.843681, 38.708977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215896, -0.395968, -0.892524,
		-0.249180, -0.861471, 0.442466,
		-0.944086, 0.317926, 0.087321,
		34.028805, 35.939060, 38.735172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273975, 36.098503, 38.604778>,  <34.689667, 35.716511, 38.674049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273975, 36.098503, 38.604778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548470, 36.131035, 38.315651>,  <35.713165, 36.150555, 38.142174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548470, 36.131035, 38.315651>,  <35.273975, 36.098503, 38.604778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548470, 36.131035, 38.315651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237660, -0.964260, 0.117137,
		-0.687458, -0.252168, -0.681038,
		0.686236, 0.081328, -0.722819,
		35.754341, 36.155434, 38.098804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165375, 35.792107, 37.838757>,  <35.273975, 36.098503, 38.604778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165375, 35.792107, 37.838757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558392, 35.802547, 37.912437>,  <35.794201, 35.808811, 37.956646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558392, 35.802547, 37.912437>,  <35.165375, 35.792107, 37.838757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558392, 35.802547, 37.912437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002477, -0.991854, 0.127355,
		0.186022, -0.124675, -0.974603,
		0.982543, 0.026105, 0.184198,
		35.853153, 35.810379, 37.967697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458874, 35.266426, 37.458878>,  <35.165375, 35.792107, 37.838757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458874, 35.266426, 37.458878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714893, 35.337940, 37.757774>,  <35.868504, 35.380848, 37.937115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714893, 35.337940, 37.757774>,  <35.458874, 35.266426, 37.458878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714893, 35.337940, 37.757774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097897, -0.983601, 0.151478,
		0.762074, -0.023800, -0.647052,
		0.640046, 0.178782, 0.747247,
		35.906906, 35.391575, 37.981949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193653, 34.908165, 37.266056>,  <35.458874, 35.266426, 37.458878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193653, 34.908165, 37.266056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147182, 34.939392, 37.662117>,  <36.119301, 34.958126, 37.899754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147182, 34.939392, 37.662117>,  <36.193653, 34.908165, 37.266056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147182, 34.939392, 37.662117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277737, -0.954584, 0.107848,
		0.953606, 0.287533, 0.089217,
		-0.116175, 0.078066, 0.990156,
		36.112331, 34.962811, 37.959164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964218, 34.257084, 37.394714>,  <36.193653, 34.908165, 37.266056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964218, 34.257084, 37.394714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341965, 34.370869, 37.460754>,  <36.568611, 34.439140, 37.500378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341965, 34.370869, 37.460754>,  <35.964218, 34.257084, 37.394714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341965, 34.370869, 37.460754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107003, -0.208959, 0.972053,
		0.311013, -0.935637, -0.166894,
		0.944363, 0.284463, 0.165104,
		36.625275, 34.456207, 37.510284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177597, 33.741924, 37.920540>,  <35.964218, 34.257084, 37.394714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177597, 33.741924, 37.920540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449692, 34.035122, 37.920906>,  <36.612949, 34.211040, 37.921127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449692, 34.035122, 37.920906>,  <36.177597, 33.741924, 37.920540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449692, 34.035122, 37.920906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024548, 0.021528, 0.999467,
		0.732584, -0.679894, 0.032638,
		0.680234, 0.732995, 0.000919,
		36.653763, 34.255020, 37.921181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776043, 33.495472, 38.215427>,  <36.177597, 33.741924, 37.920540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776043, 33.495472, 38.215427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742931, 33.890442, 38.269314>,  <36.723064, 34.127422, 38.301647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742931, 33.890442, 38.269314>,  <36.776043, 33.495472, 38.215427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742931, 33.890442, 38.269314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104998, -0.125787, 0.986485,
		0.991022, 0.095801, -0.093265,
		-0.082775, 0.987421, 0.134717,
		36.718098, 34.186668, 38.309731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220196, 33.636845, 38.686684>,  <36.776043, 33.495472, 38.215427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220196, 33.636845, 38.686684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003139, 33.972622, 38.698505>,  <36.872906, 34.174088, 38.705601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003139, 33.972622, 38.698505>,  <37.220196, 33.636845, 38.686684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003139, 33.972622, 38.698505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068643, 0.009245, 0.997598,
		0.837153, 0.543370, -0.062639,
		-0.542644, 0.839442, 0.029559,
		36.840347, 34.224453, 38.707375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549152, 34.053532, 39.251820>,  <37.220196, 33.636845, 38.686684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549152, 34.053532, 39.251820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170513, 34.174202, 39.206326>,  <36.943329, 34.246605, 39.179031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170513, 34.174202, 39.206326>,  <37.549152, 34.053532, 39.251820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170513, 34.174202, 39.206326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153327, -0.110924, 0.981930,
		0.283610, 0.946935, 0.151256,
		-0.946602, 0.301677, -0.113731,
		36.886532, 34.264706, 39.172207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445061, 34.546364, 39.749760>,  <37.549152, 34.053532, 39.251820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445061, 34.546364, 39.749760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062405, 34.448326, 39.686806>,  <36.832809, 34.389503, 39.649033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062405, 34.448326, 39.686806>,  <37.445061, 34.546364, 39.749760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062405, 34.448326, 39.686806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171179, 0.035909, 0.984585,
		-0.235670, 0.968833, -0.076308,
		-0.956639, -0.245099, -0.157381,
		36.775414, 34.374798, 39.639591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112843, 34.996956, 40.262096>,  <37.445061, 34.546364, 39.749760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112843, 34.996956, 40.262096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876446, 34.683273, 40.186474>,  <36.734608, 34.495064, 40.141098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876446, 34.683273, 40.186474>,  <37.112843, 34.996956, 40.262096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876446, 34.683273, 40.186474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116451, -0.148973, 0.981960,
		-0.798225, 0.602351, -0.003279,
		-0.590996, -0.784207, -0.189059,
		36.699146, 34.448009, 40.129757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557823, 35.020546, 40.779053>,  <37.112843, 34.996956, 40.262096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557823, 35.020546, 40.779053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500671, 34.647125, 40.647564>,  <36.466381, 34.423073, 40.568668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500671, 34.647125, 40.647564>,  <36.557823, 35.020546, 40.779053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500671, 34.647125, 40.647564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229525, -0.291826, 0.928523,
		-0.962758, 0.208117, -0.172578,
		-0.142879, -0.933555, -0.328726,
		36.457809, 34.367058, 40.548946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065948, 34.823215, 41.232838>,  <36.557823, 35.020546, 40.779053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065948, 34.823215, 41.232838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190342, 34.484550, 41.060116>,  <36.264977, 34.281353, 40.956482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190342, 34.484550, 41.060116>,  <36.065948, 34.823215, 41.232838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190342, 34.484550, 41.060116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223689, -0.506773, 0.832552,
		-0.923718, -0.162317, -0.346986,
		0.310980, -0.846660, -0.431807,
		36.283634, 34.230553, 40.930573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675709, 34.274345, 41.445087>,  <36.065948, 34.823215, 41.232838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675709, 34.274345, 41.445087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022900, 34.116428, 41.324581>,  <36.231213, 34.021679, 41.252277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022900, 34.116428, 41.324581>,  <35.675709, 34.274345, 41.445087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022900, 34.116428, 41.324581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036195, -0.554745, 0.831233,
		-0.495284, -0.732395, -0.467217,
		0.867977, -0.394786, -0.301265,
		36.283291, 33.997993, 41.234200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709305, 33.510208, 41.343052>,  <35.675709, 34.274345, 41.445087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709305, 33.510208, 41.343052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093113, 33.583733, 41.428410>,  <36.323399, 33.627846, 41.479626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093113, 33.583733, 41.428410>,  <35.709305, 33.510208, 41.343052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093113, 33.583733, 41.428410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044132, -0.650201, 0.758479,
		0.278166, -0.737193, -0.615768,
		0.959518, 0.183808, 0.213398,
		36.380970, 33.638874, 41.492428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914520, 32.931576, 41.621704>,  <35.709305, 33.510208, 41.343052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914520, 32.931576, 41.621704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225235, 33.161396, 41.724846>,  <36.411663, 33.299290, 41.786732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225235, 33.161396, 41.724846>,  <35.914520, 32.931576, 41.621704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225235, 33.161396, 41.724846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086323, -0.502726, 0.860125,
		0.623814, -0.645879, -0.440110,
		0.776791, 0.574550, 0.257853,
		36.458271, 33.333759, 41.802200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601177, 32.564144, 41.827511>,  <35.914520, 32.931576, 41.621704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601177, 32.564144, 41.827511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584019, 32.925053, 41.999126>,  <36.573723, 33.141598, 42.102097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584019, 32.925053, 41.999126>,  <36.601177, 32.564144, 41.827511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584019, 32.925053, 41.999126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043688, -0.427328, 0.903040,
		0.998124, 0.057481, -0.021087,
		-0.042897, 0.902267, 0.429038,
		36.571148, 33.195732, 42.127838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964230, 32.429596, 42.442238>,  <36.601177, 32.564144, 41.827511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964230, 32.429596, 42.442238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804893, 32.787411, 42.523354>,  <36.709293, 33.002102, 42.572021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804893, 32.787411, 42.523354>,  <36.964230, 32.429596, 42.442238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804893, 32.787411, 42.523354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179339, -0.140860, 0.973651,
		0.899535, 0.424211, -0.104316,
		-0.398339, 0.894541, 0.202787,
		36.685390, 33.055775, 42.584190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409676, 32.825119, 42.882092>,  <36.964230, 32.429596, 42.442238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409676, 32.825119, 42.882092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063526, 33.012550, 42.953152>,  <36.855835, 33.125008, 42.995789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063526, 33.012550, 42.953152>,  <37.409676, 32.825119, 42.882092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063526, 33.012550, 42.953152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221218, 0.039122, 0.974439,
		0.449650, 0.882556, -0.137513,
		-0.865377, 0.468577, 0.177646,
		36.803913, 33.153122, 43.006447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579311, 33.248608, 43.416740>,  <37.409676, 32.825119, 42.882092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579311, 33.248608, 43.416740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180023, 33.241898, 43.439640>,  <36.940449, 33.237873, 43.453381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180023, 33.241898, 43.439640>,  <37.579311, 33.248608, 43.416740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180023, 33.241898, 43.439640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054376, 0.138737, 0.988835,
		-0.024530, 0.990187, -0.137578,
		-0.998219, -0.016775, 0.057246,
		36.880558, 33.236866, 43.456814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445225, 33.639626, 43.972168>,  <37.579311, 33.248608, 43.416740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445225, 33.639626, 43.972168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099060, 33.441795, 43.940041>,  <36.891361, 33.323097, 43.920765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099060, 33.441795, 43.940041>,  <37.445225, 33.639626, 43.972168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099060, 33.441795, 43.940041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095048, 0.004663, 0.995462,
		-0.491960, 0.869120, -0.051044,
		-0.865414, -0.494579, -0.080314,
		36.839436, 33.293423, 43.915947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994808, 33.879314, 44.394474>,  <37.445225, 33.639626, 43.972168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994808, 33.879314, 44.394474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839485, 33.515774, 44.333534>,  <36.746292, 33.297649, 44.296970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839485, 33.515774, 44.333534>,  <36.994808, 33.879314, 44.394474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839485, 33.515774, 44.333534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062109, -0.190760, 0.979670,
		-0.919435, 0.370950, 0.130521,
		-0.388307, -0.908849, -0.152352,
		36.722992, 33.243118, 44.287830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507900, 33.848553, 44.887001>,  <36.994808, 33.879314, 44.394474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507900, 33.848553, 44.887001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589119, 33.474895, 44.769592>,  <36.637852, 33.250702, 44.699146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589119, 33.474895, 44.769592>,  <36.507900, 33.848553, 44.887001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589119, 33.474895, 44.769592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053314, -0.288775, 0.955912,
		-0.977717, -0.209744, -0.008832,
		0.203047, -0.934140, -0.293523,
		36.650032, 33.194653, 44.681534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150803, 33.422886, 45.358971>,  <36.507900, 33.848553, 44.887001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150803, 33.422886, 45.358971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412800, 33.169468, 45.194233>,  <36.569996, 33.017418, 45.095390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412800, 33.169468, 45.194233>,  <36.150803, 33.422886, 45.358971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412800, 33.169468, 45.194233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296712, -0.285618, 0.911254,
		-0.694946, -0.719061, 0.000903,
		0.654989, -0.633541, -0.411843,
		36.609299, 32.979404, 45.070679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186417, 32.798435, 45.794514>,  <36.150803, 33.422886, 45.358971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186417, 32.798435, 45.794514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535576, 32.759579, 45.603264>,  <36.745071, 32.736267, 45.488514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535576, 32.759579, 45.603264>,  <36.186417, 32.798435, 45.794514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535576, 32.759579, 45.603264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350347, -0.557236, 0.752825,
		-0.339557, -0.824653, -0.452381,
		0.872902, -0.097137, -0.478128,
		36.797447, 32.730438, 45.459827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456192, 32.080013, 45.775013>,  <36.186417, 32.798435, 45.794514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456192, 32.080013, 45.775013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786625, 32.303349, 45.744438>,  <36.984886, 32.437347, 45.726093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786625, 32.303349, 45.744438>,  <36.456192, 32.080013, 45.775013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786625, 32.303349, 45.744438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394063, -0.475355, 0.786608,
		0.402858, -0.679926, -0.612704,
		0.826087, 0.558335, -0.076433,
		37.034451, 32.470848, 45.721508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923073, 31.633331, 45.975471>,  <36.456192, 32.080013, 45.775013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923073, 31.633331, 45.975471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110222, 31.984537, 46.015850>,  <37.222511, 32.195259, 46.040077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110222, 31.984537, 46.015850>,  <36.923073, 31.633331, 45.975471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110222, 31.984537, 46.015850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551732, -0.379399, 0.742730,
		0.690426, -0.291805, -0.661938,
		0.467871, 0.878013, 0.100948,
		37.250584, 32.247940, 46.046135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592640, 31.423964, 45.984646>,  <36.923073, 31.633331, 45.975471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592640, 31.423964, 45.984646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569801, 31.795671, 46.130630>,  <37.556099, 32.018696, 46.218224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569801, 31.795671, 46.130630>,  <37.592640, 31.423964, 45.984646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569801, 31.795671, 46.130630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385336, -0.316723, 0.866720,
		0.921008, 0.190124, -0.339995,
		-0.057100, 0.929268, 0.364966,
		37.552673, 32.074451, 46.240120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191933, 31.510204, 46.293465>,  <37.592640, 31.423964, 45.984646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191933, 31.510204, 46.293465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977135, 31.809019, 46.450214>,  <37.848255, 31.988308, 46.544266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977135, 31.809019, 46.450214>,  <38.191933, 31.510204, 46.293465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977135, 31.809019, 46.450214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329497, -0.241894, 0.912644,
		0.776572, 0.619210, -0.116250,
		-0.536998, 0.747038, 0.391876,
		37.816036, 32.033131, 46.567776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688179, 31.870848, 46.691517>,  <38.191933, 31.510204, 46.293465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688179, 31.870848, 46.691517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.319584, 31.943016, 46.829102>,  <38.098427, 31.986317, 46.911652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.319584, 31.943016, 46.829102>,  <38.688179, 31.870848, 46.691517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319584, 31.943016, 46.829102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292214, -0.261361, 0.919946,
		0.255876, 0.948229, 0.188119,
		-0.921487, 0.180421, 0.343962,
		38.043137, 31.997143, 46.932289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243969, 32.018250, 47.140755>,  <38.688179, 31.870848, 46.691517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243969, 32.018250, 47.140755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578617, 32.214489, 47.238220>,  <39.779408, 32.332233, 47.296700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578617, 32.214489, 47.238220>,  <39.243969, 32.018250, 47.140755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578617, 32.214489, 47.238220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247270, 0.058684, -0.967168,
		-0.488792, 0.869406, -0.072214,
		0.836624, 0.490601, 0.243662,
		39.829605, 32.361668, 47.311317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194981, 32.588619, 46.784527>,  <39.243969, 32.018250, 47.140755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194981, 32.588619, 46.784527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585140, 32.554886, 46.865997>,  <39.819237, 32.534645, 46.914879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585140, 32.554886, 46.865997>,  <39.194981, 32.588619, 46.784527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585140, 32.554886, 46.865997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217299, 0.212323, -0.952733,
		0.037103, 0.973554, 0.225426,
		0.975400, -0.084334, 0.203674,
		39.877762, 32.529587, 46.927101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513401, 33.100010, 46.436878>,  <39.194981, 32.588619, 46.784527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513401, 33.100010, 46.436878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807476, 32.833355, 46.486027>,  <39.983921, 32.673363, 46.515514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807476, 32.833355, 46.486027>,  <39.513401, 33.100010, 46.436878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807476, 32.833355, 46.486027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376872, 0.251311, -0.891521,
		0.563441, 0.701742, 0.435997,
		0.735188, -0.666634, 0.122868,
		40.028034, 32.633366, 46.522888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169456, 33.444622, 46.319229>,  <39.513401, 33.100010, 46.436878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169456, 33.444622, 46.319229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248672, 33.055420, 46.271832>,  <40.296204, 32.821899, 46.243393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248672, 33.055420, 46.271832>,  <40.169456, 33.444622, 46.319229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248672, 33.055420, 46.271832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357387, 0.184246, -0.915602,
		0.912718, 0.138978, 0.384228,
		0.198041, -0.973005, -0.118496,
		40.308086, 32.763519, 46.236282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963390, 33.381351, 46.169041>,  <40.169456, 33.444622, 46.319229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963390, 33.381351, 46.169041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748833, 33.068878, 46.041271>,  <40.620098, 32.881393, 45.964611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748833, 33.068878, 46.041271>,  <40.963390, 33.381351, 46.169041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748833, 33.068878, 46.041271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428072, 0.074351, -0.900681,
		0.727347, -0.619857, 0.294521,
		-0.536396, -0.781184, -0.319423,
		40.587914, 32.834522, 45.945446>
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
