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
	<24.823215, 34.852226, 34.573944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.563828, 35.097652, 34.754177>,  <24.408195, 35.244907, 34.862316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.563828, 35.097652, 34.754177>,  <24.823215, 34.852226, 34.573944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.563828, 35.097652, 34.754177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564364, -0.009732, 0.825468,
		0.510861, 0.789587, -0.339961,
		-0.648470, 0.613562, 0.450587,
		24.369286, 35.281719, 34.889355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.142546, 35.402229, 34.912792>,  <24.823215, 34.852226, 34.573944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.142546, 35.402229, 34.912792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.798882, 35.374199, 35.115547>,  <24.592684, 35.357380, 35.237202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.798882, 35.374199, 35.115547>,  <25.142546, 35.402229, 34.912792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.798882, 35.374199, 35.115547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511104, -0.165641, 0.843407,
		0.024856, 0.983693, 0.178130,
		-0.859159, -0.070080, 0.506887,
		24.541134, 35.353176, 35.267612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.218534, 36.061882, 35.415802>,  <25.142546, 35.402229, 34.912792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.218534, 36.061882, 35.415802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.981962, 35.771343, 35.555878>,  <24.840019, 35.597019, 35.639923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.981962, 35.771343, 35.555878>,  <25.218534, 36.061882, 35.415802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.981962, 35.771343, 35.555878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516962, -0.008258, 0.855968,
		-0.618839, 0.687278, 0.380378,
		-0.591429, -0.726348, 0.350186,
		24.804533, 35.553440, 35.660934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.874577, 35.699959, 35.200550>,  <25.218534, 36.061882, 35.415802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.874577, 35.699959, 35.200550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.066437, 35.429192, 34.977226>,  <26.181553, 35.266731, 34.843231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.066437, 35.429192, 34.977226>,  <25.874577, 35.699959, 35.200550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.066437, 35.429192, 34.977226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128175, 0.575406, -0.807761,
		0.868047, 0.459006, 0.189231,
		0.479652, -0.676920, -0.558313,
		26.210333, 35.226116, 34.809731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.307579, 35.975109, 34.795994>,  <25.874577, 35.699959, 35.200550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.307579, 35.975109, 34.795994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.168671, 35.640659, 34.626144>,  <26.085325, 35.439991, 34.524235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.168671, 35.640659, 34.626144>,  <26.307579, 35.975109, 34.795994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.168671, 35.640659, 34.626144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088380, 0.479966, -0.872824,
		0.933590, -0.265580, -0.240576,
		-0.347273, -0.836121, -0.424620,
		26.064489, 35.389824, 34.498760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.583359, 35.949078, 35.486687>,  <26.307579, 35.975109, 34.795994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.583359, 35.949078, 35.486687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945448, 35.817791, 35.378731>,  <27.162703, 35.739017, 35.313957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945448, 35.817791, 35.378731>,  <26.583359, 35.949078, 35.486687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.945448, 35.817791, 35.378731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413112, 0.828508, 0.378038,
		0.099530, -0.453705, 0.885577,
		0.905225, -0.328216, -0.269892,
		27.217016, 35.719326, 35.297764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.117323, 36.144989, 35.997288>,  <26.583359, 35.949078, 35.486687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.117323, 36.144989, 35.997288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.386328, 36.067387, 35.711605>,  <27.547731, 36.020824, 35.540195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.386328, 36.067387, 35.711605>,  <27.117323, 36.144989, 35.997288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.386328, 36.067387, 35.711605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511982, 0.818807, 0.259672,
		0.534417, -0.540293, 0.649986,
		0.672512, -0.194008, -0.714205,
		27.588081, 36.009186, 35.497345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.799740, 36.384838, 36.215866>,  <27.117323, 36.144989, 35.997288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.799740, 36.384838, 36.215866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.835123, 36.378014, 35.817493>,  <27.856354, 36.373920, 35.578468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.835123, 36.378014, 35.817493>,  <27.799740, 36.384838, 36.215866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.835123, 36.378014, 35.817493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392770, 0.919438, 0.019134,
		0.915373, -0.392865, 0.088032,
		0.088457, -0.017062, -0.995934,
		27.861660, 36.372894, 35.518715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.439209, 36.658482, 36.107307>,  <27.799740, 36.384838, 36.215866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.439209, 36.658482, 36.107307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.225088, 36.700737, 35.772095>,  <28.096615, 36.726089, 35.570969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.225088, 36.700737, 35.772095>,  <28.439209, 36.658482, 36.107307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.225088, 36.700737, 35.772095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381882, 0.915226, -0.128560,
		0.753404, -0.388847, -0.530264,
		-0.535301, 0.105641, -0.838029,
		28.064497, 36.732430, 35.520687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865465, 37.137413, 35.736137>,  <28.439209, 36.658482, 36.107307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865465, 37.137413, 35.736137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511145, 37.138718, 35.550518>,  <28.298552, 37.139500, 35.439144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511145, 37.138718, 35.550518>,  <28.865465, 37.137413, 35.736137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.511145, 37.138718, 35.550518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117110, 0.969183, -0.216724,
		0.449043, -0.246320, -0.858887,
		-0.885802, 0.003266, -0.464051,
		28.245403, 37.139698, 35.411304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.963240, 37.442719, 35.113522>,  <28.865465, 37.137413, 35.736137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.963240, 37.442719, 35.113522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.573486, 37.481907, 35.194492>,  <28.339634, 37.505421, 35.243076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.573486, 37.481907, 35.194492>,  <28.963240, 37.442719, 35.113522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.573486, 37.481907, 35.194492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069773, 0.987398, -0.142048,
		-0.213795, -0.124285, -0.968940,
		-0.974384, 0.097975, 0.202429,
		28.281172, 37.511299, 35.255222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768520, 37.848755, 34.572781>,  <28.963240, 37.442719, 35.113522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768520, 37.848755, 34.572781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.478340, 37.881927, 34.846085>,  <28.304232, 37.901833, 35.010067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.478340, 37.881927, 34.846085>,  <28.768520, 37.848755, 34.572781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.478340, 37.881927, 34.846085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170420, 0.940159, -0.295055,
		-0.666844, -0.330489, -0.667905,
		-0.725450, 0.082931, 0.683261,
		28.260706, 37.906807, 35.051064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280539, 37.978573, 34.204906>,  <28.768520, 37.848755, 34.572781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.280539, 37.978573, 34.204906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185158, 38.096413, 34.575066>,  <28.127930, 38.167114, 34.797161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185158, 38.096413, 34.575066>,  <28.280539, 37.978573, 34.204906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185158, 38.096413, 34.575066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216044, 0.912912, -0.346290,
		-0.946819, -0.282499, -0.154039,
		-0.238451, 0.294595, 0.925394,
		28.113623, 38.184792, 34.852684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.666786, 38.306793, 34.118275>,  <28.280539, 37.978573, 34.204906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.666786, 38.306793, 34.118275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.811768, 38.446285, 34.463993>,  <27.898756, 38.529980, 34.671425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.811768, 38.446285, 34.463993>,  <27.666786, 38.306793, 34.118275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.811768, 38.446285, 34.463993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160131, 0.936869, -0.310862,
		-0.918143, -0.025728, 0.395413,
		0.362452, 0.348734, 0.864299,
		27.920504, 38.550907, 34.723282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.181509, 38.835041, 34.292919>,  <27.666786, 38.306793, 34.118275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.181509, 38.835041, 34.292919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.524059, 38.892166, 34.491405>,  <27.729589, 38.926441, 34.610497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.524059, 38.892166, 34.491405>,  <27.181509, 38.835041, 34.292919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.524059, 38.892166, 34.491405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019339, 0.969189, -0.245557,
		-0.515993, 0.200693, 0.832751,
		0.856374, 0.142810, 0.496214,
		27.780972, 38.935009, 34.640270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.212748, 39.525280, 34.599968>,  <27.181509, 38.835041, 34.292919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.212748, 39.525280, 34.599968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.602413, 39.438026, 34.623363>,  <27.836212, 39.385674, 34.637402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.602413, 39.438026, 34.623363>,  <27.212748, 39.525280, 34.599968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.602413, 39.438026, 34.623363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216260, 0.975647, 0.036680,
		-0.065070, -0.023082, 0.997614,
		0.974165, -0.218130, 0.058494,
		27.894663, 39.372589, 34.640911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583069, 39.914120, 35.154808>,  <27.212748, 39.525280, 34.599968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583069, 39.914120, 35.154808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.865660, 39.813595, 34.890163>,  <28.035215, 39.753281, 34.731377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.865660, 39.813595, 34.890163>,  <27.583069, 39.914120, 35.154808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.865660, 39.813595, 34.890163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311129, 0.949937, -0.028599,
		0.635677, -0.185643, 0.749301,
		0.706479, -0.251309, -0.661612,
		28.077604, 39.738201, 34.691681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.163702, 40.262470, 35.348305>,  <27.583069, 39.914120, 35.154808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.163702, 40.262470, 35.348305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.252314, 40.166817, 34.970154>,  <28.305481, 40.109425, 34.743263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.252314, 40.166817, 34.970154>,  <28.163702, 40.262470, 35.348305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.252314, 40.166817, 34.970154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495344, 0.862671, -0.102144,
		0.839976, -0.445660, 0.309560,
		0.221527, -0.239137, -0.945378,
		28.318771, 40.095074, 34.686539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724554, 40.720036, 35.250252>,  <28.163702, 40.262470, 35.348305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.724554, 40.720036, 35.250252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.644293, 40.592316, 34.879784>,  <28.596136, 40.515686, 34.657505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.644293, 40.592316, 34.879784>,  <28.724554, 40.720036, 35.250252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644293, 40.592316, 34.879784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345763, 0.861474, -0.371902,
		0.916617, -0.394858, -0.062456,
		-0.200652, -0.319297, -0.926169,
		28.584097, 40.496525, 34.601933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.342279, 40.780022, 34.789066>,  <28.724554, 40.720036, 35.250252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.342279, 40.780022, 34.789066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017107, 40.790611, 34.556362>,  <28.822004, 40.796967, 34.416740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017107, 40.790611, 34.556362>,  <29.342279, 40.780022, 34.789066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.017107, 40.790611, 34.556362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316258, 0.858893, -0.402843,
		0.489004, -0.511470, -0.706593,
		-0.812930, 0.026474, -0.581759,
		28.773228, 40.798553, 34.381836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552979, 40.867462, 34.146877>,  <29.342279, 40.780022, 34.789066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552979, 40.867462, 34.146877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.169003, 40.974487, 34.113579>,  <28.938618, 41.038704, 34.093601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.169003, 40.974487, 34.113579>,  <29.552979, 40.867462, 34.146877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169003, 40.974487, 34.113579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258620, 0.731618, -0.630754,
		-0.107865, -0.627013, -0.771505,
		-0.959938, 0.267563, -0.083242,
		28.881021, 41.054756, 34.088608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414221, 41.040680, 33.401218>,  <29.552979, 40.867462, 34.146877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.414221, 41.040680, 33.401218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140154, 41.214928, 33.634724>,  <28.975714, 41.319477, 33.774826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140154, 41.214928, 33.634724>,  <29.414221, 41.040680, 33.401218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.140154, 41.214928, 33.634724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097249, 0.848988, -0.519386,
		-0.721864, -0.299096, -0.624062,
		-0.685168, 0.435616, 0.583767,
		28.934603, 41.345612, 33.809853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058903, 41.347565, 32.928783>,  <29.414221, 41.040680, 33.401218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058903, 41.347565, 32.928783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.964403, 41.559265, 33.254749>,  <28.907703, 41.686283, 33.450329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.964403, 41.559265, 33.254749>,  <29.058903, 41.347565, 32.928783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.964403, 41.559265, 33.254749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080679, 0.825074, -0.559235,
		-0.968337, -0.197866, -0.152226,
		-0.236251, 0.529247, 0.814913,
		28.893528, 41.718040, 33.499222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586611, 41.918766, 32.673485>,  <29.058903, 41.347565, 32.928783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.586611, 41.918766, 32.673485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.712761, 42.038055, 33.033840>,  <28.788450, 42.109627, 33.250053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.712761, 42.038055, 33.033840>,  <28.586611, 41.918766, 32.673485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.712761, 42.038055, 33.033840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064580, 0.940392, -0.333904,
		-0.946767, 0.163484, 0.277316,
		0.315374, 0.298220, 0.900891,
		28.807373, 42.127522, 33.304108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.188160, 42.552429, 33.027828>,  <28.586611, 41.918766, 32.673485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.188160, 42.552429, 33.027828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578394, 42.511513, 33.105568>,  <28.812534, 42.486961, 33.152214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578394, 42.511513, 33.105568>,  <28.188160, 42.552429, 33.027828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578394, 42.511513, 33.105568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165989, 0.922883, -0.347468,
		-0.143821, 0.371244, 0.917329,
		0.975583, -0.102293, 0.194353,
		28.871069, 42.480824, 33.163872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.318602, 43.003681, 33.653095>,  <28.188160, 42.552429, 33.027828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.318602, 43.003681, 33.653095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.607521, 42.966465, 33.378975>,  <28.780872, 42.944138, 33.214504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.607521, 42.966465, 33.378975>,  <28.318602, 43.003681, 33.653095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.607521, 42.966465, 33.378975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009337, 0.992131, -0.124852,
		0.691520, 0.083781, 0.717482,
		0.722297, -0.093037, -0.685297,
		28.824209, 42.938553, 33.173386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912914, 43.413143, 33.835358>,  <28.318602, 43.003681, 33.653095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912914, 43.413143, 33.835358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.836170, 43.366447, 33.445576>,  <28.790123, 43.338432, 33.211708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.836170, 43.366447, 33.445576>,  <28.912914, 43.413143, 33.835358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.836170, 43.366447, 33.445576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183833, 0.979602, -0.081158,
		0.964052, 0.163565, -0.209407,
		-0.191861, -0.116737, -0.974455,
		28.778612, 43.331425, 33.153240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386339, 43.958267, 33.465282>,  <28.912914, 43.413143, 33.835358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386339, 43.958267, 33.465282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032223, 43.894833, 33.290417>,  <28.819754, 43.856773, 33.185497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032223, 43.894833, 33.290417>,  <29.386339, 43.958267, 33.465282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032223, 43.894833, 33.290417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211458, 0.974528, 0.074699,
		0.414185, 0.158572, -0.896273,
		-0.885289, -0.158585, -0.437166,
		28.766636, 43.847256, 33.159267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.678875, 43.383492, 33.081547>,  <29.386339, 43.958267, 33.465282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.678875, 43.383492, 33.081547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827629, 43.140514, 32.800774>,  <29.916882, 42.994728, 32.632309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827629, 43.140514, 32.800774>,  <29.678875, 43.383492, 33.081547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.827629, 43.140514, 32.800774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878474, -0.014060, 0.477582,
		-0.299974, -0.794237, 0.528396,
		0.371885, -0.607445, -0.701935,
		29.939194, 42.958282, 32.590195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898178, 42.571148, 33.272575>,  <29.678875, 43.383492, 33.081547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898178, 42.571148, 33.272575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099710, 42.796925, 33.011021>,  <30.220629, 42.932392, 32.854088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099710, 42.796925, 33.011021>,  <29.898178, 42.571148, 33.272575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099710, 42.796925, 33.011021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824742, -0.089272, 0.558419,
		0.256821, -0.820632, -0.510496,
		0.503829, 0.564440, -0.653883,
		30.250860, 42.966255, 32.814857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.557962, 42.232651, 33.045238>,  <29.898178, 42.571148, 33.272575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.557962, 42.232651, 33.045238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.619270, 42.627754, 33.056816>,  <30.656055, 42.864819, 33.063763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.619270, 42.627754, 33.056816>,  <30.557962, 42.232651, 33.045238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619270, 42.627754, 33.056816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804781, -0.141768, 0.576393,
		0.573442, -0.065048, -0.816660,
		0.153269, 0.987760, 0.028947,
		30.665251, 42.924084, 33.065498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.163185, 42.412998, 32.711704>,  <30.557962, 42.232651, 33.045238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.163185, 42.412998, 32.711704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062180, 42.661942, 33.008057>,  <31.001575, 42.811310, 33.185867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062180, 42.661942, 33.008057>,  <31.163185, 42.412998, 32.711704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062180, 42.661942, 33.008057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912116, -0.102436, 0.396927,
		0.322925, 0.775999, -0.541798,
		-0.252515, 0.622360, 0.740880,
		30.986425, 42.848648, 33.230320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631268, 42.941700, 32.738068>,  <31.163185, 42.412998, 32.711704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631268, 42.941700, 32.738068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524115, 42.898304, 33.120998>,  <31.459822, 42.872265, 33.350758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524115, 42.898304, 33.120998>,  <31.631268, 42.941700, 32.738068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524115, 42.898304, 33.120998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957038, -0.144423, 0.251437,
		0.110980, 0.983550, 0.142521,
		-0.267884, -0.108493, 0.957323,
		31.443748, 42.865757, 33.408195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272846, 43.034302, 33.196194>,  <31.631268, 42.941700, 32.738068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272846, 43.034302, 33.196194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042042, 42.831242, 33.452118>,  <31.903561, 42.709408, 33.605671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042042, 42.831242, 33.452118>,  <32.272846, 43.034302, 33.196194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042042, 42.831242, 33.452118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807344, -0.472989, 0.352813,
		0.123518, 0.720122, 0.682764,
		-0.577008, -0.507647, 0.639809,
		31.868938, 42.678947, 33.644062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515060, 42.903774, 33.914936>,  <32.272846, 43.034302, 33.196194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515060, 42.903774, 33.914936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281937, 42.596615, 33.808605>,  <32.142063, 42.412319, 33.744808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281937, 42.596615, 33.808605>,  <32.515060, 42.903774, 33.914936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281937, 42.596615, 33.808605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637450, -0.634914, 0.436511,
		-0.503972, 0.084955, 0.859532,
		-0.582813, -0.767898, -0.265824,
		32.107094, 42.366245, 33.728859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990749, 42.532635, 34.330124>,  <32.515060, 42.903774, 33.914936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990749, 42.532635, 34.330124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616219, 42.615189, 34.443752>,  <32.391499, 42.664722, 34.511929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616219, 42.615189, 34.443752>,  <32.990749, 42.532635, 34.330124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616219, 42.615189, 34.443752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092720, -0.634973, 0.766950,
		0.338665, 0.744455, 0.575407,
		-0.936328, 0.206387, 0.284069,
		32.335320, 42.677105, 34.528973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992550, 42.116673, 34.898449>,  <32.990749, 42.532635, 34.330124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992550, 42.116673, 34.898449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616608, 42.248062, 34.860989>,  <32.391041, 42.326897, 34.838512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616608, 42.248062, 34.860989>,  <32.992550, 42.116673, 34.898449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616608, 42.248062, 34.860989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292651, -0.633035, 0.716674,
		0.176128, 0.700978, 0.691092,
		-0.939859, 0.328475, -0.093647,
		32.334652, 42.346603, 34.832893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666138, 42.158348, 35.632992>,  <32.992550, 42.116673, 34.898449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666138, 42.158348, 35.632992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379944, 42.109070, 35.357918>,  <32.208229, 42.079502, 35.192875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379944, 42.109070, 35.357918>,  <32.666138, 42.158348, 35.632992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379944, 42.109070, 35.357918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463578, -0.652684, 0.599248,
		-0.522666, 0.747546, 0.409872,
		-0.715483, -0.123198, -0.687682,
		32.165298, 42.072109, 35.151611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000854, 42.011444, 35.989101>,  <32.666138, 42.158348, 35.632992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000854, 42.011444, 35.989101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940849, 41.881424, 35.615612>,  <31.904846, 41.803410, 35.391518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940849, 41.881424, 35.615612>,  <32.000854, 42.011444, 35.989101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940849, 41.881424, 35.615612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452768, -0.816972, 0.357152,
		-0.878918, 0.476338, -0.024614,
		-0.150017, -0.325052, -0.933722,
		31.895844, 41.783909, 35.335495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450558, 41.653027, 36.035496>,  <32.000854, 42.011444, 35.989101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450558, 41.653027, 36.035496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578978, 41.505394, 35.686623>,  <31.656031, 41.416817, 35.477299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578978, 41.505394, 35.686623>,  <31.450558, 41.653027, 36.035496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578978, 41.505394, 35.686623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374973, -0.895216, 0.240797,
		-0.869667, 0.249737, -0.425806,
		0.321052, -0.369079, -0.872185,
		31.675293, 41.394669, 35.424969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870441, 41.135384, 35.847321>,  <31.450558, 41.653027, 36.035496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870441, 41.135384, 35.847321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197639, 41.044895, 35.635769>,  <31.393957, 40.990601, 35.508839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197639, 41.044895, 35.635769>,  <30.870441, 41.135384, 35.847321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197639, 41.044895, 35.635769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178417, -0.973857, 0.140607,
		-0.546858, -0.020655, -0.836971,
		0.817994, -0.226222, -0.528876,
		31.443037, 40.977028, 35.477104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642336, 40.634987, 35.387985>,  <30.870441, 41.135384, 35.847321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642336, 40.634987, 35.387985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040731, 40.599400, 35.384212>,  <31.279770, 40.578049, 35.381950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040731, 40.599400, 35.384212>,  <30.642336, 40.634987, 35.387985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040731, 40.599400, 35.384212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089195, -0.995634, -0.027516,
		-0.006943, 0.028247, -0.999577,
		0.995990, -0.088966, -0.009432,
		31.339529, 40.572708, 35.381382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812187, 40.321381, 34.743637>,  <30.642336, 40.634987, 35.387985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812187, 40.321381, 34.743637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.105944, 40.242378, 35.003380>,  <31.282198, 40.194977, 35.159225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.105944, 40.242378, 35.003380>,  <30.812187, 40.321381, 34.743637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105944, 40.242378, 35.003380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053476, -0.970586, -0.234739,
		0.676616, 0.137666, -0.723352,
		0.734391, -0.197510, 0.649353,
		31.326262, 40.183125, 35.198185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313873, 39.857384, 34.319683>,  <30.812187, 40.321381, 34.743637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.313873, 39.857384, 34.319683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399477, 39.789246, 34.704430>,  <31.450840, 39.748363, 34.935276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399477, 39.789246, 34.704430>,  <31.313873, 39.857384, 34.319683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399477, 39.789246, 34.704430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013379, -0.985096, -0.171484,
		0.976740, 0.023830, -0.213100,
		0.214010, -0.170347, 0.961864,
		31.463680, 39.738140, 34.992989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955616, 39.378281, 34.409698>,  <31.313873, 39.857384, 34.319683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955616, 39.378281, 34.409698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737606, 39.349327, 34.743813>,  <31.606800, 39.331955, 34.944283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737606, 39.349327, 34.743813>,  <31.955616, 39.378281, 34.409698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737606, 39.349327, 34.743813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019161, -0.994931, -0.098721,
		0.838200, -0.069810, 0.540876,
		-0.545026, -0.072384, 0.835289,
		31.574099, 39.327610, 34.994400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151428, 38.691124, 34.724880>,  <31.955616, 39.378281, 34.409698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151428, 38.691124, 34.724880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820349, 38.793858, 34.924461>,  <31.621702, 38.855495, 35.044212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820349, 38.793858, 34.924461>,  <32.151428, 38.691124, 34.724880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820349, 38.793858, 34.924461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314126, -0.948818, -0.032696,
		0.465021, -0.183798, 0.866010,
		-0.827695, 0.256832, 0.498956,
		31.572041, 38.870907, 35.074150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062447, 38.231377, 35.164406>,  <32.151428, 38.691124, 34.724880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062447, 38.231377, 35.164406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699934, 38.400238, 35.172791>,  <31.482428, 38.501556, 35.177822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699934, 38.400238, 35.172791>,  <32.062447, 38.231377, 35.164406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699934, 38.400238, 35.172791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422479, -0.903220, -0.075532,
		-0.012951, -0.077311, 0.996923,
		-0.906280, 0.422157, 0.020965,
		31.428049, 38.526886, 35.179081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650688, 37.930302, 35.696293>,  <32.062447, 38.231377, 35.164406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650688, 37.930302, 35.696293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.387825, 38.066898, 35.427509>,  <31.230106, 38.148857, 35.266239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.387825, 38.066898, 35.427509>,  <31.650688, 37.930302, 35.696293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387825, 38.066898, 35.427509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419356, -0.906415, -0.050518,
		-0.626326, 0.248592, 0.738863,
		-0.657158, 0.341487, -0.671960,
		31.190678, 38.169346, 35.225922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985048, 37.696060, 35.881863>,  <31.650688, 37.930302, 35.696293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985048, 37.696060, 35.881863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942015, 37.761288, 35.489571>,  <30.916195, 37.800426, 35.254196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942015, 37.761288, 35.489571>,  <30.985048, 37.696060, 35.881863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.942015, 37.761288, 35.489571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328194, -0.936983, -0.119796,
		-0.938464, 0.308983, 0.154319,
		-0.107580, 0.163071, -0.980732,
		30.909740, 37.810211, 35.195351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.418186, 37.410469, 35.811806>,  <30.985048, 37.696060, 35.881863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.418186, 37.410469, 35.811806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517883, 37.460381, 35.427658>,  <30.577702, 37.490330, 35.197170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517883, 37.460381, 35.427658>,  <30.418186, 37.410469, 35.811806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517883, 37.460381, 35.427658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413045, -0.883248, -0.221959,
		-0.875940, 0.451997, -0.168605,
		0.249245, 0.124782, -0.960368,
		30.592657, 37.497814, 35.139549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814825, 37.245117, 35.456219>,  <30.418186, 37.410469, 35.811806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814825, 37.245117, 35.456219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.126045, 37.187534, 35.211624>,  <30.312777, 37.152985, 35.064869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.126045, 37.187534, 35.211624>,  <29.814825, 37.245117, 35.456219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.126045, 37.187534, 35.211624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412072, -0.851668, -0.323819,
		-0.474168, 0.503924, -0.721960,
		0.778050, -0.143955, -0.611486,
		30.359461, 37.144348, 35.028179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490797, 37.041981, 34.864315>,  <29.814825, 37.245117, 35.456219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490797, 37.041981, 34.864315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866074, 36.909050, 34.825623>,  <30.091240, 36.829292, 34.802406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866074, 36.909050, 34.825623>,  <29.490797, 37.041981, 34.864315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866074, 36.909050, 34.825623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338781, -0.824489, -0.453260,
		0.070872, 0.458017, -0.886114,
		0.938192, -0.332323, -0.096734,
		30.147532, 36.809353, 34.796604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472868, 36.651421, 34.138229>,  <29.490797, 37.041981, 34.864315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472868, 36.651421, 34.138229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814775, 36.528084, 34.305225>,  <30.019920, 36.454082, 34.405422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814775, 36.528084, 34.305225>,  <29.472868, 36.651421, 34.138229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814775, 36.528084, 34.305225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234099, -0.946968, -0.220110,
		0.463216, 0.090410, -0.881622,
		0.854768, -0.308345, 0.417486,
		30.071205, 36.435581, 34.430470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876080, 36.163723, 33.638760>,  <29.472868, 36.651421, 34.138229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876080, 36.163723, 33.638760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.012236, 36.095657, 34.008663>,  <30.093929, 36.054817, 34.230606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.012236, 36.095657, 34.008663>,  <29.876080, 36.163723, 33.638760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.012236, 36.095657, 34.008663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012614, -0.984226, -0.176467,
		0.940199, 0.048403, -0.337169,
		0.340392, -0.170167, 0.924757,
		30.114353, 36.044609, 34.286091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203100, 35.629719, 33.537178>,  <29.876080, 36.163723, 33.638760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203100, 35.629719, 33.537178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.166092, 35.642681, 33.935253>,  <30.143887, 35.650459, 34.174099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.166092, 35.642681, 33.935253>,  <30.203100, 35.629719, 33.537178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.166092, 35.642681, 33.935253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125922, -0.991826, 0.020592,
		0.987716, -0.123410, 0.095846,
		-0.092521, 0.032409, 0.995183,
		30.138336, 35.652405, 34.233807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.712801, 35.161003, 33.820782>,  <30.203100, 35.629719, 33.537178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.712801, 35.161003, 33.820782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426256, 35.187382, 34.098625>,  <30.254330, 35.203209, 34.265331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426256, 35.187382, 34.098625>,  <30.712801, 35.161003, 33.820782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426256, 35.187382, 34.098625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043666, -0.989335, 0.138958,
		0.696363, 0.129874, 0.705841,
		-0.716360, 0.065944, 0.694607,
		30.211348, 35.207165, 34.307007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979460, 34.853867, 34.439171>,  <30.712801, 35.161003, 33.820782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979460, 34.853867, 34.439171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.580799, 34.842106, 34.469681>,  <30.341602, 34.835049, 34.487988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.580799, 34.842106, 34.469681>,  <30.979460, 34.853867, 34.439171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580799, 34.842106, 34.469681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036152, -0.995406, 0.088658,
		0.073320, 0.091118, 0.993137,
		-0.996653, -0.029404, 0.076277,
		30.281803, 34.833286, 34.492565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285963, 34.648975, 35.163506>,  <30.979460, 34.853867, 34.439171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285963, 34.648975, 35.163506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320259, 34.530148, 34.783108>,  <31.340837, 34.458851, 34.554867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320259, 34.530148, 34.783108>,  <31.285963, 34.648975, 35.163506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320259, 34.530148, 34.783108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515767, 0.829895, -0.212739,
		0.852428, -0.472253, 0.224375,
		0.085741, -0.297070, -0.950998,
		31.345982, 34.441025, 34.497807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912994, 34.714958, 35.003757>,  <31.285963, 34.648975, 35.163506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912994, 34.714958, 35.003757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815214, 34.711842, 34.615906>,  <31.756546, 34.709972, 34.383194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815214, 34.711842, 34.615906>,  <31.912994, 34.714958, 35.003757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815214, 34.711842, 34.615906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508486, 0.850418, -0.135023,
		0.825643, -0.526050, -0.203924,
		-0.244449, -0.007789, -0.969631,
		31.741879, 34.709503, 34.325016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545425, 34.708611, 34.657650>,  <31.912994, 34.714958, 35.003757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545425, 34.708611, 34.657650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250488, 34.908787, 34.476151>,  <32.073528, 35.028893, 34.367249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250488, 34.908787, 34.476151>,  <32.545425, 34.708611, 34.657650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250488, 34.908787, 34.476151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533003, 0.843662, 0.064353,
		0.415017, -0.194401, -0.888802,
		-0.737338, 0.500442, -0.453751,
		32.029285, 35.058918, 34.340027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765827, 35.224716, 34.220200>,  <32.545425, 34.708611, 34.657650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765827, 35.224716, 34.220200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409004, 35.378822, 34.314693>,  <32.194912, 35.471287, 34.371387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409004, 35.378822, 34.314693>,  <32.765827, 35.224716, 34.220200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409004, 35.378822, 34.314693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395838, 0.918316, -0.002909,
		-0.218057, 0.090915, -0.971692,
		-0.892056, 0.385267, 0.236233,
		32.141388, 35.494404, 34.385563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757866, 36.001156, 33.944546>,  <32.765827, 35.224716, 34.220200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757866, 36.001156, 33.944546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469761, 35.961571, 34.219189>,  <32.296898, 35.937820, 34.383976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469761, 35.961571, 34.219189>,  <32.757866, 36.001156, 33.944546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469761, 35.961571, 34.219189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150363, 0.943968, 0.293796,
		-0.677211, 0.314850, -0.665023,
		-0.720262, -0.098967, 0.686607,
		32.253681, 35.931881, 34.425171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509254, 35.955940, 33.992229>,  <32.757866, 36.001156, 33.944546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509254, 35.955940, 33.992229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602448, 36.339222, 34.058643>,  <33.658363, 36.569191, 34.098492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602448, 36.339222, 34.058643>,  <33.509254, 35.955940, 33.992229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602448, 36.339222, 34.058643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423852, -0.253714, 0.869470,
		0.875253, -0.132201, -0.465247,
		0.232984, 0.958203, 0.166030,
		33.672344, 36.626682, 34.108452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245716, 36.118572, 34.062431>,  <33.509254, 35.955940, 33.992229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245716, 36.118572, 34.062431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021736, 36.347576, 34.301994>,  <33.887348, 36.484978, 34.445732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021736, 36.347576, 34.301994>,  <34.245716, 36.118572, 34.062431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021736, 36.347576, 34.301994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411591, -0.435137, 0.800780,
		0.719063, 0.694899, 0.008012,
		-0.559947, 0.572513, 0.598905,
		33.853752, 36.519329, 34.481667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970627, 36.017979, 33.949074>,  <34.245716, 36.118572, 34.062431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970627, 36.017979, 33.949074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850239, 36.280849, 34.225491>,  <34.778008, 36.438572, 34.391338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850239, 36.280849, 34.225491>,  <34.970627, 36.017979, 33.949074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850239, 36.280849, 34.225491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287119, 0.628567, -0.722818,
		-0.909384, -0.415956, -0.000491,
		-0.300969, 0.657178, 0.691038,
		34.759949, 36.478004, 34.432800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157852, 35.319210, 34.414822>,  <34.970627, 36.017979, 33.949074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157852, 35.319210, 34.414822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387192, 35.116547, 34.672367>,  <35.524796, 34.994949, 34.826897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387192, 35.116547, 34.672367>,  <35.157852, 35.319210, 34.414822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387192, 35.116547, 34.672367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495997, 0.410850, 0.764977,
		-0.652115, -0.757957, -0.015740,
		0.573353, -0.506660, 0.643865,
		35.559196, 34.964550, 34.865528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773643, 34.891705, 34.905655>,  <35.157852, 35.319210, 34.414822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773643, 34.891705, 34.905655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109447, 34.995255, 35.096741>,  <35.310928, 35.057384, 35.211391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109447, 34.995255, 35.096741>,  <34.773643, 34.891705, 34.905655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109447, 34.995255, 35.096741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541694, 0.467266, 0.698734,
		-0.042336, -0.845368, 0.532504,
		0.839509, 0.258873, 0.477713,
		35.361301, 35.072918, 35.240055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721638, 34.675652, 35.577389>,  <34.773643, 34.891705, 34.905655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721638, 34.675652, 35.577389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996464, 34.966270, 35.580944>,  <35.161358, 35.140640, 35.583076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996464, 34.966270, 35.580944>,  <34.721638, 34.675652, 35.577389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996464, 34.966270, 35.580944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465632, 0.430873, 0.773005,
		0.557792, -0.535241, 0.634338,
		0.687063, 0.726543, 0.008888,
		35.202583, 35.184235, 35.583611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860905, 34.837872, 36.268230>,  <34.721638, 34.675652, 35.577389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860905, 34.837872, 36.268230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977711, 35.171593, 36.081184>,  <35.047794, 35.371826, 35.968956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977711, 35.171593, 36.081184>,  <34.860905, 34.837872, 36.268230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977711, 35.171593, 36.081184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420357, 0.551125, 0.720807,
		0.859086, -0.013922, 0.511642,
		0.292014, 0.834307, -0.467611,
		35.065315, 35.421886, 35.940903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109474, 35.082256, 36.736645>,  <34.860905, 34.837872, 36.268230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109474, 35.082256, 36.736645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089119, 35.404842, 36.501007>,  <35.076904, 35.598392, 36.359623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089119, 35.404842, 36.501007>,  <35.109474, 35.082256, 36.736645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089119, 35.404842, 36.501007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332633, 0.542493, 0.771399,
		0.941683, 0.235206, 0.240649,
		-0.050887, 0.806461, -0.589094,
		35.073853, 35.646782, 36.324280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493279, 35.732971, 37.010303>,  <35.109474, 35.082256, 36.736645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493279, 35.732971, 37.010303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201618, 35.861069, 36.768379>,  <35.026623, 35.937927, 36.623226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201618, 35.861069, 36.768379>,  <35.493279, 35.732971, 37.010303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201618, 35.861069, 36.768379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369543, 0.559595, 0.741816,
		0.576007, 0.764395, -0.289683,
		-0.729146, 0.320241, -0.604807,
		34.982876, 35.957142, 36.586937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425426, 36.461296, 37.153152>,  <35.493279, 35.732971, 37.010303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425426, 36.461296, 37.153152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097210, 36.387035, 36.936913>,  <34.900280, 36.342480, 36.807171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097210, 36.387035, 36.936913>,  <35.425426, 36.461296, 37.153152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097210, 36.387035, 36.936913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522040, 0.628586, 0.576501,
		0.232780, 0.755256, -0.612700,
		-0.820541, -0.185656, -0.540596,
		34.851048, 36.331337, 36.774734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176033, 37.125343, 37.113415>,  <35.425426, 36.461296, 37.153152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176033, 37.125343, 37.113415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860065, 36.886181, 37.058952>,  <34.670483, 36.742683, 37.026276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860065, 36.886181, 37.058952>,  <35.176033, 37.125343, 37.113415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860065, 36.886181, 37.058952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505512, 0.509253, 0.696505,
		-0.347105, 0.619011, -0.704517,
		-0.789921, -0.597902, -0.136153,
		34.623089, 36.706810, 37.018105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557674, 37.601536, 37.201271>,  <35.176033, 37.125343, 37.113415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557674, 37.601536, 37.201271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387482, 37.239719, 37.212379>,  <34.285366, 37.022629, 37.219044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387482, 37.239719, 37.212379>,  <34.557674, 37.601536, 37.201271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387482, 37.239719, 37.212379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537411, 0.277243, 0.796446,
		-0.728118, 0.323947, -0.604071,
		-0.425481, -0.904541, 0.027773,
		34.259838, 36.968357, 37.220711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829987, 37.696121, 37.319633>,  <34.557674, 37.601536, 37.201271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829987, 37.696121, 37.319633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919640, 37.322762, 37.431725>,  <33.973431, 37.098743, 37.498978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919640, 37.322762, 37.431725>,  <33.829987, 37.696121, 37.319633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919640, 37.322762, 37.431725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517432, 0.129688, 0.845840,
		-0.825849, -0.334580, -0.453904,
		0.224135, -0.933401, 0.280225,
		33.986881, 37.042740, 37.515793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285976, 37.511528, 37.673481>,  <33.829987, 37.696121, 37.319633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285976, 37.511528, 37.673481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553745, 37.251698, 37.817665>,  <33.714405, 37.095798, 37.904175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553745, 37.251698, 37.817665>,  <33.285976, 37.511528, 37.673481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553745, 37.251698, 37.817665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370275, 0.128894, 0.919936,
		-0.644028, -0.749292, -0.154237,
		0.669420, -0.649575, 0.360456,
		33.754570, 37.056824, 37.925800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937878, 36.876457, 37.952045>,  <33.285976, 37.511528, 37.673481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937878, 36.876457, 37.952045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288544, 36.911171, 38.141327>,  <33.498943, 36.931999, 38.254894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288544, 36.911171, 38.141327>,  <32.937878, 36.876457, 37.952045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288544, 36.911171, 38.141327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476588, 0.022311, 0.878844,
		0.065712, -0.995977, 0.060919,
		0.876668, 0.086784, 0.473205,
		33.551544, 36.937206, 38.283287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731606, 36.466480, 38.454311>,  <32.937878, 36.876457, 37.952045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731606, 36.466480, 38.454311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041473, 36.666420, 38.609253>,  <33.227394, 36.786385, 38.702217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041473, 36.666420, 38.609253>,  <32.731606, 36.466480, 38.454311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041473, 36.666420, 38.609253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525960, 0.169213, 0.833506,
		0.351077, -0.849425, 0.393982,
		0.774669, 0.499844, 0.387356,
		33.273872, 36.816372, 38.725460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898014, 36.057529, 39.013611>,  <32.731606, 36.466480, 38.454311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898014, 36.057529, 39.013611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066986, 36.414021, 39.079659>,  <33.168369, 36.627914, 39.119289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066986, 36.414021, 39.079659>,  <32.898014, 36.057529, 39.013611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066986, 36.414021, 39.079659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241207, -0.065071, 0.968290,
		0.873713, -0.448860, 0.187483,
		0.422426, 0.891230, 0.165122,
		33.193714, 36.681389, 39.129196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317482, 35.891998, 39.607075>,  <32.898014, 36.057529, 39.013611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317482, 35.891998, 39.607075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252056, 36.286446, 39.595585>,  <33.212799, 36.523113, 39.588692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252056, 36.286446, 39.595585>,  <33.317482, 35.891998, 39.607075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252056, 36.286446, 39.595585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108345, 0.010988, 0.994053,
		0.980565, 0.165707, 0.105043,
		-0.163568, 0.986114, -0.028728,
		33.202988, 36.582279, 39.586967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754585, 36.172947, 40.080948>,  <33.317482, 35.891998, 39.607075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754585, 36.172947, 40.080948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476795, 36.451134, 40.007160>,  <33.310120, 36.618046, 39.962887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476795, 36.451134, 40.007160>,  <33.754585, 36.172947, 40.080948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476795, 36.451134, 40.007160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083668, 0.176578, 0.980724,
		0.714636, 0.696522, -0.064440,
		-0.694475, 0.695469, -0.184465,
		33.268452, 36.659775, 39.951820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874592, 36.675697, 40.509529>,  <33.754585, 36.172947, 40.080948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874592, 36.675697, 40.509529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492500, 36.764572, 40.431381>,  <33.263245, 36.817898, 40.384491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492500, 36.764572, 40.431381>,  <33.874592, 36.675697, 40.509529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492500, 36.764572, 40.431381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196649, 0.016596, 0.980334,
		0.221058, 0.974863, 0.027839,
		-0.955229, 0.222185, -0.195374,
		33.205933, 36.831226, 40.372768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620159, 37.286503, 40.965950>,  <33.874592, 36.675697, 40.509529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620159, 37.286503, 40.965950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292206, 37.092846, 40.843712>,  <33.095432, 36.976650, 40.770367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292206, 37.092846, 40.843712>,  <33.620159, 37.286503, 40.965950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292206, 37.092846, 40.843712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332600, -0.031694, 0.942535,
		-0.466007, 0.874415, -0.135040,
		-0.819887, -0.484142, -0.305600,
		33.046238, 36.947605, 40.752033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134808, 37.591217, 41.339397>,  <33.620159, 37.286503, 40.965950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134808, 37.591217, 41.339397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965744, 37.239922, 41.249901>,  <32.864304, 37.029144, 41.196205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965744, 37.239922, 41.249901>,  <33.134808, 37.591217, 41.339397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965744, 37.239922, 41.249901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356175, -0.066044, 0.932083,
		-0.833364, 0.473647, -0.284891,
		-0.422663, -0.878235, -0.223740,
		32.838943, 36.976452, 41.182777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575256, 37.716381, 41.619400>,  <33.134808, 37.591217, 41.339397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575256, 37.716381, 41.619400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587719, 37.317471, 41.592640>,  <32.595196, 37.078125, 41.576584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587719, 37.317471, 41.592640>,  <32.575256, 37.716381, 41.619400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587719, 37.317471, 41.592640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346857, -0.073558, 0.935029,
		-0.937400, -0.005929, -0.348203,
		0.031156, -0.997274, -0.066897,
		32.597065, 37.018288, 41.572571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888111, 37.518700, 41.695351>,  <32.575256, 37.716381, 41.619400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888111, 37.518700, 41.695351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115883, 37.198147, 41.768612>,  <32.252544, 37.005817, 41.812569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115883, 37.198147, 41.768612>,  <31.888111, 37.518700, 41.695351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115883, 37.198147, 41.768612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418616, -0.090934, 0.903599,
		-0.707470, -0.591206, -0.387250,
		0.569427, -0.801378, 0.183155,
		32.286713, 36.957733, 41.823559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478119, 37.001556, 41.945747>,  <31.888111, 37.518700, 41.695351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478119, 37.001556, 41.945747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845249, 36.924904, 42.084816>,  <32.065529, 36.878910, 42.168259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845249, 36.924904, 42.084816>,  <31.478119, 37.001556, 41.945747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845249, 36.924904, 42.084816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372226, -0.110960, 0.921486,
		-0.138014, -0.975173, -0.173174,
		0.917823, -0.191638, 0.347670,
		32.120598, 36.867413, 42.189117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285994, 36.353466, 42.314156>,  <31.478119, 37.001556, 41.945747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285994, 36.353466, 42.314156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.646551, 36.475494, 42.437069>,  <31.862885, 36.548710, 42.510815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.646551, 36.475494, 42.437069>,  <31.285994, 36.353466, 42.314156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646551, 36.475494, 42.437069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328655, 0.019998, 0.944238,
		0.281916, -0.952119, 0.118290,
		0.901393, 0.305072, 0.307281,
		31.916969, 36.567017, 42.529255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531534, 35.864944, 42.871162>,  <31.285994, 36.353466, 42.314156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531534, 35.864944, 42.871162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760826, 36.189175, 42.919125>,  <31.898401, 36.383713, 42.947903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760826, 36.189175, 42.919125>,  <31.531534, 35.864944, 42.871162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760826, 36.189175, 42.919125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167660, -0.027208, 0.985469,
		0.802057, -0.585005, 0.120304,
		0.573231, 0.810573, 0.119904,
		31.932795, 36.432346, 42.955097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000046, 35.728523, 43.464668>,  <31.531534, 35.864944, 42.871162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000046, 35.728523, 43.464668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958183, 36.122261, 43.407932>,  <31.933065, 36.358501, 43.373890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958183, 36.122261, 43.407932>,  <32.000046, 35.728523, 43.464668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958183, 36.122261, 43.407932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231919, 0.114536, 0.965968,
		0.967089, 0.133990, 0.216301,
		-0.104656, 0.984341, -0.141841,
		31.926786, 36.417564, 43.365379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444935, 36.051208, 43.927654>,  <32.000046, 35.728523, 43.464668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444935, 36.051208, 43.927654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167316, 36.324043, 43.835518>,  <32.000744, 36.487743, 43.780235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167316, 36.324043, 43.835518>,  <32.444935, 36.051208, 43.927654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167316, 36.324043, 43.835518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156799, 0.169050, 0.973055,
		0.702650, 0.711460, -0.010378,
		-0.694045, 0.682089, -0.230339,
		31.959103, 36.528671, 43.766415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580566, 36.608173, 44.435032>,  <32.444935, 36.051208, 43.927654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580566, 36.608173, 44.435032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216469, 36.648567, 44.274406>,  <31.998009, 36.672806, 44.178032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216469, 36.648567, 44.274406>,  <32.580566, 36.608173, 44.435032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216469, 36.648567, 44.274406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393223, 0.092965, 0.914731,
		0.129709, 0.990534, -0.044910,
		-0.910248, 0.100989, -0.401560,
		31.943394, 36.678864, 44.153938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178356, 37.223129, 44.732910>,  <32.580566, 36.608173, 44.435032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178356, 37.223129, 44.732910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908918, 36.955692, 44.606895>,  <31.747255, 36.795231, 44.531284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908918, 36.955692, 44.606895>,  <32.178356, 37.223129, 44.732910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908918, 36.955692, 44.606895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404126, -0.023712, 0.914396,
		-0.618831, 0.743249, -0.254224,
		-0.673596, -0.668594, -0.315040,
		31.706841, 36.755116, 44.512383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579508, 37.507988, 44.835354>,  <32.178356, 37.223129, 44.732910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579508, 37.507988, 44.835354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525412, 37.112068, 44.853260>,  <31.492954, 36.874516, 44.864002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525412, 37.112068, 44.853260>,  <31.579508, 37.507988, 44.835354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525412, 37.112068, 44.853260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374397, 0.092880, 0.922605,
		-0.917353, 0.108015, -0.383140,
		-0.135241, -0.989801, 0.044763,
		31.484838, 36.815128, 44.866688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098522, 37.413200, 45.348232>,  <31.579508, 37.507988, 44.835354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098522, 37.413200, 45.348232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178658, 37.025291, 45.292511>,  <31.226738, 36.792545, 45.259079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178658, 37.025291, 45.292511>,  <31.098522, 37.413200, 45.348232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178658, 37.025291, 45.292511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494298, -0.222811, 0.840253,
		-0.845893, -0.099477, -0.523994,
		0.200338, -0.969773, -0.139303,
		31.238758, 36.734360, 45.250721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563862, 37.014153, 45.522675>,  <31.098522, 37.413200, 45.348232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563862, 37.014153, 45.522675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865784, 36.754166, 45.558014>,  <31.046938, 36.598171, 45.579216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865784, 36.754166, 45.558014>,  <30.563862, 37.014153, 45.522675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.865784, 36.754166, 45.558014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209490, -0.111238, 0.971463,
		-0.621597, -0.751773, -0.220126,
		0.754806, -0.649972, 0.088344,
		31.092226, 36.559174, 45.584518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352068, 36.508350, 46.018532>,  <30.563862, 37.014153, 45.522675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352068, 36.508350, 46.018532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.748339, 36.453861, 46.018448>,  <30.986101, 36.421169, 46.018398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.748339, 36.453861, 46.018448>,  <30.352068, 36.508350, 46.018532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748339, 36.453861, 46.018448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033710, -0.246631, 0.968523,
		-0.131985, -0.959488, -0.248924,
		0.990679, -0.136222, -0.000208,
		31.045542, 36.412994, 46.018387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451576, 35.869129, 46.425110>,  <30.352068, 36.508350, 46.018532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451576, 35.869129, 46.425110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805670, 36.054741, 46.438034>,  <31.018126, 36.166107, 46.445789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805670, 36.054741, 46.438034>,  <30.451576, 35.869129, 46.425110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.805670, 36.054741, 46.438034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056792, -0.176763, 0.982614,
		0.461671, -0.868006, -0.182829,
		0.885231, 0.464027, 0.032311,
		31.071239, 36.193951, 46.447727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929405, 35.288071, 46.591148>,  <30.451576, 35.869129, 46.425110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929405, 35.288071, 46.591148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.108732, 35.636669, 46.670658>,  <31.216330, 35.845829, 46.718365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.108732, 35.636669, 46.670658>,  <30.929405, 35.288071, 46.591148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108732, 35.636669, 46.670658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203259, -0.315943, 0.926750,
		0.870457, -0.375076, -0.318782,
		0.448318, 0.871492, 0.198777,
		31.243227, 35.898117, 46.730289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473410, 35.047600, 46.961128>,  <30.929405, 35.288071, 46.591148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473410, 35.047600, 46.961128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425514, 35.436653, 47.040775>,  <31.396776, 35.670086, 47.088566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425514, 35.436653, 47.040775>,  <31.473410, 35.047600, 46.961128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425514, 35.436653, 47.040775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135412, -0.182690, 0.973801,
		0.983527, 0.143567, -0.109830,
		-0.119741, 0.972632, 0.199121,
		31.389591, 35.728443, 47.100513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090710, 35.188427, 47.257721>,  <31.473410, 35.047600, 46.961128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090710, 35.188427, 47.257721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822527, 35.455853, 47.386410>,  <31.661617, 35.616310, 47.463623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822527, 35.455853, 47.386410>,  <32.090710, 35.188427, 47.257721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822527, 35.455853, 47.386410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273021, -0.180876, 0.944851,
		0.689887, 0.721321, -0.061262,
		-0.670460, 0.668566, 0.321719,
		31.621389, 35.656422, 47.482925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334572, 35.389187, 47.896225>,  <32.090710, 35.188427, 47.257721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334572, 35.389187, 47.896225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958792, 35.524731, 47.916630>,  <31.733322, 35.606056, 47.928871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958792, 35.524731, 47.916630>,  <32.334572, 35.389187, 47.896225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958792, 35.524731, 47.916630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013434, -0.185161, 0.982616,
		0.342415, 0.922437, 0.178502,
		-0.939453, 0.338860, 0.051010,
		31.676956, 35.626389, 47.931934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310749, 35.697735, 48.585358>,  <32.334572, 35.389187, 47.896225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310749, 35.697735, 48.585358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937489, 35.627357, 48.459965>,  <31.713531, 35.585133, 48.384731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937489, 35.627357, 48.459965>,  <32.310749, 35.697735, 48.585358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937489, 35.627357, 48.459965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261905, -0.264569, 0.928121,
		-0.246235, 0.948181, 0.200803,
		-0.933153, -0.175945, -0.313480,
		31.657543, 35.574574, 48.365921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934710, 36.080894, 48.985302>,  <32.310749, 35.697735, 48.585358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934710, 36.080894, 48.985302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693174, 35.793118, 48.848022>,  <31.548254, 35.620453, 48.765656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693174, 35.793118, 48.848022>,  <31.934710, 36.080894, 48.985302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693174, 35.793118, 48.848022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034650, -0.406460, 0.913011,
		-0.796354, 0.563203, 0.220508,
		-0.603838, -0.719439, -0.343201,
		31.512024, 35.577286, 48.745064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424578, 36.101597, 49.422661>,  <31.934710, 36.080894, 48.985302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424578, 36.101597, 49.422661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488337, 35.744820, 49.253410>,  <31.526592, 35.530754, 49.151859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488337, 35.744820, 49.253410>,  <31.424578, 36.101597, 49.422661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488337, 35.744820, 49.253410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049106, -0.435237, 0.898976,
		-0.985993, -0.122515, -0.113174,
		0.159395, -0.891941, -0.423124,
		31.536156, 35.477238, 49.126472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950102, 35.510502, 49.607533>,  <31.424578, 36.101597, 49.422661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950102, 35.510502, 49.607533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311172, 35.363960, 49.517231>,  <31.527815, 35.276035, 49.463051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311172, 35.363960, 49.517231>,  <30.950102, 35.510502, 49.607533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311172, 35.363960, 49.517231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011765, -0.545423, 0.838078,
		-0.430160, -0.753857, -0.496650,
		0.902676, -0.366351, -0.225750,
		31.581976, 35.254055, 49.449505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933762, 34.751251, 49.617744>,  <30.950102, 35.510502, 49.607533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933762, 34.751251, 49.617744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.309181, 34.879700, 49.668354>,  <31.534433, 34.956768, 49.698719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.309181, 34.879700, 49.668354>,  <30.933762, 34.751251, 49.617744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.309181, 34.879700, 49.668354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158418, -0.726470, 0.668689,
		0.306648, -0.607552, -0.732698,
		0.938547, 0.321125, 0.126523,
		31.590746, 34.976036, 49.706310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336349, 34.134613, 49.515827>,  <30.933762, 34.751251, 49.617744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336349, 34.134613, 49.515827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479063, 34.427345, 49.748077>,  <31.564692, 34.602985, 49.887428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479063, 34.427345, 49.748077>,  <31.336349, 34.134613, 49.515827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479063, 34.427345, 49.748077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153875, -0.659076, 0.736166,
		0.921427, -0.173310, -0.347759,
		0.356785, 0.731835, 0.580623,
		31.586098, 34.646896, 49.922264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798208, 33.811474, 49.919117>,  <31.336349, 34.134613, 49.515827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798208, 33.811474, 49.919117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696016, 34.157707, 50.091389>,  <31.634701, 34.365448, 50.194752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696016, 34.157707, 50.091389>,  <31.798208, 33.811474, 49.919117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696016, 34.157707, 50.091389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291673, -0.355707, 0.887919,
		0.921768, 0.352465, -0.161592,
		-0.255481, 0.865587, 0.430684,
		31.619371, 34.417385, 50.220592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222828, 33.339233, 49.583969>,  <31.798208, 33.811474, 49.919117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222828, 33.339233, 49.583969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394077, 33.389454, 49.225986>,  <32.496826, 33.419586, 49.011196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394077, 33.389454, 49.225986>,  <32.222828, 33.339233, 49.583969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394077, 33.389454, 49.225986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889676, -0.115346, -0.441784,
		-0.158696, 0.985359, 0.062319,
		0.428127, 0.125553, -0.894955,
		32.522514, 33.427120, 48.957500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580025, 32.839211, 50.004967>,  <32.222828, 33.339233, 49.583969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580025, 32.839211, 50.004967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454918, 32.479645, 50.127686>,  <32.379852, 32.263905, 50.201317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454918, 32.479645, 50.127686>,  <32.580025, 32.839211, 50.004967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454918, 32.479645, 50.127686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132980, 0.361265, 0.922932,
		-0.940474, 0.247866, -0.232530,
		-0.312768, -0.898916, 0.306799,
		32.361088, 32.209969, 50.219727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963268, 32.952789, 50.394577>,  <32.580025, 32.839211, 50.004967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963268, 32.952789, 50.394577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165932, 32.637657, 50.534649>,  <32.287529, 32.448578, 50.618690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165932, 32.637657, 50.534649>,  <31.963268, 32.952789, 50.394577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165932, 32.637657, 50.534649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214968, 0.277903, 0.936247,
		-0.834916, -0.549636, -0.028555,
		0.506660, -0.787826, 0.350180,
		32.317928, 32.401310, 50.639702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331337, 32.738937, 49.940224>,  <31.963268, 32.952789, 50.394577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331337, 32.738937, 49.940224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.081366, 32.454075, 49.812286>,  <30.931383, 32.283157, 49.735523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.081366, 32.454075, 49.812286>,  <31.331337, 32.738937, 49.940224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081366, 32.454075, 49.812286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228916, 0.224530, -0.947198,
		0.746366, -0.665148, 0.022709,
		-0.624928, -0.712155, -0.319845,
		30.893887, 32.240429, 49.716331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629663, 32.170071, 49.588860>,  <31.331337, 32.738937, 49.940224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629663, 32.170071, 49.588860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258686, 32.201691, 49.442654>,  <31.036098, 32.220661, 49.354931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258686, 32.201691, 49.442654>,  <31.629663, 32.170071, 49.588860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258686, 32.201691, 49.442654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373057, 0.263470, -0.889614,
		0.025980, -0.961424, -0.273843,
		-0.927445, 0.079046, -0.365510,
		30.980453, 32.225403, 49.333000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596647, 31.934097, 48.913303>,  <31.629663, 32.170071, 49.588860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596647, 31.934097, 48.913303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262312, 32.153637, 48.918034>,  <31.061710, 32.285362, 48.920872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262312, 32.153637, 48.918034>,  <31.596647, 31.934097, 48.913303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262312, 32.153637, 48.918034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209746, 0.339172, -0.917044,
		-0.507330, -0.764019, -0.398612,
		-0.835837, 0.548851, 0.011822,
		31.011560, 32.318291, 48.921581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.142574, 31.819014, 48.326706>,  <31.596647, 31.934097, 48.913303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.142574, 31.819014, 48.326706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.068783, 32.191353, 48.452873>,  <31.024508, 32.414757, 48.528576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.068783, 32.191353, 48.452873>,  <31.142574, 31.819014, 48.326706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.068783, 32.191353, 48.452873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192564, 0.348941, -0.917148,
		-0.963788, -0.108455, -0.243619,
		-0.184478, 0.930848, 0.315420,
		31.013439, 32.470608, 48.547501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485939, 32.240108, 47.962532>,  <31.142574, 31.819014, 48.326706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485939, 32.240108, 47.962532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.748116, 32.506023, 48.105896>,  <30.905420, 32.665573, 48.191914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.748116, 32.506023, 48.105896>,  <30.485939, 32.240108, 47.962532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748116, 32.506023, 48.105896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199275, 0.305516, -0.931101,
		-0.728484, 0.681702, 0.067771,
		0.655439, 0.664787, 0.358410,
		30.944748, 32.705460, 48.213417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446991, 32.705246, 47.459499>,  <30.485939, 32.240108, 47.962532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446991, 32.705246, 47.459499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766806, 32.842091, 47.656963>,  <30.958694, 32.924198, 47.775440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766806, 32.842091, 47.656963>,  <30.446991, 32.705246, 47.459499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766806, 32.842091, 47.656963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405515, 0.298814, -0.863868,
		-0.443052, 0.890881, 0.100181,
		0.799539, 0.342113, 0.493656,
		31.006668, 32.944725, 47.805061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.484077, 33.392513, 47.370342>,  <30.446991, 32.705246, 47.459499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.484077, 33.392513, 47.370342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857492, 33.285297, 47.465565>,  <31.081541, 33.220970, 47.522697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857492, 33.285297, 47.465565>,  <30.484077, 33.392513, 47.370342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857492, 33.285297, 47.465565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329106, 0.377510, -0.865549,
		0.142131, 0.886365, 0.440631,
		0.933535, -0.268036, 0.238052,
		31.137552, 33.204887, 47.536980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851366, 33.920311, 47.069847>,  <30.484077, 33.392513, 47.370342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851366, 33.920311, 47.069847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.123810, 33.636951, 47.143890>,  <31.287277, 33.466938, 47.188316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.123810, 33.636951, 47.143890>,  <30.851366, 33.920311, 47.069847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.123810, 33.636951, 47.143890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443965, 0.198541, -0.873771,
		0.582223, 0.677317, 0.449731,
		0.681110, -0.708395, 0.185110,
		31.328142, 33.424435, 47.199425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373743, 34.169075, 46.827950>,  <30.851366, 33.920311, 47.069847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373743, 34.169075, 46.827950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497698, 33.788906, 46.838348>,  <31.572071, 33.560806, 46.844589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497698, 33.788906, 46.838348>,  <31.373743, 34.169075, 46.827950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497698, 33.788906, 46.838348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537753, 0.152651, -0.829168,
		0.784087, 0.270930, 0.558395,
		0.309886, -0.950418, 0.026002,
		31.590664, 33.503780, 46.846149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092751, 34.297321, 46.709530>,  <31.373743, 34.169075, 46.827950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092751, 34.297321, 46.709530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010624, 33.912025, 46.640224>,  <31.961348, 33.680847, 46.598640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010624, 33.912025, 46.640224>,  <32.092751, 34.297321, 46.709530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010624, 33.912025, 46.640224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642188, 0.000998, -0.766546,
		0.738539, -0.268651, 0.618375,
		-0.205316, -0.963237, -0.173261,
		31.949030, 33.623055, 46.588245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682373, 33.968536, 46.659348>,  <32.092751, 34.297321, 46.709530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682373, 33.968536, 46.659348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422935, 33.736225, 46.462563>,  <32.267273, 33.596836, 46.344494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422935, 33.736225, 46.462563>,  <32.682373, 33.968536, 46.659348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422935, 33.736225, 46.462563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643800, -0.073822, -0.761625,
		0.406021, -0.810705, 0.421788,
		-0.648590, -0.580782, -0.491958,
		32.228359, 33.561989, 46.314976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051689, 33.264164, 46.510853>,  <32.682373, 33.968536, 46.659348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051689, 33.264164, 46.510853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743145, 33.289070, 46.257515>,  <32.558018, 33.304016, 46.105511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743145, 33.289070, 46.257515>,  <33.051689, 33.264164, 46.510853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743145, 33.289070, 46.257515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594514, -0.284579, -0.752043,
		-0.227066, -0.956628, 0.182492,
		-0.771359, 0.062270, -0.633347,
		32.511738, 33.307751, 46.067513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246284, 32.732948, 46.003891>,  <33.051689, 33.264164, 46.510853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246284, 32.732948, 46.003891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960716, 32.960175, 45.840126>,  <32.789375, 33.096512, 45.741867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960716, 32.960175, 45.840126>,  <33.246284, 32.732948, 46.003891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960716, 32.960175, 45.840126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424112, -0.114453, -0.898348,
		-0.557181, -0.814985, -0.159214,
		-0.713918, 0.568067, -0.409416,
		32.746540, 33.130596, 45.717300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042645, 32.415096, 45.309837>,  <33.246284, 32.732948, 46.003891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042645, 32.415096, 45.309837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932961, 32.799580, 45.297909>,  <32.867149, 33.030270, 45.290752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932961, 32.799580, 45.297909>,  <33.042645, 32.415096, 45.309837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932961, 32.799580, 45.297909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379053, 0.079532, -0.921951,
		-0.883813, -0.264115, -0.386157,
		-0.274213, 0.961207, -0.029822,
		32.850697, 33.087940, 45.288963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679184, 32.516144, 44.670475>,  <33.042645, 32.415096, 45.309837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679184, 32.516144, 44.670475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832661, 32.868290, 44.782005>,  <32.924747, 33.079578, 44.848923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832661, 32.868290, 44.782005>,  <32.679184, 32.516144, 44.670475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832661, 32.868290, 44.782005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376131, 0.126770, -0.917853,
		-0.843390, 0.457047, -0.282491,
		0.383691, 0.880362, 0.278826,
		32.947769, 33.132397, 44.865654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799282, 32.799343, 44.029900>,  <32.679184, 32.516144, 44.670475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799282, 32.799343, 44.029900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986088, 33.079704, 44.245541>,  <33.098171, 33.247921, 44.374928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986088, 33.079704, 44.245541>,  <32.799282, 32.799343, 44.029900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986088, 33.079704, 44.245541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459484, 0.328545, -0.825186,
		-0.755493, 0.633087, -0.168615,
		0.467018, 0.700898, 0.539107,
		33.126194, 33.289974, 44.407272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756386, 33.474228, 43.680061>,  <32.799282, 32.799343, 44.029900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756386, 33.474228, 43.680061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078613, 33.489304, 43.916580>,  <33.271950, 33.498348, 44.058491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078613, 33.489304, 43.916580>,  <32.756386, 33.474228, 43.680061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078613, 33.489304, 43.916580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560264, 0.276240, -0.780894,
		-0.192773, 0.960350, 0.201414,
		0.805570, 0.037690, 0.591301,
		33.320286, 33.500610, 44.093971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113029, 34.021160, 43.387482>,  <32.756386, 33.474228, 43.680061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113029, 34.021160, 43.387482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375168, 33.824478, 43.616825>,  <33.532452, 33.706467, 43.754433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375168, 33.824478, 43.616825>,  <33.113029, 34.021160, 43.387482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375168, 33.824478, 43.616825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690902, 0.083465, -0.718114,
		0.305248, 0.866750, 0.394421,
		0.655346, -0.491709, 0.573362,
		33.571774, 33.676964, 43.788834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736343, 34.369385, 43.494640>,  <33.113029, 34.021160, 43.387482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736343, 34.369385, 43.494640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804836, 33.976578, 43.526463>,  <33.845932, 33.740894, 43.545555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804836, 33.976578, 43.526463>,  <33.736343, 34.369385, 43.494640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804836, 33.976578, 43.526463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548652, 0.027974, -0.835583,
		0.818328, 0.186727, 0.543573,
		0.171232, -0.982014, 0.079557,
		33.856205, 33.681973, 43.550331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486034, 34.409622, 43.428097>,  <33.736343, 34.369385, 43.494640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486034, 34.409622, 43.428097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365677, 34.032410, 43.371304>,  <34.293465, 33.806084, 43.337227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365677, 34.032410, 43.371304>,  <34.486034, 34.409622, 43.428097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365677, 34.032410, 43.371304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602525, -0.072582, -0.794793,
		0.739208, -0.324694, 0.590038,
		-0.300891, -0.943030, -0.141983,
		34.275410, 33.749500, 43.328709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092659, 33.947044, 43.267090>,  <34.486034, 34.409622, 43.428097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092659, 33.947044, 43.267090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759087, 33.782375, 43.120079>,  <34.558941, 33.683575, 43.031872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759087, 33.782375, 43.120079>,  <35.092659, 33.947044, 43.267090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759087, 33.782375, 43.120079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491123, -0.249892, -0.834477,
		0.251693, -0.876399, 0.410578,
		-0.833935, -0.411677, -0.367524,
		34.508907, 33.658871, 43.009823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338116, 33.345684, 43.028656>,  <35.092659, 33.947044, 43.267090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338116, 33.345684, 43.028656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989807, 33.411289, 42.843246>,  <34.780823, 33.450653, 42.731998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989807, 33.411289, 42.843246>,  <35.338116, 33.345684, 43.028656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989807, 33.411289, 42.843246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422137, -0.233986, -0.875814,
		-0.252113, -0.958304, 0.134507,
		-0.870770, 0.164024, -0.463527,
		34.728577, 33.460495, 42.704189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307091, 32.814217, 42.569668>,  <35.338116, 33.345684, 43.028656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307091, 32.814217, 42.569668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037060, 33.082909, 42.447647>,  <34.875042, 33.244122, 42.374435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037060, 33.082909, 42.447647>,  <35.307091, 32.814217, 42.569668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037060, 33.082909, 42.447647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228401, -0.202886, -0.952192,
		-0.701505, -0.712475, -0.016460,
		-0.675074, 0.671727, -0.305056,
		34.834538, 33.284428, 42.356129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985134, 32.555553, 42.013287>,  <35.307091, 32.814217, 42.569668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985134, 32.555553, 42.013287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856224, 32.930103, 41.957661>,  <34.778877, 33.154835, 41.924286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856224, 32.930103, 41.957661>,  <34.985134, 32.555553, 42.013287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856224, 32.930103, 41.957661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170806, -0.086973, -0.981459,
		-0.931108, -0.340055, -0.131909,
		-0.322277, 0.936375, -0.139064,
		34.759541, 33.211018, 41.915943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670570, 32.576469, 41.359131>,  <34.985134, 32.555553, 42.013287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670570, 32.576469, 41.359131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734150, 32.966644, 41.420128>,  <34.772297, 33.200748, 41.456726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734150, 32.966644, 41.420128>,  <34.670570, 32.576469, 41.359131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734150, 32.966644, 41.420128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206790, 0.118134, -0.971227,
		-0.965388, 0.185908, -0.182933,
		0.158949, 0.975439, 0.152489,
		34.781834, 33.259277, 41.465874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242954, 32.886929, 40.811047>,  <34.670570, 32.576469, 41.359131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242954, 32.886929, 40.811047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512455, 33.153999, 40.937710>,  <34.674156, 33.314240, 41.013710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512455, 33.153999, 40.937710>,  <34.242954, 32.886929, 40.811047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512455, 33.153999, 40.937710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118524, 0.325334, -0.938141,
		-0.729394, 0.669603, 0.140058,
		0.673748, 0.667675, 0.316661,
		34.714581, 33.354301, 41.032707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083176, 33.641605, 40.500710>,  <34.242954, 32.886929, 40.811047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083176, 33.641605, 40.500710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469776, 33.587910, 40.588211>,  <34.701736, 33.555691, 40.640713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469776, 33.587910, 40.588211>,  <34.083176, 33.641605, 40.500710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469776, 33.587910, 40.588211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251357, 0.322728, -0.912505,
		0.051894, 0.936924, 0.345659,
		0.966502, -0.134238, 0.218755,
		34.759727, 33.547638, 40.653839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365204, 34.140369, 40.149025>,  <34.083176, 33.641605, 40.500710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365204, 34.140369, 40.149025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703339, 33.942196, 40.228973>,  <34.906219, 33.823292, 40.276943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703339, 33.942196, 40.228973>,  <34.365204, 34.140369, 40.149025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703339, 33.942196, 40.228973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309214, 0.148665, -0.939300,
		0.435651, 0.855827, 0.278868,
		0.845337, -0.495437, 0.199868,
		34.956940, 33.793564, 40.288933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844631, 34.434914, 39.610809>,  <34.365204, 34.140369, 40.149025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844631, 34.434914, 39.610809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049858, 34.114044, 39.732975>,  <35.172993, 33.921524, 39.806274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049858, 34.114044, 39.732975>,  <34.844631, 34.434914, 39.610809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049858, 34.114044, 39.732975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525438, 0.012154, -0.850745,
		0.678735, 0.596965, 0.427729,
		0.513064, -0.802175, 0.305419,
		35.203777, 33.873390, 39.824600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563385, 34.496243, 39.394978>,  <34.844631, 34.434914, 39.610809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563385, 34.496243, 39.394978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519852, 34.101627, 39.443798>,  <35.493732, 33.864857, 39.473091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519852, 34.101627, 39.443798>,  <35.563385, 34.496243, 39.394978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519852, 34.101627, 39.443798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371377, -0.154242, -0.915581,
		0.922082, -0.054317, 0.383164,
		-0.108832, -0.986539, 0.122052,
		35.487202, 33.805664, 39.480415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129261, 34.209946, 39.031227>,  <35.563385, 34.496243, 39.394978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129261, 34.209946, 39.031227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880814, 33.899239, 39.072876>,  <35.731747, 33.712814, 39.097866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880814, 33.899239, 39.072876>,  <36.129261, 34.209946, 39.031227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880814, 33.899239, 39.072876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445444, -0.459209, -0.768574,
		0.644819, -0.430995, 0.631230,
		-0.621118, -0.776770, 0.104122,
		35.694477, 33.666206, 39.104115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594730, 33.556625, 38.788010>,  <36.129261, 34.209946, 39.031227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594730, 33.556625, 38.788010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211807, 33.442154, 38.804337>,  <35.982056, 33.373470, 38.814133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211807, 33.442154, 38.804337>,  <36.594730, 33.556625, 38.788010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211807, 33.442154, 38.804337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138831, -0.578985, -0.803431,
		0.253557, -0.763464, 0.593997,
		-0.957306, -0.286181, 0.040813,
		35.924614, 33.356300, 38.816582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568405, 32.795425, 38.749878>,  <36.594730, 33.556625, 38.788010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568405, 32.795425, 38.749878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205006, 32.916321, 38.634445>,  <35.986965, 32.988857, 38.565186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205006, 32.916321, 38.634445>,  <36.568405, 32.795425, 38.749878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205006, 32.916321, 38.634445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059203, -0.590520, -0.804849,
		-0.413666, -0.748291, 0.518595,
		-0.908502, 0.302236, -0.288579,
		35.932457, 33.006992, 38.547871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290855, 32.268768, 38.312572>,  <36.568405, 32.795425, 38.749878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290855, 32.268768, 38.312572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054958, 32.578308, 38.220177>,  <35.913422, 32.764034, 38.164738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054958, 32.578308, 38.220177>,  <36.290855, 32.268768, 38.312572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054958, 32.578308, 38.220177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137736, -0.378210, -0.915415,
		-0.795760, -0.508043, 0.329634,
		-0.589741, 0.773853, -0.230989,
		35.878036, 32.810463, 38.150879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644386, 31.955662, 37.939701>,  <36.290855, 32.268768, 38.312572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644386, 31.955662, 37.939701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665504, 32.336716, 37.819901>,  <35.678177, 32.565350, 37.748020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665504, 32.336716, 37.819901>,  <35.644386, 31.955662, 37.939701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665504, 32.336716, 37.819901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169527, -0.287013, -0.942807,
		-0.984110, 0.100552, 0.146344,
		0.052798, 0.952635, -0.299498,
		35.681343, 32.622505, 37.730049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993610, 32.081120, 37.578957>,  <35.644386, 31.955662, 37.939701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993610, 32.081120, 37.578957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291435, 32.325294, 37.470882>,  <35.470131, 32.471798, 37.406036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291435, 32.325294, 37.470882>,  <34.993610, 32.081120, 37.578957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291435, 32.325294, 37.470882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088015, -0.311441, -0.946181,
		-0.661728, 0.728269, -0.178159,
		0.744560, 0.610433, -0.270188,
		35.514805, 32.508423, 37.389828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935387, 32.101120, 36.839863>,  <34.993610, 32.081120, 37.578957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935387, 32.101120, 36.839863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268730, 32.319950, 36.871403>,  <35.468735, 32.451248, 36.890327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268730, 32.319950, 36.871403>,  <34.935387, 32.101120, 36.839863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268730, 32.319950, 36.871403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177441, -0.129681, -0.975550,
		-0.523476, 0.826975, -0.205145,
		0.833359, 0.547078, 0.078854,
		35.518738, 32.484074, 36.895058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849106, 32.725208, 36.417084>,  <34.935387, 32.101120, 36.839863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849106, 32.725208, 36.417084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234470, 32.637066, 36.478123>,  <35.465687, 32.584179, 36.514748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234470, 32.637066, 36.478123>,  <34.849106, 32.725208, 36.417084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234470, 32.637066, 36.478123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103151, -0.220655, -0.969882,
		0.247394, 0.950133, -0.189851,
		0.963408, -0.220360, 0.152596,
		35.523495, 32.570957, 36.523903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282471, 33.019962, 35.838631>,  <34.849106, 32.725208, 36.417084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282471, 33.019962, 35.838631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519161, 32.730213, 35.980137>,  <35.661175, 32.556366, 36.065041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519161, 32.730213, 35.980137>,  <35.282471, 33.019962, 35.838631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519161, 32.730213, 35.980137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341914, -0.171894, -0.923876,
		0.730038, 0.667638, 0.145958,
		0.591726, -0.724370, 0.353764,
		35.696678, 32.512901, 36.086266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886337, 33.158138, 35.499439>,  <35.282471, 33.019962, 35.838631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886337, 33.158138, 35.499439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949142, 32.787537, 35.636223>,  <35.986824, 32.565174, 35.718292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949142, 32.787537, 35.636223>,  <35.886337, 33.158138, 35.499439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949142, 32.787537, 35.636223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482309, -0.230222, -0.845207,
		0.861815, 0.297639, 0.410714,
		0.157012, -0.926503, 0.341963,
		35.996246, 32.509586, 35.738811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642471, 32.890572, 35.457630>,  <35.886337, 33.158138, 35.499439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642471, 32.890572, 35.457630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440781, 32.545918, 35.480732>,  <36.319767, 32.339127, 35.494595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440781, 32.545918, 35.480732>,  <36.642471, 32.890572, 35.457630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440781, 32.545918, 35.480732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520930, -0.356826, -0.775440,
		0.688756, -0.360914, 0.628774,
		-0.504230, -0.861636, 0.057755,
		36.289513, 32.287426, 35.498058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174938, 32.465290, 35.496418>,  <36.642471, 32.890572, 35.457630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174938, 32.465290, 35.496418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846725, 32.283241, 35.358089>,  <36.649799, 32.174011, 35.275093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846725, 32.283241, 35.358089>,  <37.174938, 32.465290, 35.496418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846725, 32.283241, 35.358089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524038, -0.357342, -0.773104,
		0.228283, -0.815579, 0.531713,
		-0.820531, -0.455124, -0.345819,
		36.600567, 32.146706, 35.254345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452595, 31.834267, 35.264671>,  <37.174938, 32.465290, 35.496418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452595, 31.834267, 35.264671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104622, 31.875750, 35.071815>,  <36.895836, 31.900639, 34.956104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104622, 31.875750, 35.071815>,  <37.452595, 31.834267, 35.264671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104622, 31.875750, 35.071815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438145, -0.286207, -0.852123,
		-0.226362, -0.952539, 0.203543,
		-0.869936, 0.103707, -0.482137,
		36.843639, 31.906862, 34.927174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722645, 31.549477, 35.813095>,  <37.452595, 31.834267, 35.264671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722645, 31.549477, 35.813095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084270, 31.715948, 35.852024>,  <38.301247, 31.815830, 35.875381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084270, 31.715948, 35.852024>,  <37.722645, 31.549477, 35.813095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084270, 31.715948, 35.852024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216213, 0.248905, 0.944086,
		0.368684, -0.874552, 0.315008,
		0.904060, 0.416178, 0.097322,
		38.355488, 31.840801, 35.881222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039131, 31.246296, 36.305943>,  <37.722645, 31.549477, 35.813095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039131, 31.246296, 36.305943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216049, 31.602213, 36.260956>,  <38.322201, 31.815763, 36.233963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216049, 31.602213, 36.260956>,  <38.039131, 31.246296, 36.305943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216049, 31.602213, 36.260956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164892, 0.203931, 0.964999,
		0.881583, -0.408268, 0.236917,
		0.442292, 0.889792, -0.112462,
		38.348736, 31.869150, 36.227219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435207, 31.361143, 36.843643>,  <38.039131, 31.246296, 36.305943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435207, 31.361143, 36.843643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401871, 31.743414, 36.730694>,  <38.381870, 31.972776, 36.662926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401871, 31.743414, 36.730694>,  <38.435207, 31.361143, 36.843643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401871, 31.743414, 36.730694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033933, 0.280472, 0.959262,
		0.995943, 0.089524, 0.009055,
		-0.083337, 0.955678, -0.282373,
		38.376869, 32.030117, 36.645981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042091, 31.761969, 37.108101>,  <38.435207, 31.361143, 36.843643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042091, 31.761969, 37.108101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762608, 32.037312, 37.030155>,  <38.594917, 32.202518, 36.983387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762608, 32.037312, 37.030155>,  <39.042091, 31.761969, 37.108101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762608, 32.037312, 37.030155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159213, 0.415169, 0.895704,
		0.697467, 0.594809, -0.399677,
		-0.698707, 0.688358, -0.194865,
		38.552994, 32.243820, 36.971695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378624, 32.370182, 37.201801>,  <39.042091, 31.761969, 37.108101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378624, 32.370182, 37.201801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983402, 32.417408, 37.241432>,  <38.746269, 32.445744, 37.265213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983402, 32.417408, 37.241432>,  <39.378624, 32.370182, 37.201801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983402, 32.417408, 37.241432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145565, 0.503447, 0.851676,
		0.050673, 0.855922, -0.514617,
		-0.988050, 0.118068, 0.099081,
		38.686989, 32.452827, 37.271156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305763, 33.130688, 37.433502>,  <39.378624, 32.370182, 37.201801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305763, 33.130688, 37.433502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988262, 32.899837, 37.510326>,  <38.797764, 32.761326, 37.556423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988262, 32.899837, 37.510326>,  <39.305763, 33.130688, 37.433502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988262, 32.899837, 37.510326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020527, 0.290169, 0.956755,
		-0.607900, 0.763365, -0.218475,
		-0.793748, -0.577127, 0.192063,
		38.750137, 32.726700, 37.567944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970028, 33.468884, 37.927498>,  <39.305763, 33.130688, 37.433502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970028, 33.468884, 37.927498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808384, 33.109200, 37.994583>,  <38.711399, 32.893391, 38.034836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808384, 33.109200, 37.994583>,  <38.970028, 33.468884, 37.927498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808384, 33.109200, 37.994583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065778, 0.211444, 0.975174,
		-0.912344, 0.383042, -0.144593,
		-0.404106, -0.899205, 0.167714,
		38.687153, 32.839439, 38.044899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453178, 33.578590, 38.420986>,  <38.970028, 33.468884, 37.927498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453178, 33.578590, 38.420986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514507, 33.183655, 38.437252>,  <38.551304, 32.946693, 38.447010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514507, 33.183655, 38.437252>,  <38.453178, 33.578590, 38.420986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514507, 33.183655, 38.437252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151377, 0.017197, 0.988326,
		-0.976513, -0.157684, -0.146824,
		0.153319, -0.987340, 0.040663,
		38.560501, 32.887451, 38.449451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929428, 33.426754, 38.799332>,  <38.453178, 33.578590, 38.420986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929428, 33.426754, 38.799332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190777, 33.128063, 38.849140>,  <38.347584, 32.948849, 38.879025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190777, 33.128063, 38.849140>,  <37.929428, 33.426754, 38.799332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190777, 33.128063, 38.849140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096134, 0.081311, 0.992042,
		-0.750912, -0.660139, -0.018660,
		0.653368, -0.746730, 0.124520,
		38.386787, 32.904045, 38.886497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604610, 32.954510, 39.220943>,  <37.929428, 33.426754, 38.799332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604610, 32.954510, 39.220943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986469, 32.847115, 39.272419>,  <38.215584, 32.782677, 39.303303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986469, 32.847115, 39.272419>,  <37.604610, 32.954510, 39.220943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986469, 32.847115, 39.272419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202011, -0.266574, 0.942406,
		-0.218721, -0.925663, -0.308722,
		0.954648, -0.268490, 0.128688,
		38.272865, 32.766567, 39.311024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581470, 32.359371, 39.641075>,  <37.604610, 32.954510, 39.220943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581470, 32.359371, 39.641075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939388, 32.525032, 39.707798>,  <38.154140, 32.624428, 39.747833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939388, 32.525032, 39.707798>,  <37.581470, 32.359371, 39.641075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939388, 32.525032, 39.707798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108662, -0.160369, 0.981058,
		0.433054, -0.895970, -0.098495,
		0.894794, 0.414149, 0.166806,
		38.207825, 32.649277, 39.757839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794556, 31.943771, 40.211285>,  <37.581470, 32.359371, 39.641075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794556, 31.943771, 40.211285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038029, 32.260784, 40.196358>,  <38.184113, 32.450993, 40.187401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038029, 32.260784, 40.196358>,  <37.794556, 31.943771, 40.211285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038029, 32.260784, 40.196358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045200, 0.012319, 0.998902,
		0.792122, -0.609705, -0.028324,
		0.608687, 0.792533, -0.037316,
		38.220634, 32.498543, 40.185162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017082, 31.983635, 40.862183>,  <37.794556, 31.943771, 40.211285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017082, 31.983635, 40.862183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175095, 32.326138, 40.729050>,  <38.269901, 32.531639, 40.649170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175095, 32.326138, 40.729050>,  <38.017082, 31.983635, 40.862183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175095, 32.326138, 40.729050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156299, 0.294375, 0.942822,
		0.905274, -0.424465, -0.017545,
		0.395030, 0.856255, -0.332833,
		38.293602, 32.583015, 40.629200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677406, 32.072559, 41.156216>,  <38.017082, 31.983635, 40.862183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677406, 32.072559, 41.156216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507336, 32.422009, 41.061546>,  <38.405293, 32.631676, 41.004745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507336, 32.422009, 41.061546>,  <38.677406, 32.072559, 41.156216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507336, 32.422009, 41.061546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026183, 0.273247, 0.961588,
		0.904733, 0.402646, -0.139052,
		-0.425175, 0.873620, -0.236673,
		38.379784, 32.684093, 40.990543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014580, 32.573494, 41.545124>,  <38.677406, 32.072559, 41.156216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014580, 32.573494, 41.545124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649410, 32.710617, 41.456539>,  <38.430309, 32.792892, 41.403389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649410, 32.710617, 41.456539>,  <39.014580, 32.573494, 41.545124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649410, 32.710617, 41.456539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174311, 0.163132, 0.971084,
		0.369025, 0.925132, -0.089172,
		-0.912927, 0.342811, -0.221461,
		38.375530, 32.813461, 41.390102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891499, 33.071568, 42.132610>,  <39.014580, 32.573494, 41.545124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891499, 33.071568, 42.132610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523205, 33.007500, 41.990288>,  <38.302231, 32.969059, 41.904892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523205, 33.007500, 41.990288>,  <38.891499, 33.071568, 42.132610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523205, 33.007500, 41.990288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379222, 0.152556, 0.912643,
		-0.091895, 0.975230, -0.201202,
		-0.920731, -0.160168, -0.355809,
		38.246986, 32.959450, 41.883545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478268, 33.579582, 42.323273>,  <38.891499, 33.071568, 42.132610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478268, 33.579582, 42.323273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.207897, 33.295189, 42.245682>,  <38.045677, 33.124554, 42.199127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.207897, 33.295189, 42.245682>,  <38.478268, 33.579582, 42.323273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207897, 33.295189, 42.245682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504753, 0.254831, 0.824794,
		-0.536985, 0.655408, -0.531118,
		-0.675923, -0.710986, -0.193978,
		38.005119, 33.081894, 42.187489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866291, 33.863865, 42.471230>,  <38.478268, 33.579582, 42.323273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866291, 33.863865, 42.471230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752300, 33.480667, 42.458389>,  <37.683907, 33.250748, 42.450684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752300, 33.480667, 42.458389>,  <37.866291, 33.863865, 42.471230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752300, 33.480667, 42.458389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550569, 0.136178, 0.823608,
		-0.784641, 0.252386, -0.566251,
		-0.284977, -0.957996, -0.032105,
		37.666805, 33.193268, 42.448757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141346, 33.811329, 42.336372>,  <37.866291, 33.863865, 42.471230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141346, 33.811329, 42.336372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253677, 33.483128, 42.535534>,  <37.321075, 33.286205, 42.655033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253677, 33.483128, 42.535534>,  <37.141346, 33.811329, 42.336372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253677, 33.483128, 42.535534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628533, 0.234835, 0.741484,
		-0.725316, -0.521180, -0.449765,
		0.280826, -0.820502, 0.497908,
		37.337925, 33.236977, 42.684906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531895, 33.493244, 42.574959>,  <37.141346, 33.811329, 42.336372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531895, 33.493244, 42.574959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796192, 33.294239, 42.799778>,  <36.954769, 33.174835, 42.934669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796192, 33.294239, 42.799778>,  <36.531895, 33.493244, 42.574959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796192, 33.294239, 42.799778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666758, -0.045107, 0.743908,
		-0.344750, -0.866284, -0.361524,
		0.660742, -0.497512, 0.562052,
		36.994415, 33.144985, 42.968395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177448, 32.913536, 42.920731>,  <36.531895, 33.493244, 42.574959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177448, 32.913536, 42.920731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507385, 32.959183, 43.142220>,  <36.705349, 32.986572, 43.275112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507385, 32.959183, 43.142220>,  <36.177448, 32.913536, 42.920731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507385, 32.959183, 43.142220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550666, -0.059667, 0.832590,
		0.128055, -0.991674, 0.013626,
		0.824845, 0.114121, 0.553721,
		36.754837, 32.993420, 43.308334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271557, 32.426876, 43.392715>,  <36.177448, 32.913536, 42.920731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271557, 32.426876, 43.392715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455120, 32.738682, 43.563248>,  <36.565258, 32.925766, 43.665569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455120, 32.738682, 43.563248>,  <36.271557, 32.426876, 43.392715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455120, 32.738682, 43.563248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475728, -0.189680, 0.858897,
		0.750388, -0.596977, 0.283790,
		0.458912, 0.779513, 0.426332,
		36.592793, 32.972534, 43.691147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400234, 32.210907, 44.081608>,  <36.271557, 32.426876, 43.392715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400234, 32.210907, 44.081608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443977, 32.608253, 44.095791>,  <36.470222, 32.846661, 44.104301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443977, 32.608253, 44.095791>,  <36.400234, 32.210907, 44.081608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443977, 32.608253, 44.095791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310270, 0.000228, 0.950648,
		0.944337, -0.114966, 0.308238,
		0.109363, 0.993369, 0.035455,
		36.476788, 32.906265, 44.106426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709534, 32.338947, 44.759396>,  <36.400234, 32.210907, 44.081608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709534, 32.338947, 44.759396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555588, 32.685913, 44.633236>,  <36.463223, 32.894093, 44.557541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555588, 32.685913, 44.633236>,  <36.709534, 32.338947, 44.759396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555588, 32.685913, 44.633236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400717, 0.150801, 0.903706,
		0.831448, 0.474189, 0.289549,
		-0.384863, 0.867413, -0.315399,
		36.440128, 32.946136, 44.538616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809116, 32.867874, 45.346500>,  <36.709534, 32.338947, 44.759396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809116, 32.867874, 45.346500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530495, 33.064083, 45.137043>,  <36.363323, 33.181808, 45.011368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530495, 33.064083, 45.137043>,  <36.809116, 32.867874, 45.346500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530495, 33.064083, 45.137043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473374, 0.234268, 0.849138,
		0.539194, 0.839349, 0.069020,
		-0.696554, 0.490522, -0.523642,
		36.321529, 33.211239, 44.979950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637192, 33.491276, 45.763088>,  <36.809116, 32.867874, 45.346500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637192, 33.491276, 45.763088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330837, 33.435452, 45.512028>,  <36.147026, 33.401958, 45.361393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330837, 33.435452, 45.512028>,  <36.637192, 33.491276, 45.763088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330837, 33.435452, 45.512028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638025, 0.285890, 0.714976,
		0.079655, 0.948045, -0.308003,
		-0.765885, -0.139562, -0.627649,
		36.101070, 33.393581, 45.323734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298115, 34.089359, 45.676670>,  <36.637192, 33.491276, 45.763088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298115, 34.089359, 45.676670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036442, 33.799946, 45.588547>,  <35.879436, 33.626297, 45.535671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036442, 33.799946, 45.588547>,  <36.298115, 34.089359, 45.676670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036442, 33.799946, 45.588547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601019, 0.320477, 0.732168,
		-0.459147, 0.611384, -0.644511,
		-0.654187, -0.723536, -0.220308,
		35.840187, 33.582886, 45.522453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651337, 34.355331, 45.631344>,  <36.298115, 34.089359, 45.676670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651337, 34.355331, 45.631344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572868, 33.971874, 45.713833>,  <35.525787, 33.741802, 45.763329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572868, 33.971874, 45.713833>,  <35.651337, 34.355331, 45.631344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572868, 33.971874, 45.713833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568706, 0.282557, 0.772486,
		-0.798806, 0.034256, -0.600612,
		-0.196170, -0.958639, 0.206226,
		35.514019, 33.684284, 45.775700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091309, 34.478703, 45.919979>,  <35.651337, 34.355331, 45.631344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091309, 34.478703, 45.919979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182598, 34.098259, 46.003227>,  <35.237373, 33.869995, 46.053177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182598, 34.098259, 46.003227>,  <35.091309, 34.478703, 45.919979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182598, 34.098259, 46.003227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522689, 0.060653, 0.850363,
		-0.821408, -0.302855, -0.483289,
		0.228224, -0.951105, 0.208120,
		35.251064, 33.812927, 46.065662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516747, 34.217598, 46.044167>,  <35.091309, 34.478703, 45.919979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516747, 34.217598, 46.044167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752277, 33.953056, 46.230022>,  <34.893597, 33.794331, 46.341537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752277, 33.953056, 46.230022>,  <34.516747, 34.217598, 46.044167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752277, 33.953056, 46.230022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462136, 0.196149, 0.864845,
		-0.663109, -0.723971, -0.190139,
		0.588826, -0.661357, 0.464641,
		34.928925, 33.754650, 46.369415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054363, 33.749332, 46.458641>,  <34.516747, 34.217598, 46.044167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054363, 33.749332, 46.458641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412483, 33.694275, 46.628109>,  <34.627354, 33.661240, 46.729790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412483, 33.694275, 46.628109>,  <34.054363, 33.749332, 46.458641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412483, 33.694275, 46.628109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415302, 0.086123, 0.905597,
		-0.161142, -0.986730, 0.019940,
		0.895297, -0.137648, 0.423669,
		34.681072, 33.652981, 46.755211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785736, 33.312977, 47.080299>,  <34.054363, 33.749332, 46.458641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785736, 33.312977, 47.080299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127533, 33.499569, 47.171730>,  <34.332611, 33.611523, 47.226589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127533, 33.499569, 47.171730>,  <33.785736, 33.312977, 47.080299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127533, 33.499569, 47.171730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408430, 0.331400, 0.850505,
		0.320984, -0.820109, 0.473699,
		0.854490, 0.466471, 0.228583,
		34.383881, 33.639511, 47.240303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219322, 32.979977, 47.731892>,  <33.785736, 33.312977, 47.080299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219322, 32.979977, 47.731892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305786, 33.366890, 47.678768>,  <34.357666, 33.599037, 47.646896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305786, 33.366890, 47.678768>,  <34.219322, 32.979977, 47.731892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305786, 33.366890, 47.678768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192378, 0.175552, 0.965491,
		0.957217, -0.183153, 0.224032,
		0.216162, 0.967283, -0.132806,
		34.370636, 33.657074, 47.638927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558979, 33.195545, 48.355148>,  <34.219322, 32.979977, 47.731892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558979, 33.195545, 48.355148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505665, 33.568497, 48.220745>,  <34.473679, 33.792267, 48.140102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505665, 33.568497, 48.220745>,  <34.558979, 33.195545, 48.355148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505665, 33.568497, 48.220745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080571, 0.327722, 0.941333,
		0.987798, 0.152536, 0.031444,
		-0.133282, 0.932380, -0.336013,
		34.465679, 33.848209, 48.119942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108322, 33.655197, 48.701698>,  <34.558979, 33.195545, 48.355148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108322, 33.655197, 48.701698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819725, 33.902695, 48.577374>,  <34.646568, 34.051193, 48.502781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819725, 33.902695, 48.577374>,  <35.108322, 33.655197, 48.701698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819725, 33.902695, 48.577374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195422, 0.248666, 0.948671,
		0.664273, 0.745198, -0.058494,
		-0.721493, 0.618745, -0.310810,
		34.603279, 34.088318, 48.484131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378231, 34.274704, 48.935474>,  <35.108322, 33.655197, 48.701698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378231, 34.274704, 48.935474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988380, 34.341110, 48.875416>,  <34.754471, 34.380955, 48.839382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988380, 34.341110, 48.875416>,  <35.378231, 34.274704, 48.935474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988380, 34.341110, 48.875416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060642, 0.449853, 0.891042,
		0.215467, 0.877538, -0.428371,
		-0.974626, 0.166012, -0.150144,
		34.695992, 34.390915, 48.830372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325611, 34.919296, 49.099560>,  <35.378231, 34.274704, 48.935474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325611, 34.919296, 49.099560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956814, 34.766132, 49.122570>,  <34.735535, 34.674232, 49.136375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956814, 34.766132, 49.122570>,  <35.325611, 34.919296, 49.099560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956814, 34.766132, 49.122570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092881, 0.362941, 0.927172,
		-0.375901, 0.849503, -0.370194,
		-0.921993, -0.382909, 0.057527,
		34.680214, 34.651260, 49.139828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068214, 35.357204, 49.455544>,  <35.325611, 34.919296, 49.099560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068214, 35.357204, 49.455544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825275, 35.041859, 49.494755>,  <34.679512, 34.852650, 49.518284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825275, 35.041859, 49.494755>,  <35.068214, 35.357204, 49.455544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825275, 35.041859, 49.494755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262147, 0.315366, 0.912044,
		-0.749938, 0.528230, -0.398204,
		-0.607348, -0.788364, 0.098031,
		34.643070, 34.805351, 49.524162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738140, 35.995438, 49.060074>,  <35.068214, 35.357204, 49.455544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738140, 35.995438, 49.060074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029266, 36.239540, 49.185207>,  <35.203941, 36.386002, 49.260288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029266, 36.239540, 49.185207>,  <34.738140, 35.995438, 49.060074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029266, 36.239540, 49.185207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428076, -0.047910, -0.902472,
		-0.535755, 0.790751, -0.296107,
		0.727817, 0.610260, 0.312833,
		35.247612, 36.422619, 49.279057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754070, 36.436375, 48.640198>,  <34.738140, 35.995438, 49.060074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754070, 36.436375, 48.640198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117901, 36.482647, 48.799843>,  <35.336201, 36.510410, 48.895630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117901, 36.482647, 48.799843>,  <34.754070, 36.436375, 48.640198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117901, 36.482647, 48.799843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377667, 0.170468, -0.910114,
		-0.173314, 0.978550, 0.111366,
		0.909577, 0.115677, 0.399110,
		35.390774, 36.517349, 48.919575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111111, 36.737122, 48.141602>,  <34.754070, 36.436375, 48.640198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111111, 36.737122, 48.141602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422573, 36.605457, 48.355274>,  <35.609451, 36.526459, 48.483479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422573, 36.605457, 48.355274>,  <35.111111, 36.737122, 48.141602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422573, 36.605457, 48.355274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554127, -0.038639, -0.831535,
		0.294347, 0.943484, 0.152309,
		0.778654, -0.329159, 0.534183,
		35.656170, 36.506710, 48.515530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661366, 37.202534, 48.053490>,  <35.111111, 36.737122, 48.141602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661366, 37.202534, 48.053490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858940, 36.871868, 48.161308>,  <35.977486, 36.673470, 48.225998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858940, 36.871868, 48.161308>,  <35.661366, 37.202534, 48.053490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858940, 36.871868, 48.161308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565331, 0.069790, -0.821907,
		0.660629, 0.558350, 0.501811,
		0.493933, -0.826665, 0.269547,
		36.007118, 36.623867, 48.242172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299873, 37.238441, 47.796951>,  <35.661366, 37.202534, 48.053490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299873, 37.238441, 47.796951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262718, 36.844933, 47.858360>,  <36.240425, 36.608829, 47.895206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262718, 36.844933, 47.858360>,  <36.299873, 37.238441, 47.796951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262718, 36.844933, 47.858360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501650, -0.179429, -0.846258,
		0.860069, -0.001593, 0.510175,
		-0.092888, -0.983770, 0.153522,
		36.234852, 36.549801, 47.904415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958115, 37.044827, 47.673267>,  <36.299873, 37.238441, 47.796951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958115, 37.044827, 47.673267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710697, 36.734940, 47.620785>,  <36.562248, 36.549007, 47.589294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710697, 36.734940, 47.620785>,  <36.958115, 37.044827, 47.673267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710697, 36.734940, 47.620785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451088, -0.213386, -0.866594,
		0.643370, -0.595211, 0.481455,
		-0.618543, -0.774719, -0.131207,
		36.525135, 36.502525, 47.581421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369820, 36.532730, 47.441750>,  <36.958115, 37.044827, 47.673267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369820, 36.532730, 47.441750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.013412, 36.378723, 47.345543>,  <36.799568, 36.286320, 47.287819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.013412, 36.378723, 47.345543>,  <37.369820, 36.532730, 47.441750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013412, 36.378723, 47.345543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406284, -0.439930, -0.800872,
		0.202537, -0.811310, 0.548411,
		-0.891017, -0.385017, -0.240520,
		36.746109, 36.263218, 47.273388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490475, 35.767281, 47.246834>,  <37.369820, 36.532730, 47.441750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490475, 35.767281, 47.246834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158390, 35.907265, 47.073269>,  <36.959141, 35.991257, 46.969128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158390, 35.907265, 47.073269>,  <37.490475, 35.767281, 47.246834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158390, 35.907265, 47.073269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330342, -0.318142, -0.888628,
		-0.449032, -0.881086, 0.148517,
		-0.830208, 0.349961, -0.433916,
		36.909328, 36.012253, 46.943092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383831, 35.325436, 46.633324>,  <37.490475, 35.767281, 47.246834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383831, 35.325436, 46.633324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134590, 35.631134, 46.566795>,  <36.985046, 35.814552, 46.526878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134590, 35.631134, 46.566795>,  <37.383831, 35.325436, 46.633324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134590, 35.631134, 46.566795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129652, -0.108784, -0.985574,
		-0.771318, -0.635679, -0.031303,
		-0.623104, 0.764250, -0.166324,
		36.947659, 35.860409, 46.516899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912506, 35.093494, 46.165489>,  <37.383831, 35.325436, 46.633324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912506, 35.093494, 46.165489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886303, 35.491024, 46.129654>,  <36.870579, 35.729542, 46.108154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886303, 35.491024, 46.129654>,  <36.912506, 35.093494, 46.165489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886303, 35.491024, 46.129654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226133, -0.072656, -0.971383,
		-0.971891, -0.083894, -0.219977,
		-0.065510, 0.993822, -0.089585,
		36.866650, 35.789169, 46.102779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510803, 35.241810, 45.588463>,  <36.912506, 35.093494, 46.165489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510803, 35.241810, 45.588463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709999, 35.583904, 45.645832>,  <36.829517, 35.789162, 45.680256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709999, 35.583904, 45.645832>,  <36.510803, 35.241810, 45.588463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709999, 35.583904, 45.645832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204447, 0.044943, -0.977845,
		-0.842737, 0.516283, -0.152469,
		0.497993, 0.855238, 0.143428,
		36.859398, 35.840477, 45.688862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254375, 35.623997, 45.016525>,  <36.510803, 35.241810, 45.588463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254375, 35.623997, 45.016525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583950, 35.815575, 45.137680>,  <36.781696, 35.930523, 45.210373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583950, 35.815575, 45.137680>,  <36.254375, 35.623997, 45.016525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583950, 35.815575, 45.137680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307995, 0.070181, -0.948796,
		-0.475679, 0.875035, -0.089688,
		0.823935, 0.478945, 0.302890,
		36.831131, 35.959259, 45.228546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272530, 36.198185, 44.622349>,  <36.254375, 35.623997, 45.016525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272530, 36.198185, 44.622349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641769, 36.126499, 44.758446>,  <36.863316, 36.083488, 44.840103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641769, 36.126499, 44.758446>,  <36.272530, 36.198185, 44.622349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641769, 36.126499, 44.758446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376867, 0.245563, -0.893124,
		0.076513, 0.952670, 0.294221,
		0.923102, -0.179218, 0.340241,
		36.918701, 36.072735, 44.860519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714386, 36.645496, 44.199127>,  <36.272530, 36.198185, 44.622349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714386, 36.645496, 44.199127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967178, 36.365730, 44.332645>,  <37.118855, 36.197872, 44.412758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967178, 36.365730, 44.332645>,  <36.714386, 36.645496, 44.199127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967178, 36.365730, 44.332645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569088, 0.126462, -0.812494,
		0.526055, 0.703443, 0.477948,
		0.631985, -0.699411, 0.333795,
		37.156773, 36.155907, 44.432785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535015, 36.836796, 44.168858>,  <36.714386, 36.645496, 44.199127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535015, 36.836796, 44.168858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530666, 36.436832, 44.165565>,  <37.528057, 36.196854, 44.163589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530666, 36.436832, 44.165565>,  <37.535015, 36.836796, 44.168858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530666, 36.436832, 44.165565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600348, 0.000051, -0.799739,
		0.799665, -0.013637, 0.600291,
		-0.010876, -0.999907, -0.008228,
		37.527405, 36.136860, 44.163097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039200, 36.732563, 43.706917>,  <37.535015, 36.836796, 44.168858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039200, 36.732563, 43.706917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874714, 36.368828, 43.732208>,  <37.776024, 36.150585, 43.747383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874714, 36.368828, 43.732208>,  <38.039200, 36.732563, 43.706917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874714, 36.368828, 43.732208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372042, -0.230758, -0.899075,
		0.832158, -0.346188, 0.433205,
		-0.411215, -0.909343, 0.063231,
		37.751350, 36.096024, 43.751179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561321, 36.267132, 43.805111>,  <38.039200, 36.732563, 43.706917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561321, 36.267132, 43.805111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245247, 36.055443, 43.681480>,  <38.055603, 35.928429, 43.607304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245247, 36.055443, 43.681480>,  <38.561321, 36.267132, 43.805111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245247, 36.055443, 43.681480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504212, -0.274693, -0.818727,
		0.348386, -0.802789, 0.483898,
		-0.790188, -0.529220, -0.309077,
		38.008190, 35.896675, 43.588757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763393, 35.592308, 43.698593>,  <38.561321, 36.267132, 43.805111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763393, 35.592308, 43.698593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425865, 35.646896, 43.491001>,  <38.223347, 35.679649, 43.366447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425865, 35.646896, 43.491001>,  <38.763393, 35.592308, 43.698593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425865, 35.646896, 43.491001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352201, -0.588820, -0.727492,
		-0.404865, -0.796660, 0.448796,
		-0.843825, 0.136470, -0.518977,
		38.172718, 35.687836, 43.335308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766083, 34.993134, 43.396278>,  <38.763393, 35.592308, 43.698593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766083, 34.993134, 43.396278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504890, 35.222900, 43.198830>,  <38.348175, 35.360760, 43.080360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504890, 35.222900, 43.198830>,  <38.766083, 34.993134, 43.396278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504890, 35.222900, 43.198830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308866, -0.393127, -0.866056,
		-0.691536, -0.717978, 0.079284,
		-0.652978, 0.574421, -0.493620,
		38.308998, 35.395226, 43.050743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373859, 34.609367, 42.927025>,  <38.766083, 34.993134, 43.396278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373859, 34.609367, 42.927025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365891, 34.987232, 42.796051>,  <38.361111, 35.213951, 42.717468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365891, 34.987232, 42.796051>,  <38.373859, 34.609367, 42.927025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365891, 34.987232, 42.796051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256438, -0.311712, -0.914918,
		-0.966355, -0.102190, -0.236040,
		-0.019919, 0.944666, -0.327430,
		38.359917, 35.270634, 42.697823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885105, 34.629581, 42.248573>,  <38.373859, 34.609367, 42.927025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885105, 34.629581, 42.248573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.099072, 34.964565, 42.203815>,  <38.227451, 35.165558, 42.176960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.099072, 34.964565, 42.203815>,  <37.885105, 34.629581, 42.248573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099072, 34.964565, 42.203815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361864, -0.346754, -0.865342,
		-0.763490, 0.422397, -0.488532,
		0.534918, 0.837462, -0.111893,
		38.259548, 35.215805, 42.170246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831432, 34.771660, 41.509220>,  <37.885105, 34.629581, 42.248573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831432, 34.771660, 41.509220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145134, 34.964409, 41.665550>,  <38.333355, 35.080059, 41.759346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145134, 34.964409, 41.665550>,  <37.831432, 34.771660, 41.509220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145134, 34.964409, 41.665550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565345, -0.295528, -0.770096,
		-0.255586, 0.824903, -0.504193,
		0.784258, 0.481869, 0.390822,
		38.380413, 35.108971, 41.782799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132915, 35.070881, 40.939999>,  <37.831432, 34.771660, 41.509220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132915, 35.070881, 40.939999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419933, 35.077034, 41.218536>,  <38.592144, 35.080727, 41.385658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419933, 35.077034, 41.218536>,  <38.132915, 35.070881, 40.939999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419933, 35.077034, 41.218536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681216, -0.223886, -0.697008,
		0.145176, 0.974494, -0.171130,
		0.717543, 0.015388, 0.696344,
		38.635197, 35.081650, 41.427441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675648, 35.466953, 40.598064>,  <38.132915, 35.070881, 40.939999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675648, 35.466953, 40.598064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858311, 35.266434, 40.892048>,  <38.967907, 35.146122, 41.068439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858311, 35.266434, 40.892048>,  <38.675648, 35.466953, 40.598064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858311, 35.266434, 40.892048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771346, -0.188525, -0.607852,
		0.443275, 0.844486, 0.300585,
		0.456654, -0.501300, 0.734959,
		38.995308, 35.116043, 41.112537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340473, 35.818226, 40.716137>,  <38.675648, 35.466953, 40.598064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340473, 35.818226, 40.716137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364193, 35.443317, 40.853546>,  <39.378426, 35.218372, 40.935993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364193, 35.443317, 40.853546>,  <39.340473, 35.818226, 40.716137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364193, 35.443317, 40.853546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815203, -0.153142, -0.558562,
		0.576132, 0.313167, 0.754983,
		0.059303, -0.937270, 0.343524,
		39.381985, 35.162136, 40.956604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988506, 35.756504, 40.898842>,  <39.340473, 35.818226, 40.716137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988506, 35.756504, 40.898842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829960, 35.393562, 40.842827>,  <39.734833, 35.175797, 40.809219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829960, 35.393562, 40.842827>,  <39.988506, 35.756504, 40.898842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829960, 35.393562, 40.842827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819820, -0.281137, -0.498855,
		0.413267, -0.312533, 0.855297,
		-0.396365, -0.907350, -0.140037,
		39.711052, 35.121357, 40.800816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565784, 35.344639, 40.829544>,  <39.988506, 35.756504, 40.898842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565784, 35.344639, 40.829544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269775, 35.125992, 40.672787>,  <40.092171, 34.994804, 40.578732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269775, 35.125992, 40.672787>,  <40.565784, 35.344639, 40.829544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269775, 35.125992, 40.672787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620613, -0.330362, -0.711126,
		0.259248, -0.769461, 0.583713,
		-0.740020, -0.546618, -0.391891,
		40.047768, 34.962006, 40.555218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980370, 34.838001, 40.519272>,  <40.565784, 35.344639, 40.829544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980370, 34.838001, 40.519272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.623459, 34.828907, 40.338905>,  <40.409313, 34.823448, 40.230686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.623459, 34.828907, 40.338905>,  <40.980370, 34.838001, 40.519272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623459, 34.828907, 40.338905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450585, -0.108182, -0.886154,
		-0.028633, -0.993871, 0.106773,
		-0.892274, -0.022737, -0.450921,
		40.355778, 34.822086, 40.203629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050652, 34.356766, 40.017689>,  <40.980370, 34.838001, 40.519272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050652, 34.356766, 40.017689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739643, 34.575901, 39.894180>,  <40.553040, 34.707382, 39.820076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739643, 34.575901, 39.894180>,  <41.050652, 34.356766, 40.017689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739643, 34.575901, 39.894180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351852, -0.027971, -0.935637,
		-0.521213, -0.836118, -0.171009,
		-0.777520, 0.547836, -0.308769,
		40.506386, 34.740253, 39.801548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743565, 33.979202, 39.433105>,  <41.050652, 34.356766, 40.017689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743565, 33.979202, 39.433105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.592884, 34.346062, 39.381050>,  <40.502476, 34.566177, 39.349819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.592884, 34.346062, 39.381050>,  <40.743565, 33.979202, 39.433105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592884, 34.346062, 39.381050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174256, -0.067815, -0.982362,
		-0.909796, -0.392738, -0.134272,
		-0.376705, 0.917147, -0.130135,
		40.479874, 34.621204, 39.342010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259228, 33.957939, 38.868904>,  <40.743565, 33.979202, 39.433105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259228, 33.957939, 38.868904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385761, 34.334641, 38.914570>,  <40.461681, 34.560661, 38.941971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385761, 34.334641, 38.914570>,  <40.259228, 33.957939, 38.868904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385761, 34.334641, 38.914570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233047, 0.039508, -0.971663,
		-0.919577, 0.333977, -0.206975,
		0.316335, 0.941753, 0.114163,
		40.480663, 34.617165, 38.948818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997631, 34.353680, 38.330021>,  <40.259228, 33.957939, 38.868904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997631, 34.353680, 38.330021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288292, 34.605068, 38.441025>,  <40.462688, 34.755901, 38.507626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288292, 34.605068, 38.441025>,  <39.997631, 34.353680, 38.330021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288292, 34.605068, 38.441025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222982, 0.166318, -0.960530,
		-0.649816, 0.759847, -0.019282,
		0.726648, 0.628467, 0.277508,
		40.506287, 34.793610, 38.524277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861942, 35.047512, 37.951046>,  <39.997631, 34.353680, 38.330021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861942, 35.047512, 37.951046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246231, 35.057430, 38.061607>,  <40.476803, 35.063381, 38.127945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246231, 35.057430, 38.061607>,  <39.861942, 35.047512, 37.951046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246231, 35.057430, 38.061607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205213, 0.607032, -0.767723,
		-0.186821, 0.794290, 0.578101,
		0.960721, 0.024793, 0.276405,
		40.534447, 35.064869, 38.144527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988510, 35.767029, 37.999508>,  <39.861942, 35.047512, 37.951046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988510, 35.767029, 37.999508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332745, 35.571266, 37.943130>,  <40.539288, 35.453808, 37.909302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332745, 35.571266, 37.943130>,  <39.988510, 35.767029, 37.999508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332745, 35.571266, 37.943130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177424, 0.547504, -0.817778,
		0.477395, 0.678764, 0.558009,
		0.860590, -0.489407, -0.140946,
		40.590923, 35.424442, 37.900848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499073, 36.256775, 37.763683>,  <39.988510, 35.767029, 37.999508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499073, 36.256775, 37.763683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684303, 35.915573, 37.667400>,  <40.795441, 35.710854, 37.609631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684303, 35.915573, 37.667400>,  <40.499073, 36.256775, 37.763683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684303, 35.915573, 37.667400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270437, 0.394618, -0.878147,
		0.844052, 0.341553, 0.413422,
		0.463077, -0.853006, -0.240709,
		40.823227, 35.659672, 37.595188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203983, 36.411259, 37.413368>,  <40.499073, 36.256775, 37.763683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.203983, 36.411259, 37.413368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131340, 36.031300, 37.311611>,  <41.087753, 35.803326, 37.250557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131340, 36.031300, 37.311611>,  <41.203983, 36.411259, 37.413368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131340, 36.031300, 37.311611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271952, 0.200089, -0.941279,
		0.945018, -0.240130, 0.221987,
		-0.181612, -0.949896, -0.254392,
		41.076855, 35.746330, 37.235294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682457, 36.230839, 36.798496>,  <41.203983, 36.411259, 37.413368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.682457, 36.230839, 36.798496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401524, 35.946766, 36.779015>,  <41.232964, 35.776321, 36.767326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401524, 35.946766, 36.779015>,  <41.682457, 36.230839, 36.798496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401524, 35.946766, 36.779015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152978, -0.083755, -0.984674,
		0.695216, -0.699020, 0.167466,
		-0.702333, -0.710180, -0.048707,
		41.190823, 35.733711, 36.764404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.002895, 35.680927, 36.404995>,  <41.682457, 36.230839, 36.798496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.002895, 35.680927, 36.404995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.608543, 35.618038, 36.381920>,  <41.371933, 35.580303, 36.368073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.608543, 35.618038, 36.381920>,  <42.002895, 35.680927, 36.404995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608543, 35.618038, 36.381920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052867, 0.034689, -0.997999,
		0.158916, -0.986953, -0.025887,
		-0.985876, -0.157229, -0.057690,
		41.312782, 35.570869, 36.364613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940735, 35.153812, 35.945507>,  <42.002895, 35.680927, 36.404995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.940735, 35.153812, 35.945507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581032, 35.328777, 35.945633>,  <41.365208, 35.433758, 35.945709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581032, 35.328777, 35.945633>,  <41.940735, 35.153812, 35.945507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581032, 35.328777, 35.945633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074467, 0.153797, -0.985293,
		-0.431029, -0.886011, -0.170876,
		-0.899260, 0.437414, 0.000312,
		41.311253, 35.460003, 35.945728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629005, 34.918079, 35.412399>,  <41.940735, 35.153812, 35.945507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629005, 34.918079, 35.412399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.454010, 35.268986, 35.491405>,  <41.349014, 35.479530, 35.538807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.454010, 35.268986, 35.491405>,  <41.629005, 34.918079, 35.412399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.454010, 35.268986, 35.491405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052532, 0.244204, -0.968300,
		-0.897689, -0.413243, -0.152921,
		-0.437487, 0.877265, 0.197511,
		41.322765, 35.532166, 35.550659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072796, 35.095112, 34.871895>,  <41.629005, 34.918079, 35.412399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072796, 35.095112, 34.871895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228695, 35.425617, 35.034565>,  <41.322235, 35.623920, 35.132168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228695, 35.425617, 35.034565>,  <41.072796, 35.095112, 34.871895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228695, 35.425617, 35.034565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100926, 0.400618, -0.910670,
		-0.915373, 0.395979, 0.072750,
		0.389751, 0.826260, 0.406679,
		41.345619, 35.673496, 35.156570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702209, 35.646832, 34.558174>,  <41.072796, 35.095112, 34.871895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702209, 35.646832, 34.558174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082062, 35.704300, 34.669575>,  <41.309975, 35.738781, 34.736416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082062, 35.704300, 34.669575>,  <40.702209, 35.646832, 34.558174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082062, 35.704300, 34.669575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232616, 0.272338, -0.933660,
		-0.209983, 0.951415, 0.225201,
		0.949630, 0.143668, 0.278501,
		41.366951, 35.747402, 34.753124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932720, 36.266182, 34.158569>,  <40.702209, 35.646832, 34.558174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932720, 36.266182, 34.158569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.233547, 36.032215, 34.280067>,  <41.414043, 35.891834, 34.352966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.233547, 36.032215, 34.280067>,  <40.932720, 36.266182, 34.158569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233547, 36.032215, 34.280067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441217, 0.104459, -0.891300,
		0.489610, 0.804336, 0.336637,
		0.752070, -0.584920, 0.303743,
		41.459167, 35.856739, 34.371189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622478, 36.594383, 34.056046>,  <40.932720, 36.266182, 34.158569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622478, 36.594383, 34.056046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670666, 36.197380, 34.064144>,  <41.699577, 35.959179, 34.069004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670666, 36.197380, 34.064144>,  <41.622478, 36.594383, 34.056046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670666, 36.197380, 34.064144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633247, 0.061117, -0.771533,
		0.764517, 0.105766, 0.635867,
		0.120464, -0.992511, 0.020251,
		41.706806, 35.899628, 34.070221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335819, 36.537731, 33.916702>,  <41.622478, 36.594383, 34.056046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.335819, 36.537731, 33.916702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164829, 36.178654, 33.873959>,  <42.062237, 35.963207, 33.848312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164829, 36.178654, 33.873959>,  <42.335819, 36.537731, 33.916702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164829, 36.178654, 33.873959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635051, -0.214050, -0.742221,
		0.643412, -0.385140, 0.661580,
		-0.427470, -0.897691, -0.106862,
		42.036587, 35.909348, 33.841900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.852768, 36.261139, 34.423405>,  <42.335819, 36.537731, 33.916702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.852768, 36.261139, 34.423405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.192219, 36.124332, 34.261982>,  <43.395889, 36.042248, 34.165127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.192219, 36.124332, 34.261982>,  <42.852768, 36.261139, 34.423405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.192219, 36.124332, 34.261982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124962, -0.870901, 0.475307,
		-0.514024, -0.352927, -0.781807,
		0.848625, -0.342015, -0.403561,
		43.446808, 36.021729, 34.140915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.975246, 35.670177, 34.796158>,  <42.852768, 36.261139, 34.423405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.975246, 35.670177, 34.796158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260731, 35.652927, 34.516510>,  <43.432022, 35.642578, 34.348721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260731, 35.652927, 34.516510>,  <42.975246, 35.670177, 34.796158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.260731, 35.652927, 34.516510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143315, -0.967997, 0.206016,
		-0.685626, -0.247229, -0.684686,
		0.713707, -0.043124, -0.699115,
		43.474842, 35.639992, 34.306774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.881466, 35.087986, 34.348217>,  <42.975246, 35.670177, 34.796158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.881466, 35.087986, 34.348217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.277081, 35.146805, 34.353668>,  <43.514450, 35.182095, 34.356941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.277081, 35.146805, 34.353668>,  <42.881466, 35.087986, 34.348217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.277081, 35.146805, 34.353668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136834, -0.947226, 0.289895,
		0.055539, -0.284852, -0.956962,
		0.989036, 0.147045, 0.013630,
		43.573792, 35.190918, 34.357758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.179276, 34.497295, 34.159275>,  <42.881466, 35.087986, 34.348217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.179276, 34.497295, 34.159275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.503746, 34.666248, 34.321053>,  <43.698429, 34.767620, 34.418121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.503746, 34.666248, 34.321053>,  <43.179276, 34.497295, 34.159275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.503746, 34.666248, 34.321053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381933, -0.906381, 0.180558,
		0.442847, 0.008006, -0.896561,
		0.811180, 0.422386, 0.404446,
		43.747101, 34.792965, 34.442387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.773319, 34.091244, 33.947140>,  <43.179276, 34.497295, 34.159275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.773319, 34.091244, 33.947140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.897453, 34.291866, 34.270161>,  <43.971931, 34.412239, 34.463974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.897453, 34.291866, 34.270161>,  <43.773319, 34.091244, 33.947140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.897453, 34.291866, 34.270161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511269, -0.804230, 0.303016,
		0.801435, 0.318840, -0.506007,
		0.310332, 0.501553, 0.807551,
		43.990555, 34.442333, 34.512424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.463345, 33.963295, 33.960716>,  <43.773319, 34.091244, 33.947140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.463345, 33.963295, 33.960716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.359810, 34.068123, 34.332592>,  <44.297688, 34.131020, 34.555717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.359810, 34.068123, 34.332592>,  <44.463345, 33.963295, 33.960716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.359810, 34.068123, 34.332592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620455, -0.692559, 0.367965,
		0.740297, 0.672074, 0.016659,
		-0.258838, 0.262067, 0.929690,
		44.282158, 34.146744, 34.611500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.989166, 33.777905, 34.367622>,  <44.463345, 33.963295, 33.960716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.989166, 33.777905, 34.367622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.690609, 33.828423, 34.628986>,  <44.511475, 33.858734, 34.785805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.690609, 33.828423, 34.628986>,  <44.989166, 33.777905, 34.367622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.690609, 33.828423, 34.628986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323858, -0.788797, 0.522413,
		0.581389, 0.601538, 0.547849,
		-0.746393, 0.126300, 0.653411,
		44.466690, 33.866314, 34.825008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.341423, 33.554688, 34.971817>,  <44.989166, 33.777905, 34.367622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.341423, 33.554688, 34.971817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.943569, 33.540607, 35.010723>,  <44.704857, 33.532162, 35.034065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.943569, 33.540607, 35.010723>,  <45.341423, 33.554688, 34.971817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.943569, 33.540607, 35.010723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088478, -0.776605, 0.623743,
		0.053581, 0.629003, 0.775554,
		-0.994636, -0.035198, 0.097264,
		44.645180, 33.530048, 35.039902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.244904, 33.388283, 35.612988>,  <45.341423, 33.554688, 34.971817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.244904, 33.388283, 35.612988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.885483, 33.303505, 35.459267>,  <44.669830, 33.252640, 35.367035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.885483, 33.303505, 35.459267>,  <45.244904, 33.388283, 35.612988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.885483, 33.303505, 35.459267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057889, -0.810771, 0.582494,
		-0.435038, 0.545646, 0.716249,
		-0.898549, -0.211944, -0.384303,
		44.615917, 33.239922, 35.343975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.727448, 33.227558, 36.205376>,  <45.244904, 33.388283, 35.612988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.727448, 33.227558, 36.205376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.596504, 33.034370, 35.880520>,  <44.517937, 32.918457, 35.685604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.596504, 33.034370, 35.880520>,  <44.727448, 33.227558, 36.205376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.596504, 33.034370, 35.880520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130760, -0.828076, 0.545152,
		-0.935809, 0.284655, 0.207924,
		-0.327358, -0.482971, -0.812143,
		44.498299, 32.889481, 35.636875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.201786, 32.913147, 36.441330>,  <44.727448, 33.227558, 36.205376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.201786, 32.913147, 36.441330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.282669, 32.704536, 36.109756>,  <44.331200, 32.579369, 35.910812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.282669, 32.704536, 36.109756>,  <44.201786, 32.913147, 36.441330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.282669, 32.704536, 36.109756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064659, -0.851676, 0.520064,
		-0.977207, -0.051561, -0.205934,
		0.202204, -0.521526, -0.828930,
		44.343330, 32.548080, 35.861076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.689236, 32.359306, 36.354588>,  <44.201786, 32.913147, 36.441330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.689236, 32.359306, 36.354588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.016495, 32.259895, 36.147179>,  <44.212849, 32.200249, 36.022732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.016495, 32.259895, 36.147179>,  <43.689236, 32.359306, 36.354588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.016495, 32.259895, 36.147179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003950, -0.904178, 0.427137,
		-0.574993, -0.347413, -0.740734,
		0.818149, -0.248526, -0.518524,
		44.261940, 32.185337, 35.991623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561699, 31.680590, 36.087540>,  <43.689236, 32.359306, 36.354588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561699, 31.680590, 36.087540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.959702, 31.703003, 36.054516>,  <44.198505, 31.716452, 36.034702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.959702, 31.703003, 36.054516>,  <43.561699, 31.680590, 36.087540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.959702, 31.703003, 36.054516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080709, -0.938489, 0.335745,
		-0.058670, -0.340733, -0.938327,
		0.995010, 0.056033, -0.082562,
		44.258205, 31.719812, 36.029747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.747593, 31.061209, 35.770367>,  <43.561699, 31.680590, 36.087540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.747593, 31.061209, 35.770367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.077034, 31.193689, 35.954536>,  <44.274700, 31.273178, 36.065037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.077034, 31.193689, 35.954536>,  <43.747593, 31.061209, 35.770367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.077034, 31.193689, 35.954536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128092, -0.899432, 0.417869,
		0.552515, -0.285181, -0.783198,
		0.823601, 0.331201, 0.460420,
		44.324116, 31.293049, 36.092663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.281086, 30.530626, 35.544487>,  <43.747593, 31.061209, 35.770367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.281086, 30.530626, 35.544487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.435989, 30.717010, 35.862709>,  <44.528931, 30.828842, 36.053642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.435989, 30.717010, 35.862709>,  <44.281086, 30.530626, 35.544487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.435989, 30.717010, 35.862709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303344, -0.879240, 0.367315,
		0.870640, 0.099081, -0.481839,
		0.387258, 0.465962, 0.795557,
		44.552166, 30.856798, 36.101376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.041393, 30.377619, 35.603848>,  <44.281086, 30.530626, 35.544487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.041393, 30.377619, 35.603848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.919426, 30.488901, 35.968182>,  <44.846245, 30.555670, 36.186783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.919426, 30.488901, 35.968182>,  <45.041393, 30.377619, 35.603848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.919426, 30.488901, 35.968182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430474, -0.812851, 0.392385,
		0.849539, 0.511738, 0.128093,
		-0.304919, 0.278205, 0.910838,
		44.827950, 30.572363, 36.241432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.623745, 30.244339, 36.024483>,  <45.041393, 30.377619, 35.603848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.623745, 30.244339, 36.024483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.348011, 30.284533, 36.311459>,  <45.182571, 30.308649, 36.483646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.348011, 30.284533, 36.311459>,  <45.623745, 30.244339, 36.024483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.348011, 30.284533, 36.311459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418813, -0.752791, 0.507840,
		0.591116, 0.650545, 0.476837,
		-0.689331, 0.100486, 0.717443,
		45.141212, 30.314678, 36.526691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.052166, 30.213430, 36.619198>,  <45.623745, 30.244339, 36.024483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.052166, 30.213430, 36.619198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.673038, 30.106649, 36.688911>,  <45.445560, 30.042582, 36.730740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.673038, 30.106649, 36.688911>,  <46.052166, 30.213430, 36.619198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.673038, 30.106649, 36.688911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315844, -0.860619, 0.399472,
		0.043349, 0.433673, 0.900027,
		-0.947820, -0.266951, 0.174280,
		45.388691, 30.026564, 36.741196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.072952, 29.953449, 37.258018>,  <46.052166, 30.213430, 36.619198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.072952, 29.953449, 37.258018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.741657, 29.788715, 37.106007>,  <45.542881, 29.689875, 37.014801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.741657, 29.788715, 37.106007>,  <46.072952, 29.953449, 37.258018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.741657, 29.788715, 37.106007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257108, -0.881836, 0.395298,
		-0.497920, 0.229690, 0.836252,
		-0.828234, -0.411834, -0.380029,
		45.493187, 29.665165, 36.991997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.757961, 29.632059, 37.768482>,  <46.072952, 29.953449, 37.258018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.757961, 29.632059, 37.768482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.580784, 29.452309, 37.458164>,  <45.474480, 29.344458, 37.271973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.580784, 29.452309, 37.458164>,  <45.757961, 29.632059, 37.768482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.580784, 29.452309, 37.458164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105263, -0.885396, 0.452762,
		-0.890350, 0.118885, 0.439481,
		-0.442941, -0.449378, -0.775798,
		45.447903, 29.317495, 37.225426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.350758, 29.037836, 38.079735>,  <45.757961, 29.632059, 37.768482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.350758, 29.037836, 38.079735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.425110, 28.968779, 37.692822>,  <45.469719, 28.927343, 37.460674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.425110, 28.968779, 37.692822>,  <45.350758, 29.037836, 38.079735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.425110, 28.968779, 37.692822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236092, -0.947755, 0.214527,
		-0.953788, -0.268244, -0.135405,
		0.185876, -0.172645, -0.967287,
		45.480873, 28.916985, 37.402634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.975769, 28.464214, 37.939571>,  <45.350758, 29.037836, 38.079735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.975769, 28.464214, 37.939571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.291363, 28.491106, 37.695282>,  <45.480721, 28.507242, 37.548710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.291363, 28.491106, 37.695282>,  <44.975769, 28.464214, 37.939571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.291363, 28.491106, 37.695282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265038, -0.934001, 0.239578,
		-0.554310, -0.350889, -0.754730,
		0.788984, 0.067231, -0.610725,
		45.528057, 28.511276, 37.512066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.699986, 28.070240, 38.523762>,  <44.975769, 28.464214, 37.939571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.699986, 28.070240, 38.523762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.869015, 27.749006, 38.691807>,  <44.970432, 27.556267, 38.792633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.869015, 27.749006, 38.691807>,  <44.699986, 28.070240, 38.523762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.869015, 27.749006, 38.691807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904279, 0.342415, -0.255013,
		0.060945, 0.487656, 0.870906,
		0.422570, -0.803083, 0.420108,
		44.995785, 27.508081, 38.817841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.346313, 28.052437, 38.911316>,  <44.699986, 28.070240, 38.523762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.346313, 28.052437, 38.911316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.426720, 28.138954, 39.293480>,  <45.474964, 28.190865, 39.522778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.426720, 28.138954, 39.293480>,  <45.346313, 28.052437, 38.911316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.426720, 28.138954, 39.293480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978493, 0.001776, -0.206271,
		-0.046312, 0.976327, -0.211283,
		0.201013, 0.216292, 0.955412,
		45.487022, 28.203842, 39.580105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.983608, 28.484781, 39.014580>,  <45.346313, 28.052437, 38.911316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.983608, 28.484781, 39.014580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.951195, 28.854998, 39.162529>,  <45.931747, 29.077127, 39.251301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.951195, 28.854998, 39.162529>,  <45.983608, 28.484781, 39.014580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.951195, 28.854998, 39.162529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643321, 0.234877, -0.728677,
		-0.761296, -0.296996, 0.576387,
		-0.081035, 0.925541, 0.369875,
		45.926884, 29.132660, 39.273491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.416656, 28.767561, 39.418789>,  <45.983608, 28.484781, 39.014580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.416656, 28.767561, 39.418789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.588058, 29.044752, 39.186871>,  <45.690899, 29.211067, 39.047718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.588058, 29.044752, 39.186871>,  <45.416656, 28.767561, 39.418789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.588058, 29.044752, 39.186871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747326, -0.088834, -0.658494,
		-0.507827, 0.715464, 0.479815,
		0.428505, 0.692979, -0.579797,
		45.716610, 29.252645, 39.012932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.264015, 28.779709, 40.150253>,  <45.416656, 28.767561, 39.418789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.264015, 28.779709, 40.150253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.522018, 28.487156, 40.238834>,  <45.676819, 28.311625, 40.291985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.522018, 28.487156, 40.238834>,  <45.264015, 28.779709, 40.150253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.522018, 28.487156, 40.238834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533815, -0.223870, 0.815429,
		-0.546816, -0.644172, -0.534822,
		0.645007, -0.731385, 0.221453,
		45.715519, 28.267740, 40.305271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.058006, 28.962620, 40.809074>,  <45.264015, 28.779709, 40.150253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.058006, 28.962620, 40.809074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.693218, 28.875753, 40.669853>,  <44.474346, 28.823633, 40.586319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.693218, 28.875753, 40.669853>,  <45.058006, 28.962620, 40.809074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.693218, 28.875753, 40.669853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219909, 0.974991, -0.032129,
		0.346328, 0.047240, -0.936923,
		-0.911974, -0.217165, -0.348055,
		44.419624, 28.810604, 40.565437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.902164, 29.646433, 40.822498>,  <45.058006, 28.962620, 40.809074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.902164, 29.646433, 40.822498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.069954, 29.997231, 40.916245>,  <45.170628, 30.207708, 40.972492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.069954, 29.997231, 40.916245>,  <44.902164, 29.646433, 40.822498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.069954, 29.997231, 40.916245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735272, -0.479655, 0.478860,
		0.532372, -0.028542, -0.846029,
		0.419469, 0.876993, 0.234369,
		45.195793, 30.260328, 40.986557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.687382, 29.762934, 40.658733>,  <44.902164, 29.646433, 40.822498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.687382, 29.762934, 40.658733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.574177, 29.980091, 40.975006>,  <45.506256, 30.110386, 41.164768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.574177, 29.980091, 40.975006>,  <45.687382, 29.762934, 40.658733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.574177, 29.980091, 40.975006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722081, -0.421990, 0.548201,
		0.631273, 0.726079, -0.272586,
		-0.283009, 0.542894, 0.790679,
		45.489273, 30.142960, 41.212212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.206570, 30.276917, 40.919186>,  <45.687382, 29.762934, 40.658733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.206570, 30.276917, 40.919186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.981987, 30.165462, 41.230862>,  <45.847237, 30.098591, 41.417866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.981987, 30.165462, 41.230862>,  <46.206570, 30.276917, 40.919186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.981987, 30.165462, 41.230862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827499, -0.193225, 0.527172,
		0.003669, 0.940759, 0.339057,
		-0.561456, -0.278635, 0.779185,
		45.813549, 30.081871, 41.464619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.602619, 30.574060, 40.599049>,  <46.206570, 30.276917, 40.919186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.602619, 30.574060, 40.599049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.774109, 30.411217, 40.276443>,  <45.877003, 30.313511, 40.082882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.774109, 30.411217, 40.276443>,  <45.602619, 30.574060, 40.599049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.774109, 30.411217, 40.276443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023464, 0.887394, -0.460414,
		0.903131, 0.216314, 0.370894,
		0.428723, -0.407111, -0.806509,
		45.902725, 30.289083, 40.034492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.289677, 30.879787, 40.417965>,  <45.602619, 30.574060, 40.599049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.289677, 30.879787, 40.417965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.115353, 30.763031, 40.077408>,  <46.010757, 30.692978, 39.873074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.115353, 30.763031, 40.077408>,  <46.289677, 30.879787, 40.417965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.115353, 30.763031, 40.077408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154996, 0.907479, -0.390459,
		0.886591, -0.302130, -0.350249,
		-0.435813, -0.291890, -0.851391,
		45.984608, 30.675465, 39.821991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.738636, 30.873692, 39.803734>,  <46.289677, 30.879787, 40.417965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.738636, 30.873692, 39.803734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.363674, 30.933252, 39.677811>,  <46.138699, 30.968988, 39.602257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.363674, 30.933252, 39.677811>,  <46.738636, 30.873692, 39.803734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.363674, 30.933252, 39.677811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302811, 0.794969, -0.525672,
		0.171988, -0.588093, -0.790295,
		-0.937404, 0.148901, -0.314806,
		46.082455, 30.977922, 39.583370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.896328, 31.069010, 39.124992>,  <46.738636, 30.873692, 39.803734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.896328, 31.069010, 39.124992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.520756, 31.183825, 39.200901>,  <46.295410, 31.252714, 39.246445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.520756, 31.183825, 39.200901>,  <46.896328, 31.069010, 39.124992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.520756, 31.183825, 39.200901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163157, 0.856941, -0.488909,
		-0.302956, -0.428091, -0.851443,
		-0.938934, 0.287037, 0.189769,
		46.239075, 31.269936, 39.257832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.604736, 31.293442, 38.489349>,  <46.896328, 31.069010, 39.124992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.604736, 31.293442, 38.489349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.377514, 31.471869, 38.765995>,  <46.241180, 31.578924, 38.931984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.377514, 31.471869, 38.765995>,  <46.604736, 31.293442, 38.489349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.377514, 31.471869, 38.765995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059602, 0.860463, -0.506015,
		-0.820827, -0.246224, -0.515380,
		-0.568059, 0.446068, 0.691616,
		46.207096, 31.605690, 38.973480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.120522, 31.741470, 38.057865>,  <46.604736, 31.293442, 38.489349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.120522, 31.741470, 38.057865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.114361, 31.867456, 38.437458>,  <46.110664, 31.943048, 38.665215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.114361, 31.867456, 38.437458>,  <46.120522, 31.741470, 38.057865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.114361, 31.867456, 38.437458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061645, 0.946986, -0.315306,
		-0.997979, -0.063356, 0.004831,
		-0.015402, 0.314967, 0.948978,
		46.109741, 31.961946, 38.722153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.500851, 32.187439, 38.207096>,  <46.120522, 31.741470, 38.057865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.500851, 32.187439, 38.207096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.767223, 32.293015, 38.486202>,  <45.927048, 32.356361, 38.653667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.767223, 32.293015, 38.486202>,  <45.500851, 32.187439, 38.207096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.767223, 32.293015, 38.486202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051359, 0.949323, -0.310076,
		-0.744246, 0.170652, 0.645736,
		0.665927, 0.263937, 0.697766,
		45.967003, 32.372196, 38.695534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.227192, 32.779716, 38.497341>,  <45.500851, 32.187439, 38.207096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.227192, 32.779716, 38.497341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.613659, 32.813732, 38.594742>,  <45.845539, 32.834141, 38.653183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.613659, 32.813732, 38.594742>,  <45.227192, 32.779716, 38.497341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.613659, 32.813732, 38.594742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041709, 0.983169, -0.177876,
		-0.254530, 0.161701, 0.953450,
		0.966165, 0.085042, 0.243502,
		45.903507, 32.839245, 38.667793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.245811, 33.501102, 38.738281>,  <45.227192, 32.779716, 38.497341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.245811, 33.501102, 38.738281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.632172, 33.406742, 38.695606>,  <45.863987, 33.350124, 38.670002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.632172, 33.406742, 38.695606>,  <45.245811, 33.501102, 38.738281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.632172, 33.406742, 38.695606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201489, 0.943683, -0.262421,
		0.162589, 0.231976, 0.959037,
		0.965902, -0.235902, -0.106692,
		45.921944, 33.335972, 38.663597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.742554, 34.066772, 39.180965>,  <45.245811, 33.501102, 38.738281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.742554, 34.066772, 39.180965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.978935, 33.893513, 38.908741>,  <46.120762, 33.789558, 38.745407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.978935, 33.893513, 38.908741>,  <45.742554, 34.066772, 39.180965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.978935, 33.893513, 38.908741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255397, 0.900684, -0.351483,
		0.765212, 0.033897, 0.642885,
		0.590951, -0.433150, -0.680557,
		46.156219, 33.763569, 38.704575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.482300, 34.375717, 39.263714>,  <45.742554, 34.066772, 39.180965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.482300, 34.375717, 39.263714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.421810, 34.247734, 38.889599>,  <46.385517, 34.170944, 38.665131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.421810, 34.247734, 38.889599>,  <46.482300, 34.375717, 39.263714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.421810, 34.247734, 38.889599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262435, 0.899216, -0.350055,
		0.953026, -0.298388, -0.052014,
		-0.151224, -0.319961, -0.935284,
		46.376442, 34.151745, 38.609013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.828869, 34.876163, 38.860405>,  <46.482300, 34.375717, 39.263714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.828869, 34.876163, 38.860405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.627705, 34.682175, 38.574219>,  <46.507008, 34.565781, 38.402508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.627705, 34.682175, 38.574219>,  <46.828869, 34.876163, 38.860405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.627705, 34.682175, 38.574219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287574, 0.686717, -0.667623,
		0.815097, -0.541502, -0.205893,
		-0.502910, -0.484969, -0.715463,
		46.476833, 34.536686, 38.359581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.288998, 34.762062, 38.258495>,  <46.828869, 34.876163, 38.860405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.288998, 34.762062, 38.258495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.920895, 34.733589, 38.104584>,  <46.700031, 34.716503, 38.012238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.920895, 34.733589, 38.104584>,  <47.288998, 34.762062, 38.258495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.920895, 34.733589, 38.104584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200493, 0.758659, -0.619870,
		0.336039, -0.647587, -0.683892,
		-0.920261, -0.071185, -0.384776,
		46.644817, 34.712234, 37.989151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.423790, 34.758186, 37.550461>,  <47.288998, 34.762062, 38.258495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.423790, 34.758186, 37.550461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.032093, 34.833279, 37.581055>,  <46.797077, 34.878334, 37.599411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.032093, 34.833279, 37.581055>,  <47.423790, 34.758186, 37.550461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.032093, 34.833279, 37.581055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055912, 0.612785, -0.788270,
		-0.194852, -0.767627, -0.610558,
		-0.979238, 0.187733, 0.076483,
		46.738323, 34.889599, 37.604000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.161579, 34.710415, 36.854267>,  <47.423790, 34.758186, 37.550461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.161579, 34.710415, 36.854267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.854767, 34.890430, 37.037189>,  <46.670681, 34.998440, 37.146942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.854767, 34.890430, 37.037189>,  <47.161579, 34.710415, 36.854267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.854767, 34.890430, 37.037189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134222, 0.584430, -0.800266,
		-0.627416, -0.675208, -0.387869,
		-0.767029, 0.450040, 0.457309,
		46.624657, 35.025444, 37.174381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.586868, 34.677254, 36.372025>,  <47.161579, 34.710415, 36.854267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.586868, 34.677254, 36.372025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.527618, 34.977974, 36.629040>,  <46.492069, 35.158405, 36.783249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.527618, 34.977974, 36.629040>,  <46.586868, 34.677254, 36.372025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.527618, 34.977974, 36.629040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210521, 0.610844, -0.763250,
		-0.966302, -0.248322, 0.067790,
		-0.148123, 0.751801, 0.642537,
		46.483181, 35.203514, 36.821800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.966206, 34.987534, 36.159111>,  <46.586868, 34.677254, 36.372025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.966206, 34.987534, 36.159111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.128468, 35.282860, 36.374641>,  <46.225826, 35.460056, 36.503960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.128468, 35.282860, 36.374641>,  <45.966206, 34.987534, 36.159111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.128468, 35.282860, 36.374641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132688, 0.630831, -0.764491,
		-0.904343, 0.238625, 0.353866,
		0.405657, 0.738316, 0.538825,
		46.250164, 35.504356, 36.536289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.495224, 35.559879, 36.201126>,  <45.966206, 34.987534, 36.159111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.495224, 35.559879, 36.201126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.873447, 35.680252, 36.250710>,  <46.100380, 35.752476, 36.280460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.873447, 35.680252, 36.250710>,  <45.495224, 35.559879, 36.201126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.873447, 35.680252, 36.250710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095373, 0.620348, -0.778506,
		-0.311177, 0.724298, 0.615274,
		0.945554, 0.300934, 0.123960,
		46.157112, 35.770531, 36.287899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.494892, 36.126732, 35.867035>,  <45.495224, 35.559879, 36.201126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.494892, 36.126732, 35.867035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.886383, 36.076218, 35.931705>,  <46.121277, 36.045910, 35.970509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.886383, 36.076218, 35.931705>,  <45.494892, 36.126732, 35.867035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.886383, 36.076218, 35.931705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204157, 0.522000, -0.828152,
		0.020190, 0.843544, 0.536680,
		0.978730, -0.126287, 0.161676,
		46.180000, 36.038330, 35.980209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.717545, 36.801235, 35.678604>,  <45.494892, 36.126732, 35.867035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.717545, 36.801235, 35.678604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.017868, 36.539478, 35.642689>,  <46.198063, 36.382423, 35.621140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.017868, 36.539478, 35.642689>,  <45.717545, 36.801235, 35.678604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.017868, 36.539478, 35.642689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077303, 0.222061, -0.971964,
		0.655983, 0.722815, 0.217311,
		0.750807, -0.654390, -0.089792,
		46.243111, 36.343163, 35.615749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.141655, 37.157288, 35.338604>,  <45.717545, 36.801235, 35.678604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.141655, 37.157288, 35.338604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.237320, 36.775024, 35.269871>,  <46.294720, 36.545666, 35.228630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.237320, 36.775024, 35.269871>,  <46.141655, 37.157288, 35.338604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.237320, 36.775024, 35.269871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192247, 0.220071, -0.956352,
		0.951759, 0.195685, 0.236353,
		0.239158, -0.955655, -0.171835,
		46.309067, 36.488327, 35.218319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.824371, 37.084942, 34.921154>,  <46.141655, 37.157288, 35.338604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.824371, 37.084942, 34.921154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.623878, 36.745663, 34.852650>,  <46.503582, 36.542095, 34.811546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.623878, 36.745663, 34.852650>,  <46.824371, 37.084942, 34.921154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.623878, 36.745663, 34.852650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159268, 0.104110, -0.981730,
		0.850529, -0.519352, 0.082907,
		-0.501232, -0.848195, -0.171265,
		46.473507, 36.491203, 34.801270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.039848, 36.974815, 34.230865>,  <46.824371, 37.084942, 34.921154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.039848, 36.974815, 34.230865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.772892, 36.681122, 34.280659>,  <46.612717, 36.504906, 34.310535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.772892, 36.681122, 34.280659>,  <47.039848, 36.974815, 34.230865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.772892, 36.681122, 34.280659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157914, -0.023829, -0.987165,
		0.727772, -0.678484, -0.100041,
		-0.667391, -0.734229, 0.124484,
		46.572674, 36.460854, 34.318005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.280327, 36.361687, 33.878078>,  <47.039848, 36.974815, 34.230865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.280327, 36.361687, 33.878078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.884449, 36.406944, 33.913174>,  <46.646923, 36.434101, 33.934231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.884449, 36.406944, 33.913174>,  <47.280327, 36.361687, 33.878078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.884449, 36.406944, 33.913174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085325, 0.026025, -0.996013,
		-0.114978, -0.993237, -0.016103,
		-0.989697, 0.113145, 0.087740,
		46.587540, 36.440887, 33.939495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.024544, 35.853348, 34.348305>,  <47.280327, 36.361687, 33.878078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.024544, 35.853348, 34.348305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.369934, 35.879280, 34.548389>,  <47.577168, 35.894840, 34.668438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.369934, 35.879280, 34.548389>,  <47.024544, 35.853348, 34.348305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.369934, 35.879280, 34.548389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187960, -0.878917, 0.438378,
		0.468063, -0.472548, -0.746737,
		0.863475, 0.064831, 0.500209,
		47.628975, 35.898731, 34.698452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.551197, 35.317638, 34.179047>,  <47.024544, 35.853348, 34.348305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.551197, 35.317638, 34.179047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.540836, 35.436317, 34.560894>,  <47.534622, 35.507526, 34.790005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.540836, 35.436317, 34.560894>,  <47.551197, 35.317638, 34.179047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.540836, 35.436317, 34.560894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292777, -0.915319, 0.276538,
		0.955830, -0.272329, 0.110572,
		-0.025899, 0.296696, 0.954620,
		47.533066, 35.525326, 34.847279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.045979, 35.036354, 34.698067>,  <47.551197, 35.317638, 34.179047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.045979, 35.036354, 34.698067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.778358, 34.813671, 34.895023>,  <47.617786, 34.680061, 35.013199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.778358, 34.813671, 34.895023>,  <48.045979, 35.036354, 34.698067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.778358, 34.813671, 34.895023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621680, -0.056128, 0.781257,
		-0.407296, 0.828809, 0.383648,
		-0.669047, -0.556709, 0.492394,
		47.577644, 34.646660, 35.042740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.397331, 39.706104, 42.616131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.156334, 39.387150, 42.629913>,  <34.011738, 39.195778, 42.638184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.156334, 39.387150, 42.629913>,  <34.397331, 39.706104, 42.616131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156334, 39.387150, 42.629913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257473, -0.235047, -0.937262,
		0.755456, -0.555818, 0.346918,
		-0.602489, -0.797383, 0.034460,
		33.975586, 39.147934, 42.640251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807991, 39.119087, 42.427509>,  <34.397331, 39.706104, 42.616131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807991, 39.119087, 42.427509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.421288, 39.051506, 42.350742>,  <34.189266, 39.010960, 42.304684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.421288, 39.051506, 42.350742>,  <34.807991, 39.119087, 42.427509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421288, 39.051506, 42.350742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240529, -0.346340, -0.906749,
		0.086728, -0.922770, 0.375465,
		-0.966759, -0.168951, -0.191916,
		34.131260, 39.000820, 42.293167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850952, 38.434395, 42.046230>,  <34.807991, 39.119087, 42.427509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850952, 38.434395, 42.046230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.495937, 38.610283, 41.991203>,  <34.282928, 38.715816, 41.958187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.495937, 38.610283, 41.991203>,  <34.850952, 38.434395, 42.046230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495937, 38.610283, 41.991203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012182, -0.276078, -0.961058,
		-0.460578, -0.854649, 0.239672,
		-0.887536, 0.439723, -0.137567,
		34.229675, 38.742199, 41.949932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356365, 38.024029, 41.706680>,  <34.850952, 38.434395, 42.046230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356365, 38.024029, 41.706680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.221386, 38.391113, 41.622841>,  <34.140400, 38.611362, 41.572536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.221386, 38.391113, 41.622841>,  <34.356365, 38.024029, 41.706680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221386, 38.391113, 41.622841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063883, -0.199823, -0.977747,
		-0.939174, -0.343330, 0.008804,
		-0.337449, 0.917712, -0.209601,
		34.120152, 38.666428, 41.559959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021706, 37.875801, 41.054619>,  <34.356365, 38.024029, 41.706680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021706, 37.875801, 41.054619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.076931, 38.271481, 41.074333>,  <34.110065, 38.508888, 41.086163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.076931, 38.271481, 41.074333>,  <34.021706, 37.875801, 41.054619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076931, 38.271481, 41.074333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073667, 0.039368, -0.996506,
		-0.987680, 0.141214, -0.067436,
		0.138066, 0.989196, 0.049286,
		34.118351, 38.568241, 41.089119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559555, 38.144608, 40.585911>,  <34.021706, 37.875801, 41.054619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559555, 38.144608, 40.585911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.853931, 38.411278, 40.633141>,  <34.030556, 38.571278, 40.661480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.853931, 38.411278, 40.633141>,  <33.559555, 38.144608, 40.585911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853931, 38.411278, 40.633141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160253, -0.002085, -0.987074,
		-0.657807, 0.745349, -0.108371,
		0.735940, 0.666671, 0.118073,
		34.074715, 38.611279, 40.668564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520515, 38.528526, 39.976082>,  <33.559555, 38.144608, 40.585911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520515, 38.528526, 39.976082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.883320, 38.629528, 40.110889>,  <34.101002, 38.690128, 40.191772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.883320, 38.629528, 40.110889>,  <33.520515, 38.528526, 39.976082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883320, 38.629528, 40.110889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375800, -0.124168, -0.918345,
		-0.190035, 0.959597, -0.207510,
		0.907007, 0.252500, 0.337020,
		34.155422, 38.705276, 40.211994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769215, 39.062965, 39.593643>,  <33.520515, 38.528526, 39.976082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769215, 39.062965, 39.593643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.095730, 38.887680, 39.744183>,  <34.291641, 38.782509, 39.834507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.095730, 38.887680, 39.744183>,  <33.769215, 39.062965, 39.593643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095730, 38.887680, 39.744183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428668, 0.022845, -0.903173,
		0.387186, 0.898580, 0.206497,
		0.816290, -0.438215, 0.376348,
		34.340618, 38.756214, 39.857086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254612, 39.320267, 39.235580>,  <33.769215, 39.062965, 39.593643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254612, 39.320267, 39.235580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.448532, 39.011299, 39.399696>,  <34.564884, 38.825920, 39.498165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.448532, 39.011299, 39.399696>,  <34.254612, 39.320267, 39.235580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448532, 39.011299, 39.399696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574423, -0.072558, -0.815336,
		0.659549, 0.630958, 0.408518,
		0.484802, -0.772416, 0.410293,
		34.593971, 38.779575, 39.522785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894535, 39.503063, 39.211479>,  <34.254612, 39.320267, 39.235580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894535, 39.503063, 39.211479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.874699, 39.104076, 39.231865>,  <34.862797, 38.864685, 39.244099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.874699, 39.104076, 39.231865>,  <34.894535, 39.503063, 39.211479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874699, 39.104076, 39.231865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634556, -0.070877, -0.769620,
		0.771284, -0.005828, 0.636464,
		-0.049595, -0.997468, 0.050968,
		34.859821, 38.804836, 39.247154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591381, 39.207012, 39.320358>,  <34.894535, 39.503063, 39.211479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591381, 39.207012, 39.320358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.380009, 38.917217, 39.143326>,  <35.253185, 38.743340, 39.037106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.380009, 38.917217, 39.143326>,  <35.591381, 39.207012, 39.320358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380009, 38.917217, 39.143326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612354, 0.035817, -0.789772,
		0.588031, -0.688358, 0.424715,
		-0.528434, -0.724486, -0.442581,
		35.221478, 38.699871, 39.010551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108826, 38.969395, 38.962605>,  <35.591381, 39.207012, 39.320358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108826, 38.969395, 38.962605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.821190, 38.741081, 38.804054>,  <35.648609, 38.604092, 38.708923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.821190, 38.741081, 38.804054>,  <36.108826, 38.969395, 38.962605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821190, 38.741081, 38.804054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616574, -0.260948, -0.742793,
		0.320544, -0.778529, 0.539578,
		-0.719088, -0.570788, -0.396375,
		35.605465, 38.569843, 38.685143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413418, 38.393433, 38.995029>,  <36.108826, 38.969395, 38.962605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413418, 38.393433, 38.995029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.138882, 38.404949, 38.704346>,  <35.974159, 38.411858, 38.529934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.138882, 38.404949, 38.704346>,  <36.413418, 38.393433, 38.995029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138882, 38.404949, 38.704346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686591, -0.303878, -0.660493,
		-0.239846, -0.952276, 0.188797,
		-0.686342, 0.028791, -0.726708,
		35.932980, 38.413586, 38.486332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374527, 37.658546, 38.673923>,  <36.413418, 38.393433, 38.995029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374527, 37.658546, 38.673923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.243748, 37.911423, 38.392944>,  <36.165279, 38.063148, 38.224358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.243748, 37.911423, 38.392944>,  <36.374527, 37.658546, 38.673923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243748, 37.911423, 38.392944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709669, -0.326611, -0.624256,
		-0.624079, -0.702606, -0.341863,
		-0.326950, 0.632195, -0.702449,
		36.145664, 38.101082, 38.182209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277359, 37.244732, 37.967918>,  <36.374527, 37.658546, 38.673923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277359, 37.244732, 37.967918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.306053, 37.634762, 37.883930>,  <36.323269, 37.868778, 37.833538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.306053, 37.634762, 37.883930>,  <36.277359, 37.244732, 37.967918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306053, 37.634762, 37.883930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611000, -0.209355, -0.763445,
		-0.788373, -0.073525, -0.610788,
		0.071739, 0.975072, -0.209974,
		36.327576, 37.927284, 37.820938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213013, 37.187778, 37.243923>,  <36.277359, 37.244732, 37.967918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213013, 37.187778, 37.243923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.340481, 37.561489, 37.307896>,  <36.416962, 37.785717, 37.346279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.340481, 37.561489, 37.307896>,  <36.213013, 37.187778, 37.243923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340481, 37.561489, 37.307896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500596, -0.022606, -0.865386,
		-0.804893, 0.355834, -0.474899,
		0.318669, 0.934276, 0.159934,
		36.436081, 37.841770, 37.355877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134037, 37.634319, 36.617844>,  <36.213013, 37.187778, 37.243923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134037, 37.634319, 36.617844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.438606, 37.797405, 36.819439>,  <36.621349, 37.895256, 36.940395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.438606, 37.797405, 36.819439>,  <36.134037, 37.634319, 36.617844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438606, 37.797405, 36.819439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506835, 0.110301, -0.854957,
		-0.404169, 0.906422, -0.122659,
		0.761423, 0.407716, 0.503987,
		36.667034, 37.919720, 36.970634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376381, 38.133198, 36.185661>,  <36.134037, 37.634319, 36.617844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376381, 38.133198, 36.185661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.680309, 38.075012, 36.439121>,  <36.862667, 38.040100, 36.591198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.680309, 38.075012, 36.439121>,  <36.376381, 38.133198, 36.185661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680309, 38.075012, 36.439121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646220, 0.062179, -0.760614,
		0.071239, 0.987408, 0.141245,
		0.759819, -0.145461, 0.633653,
		36.908257, 38.031372, 36.629215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897057, 38.629887, 35.933945>,  <36.376381, 38.133198, 36.185661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897057, 38.629887, 35.933945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.076611, 38.353451, 36.160538>,  <37.184341, 38.187588, 36.296494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.076611, 38.353451, 36.160538>,  <36.897057, 38.629887, 35.933945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076611, 38.353451, 36.160538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723269, -0.091294, -0.684505,
		0.524770, 0.716980, 0.458863,
		0.448885, -0.691090, 0.566478,
		37.211277, 38.146122, 36.330482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708775, 38.860386, 36.146816>,  <36.897057, 38.629887, 35.933945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708775, 38.860386, 36.146816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.687515, 38.461735, 36.171818>,  <37.674759, 38.222546, 36.186821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.687515, 38.461735, 36.171818>,  <37.708775, 38.860386, 36.146816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687515, 38.461735, 36.171818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699486, -0.081830, -0.709946,
		0.712667, 0.005991, 0.701477,
		-0.053148, -0.996628, 0.062508,
		37.671570, 38.162746, 36.190571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378189, 38.724674, 36.234760>,  <37.708775, 38.860386, 36.146816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378189, 38.724674, 36.234760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.221745, 38.377377, 36.112659>,  <38.127876, 38.168999, 36.039398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.221745, 38.377377, 36.112659>,  <38.378189, 38.724674, 36.234760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221745, 38.377377, 36.112659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799183, -0.155905, -0.580518,
		0.456442, -0.471001, 0.754864,
		-0.391111, -0.868246, -0.305254,
		38.104412, 38.116901, 36.021084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897903, 38.190178, 36.296337>,  <38.378189, 38.724674, 36.234760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897903, 38.190178, 36.296337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.654068, 38.084114, 35.997513>,  <38.507767, 38.020477, 35.818218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.654068, 38.084114, 35.997513>,  <38.897903, 38.190178, 36.296337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654068, 38.084114, 35.997513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789439, -0.288734, -0.541682,
		-0.072071, -0.919959, 0.385333,
		-0.609584, -0.265157, -0.747060,
		38.471191, 38.004566, 35.773396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627686, 37.919731, 36.261185>,  <38.897903, 38.190178, 36.296337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627686, 37.919731, 36.261185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.018993, 37.972130, 36.325478>,  <40.253777, 38.003571, 36.364056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.018993, 37.972130, 36.325478>,  <39.627686, 37.919731, 36.261185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018993, 37.972130, 36.325478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169949, 0.062425, 0.983474,
		0.118803, -0.989415, 0.083332,
		0.978265, 0.131002, 0.160734,
		40.312473, 38.011429, 36.373699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787811, 37.458462, 36.844639>,  <39.627686, 37.919731, 36.261185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787811, 37.458462, 36.844639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.091549, 37.718513, 36.833885>,  <40.273792, 37.874546, 36.827435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.091549, 37.718513, 36.833885>,  <39.787811, 37.458462, 36.844639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091549, 37.718513, 36.833885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038354, 0.085967, 0.995559,
		0.649553, -0.754945, 0.090214,
		0.759348, 0.650129, -0.026885,
		40.319355, 37.913551, 36.825821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334957, 37.191402, 37.384792>,  <39.787811, 37.458462, 36.844639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334957, 37.191402, 37.384792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.390614, 37.582527, 37.322147>,  <40.424007, 37.817204, 37.284561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.390614, 37.582527, 37.322147>,  <40.334957, 37.191402, 37.384792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390614, 37.582527, 37.322147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005588, 0.158921, 0.987275,
		0.990257, -0.136495, 0.027577,
		0.139141, 0.977810, -0.156610,
		40.432354, 37.875870, 37.275166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716629, 37.346737, 37.915340>,  <40.334957, 37.191402, 37.384792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716629, 37.346737, 37.915340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.592636, 37.711948, 37.809292>,  <40.518242, 37.931076, 37.745663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.592636, 37.711948, 37.809292>,  <40.716629, 37.346737, 37.915340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592636, 37.711948, 37.809292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250391, 0.190613, 0.949195,
		0.917179, 0.360616, 0.169528,
		-0.309981, 0.913030, -0.265121,
		40.499641, 37.985859, 37.729755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073635, 37.863422, 38.290710>,  <40.716629, 37.346737, 37.915340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.073635, 37.863422, 38.290710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.718880, 37.995205, 38.161167>,  <40.506027, 38.074276, 38.083443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.718880, 37.995205, 38.161167>,  <41.073635, 37.863422, 38.290710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718880, 37.995205, 38.161167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293136, 0.140493, 0.945692,
		0.357063, 0.933660, -0.028027,
		-0.886892, 0.329456, -0.323854,
		40.452812, 38.094040, 38.064011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921078, 38.497520, 38.618095>,  <41.073635, 37.863422, 38.290710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921078, 38.497520, 38.618095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.543022, 38.424671, 38.509617>,  <40.316189, 38.380962, 38.444530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.543022, 38.424671, 38.509617>,  <40.921078, 38.497520, 38.618095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543022, 38.424671, 38.509617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323702, 0.410345, 0.852546,
		-0.043984, 0.893560, -0.446785,
		-0.945136, -0.182123, -0.271198,
		40.259480, 38.370033, 38.428257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465351, 39.091164, 38.888855>,  <40.921078, 38.497520, 38.618095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465351, 39.091164, 38.888855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.198235, 38.802021, 38.817822>,  <40.037964, 38.628536, 38.775204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.198235, 38.802021, 38.817822>,  <40.465351, 39.091164, 38.888855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198235, 38.802021, 38.817822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506516, 0.266481, 0.820018,
		-0.545432, 0.637549, -0.544091,
		-0.667791, -0.722855, -0.177581,
		39.997898, 38.585163, 38.764545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833977, 39.321198, 39.093571>,  <40.465351, 39.091164, 38.888855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833977, 39.321198, 39.093571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.755890, 38.928894, 39.093739>,  <39.709038, 38.693512, 39.093842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.755890, 38.928894, 39.093739>,  <39.833977, 39.321198, 39.093571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755890, 38.928894, 39.093739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648865, 0.129475, 0.749807,
		-0.735436, 0.146100, -0.661656,
		-0.195215, -0.980760, 0.000421,
		39.697327, 38.634666, 39.093864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248867, 39.350739, 39.434551>,  <39.833977, 39.321198, 39.093571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248867, 39.350739, 39.434551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.342350, 38.962231, 39.452477>,  <39.398441, 38.729126, 39.463230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.342350, 38.962231, 39.452477>,  <39.248867, 39.350739, 39.434551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342350, 38.962231, 39.452477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647611, -0.121120, 0.752283,
		-0.725245, -0.204834, -0.657315,
		0.233707, -0.971274, 0.044811,
		39.412460, 38.670849, 39.465919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630928, 38.844330, 39.389572>,  <39.248867, 39.350739, 39.434551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630928, 38.844330, 39.389572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.917492, 38.645203, 39.585094>,  <39.089428, 38.525726, 39.702408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.917492, 38.645203, 39.585094>,  <38.630928, 38.844330, 39.389572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917492, 38.645203, 39.585094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676687, -0.325219, 0.660550,
		-0.169862, -0.803996, -0.569857,
		0.716408, -0.497817, 0.488812,
		39.132416, 38.495857, 39.731739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376183, 38.192192, 39.513248>,  <38.630928, 38.844330, 39.389572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376183, 38.192192, 39.513248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.670650, 38.261261, 39.775009>,  <38.847332, 38.302700, 39.932068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.670650, 38.261261, 39.775009>,  <38.376183, 38.192192, 39.513248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670650, 38.261261, 39.775009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624463, -0.199540, 0.755135,
		0.260968, -0.964557, -0.039070,
		0.736167, 0.172668, 0.654404,
		38.891502, 38.313061, 39.971329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330757, 37.700897, 40.006371>,  <38.376183, 38.192192, 39.513248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330757, 37.700897, 40.006371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.530140, 37.978760, 40.213829>,  <38.649769, 38.145477, 40.338303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.530140, 37.978760, 40.213829>,  <38.330757, 37.700897, 40.006371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530140, 37.978760, 40.213829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542844, -0.216355, 0.811487,
		0.675919, -0.686032, 0.269249,
		0.498452, 0.694659, 0.518647,
		38.679676, 38.187157, 40.369423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351933, 37.383709, 40.752422>,  <38.330757, 37.700897, 40.006371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351933, 37.383709, 40.752422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.448181, 37.768192, 40.806355>,  <38.505928, 37.998882, 40.838715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.448181, 37.768192, 40.806355>,  <38.351933, 37.383709, 40.752422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448181, 37.768192, 40.806355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391434, -0.031014, 0.919683,
		0.888191, -0.274068, 0.368788,
		0.240618, 0.961210, 0.134826,
		38.520367, 38.056557, 40.846802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892120, 37.500748, 41.399265>,  <38.351933, 37.383709, 40.752422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892120, 37.500748, 41.399265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.689499, 37.836861, 41.321972>,  <38.567928, 38.038528, 41.275597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.689499, 37.836861, 41.321972>,  <38.892120, 37.500748, 41.399265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689499, 37.836861, 41.321972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317696, 0.026442, 0.947824,
		0.801545, 0.541510, 0.253559,
		-0.506552, 0.840278, -0.193230,
		38.537533, 38.088943, 41.264004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899632, 37.874779, 42.040688>,  <38.892120, 37.500748, 41.399265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899632, 37.874779, 42.040688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.631630, 38.097549, 41.844349>,  <38.470829, 38.231213, 41.726547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.631630, 38.097549, 41.844349>,  <38.899632, 37.874779, 42.040688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631630, 38.097549, 41.844349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537400, 0.092285, 0.838263,
		0.512145, 0.825422, 0.237459,
		-0.670006, 0.556923, -0.490845,
		38.430630, 38.264626, 41.697094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767689, 38.546787, 42.454571>,  <38.899632, 37.874779, 42.040688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767689, 38.546787, 42.454571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.452415, 38.480366, 42.217525>,  <38.263252, 38.440514, 42.075298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.452415, 38.480366, 42.217525>,  <38.767689, 38.546787, 42.454571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452415, 38.480366, 42.217525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607683, 0.362384, 0.706682,
		0.097406, 0.917117, -0.386534,
		-0.788184, -0.166055, -0.592614,
		38.215961, 38.430550, 42.039742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386063, 39.153999, 42.452751>,  <38.767689, 38.546787, 42.454571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386063, 39.153999, 42.452751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.121452, 38.882259, 42.325706>,  <37.962688, 38.719215, 42.249481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.121452, 38.882259, 42.325706>,  <38.386063, 39.153999, 42.452751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121452, 38.882259, 42.325706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697083, 0.400871, 0.594456,
		-0.276520, 0.614648, -0.738746,
		-0.661522, -0.679346, -0.317612,
		37.922997, 38.678455, 42.230423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778904, 39.557194, 42.343338>,  <38.386063, 39.153999, 42.452751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778904, 39.557194, 42.343338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.660446, 39.180286, 42.405869>,  <37.589371, 38.954144, 42.443386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.660446, 39.180286, 42.405869>,  <37.778904, 39.557194, 42.343338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660446, 39.180286, 42.405869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647055, 0.318302, 0.692822,
		-0.702580, 0.104024, -0.703960,
		-0.296142, -0.942264, 0.156324,
		37.571602, 38.897606, 42.452766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.040733, 39.639347, 42.273342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.085423, 39.280212, 42.443710>,  <37.112236, 39.064732, 42.545933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.085423, 39.280212, 42.443710>,  <37.040733, 39.639347, 42.273342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085423, 39.280212, 42.443710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747654, 0.206401, 0.631199,
		-0.654624, -0.388960, -0.648211,
		0.111719, -0.897836, 0.425922,
		37.118938, 39.010860, 42.571487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350925, 39.287445, 42.334980>,  <37.040733, 39.639347, 42.273342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350925, 39.287445, 42.334980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.576187, 39.100639, 42.607674>,  <36.711342, 38.988556, 42.771290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.576187, 39.100639, 42.607674>,  <36.350925, 39.287445, 42.334980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576187, 39.100639, 42.607674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776431, -0.016636, 0.629982,
		-0.282869, -0.884094, -0.371972,
		0.563151, -0.467014, 0.681733,
		36.745132, 38.960537, 42.812195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922726, 38.773285, 42.615540>,  <36.350925, 39.287445, 42.334980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922726, 38.773285, 42.615540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.207951, 38.856503, 42.883347>,  <36.379086, 38.906433, 43.044029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.207951, 38.856503, 42.883347>,  <35.922726, 38.773285, 42.615540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207951, 38.856503, 42.883347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700993, 0.195225, 0.685927,
		0.011993, -0.958440, 0.285043,
		0.713067, 0.208039, 0.669519,
		36.421871, 38.918915, 43.084202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780727, 38.425621, 43.251568>,  <35.922726, 38.773285, 42.615540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780727, 38.425621, 43.251568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.054958, 38.686287, 43.381378>,  <36.219498, 38.842686, 43.459263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.054958, 38.686287, 43.381378>,  <35.780727, 38.425621, 43.251568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054958, 38.686287, 43.381378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453410, 0.033461, 0.890674,
		0.569559, -0.757772, 0.318409,
		0.685582, 0.651661, 0.324523,
		36.260632, 38.881786, 43.478737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992538, 38.189690, 43.836422>,  <35.780727, 38.425621, 43.251568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992538, 38.189690, 43.836422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.073719, 38.577774, 43.889347>,  <36.122425, 38.810623, 43.921101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.073719, 38.577774, 43.889347>,  <35.992538, 38.189690, 43.836422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073719, 38.577774, 43.889347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481207, -0.018859, 0.876404,
		0.852791, -0.241534, 0.463044,
		0.202949, 0.970209, 0.132310,
		36.134605, 38.868835, 43.929039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240688, 38.258938, 44.544170>,  <35.992538, 38.189690, 43.836422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240688, 38.258938, 44.544170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.156693, 38.636349, 44.441669>,  <36.106297, 38.862793, 44.380169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.156693, 38.636349, 44.441669>,  <36.240688, 38.258938, 44.544170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156693, 38.636349, 44.441669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391472, 0.159033, 0.906343,
		0.895910, 0.290640, 0.335968,
		-0.209989, 0.943524, -0.256257,
		36.093697, 38.919407, 44.364792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578537, 38.681110, 45.145470>,  <36.240688, 38.258938, 44.544170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578537, 38.681110, 45.145470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.340111, 38.932903, 44.946087>,  <36.197056, 39.083981, 44.826458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.340111, 38.932903, 44.946087>,  <36.578537, 38.681110, 45.145470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340111, 38.932903, 44.946087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322685, 0.380652, 0.866590,
		0.735244, 0.677385, -0.023767,
		-0.596062, 0.629486, -0.498455,
		36.161293, 39.121750, 44.796551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622261, 39.431713, 45.435223>,  <36.578537, 38.681110, 45.145470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622261, 39.431713, 45.435223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.265274, 39.435535, 45.254818>,  <36.051083, 39.437828, 45.146576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.265274, 39.435535, 45.254818>,  <36.622261, 39.431713, 45.435223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265274, 39.435535, 45.254818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435749, 0.240471, 0.867350,
		0.116741, 0.970609, -0.210449,
		-0.892465, 0.009552, -0.451015,
		35.997536, 39.438400, 45.119514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309498, 40.094475, 45.586891>,  <36.622261, 39.431713, 45.435223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309498, 40.094475, 45.586891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.030453, 39.816246, 45.518166>,  <35.863026, 39.649307, 45.476929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.030453, 39.816246, 45.518166>,  <36.309498, 40.094475, 45.586891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030453, 39.816246, 45.518166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331485, 0.100743, 0.938066,
		-0.635184, 0.711357, -0.300851,
		-0.697609, -0.695573, -0.171814,
		35.821171, 39.607574, 45.466621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786209, 40.244785, 46.023033>,  <36.309498, 40.094475, 45.586891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786209, 40.244785, 46.023033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.636478, 39.884502, 45.934849>,  <35.546642, 39.668331, 45.881939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.636478, 39.884502, 45.934849>,  <35.786209, 40.244785, 46.023033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636478, 39.884502, 45.934849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356168, -0.079856, 0.931003,
		-0.856170, 0.427016, -0.290913,
		-0.374322, -0.900711, -0.220460,
		35.524181, 39.614288, 45.868710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066605, 40.304779, 46.256111>,  <35.786209, 40.244785, 46.023033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066605, 40.304779, 46.256111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.218300, 39.934959, 46.241253>,  <35.309319, 39.713066, 46.232338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.218300, 39.934959, 46.241253>,  <35.066605, 40.304779, 46.256111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218300, 39.934959, 46.241253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354534, -0.182269, 0.917106,
		-0.854682, -0.334638, -0.396909,
		0.379242, -0.924552, -0.037141,
		35.332073, 39.657593, 46.230110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492085, 39.907970, 46.403130>,  <35.066605, 40.304779, 46.256111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492085, 39.907970, 46.403130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.791210, 39.654900, 46.483612>,  <34.970688, 39.503056, 46.531902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.791210, 39.654900, 46.483612>,  <34.492085, 39.907970, 46.403130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791210, 39.654900, 46.483612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387445, -0.169787, 0.906123,
		-0.539123, -0.755572, -0.372098,
		0.747818, -0.632680, 0.201207,
		35.015556, 39.465096, 46.543976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137272, 39.291172, 46.624889>,  <34.492085, 39.907970, 46.403130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137272, 39.291172, 46.624889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.519928, 39.237514, 46.728313>,  <34.749519, 39.205322, 46.790367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.519928, 39.237514, 46.728313>,  <34.137272, 39.291172, 46.624889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519928, 39.237514, 46.728313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290029, -0.356437, 0.888164,
		-0.026981, -0.924640, -0.379886,
		0.956637, -0.134141, 0.258556,
		34.806919, 39.197273, 46.805882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163425, 38.670307, 46.923531>,  <34.137272, 39.291172, 46.624889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163425, 38.670307, 46.923531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.479412, 38.883152, 47.045387>,  <34.669003, 39.010860, 47.118504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.479412, 38.883152, 47.045387>,  <34.163425, 38.670307, 46.923531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479412, 38.883152, 47.045387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176550, -0.278411, 0.944096,
		0.587185, -0.799588, -0.125990,
		0.789964, 0.532115, 0.304646,
		34.716400, 39.042786, 47.136780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423481, 38.168068, 47.282192>,  <34.163425, 38.670307, 46.923531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423481, 38.168068, 47.282192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.604355, 38.507607, 47.391724>,  <34.712879, 38.711330, 47.457443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.604355, 38.507607, 47.391724>,  <34.423481, 38.168068, 47.282192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604355, 38.507607, 47.391724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044624, -0.285093, 0.957460,
		0.890807, -0.445168, -0.091036,
		0.452185, 0.848850, 0.273829,
		34.740009, 38.762260, 47.473873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933147, 38.109261, 47.834343>,  <34.423481, 38.168068, 47.282192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933147, 38.109261, 47.834343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.844208, 38.495815, 47.885956>,  <34.790844, 38.727749, 47.916924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.844208, 38.495815, 47.885956>,  <34.933147, 38.109261, 47.834343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844208, 38.495815, 47.885956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034997, -0.140174, 0.989508,
		0.974338, 0.215502, 0.064988,
		-0.222350, 0.966390, 0.129035,
		34.777504, 38.785732, 47.924667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175747, 38.228489, 48.502705>,  <34.933147, 38.109261, 47.834343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175747, 38.228489, 48.502705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.927628, 38.529682, 48.414848>,  <34.778755, 38.710400, 48.362133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.927628, 38.529682, 48.414848>,  <35.175747, 38.228489, 48.502705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927628, 38.529682, 48.414848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198271, 0.120410, 0.972723,
		0.758892, 0.646929, 0.074605,
		-0.620299, 0.752984, -0.219645,
		34.741539, 38.755577, 48.348953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249481, 38.711185, 49.077744>,  <35.175747, 38.228489, 48.502705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249481, 38.711185, 49.077744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.891659, 38.778313, 48.912045>,  <34.676964, 38.818588, 48.812626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.891659, 38.778313, 48.912045>,  <35.249481, 38.711185, 49.077744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891659, 38.778313, 48.912045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405456, 0.085284, 0.910128,
		0.188066, 0.982122, -0.008248,
		-0.894560, 0.167820, -0.414246,
		34.623291, 38.828659, 48.787769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057770, 39.074047, 49.536854>,  <35.249481, 38.711185, 49.077744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057770, 39.074047, 49.536854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.736347, 38.948689, 49.334435>,  <34.543495, 38.873474, 49.212982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.736347, 38.948689, 49.334435>,  <35.057770, 39.074047, 49.536854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736347, 38.948689, 49.334435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533584, 0.002486, 0.845743,
		-0.263793, 0.949620, -0.169220,
		-0.803555, -0.313394, -0.506046,
		34.495281, 38.854671, 49.182621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497551, 39.534374, 49.761269>,  <35.057770, 39.074047, 49.536854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497551, 39.534374, 49.761269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.326992, 39.201328, 49.619881>,  <34.224659, 39.001499, 49.535049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.326992, 39.201328, 49.619881>,  <34.497551, 39.534374, 49.761269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326992, 39.201328, 49.619881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585750, -0.043608, 0.809318,
		-0.689263, 0.552134, -0.469110,
		-0.426395, -0.832614, -0.353470,
		34.199074, 38.951546, 49.513840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734631, 39.605122, 49.879086>,  <34.497551, 39.534374, 49.761269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734631, 39.605122, 49.879086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.804985, 39.217834, 49.807968>,  <33.847198, 38.985462, 49.765297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.804985, 39.217834, 49.807968>,  <33.734631, 39.605122, 49.879086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804985, 39.217834, 49.807968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673938, -0.250083, 0.695173,
		-0.717544, -0.002452, -0.696508,
		0.175889, -0.968221, -0.177793,
		33.857754, 38.927368, 49.754631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177952, 39.130955, 49.754242>,  <33.734631, 39.605122, 49.879086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177952, 39.130955, 49.754242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.477051, 38.956585, 49.954578>,  <33.656509, 38.851963, 50.074780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.477051, 38.956585, 49.954578>,  <33.177952, 39.130955, 49.754242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477051, 38.956585, 49.954578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530406, 0.061596, 0.845503,
		-0.399429, -0.897871, -0.185161,
		0.747747, -0.435929, 0.500839,
		33.701374, 38.825806, 50.104832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807030, 38.675076, 50.239517>,  <33.177952, 39.130955, 49.754242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807030, 38.675076, 50.239517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.156132, 38.855904, 50.313210>,  <33.365593, 38.964401, 50.357426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.156132, 38.855904, 50.313210>,  <32.807030, 38.675076, 50.239517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156132, 38.855904, 50.313210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363322, 0.349478, 0.863633,
		0.326025, -0.820678, 0.469251,
		0.872757, 0.452055, 0.184232,
		33.417957, 38.991524, 50.368477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625622, 38.662754, 50.874905>,  <32.807030, 38.675076, 50.239517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625622, 38.662754, 50.874905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.945686, 38.891918, 50.803894>,  <33.137726, 39.029415, 50.761288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.945686, 38.891918, 50.803894>,  <32.625622, 38.662754, 50.874905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945686, 38.891918, 50.803894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039462, 0.345629, 0.937541,
		0.598482, -0.743181, 0.299168,
		0.800164, 0.572907, -0.177525,
		33.185734, 39.063789, 50.750637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068302, 38.649155, 50.288136>,  <32.625622, 38.662754, 50.874905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068302, 38.649155, 50.288136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.749384, 38.412201, 50.241837>,  <31.558033, 38.270027, 50.214058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.749384, 38.412201, 50.241837>,  <32.068302, 38.649155, 50.288136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749384, 38.412201, 50.241837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270409, -0.179125, -0.945935,
		0.539626, -0.785489, 0.303002,
		-0.797297, -0.592386, -0.115743,
		31.510195, 38.234486, 50.207115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307308, 38.033249, 49.854019>,  <32.068302, 38.649155, 50.288136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307308, 38.033249, 49.854019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.909870, 38.052921, 49.813343>,  <31.671406, 38.064724, 49.788937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.909870, 38.052921, 49.813343>,  <32.307308, 38.033249, 49.854019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909870, 38.052921, 49.813343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089389, -0.208062, -0.974023,
		-0.069059, -0.976879, 0.202334,
		-0.993600, 0.049178, -0.101690,
		31.611790, 38.067677, 49.782837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054539, 37.405235, 49.552238>,  <32.307308, 38.033249, 49.854019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054539, 37.405235, 49.552238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.790054, 37.698292, 49.487694>,  <31.631365, 37.874126, 49.448967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.790054, 37.698292, 49.487694>,  <32.054539, 37.405235, 49.552238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790054, 37.698292, 49.487694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129765, -0.100155, -0.986473,
		-0.738895, -0.673203, -0.028848,
		-0.661208, 0.732643, -0.161362,
		31.591692, 37.918083, 49.439285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693815, 37.150620, 48.937153>,  <32.054539, 37.405235, 49.552238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693815, 37.150620, 48.937153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.658298, 37.548809, 48.950699>,  <31.636990, 37.787724, 48.958824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.658298, 37.548809, 48.950699>,  <31.693815, 37.150620, 48.937153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658298, 37.548809, 48.950699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197260, 0.050896, -0.979029,
		-0.976322, -0.080248, -0.200887,
		-0.088790, 0.995475, 0.033861,
		31.631662, 37.847450, 48.960857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309511, 37.331970, 48.318089>,  <31.693815, 37.150620, 48.937153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309511, 37.331970, 48.318089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.468731, 37.686081, 48.414291>,  <31.564262, 37.898548, 48.472012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.468731, 37.686081, 48.414291>,  <31.309511, 37.331970, 48.318089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468731, 37.686081, 48.414291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159299, 0.191487, -0.968482,
		-0.903427, 0.423817, -0.064802,
		0.398050, 0.885275, 0.240508,
		31.588146, 37.951664, 48.486443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062958, 37.787186, 47.819351>,  <31.309511, 37.331970, 48.318089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062958, 37.787186, 47.819351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.362867, 38.003704, 47.971581>,  <31.542814, 38.133614, 48.062916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.362867, 38.003704, 47.971581>,  <31.062958, 37.787186, 47.819351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362867, 38.003704, 47.971581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353029, 0.159211, -0.921967,
		-0.559648, 0.825621, -0.071721,
		0.749776, 0.541297, 0.380570,
		31.587801, 38.166092, 48.085751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062456, 38.470051, 47.535561>,  <31.062958, 37.787186, 47.819351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062456, 38.470051, 47.535561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.437626, 38.394798, 47.652111>,  <31.662727, 38.349648, 47.722042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.437626, 38.394798, 47.652111>,  <31.062456, 38.470051, 47.535561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437626, 38.394798, 47.652111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328406, 0.211495, -0.920554,
		0.111562, 0.959102, 0.260151,
		0.937925, -0.188134, 0.291380,
		31.719004, 38.338360, 47.739525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494860, 38.977299, 47.202553>,  <31.062456, 38.470051, 47.535561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494860, 38.977299, 47.202553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.778965, 38.719009, 47.314667>,  <31.949429, 38.564034, 47.381935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.778965, 38.719009, 47.314667>,  <31.494860, 38.977299, 47.202553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778965, 38.719009, 47.314667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502387, 0.186081, -0.844382,
		0.493084, 0.740547, 0.456572,
		0.710264, -0.645727, 0.280288,
		31.992044, 38.525291, 47.398754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188213, 39.308956, 47.272987>,  <31.494860, 38.977299, 47.202553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188213, 39.308956, 47.272987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.256908, 38.919094, 47.215645>,  <32.298126, 38.685177, 47.181240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.256908, 38.919094, 47.215645>,  <32.188213, 39.308956, 47.272987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256908, 38.919094, 47.215645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564181, 0.216592, -0.796735,
		0.807593, 0.055951, 0.587080,
		0.171734, -0.974658, -0.143352,
		32.308430, 38.626698, 47.172638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916634, 39.249256, 47.151291>,  <32.188213, 39.308956, 47.272987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916634, 39.249256, 47.151291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.759029, 38.917595, 46.992668>,  <32.664467, 38.718597, 46.897495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.759029, 38.917595, 46.992668>,  <32.916634, 39.249256, 47.151291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759029, 38.917595, 46.992668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643333, 0.059339, -0.763283,
		0.656412, -0.555859, 0.510043,
		-0.394012, -0.829156, -0.396554,
		32.640827, 38.668850, 46.873703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445271, 38.859444, 46.941536>,  <32.916634, 39.249256, 47.151291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445271, 38.859444, 46.941536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.152134, 38.716568, 46.709892>,  <32.976254, 38.630844, 46.570908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.152134, 38.716568, 46.709892>,  <33.445271, 38.859444, 46.941536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152134, 38.716568, 46.709892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578436, 0.121101, -0.806689,
		0.358267, -0.926150, 0.117861,
		-0.732841, -0.357185, -0.579105,
		32.932281, 38.609413, 46.536160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730045, 38.271511, 46.470764>,  <33.445271, 38.859444, 46.941536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730045, 38.271511, 46.470764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.385128, 38.389408, 46.306046>,  <33.178177, 38.460148, 46.207214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.385128, 38.389408, 46.306046>,  <33.730045, 38.271511, 46.470764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385128, 38.389408, 46.306046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438188, 0.026642, -0.898488,
		-0.253854, -0.955204, -0.152128,
		-0.862293, 0.294746, -0.411796,
		33.126442, 38.477833, 46.182507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794064, 37.959141, 45.847630>,  <33.730045, 38.271511, 46.470764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794064, 37.959141, 45.847630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.487839, 38.209995, 45.790211>,  <33.304104, 38.360508, 45.755760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.487839, 38.209995, 45.790211>,  <33.794064, 37.959141, 45.847630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487839, 38.209995, 45.790211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273978, 0.115920, -0.954725,
		-0.582106, -0.770232, -0.260567,
		-0.765564, 0.627141, -0.143549,
		33.258171, 38.398136, 45.747147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509335, 37.735317, 45.265312>,  <33.794064, 37.959141, 45.847630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509335, 37.735317, 45.265312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.373905, 38.111420, 45.279640>,  <33.292648, 38.337082, 45.288239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.373905, 38.111420, 45.279640>,  <33.509335, 37.735317, 45.265312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373905, 38.111420, 45.279640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202515, 0.109992, -0.973082,
		-0.918888, -0.322206, -0.227656,
		-0.338574, 0.940258, 0.035819,
		33.272331, 38.393497, 45.290386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032188, 37.821194, 44.742790>,  <33.509335, 37.735317, 45.265312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032188, 37.821194, 44.742790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.156437, 38.187336, 44.845272>,  <33.230988, 38.407021, 44.906761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.156437, 38.187336, 44.845272>,  <33.032188, 37.821194, 44.742790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156437, 38.187336, 44.845272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294981, 0.163405, -0.941427,
		-0.903603, 0.368006, -0.219254,
		0.310623, 0.915353, 0.256208,
		33.249622, 38.461941, 44.922134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621563, 38.243538, 44.316761>,  <33.032188, 37.821194, 44.742790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621563, 38.243538, 44.316761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.913330, 38.489285, 44.437103>,  <33.088390, 38.636730, 44.509308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.913330, 38.489285, 44.437103>,  <32.621563, 38.243538, 44.316761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913330, 38.489285, 44.437103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274784, 0.139613, -0.951316,
		-0.626455, 0.776574, -0.066981,
		0.729416, 0.614362, 0.300851,
		33.132156, 38.673592, 44.527359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411011, 38.831100, 44.016464>,  <32.621563, 38.243538, 44.316761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411011, 38.831100, 44.016464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.797436, 38.832661, 44.119774>,  <33.029289, 38.833595, 44.181759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.797436, 38.832661, 44.119774>,  <32.411011, 38.831100, 44.016464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797436, 38.832661, 44.119774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250478, 0.230102, -0.940380,
		-0.063096, 0.973159, 0.221316,
		0.966064, 0.003899, 0.258274,
		33.087254, 38.833832, 44.197254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611824, 39.346958, 43.669529>,  <32.411011, 38.831100, 44.016464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611824, 39.346958, 43.669529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.942917, 39.127178, 43.715088>,  <33.141571, 38.995312, 43.742424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.942917, 39.127178, 43.715088>,  <32.611824, 39.346958, 43.669529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942917, 39.127178, 43.715088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213358, 0.120443, -0.969521,
		0.518983, 0.826802, 0.216923,
		0.827729, -0.549447, 0.113897,
		33.191235, 38.962345, 43.749256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022659, 39.718494, 43.262772>,  <32.611824, 39.346958, 43.669529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022659, 39.718494, 43.262772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.215179, 39.372547, 43.319832>,  <33.330692, 39.164978, 43.354069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.215179, 39.372547, 43.319832>,  <33.022659, 39.718494, 43.262772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215179, 39.372547, 43.319832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326032, 0.025570, -0.945013,
		0.813666, 0.501345, 0.294282,
		0.481302, -0.864870, 0.142649,
		33.359570, 39.113087, 43.362625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609348, 39.921772, 42.972721>,  <33.022659, 39.718494, 43.262772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609348, 39.921772, 42.972721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.595322, 39.522373, 42.989552>,  <33.586906, 39.282734, 42.999649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.595322, 39.522373, 42.989552>,  <33.609348, 39.921772, 42.972721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595322, 39.522373, 42.989552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600619, -0.054703, -0.797662,
		0.798766, -0.002696, 0.601636,
		-0.035062, -0.998499, 0.042076,
		33.584805, 39.222824, 43.002174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.640152, 28.795069, 37.062962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.353172, 28.522707, 37.121788>,  <46.180984, 28.359289, 37.157085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.353172, 28.522707, 37.121788>,  <46.640152, 28.795069, 37.062962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.353172, 28.522707, 37.121788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671054, 0.618899, -0.408229,
		0.186945, -0.391575, -0.900955,
		-0.717453, -0.680906, 0.147068,
		46.137936, 28.318436, 37.165909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.348331, 28.750334, 36.440010>,  <46.640152, 28.795069, 37.062962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.348331, 28.750334, 36.440010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.098347, 28.637384, 36.731129>,  <45.948357, 28.569614, 36.905800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.098347, 28.637384, 36.731129>,  <46.348331, 28.750334, 36.440010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.098347, 28.637384, 36.731129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621143, 0.744583, -0.244492,
		-0.472865, -0.604864, -0.640733,
		-0.624963, -0.282375, 0.727795,
		45.910858, 28.552671, 36.949467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.634014, 28.617437, 36.099461>,  <46.348331, 28.750334, 36.440010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.634014, 28.617437, 36.099461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.565434, 28.699369, 36.484928>,  <45.524284, 28.748529, 36.716209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.565434, 28.699369, 36.484928>,  <45.634014, 28.617437, 36.099461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.565434, 28.699369, 36.484928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556016, 0.787364, -0.266279,
		-0.813297, -0.581466, -0.021104,
		-0.171448, 0.204830, 0.963665,
		45.514000, 28.760818, 36.774029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.892265, 28.645288, 36.217896>,  <45.634014, 28.617437, 36.099461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.892265, 28.645288, 36.217896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.058937, 28.854343, 36.515411>,  <45.158939, 28.979776, 36.693920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.058937, 28.854343, 36.515411>,  <44.892265, 28.645288, 36.217896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.058937, 28.854343, 36.515411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588816, 0.778538, -0.217194,
		-0.692585, -0.347456, 0.632139,
		0.416679, 0.522639, 0.743792,
		45.183941, 29.011135, 36.738548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.440907, 29.155714, 36.405643>,  <44.892265, 28.645288, 36.217896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.440907, 29.155714, 36.405643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.760509, 29.288176, 36.606411>,  <44.952271, 29.367653, 36.726871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.760509, 29.288176, 36.606411>,  <44.440907, 29.155714, 36.405643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.760509, 29.288176, 36.606411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333147, 0.938668, -0.088966,
		-0.500598, -0.096128, 0.860326,
		0.799008, 0.331152, 0.501920,
		45.000214, 29.387522, 36.756989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.128887, 29.656197, 36.950432>,  <44.440907, 29.155714, 36.405643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.128887, 29.656197, 36.950432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.507450, 29.762861, 36.877533>,  <44.734589, 29.826860, 36.833794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.507450, 29.762861, 36.877533>,  <44.128887, 29.656197, 36.950432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.507450, 29.762861, 36.877533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289532, 0.950500, -0.112787,
		0.143146, 0.159507, 0.976763,
		0.946404, 0.266660, -0.182242,
		44.791370, 29.842859, 36.822861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.327435, 30.268223, 37.467899>,  <44.128887, 29.656197, 36.950432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.327435, 30.268223, 37.467899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.559853, 30.280405, 37.142578>,  <44.699303, 30.287714, 36.947388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.559853, 30.280405, 37.142578>,  <44.327435, 30.268223, 37.467899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.559853, 30.280405, 37.142578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300580, 0.936681, -0.179670,
		0.756330, 0.348858, 0.553410,
		0.581048, 0.030455, -0.813299,
		44.734165, 30.289541, 36.898590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.655411, 30.899385, 37.457561>,  <44.327435, 30.268223, 37.467899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.655411, 30.899385, 37.457561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.671162, 30.811180, 37.067726>,  <44.680614, 30.758257, 36.833824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.671162, 30.811180, 37.067726>,  <44.655411, 30.899385, 37.457561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.671162, 30.811180, 37.067726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376644, 0.900127, -0.218885,
		0.925521, 0.375693, -0.047607,
		0.039381, -0.220513, -0.974589,
		44.682976, 30.745026, 36.775349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.937107, 31.455505, 37.154259>,  <44.655411, 30.899385, 37.457561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.937107, 31.455505, 37.154259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.806595, 31.259302, 36.831039>,  <44.728287, 31.141581, 36.637108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.806595, 31.259302, 36.831039>,  <44.937107, 31.455505, 37.154259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.806595, 31.259302, 36.831039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295570, 0.864908, -0.405676,
		0.897875, 0.106471, -0.427182,
		-0.326281, -0.490509, -0.808049,
		44.708710, 31.112150, 36.588623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.364742, 31.715376, 36.745167>,  <44.937107, 31.455505, 37.154259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.364742, 31.715376, 36.745167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.050518, 31.576052, 36.540588>,  <44.861984, 31.492458, 36.417839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.050518, 31.576052, 36.540588>,  <45.364742, 31.715376, 36.745167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.050518, 31.576052, 36.540588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111657, 0.892754, -0.436489,
		0.608632, -0.285781, -0.740201,
		-0.785558, -0.348310, -0.511449,
		44.814850, 31.471560, 36.387154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.531040, 31.790438, 36.012959>,  <45.364742, 31.715376, 36.745167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.531040, 31.790438, 36.012959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.131752, 31.787384, 36.036617>,  <44.892178, 31.785553, 36.050812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.131752, 31.787384, 36.036617>,  <45.531040, 31.790438, 36.012959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.131752, 31.787384, 36.036617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045559, 0.737581, -0.673720,
		-0.038483, -0.675215, -0.736616,
		-0.998220, -0.007632, 0.059147,
		44.832287, 31.785095, 36.054363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.275978, 31.734045, 35.270363>,  <45.531040, 31.790438, 36.012959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.275978, 31.734045, 35.270363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.958286, 31.865324, 35.474907>,  <44.767673, 31.944092, 35.597633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.958286, 31.865324, 35.474907>,  <45.275978, 31.734045, 35.270363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.958286, 31.865324, 35.474907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160200, 0.698700, -0.697247,
		-0.586123, -0.635693, -0.502350,
		-0.794227, 0.328196, 0.511362,
		44.720016, 31.963783, 35.628315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.737831, 31.925995, 34.786324>,  <45.275978, 31.734045, 35.270363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.737831, 31.925995, 34.786324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.644184, 32.121655, 35.122398>,  <44.587997, 32.239052, 35.324043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.644184, 32.121655, 35.122398>,  <44.737831, 31.925995, 34.786324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.644184, 32.121655, 35.122398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319861, 0.777342, -0.541690,
		-0.918084, -0.395563, -0.025528,
		-0.234117, 0.489152, 0.840191,
		44.573948, 32.268398, 35.374454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.967125, 32.254498, 34.688892>,  <44.737831, 31.925995, 34.786324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.967125, 32.254498, 34.688892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.130798, 32.476990, 34.978218>,  <44.229000, 32.610485, 35.151814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.130798, 32.476990, 34.978218>,  <43.967125, 32.254498, 34.688892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.130798, 32.476990, 34.978218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321895, 0.829742, -0.455973,
		-0.853788, -0.046256, 0.518561,
		0.409181, 0.556227, 0.723314,
		44.253551, 32.643856, 35.195213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.666641, 32.955643, 34.578003>,  <43.967125, 32.254498, 34.688892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.666641, 32.955643, 34.578003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.949535, 33.030415, 34.850731>,  <44.119270, 33.075275, 35.014366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.949535, 33.030415, 34.850731>,  <43.666641, 32.955643, 34.578003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.949535, 33.030415, 34.850731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052151, 0.975579, -0.213370,
		-0.705051, 0.115346, 0.699714,
		0.707237, 0.186928, 0.681817,
		44.161705, 33.086494, 35.055275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.357780, 33.312141, 35.206505>,  <43.666641, 32.955643, 34.578003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.357780, 33.312141, 35.206505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.747105, 33.394005, 35.164955>,  <43.980698, 33.443123, 35.140026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.747105, 33.394005, 35.164955>,  <43.357780, 33.312141, 35.206505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.747105, 33.394005, 35.164955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218286, 0.965267, -0.143564,
		0.070885, 0.162406, 0.984175,
		0.973307, 0.204655, -0.103873,
		44.039097, 33.455402, 35.133793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.431698, 33.929443, 35.614861>,  <43.357780, 33.312141, 35.206505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.431698, 33.929443, 35.614861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.753780, 33.918861, 35.377899>,  <43.947029, 33.912510, 35.235722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.753780, 33.918861, 35.377899>,  <43.431698, 33.929443, 35.614861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.753780, 33.918861, 35.377899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127634, 0.967857, -0.216708,
		0.579096, 0.250106, 0.775948,
		0.805206, -0.026457, -0.592404,
		43.995342, 33.910923, 35.200176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.729435, 34.637066, 35.726593>,  <43.431698, 33.929443, 35.614861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.729435, 34.637066, 35.726593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.900219, 34.479710, 35.400909>,  <44.002689, 34.385296, 35.205498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.900219, 34.479710, 35.400909>,  <43.729435, 34.637066, 35.726593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.900219, 34.479710, 35.400909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070286, 0.912124, -0.403844,
		0.901533, 0.115199, 0.417094,
		0.426964, -0.393394, -0.814213,
		44.028309, 34.361691, 35.156647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.253056, 35.148041, 35.524754>,  <43.729435, 34.637066, 35.726593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.253056, 35.148041, 35.524754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.154999, 34.913849, 35.215660>,  <44.096165, 34.773335, 35.030205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.154999, 34.913849, 35.215660>,  <44.253056, 35.148041, 35.524754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.154999, 34.913849, 35.215660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046789, 0.803270, -0.593775,
		0.968358, -0.109402, -0.224307,
		-0.245139, -0.585482, -0.772734,
		44.081455, 34.738205, 34.983841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.697681, 35.442986, 35.054108>,  <44.253056, 35.148041, 35.524754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.697681, 35.442986, 35.054108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.415016, 35.236732, 34.860302>,  <44.245415, 35.112980, 34.744019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.415016, 35.236732, 34.860302>,  <44.697681, 35.442986, 35.054108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.415016, 35.236732, 34.860302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131645, 0.768635, -0.625995,
		0.695191, -0.378588, -0.611049,
		-0.706668, -0.515627, -0.484509,
		44.203018, 35.082043, 34.714951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.829849, 35.424339, 34.361382>,  <44.697681, 35.442986, 35.054108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.829849, 35.424339, 34.361382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.435631, 35.366383, 34.396507>,  <44.199100, 35.331608, 34.417583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.435631, 35.366383, 34.396507>,  <44.829849, 35.424339, 34.361382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.435631, 35.366383, 34.396507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160780, 0.636420, -0.754400,
		0.053422, -0.757612, -0.650515,
		-0.985543, -0.144891, 0.087810,
		44.139969, 35.322914, 34.422852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.481346, 35.712582, 34.324707>,  <44.829849, 35.424339, 34.361382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.481346, 35.712582, 34.324707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.837341, 35.894619, 34.336067>,  <46.050938, 36.003841, 34.342884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.837341, 35.894619, 34.336067>,  <45.481346, 35.712582, 34.324707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.837341, 35.894619, 34.336067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118997, -0.291946, 0.949003,
		0.440177, -0.841224, -0.313983,
		0.889991, 0.455093, 0.028405,
		46.104340, 36.031147, 34.344589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.962223, 35.333858, 34.723793>,  <45.481346, 35.712582, 34.324707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.962223, 35.333858, 34.723793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.155167, 35.684155, 34.731949>,  <46.270931, 35.894333, 34.736843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.155167, 35.684155, 34.731949>,  <45.962223, 35.333858, 34.723793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.155167, 35.684155, 34.731949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240059, -0.154542, 0.958378,
		0.842440, -0.457383, -0.284773,
		0.482355, 0.875738, 0.020394,
		46.299873, 35.946877, 34.738068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.662544, 35.231487, 35.012642>,  <45.962223, 35.333858, 34.723793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.662544, 35.231487, 35.012642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.574799, 35.617760, 35.068268>,  <46.522152, 35.849525, 35.101643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.574799, 35.617760, 35.068268>,  <46.662544, 35.231487, 35.012642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.574799, 35.617760, 35.068268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304251, -0.067716, 0.950182,
		0.926991, 0.250741, -0.278956,
		-0.219360, 0.965683, 0.139060,
		46.508991, 35.907463, 35.109985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.184845, 35.443874, 35.423115>,  <46.662544, 35.231487, 35.012642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.184845, 35.443874, 35.423115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.906746, 35.722424, 35.494328>,  <46.739887, 35.889553, 35.537056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.906746, 35.722424, 35.494328>,  <47.184845, 35.443874, 35.423115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.906746, 35.722424, 35.494328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124370, -0.127399, 0.984023,
		0.707931, 0.706279, 0.001965,
		-0.695245, 0.696376, 0.178030,
		46.698174, 35.931335, 35.547737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.464630, 35.793175, 36.024826>,  <47.184845, 35.443874, 35.423115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.464630, 35.793175, 36.024826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.080376, 35.903950, 36.016014>,  <46.849823, 35.970417, 36.010727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.080376, 35.903950, 36.016014>,  <47.464630, 35.793175, 36.024826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.080376, 35.903950, 36.016014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099500, -0.268949, 0.958001,
		0.259386, 0.922480, 0.285917,
		-0.960634, 0.276941, -0.022026,
		46.792187, 35.987034, 36.009407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.315559, 36.218018, 36.625584>,  <47.464630, 35.793175, 36.024826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.315559, 36.218018, 36.625584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.953186, 36.088509, 36.516441>,  <46.735760, 36.010803, 36.450958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.953186, 36.088509, 36.516441>,  <47.315559, 36.218018, 36.625584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.953186, 36.088509, 36.516441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210652, -0.214356, 0.953770,
		-0.367292, 0.921533, 0.125990,
		-0.905937, -0.323772, -0.272854,
		46.681404, 35.991379, 36.434586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.813103, 36.451836, 37.202091>,  <47.315559, 36.218018, 36.625584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.813103, 36.451836, 37.202091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.643635, 36.149227, 37.002819>,  <46.541954, 35.967663, 36.883255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.643635, 36.149227, 37.002819>,  <46.813103, 36.451836, 37.202091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.643635, 36.149227, 37.002819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111824, -0.502089, 0.857555,
		-0.898890, 0.419026, 0.128121,
		-0.423666, -0.756521, -0.498180,
		46.516537, 35.922272, 36.853367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.266361, 36.304058, 37.544292>,  <46.813103, 36.451836, 37.202091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.266361, 36.304058, 37.544292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.347458, 35.983555, 37.319126>,  <46.396114, 35.791252, 37.184025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.347458, 35.983555, 37.319126>,  <46.266361, 36.304058, 37.544292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.347458, 35.983555, 37.319126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043408, -0.581643, 0.812285,
		-0.978270, -0.140247, -0.152703,
		0.202739, -0.801263, -0.562916,
		46.408279, 35.743176, 37.150249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.774250, 35.888348, 37.657055>,  <46.266361, 36.304058, 37.544292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.774250, 35.888348, 37.657055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.045372, 35.629620, 37.517220>,  <46.208046, 35.474384, 37.433319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.045372, 35.629620, 37.517220>,  <45.774250, 35.888348, 37.657055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.045372, 35.629620, 37.517220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221246, -0.632865, 0.741979,
		-0.701170, -0.425566, -0.572061,
		0.677798, -0.646819, -0.349591,
		46.248711, 35.435574, 37.412342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.471310, 35.239128, 37.646313>,  <45.774250, 35.888348, 37.657055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.471310, 35.239128, 37.646313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.856323, 35.130783, 37.641193>,  <46.087330, 35.065777, 37.638123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.856323, 35.130783, 37.641193>,  <45.471310, 35.239128, 37.646313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.856323, 35.130783, 37.641193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183129, -0.684127, 0.705998,
		-0.199987, -0.677202, -0.708098,
		0.962533, -0.270864, -0.012802,
		46.145084, 35.049522, 37.637352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.459583, 34.607822, 37.459751>,  <45.471310, 35.239128, 37.646313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.459583, 34.607822, 37.459751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.817936, 34.637028, 37.635052>,  <46.032948, 34.654552, 37.740231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.817936, 34.637028, 37.635052>,  <45.459583, 34.607822, 37.459751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.817936, 34.637028, 37.635052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149251, -0.879622, 0.451652,
		0.418469, -0.470037, -0.777142,
		0.895884, 0.073013, 0.438248,
		46.086700, 34.658932, 37.766525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.833683, 34.008404, 37.373474>,  <45.459583, 34.607822, 37.459751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.833683, 34.008404, 37.373474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.010185, 34.179756, 37.688889>,  <46.116085, 34.282566, 37.878136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.010185, 34.179756, 37.688889>,  <45.833683, 34.008404, 37.373474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.010185, 34.179756, 37.688889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043310, -0.887847, 0.458096,
		0.896335, -0.167987, -0.410321,
		0.441257, 0.428379, 0.788533,
		46.142563, 34.308270, 37.925449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.384819, 33.625111, 37.430035>,  <45.833683, 34.008404, 37.373474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.384819, 33.625111, 37.430035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.355278, 33.786713, 37.794743>,  <46.337551, 33.883675, 38.013569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.355278, 33.786713, 37.794743>,  <46.384819, 33.625111, 37.430035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.355278, 33.786713, 37.794743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066164, -0.910266, 0.408703,
		0.995072, 0.090511, 0.040497,
		-0.073855, 0.404010, 0.911768,
		46.333122, 33.907917, 38.068272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.725891, 33.133049, 37.737698>,  <46.384819, 33.625111, 37.430035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.725891, 33.133049, 37.737698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.576710, 33.349678, 38.039055>,  <46.487202, 33.479656, 38.219872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.576710, 33.349678, 38.039055>,  <46.725891, 33.133049, 37.737698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.576710, 33.349678, 38.039055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003514, -0.812801, 0.582531,
		0.927843, 0.214610, 0.305040,
		-0.372954, 0.541570, 0.753397,
		46.464825, 33.512150, 38.265076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.099728, 32.898575, 38.326073>,  <46.725891, 33.133049, 37.737698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.099728, 32.898575, 38.326073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.750736, 33.053070, 38.445805>,  <46.541340, 33.145767, 38.517643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.750736, 33.053070, 38.445805>,  <47.099728, 32.898575, 38.326073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.750736, 33.053070, 38.445805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113206, -0.755664, 0.645101,
		0.475357, 0.528952, 0.703026,
		-0.872479, 0.386240, 0.299330,
		46.488991, 33.168941, 38.535603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.115704, 33.016205, 39.025963>,  <47.099728, 32.898575, 38.326073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.115704, 33.016205, 39.025963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.737919, 32.949169, 38.912888>,  <46.511250, 32.908947, 38.845043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.737919, 32.949169, 38.912888>,  <47.115704, 33.016205, 39.025963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.737919, 32.949169, 38.912888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008057, -0.848131, 0.529725,
		-0.328533, 0.502581, 0.799674,
		-0.944458, -0.167589, -0.282689,
		46.454582, 32.898891, 38.828079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.890354, 32.652042, 39.522423>,  <47.115704, 33.016205, 39.025963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.890354, 32.652042, 39.522423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.587997, 32.571903, 39.273109>,  <46.406582, 32.523819, 39.123520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.587997, 32.571903, 39.273109>,  <46.890354, 32.652042, 39.522423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.587997, 32.571903, 39.273109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174059, -0.856268, 0.486322,
		-0.631133, 0.476097, 0.612375,
		-0.755893, -0.200344, -0.623288,
		46.361229, 32.511799, 39.086124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.212822, 32.625675, 39.836952>,  <46.890354, 32.652042, 39.522423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.212822, 32.625675, 39.836952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.180363, 32.391960, 39.513962>,  <46.160889, 32.251732, 39.320168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.180363, 32.391960, 39.513962>,  <46.212822, 32.625675, 39.836952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.180363, 32.391960, 39.513962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279551, -0.764289, 0.581131,
		-0.956696, 0.272888, -0.101320,
		-0.081146, -0.584290, -0.807478,
		46.156017, 32.216675, 39.271717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.517971, 32.293262, 39.738983>,  <46.212822, 32.625675, 39.836952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.517971, 32.293262, 39.738983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.756870, 32.066593, 39.511944>,  <45.900211, 31.930592, 39.375721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.756870, 32.066593, 39.511944>,  <45.517971, 32.293262, 39.738983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.756870, 32.066593, 39.511944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381609, -0.823222, 0.420334,
		-0.705454, -0.034443, -0.707918,
		0.597252, -0.566675, -0.567602,
		45.936047, 31.896591, 39.341663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.023071, 31.805172, 39.468624>,  <45.517971, 32.293262, 39.738983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.023071, 31.805172, 39.468624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.388165, 31.648598, 39.421814>,  <45.607220, 31.554653, 39.393726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.388165, 31.648598, 39.421814>,  <45.023071, 31.805172, 39.468624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.388165, 31.648598, 39.421814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318468, -0.861089, 0.396364,
		-0.255924, -0.324504, -0.910604,
		0.912733, -0.391437, -0.117028,
		45.661983, 31.531166, 39.386703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.825474, 31.149996, 39.310814>,  <45.023071, 31.805172, 39.468624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.825474, 31.149996, 39.310814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.217827, 31.097731, 39.368500>,  <45.453239, 31.066372, 39.403111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.217827, 31.097731, 39.368500>,  <44.825474, 31.149996, 39.310814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.217827, 31.097731, 39.368500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165067, -0.951131, 0.260964,
		0.103074, -0.279781, -0.954515,
		0.980882, -0.130661, 0.144219,
		45.512093, 31.058533, 39.411766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.488594, 38.968559, 41.052433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233349, 38.732201, 40.854992>,  <39.080200, 38.590385, 40.736526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233349, 38.732201, 40.854992>,  <39.488594, 38.968559, 41.052433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233349, 38.732201, 40.854992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620971, -0.015954, -0.783671,
		0.455196, -0.806588, 0.377112,
		-0.638116, -0.590899, -0.493605,
		39.041912, 38.554932, 40.706909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930794, 38.469917, 40.670624>,  <39.488594, 38.968559, 41.052433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930794, 38.469917, 40.670624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583893, 38.435028, 40.474556>,  <39.375751, 38.414097, 40.356915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583893, 38.435028, 40.474556>,  <39.930794, 38.469917, 40.670624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583893, 38.435028, 40.474556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495465, -0.054469, -0.866918,
		0.048914, -0.994699, 0.090453,
		-0.867250, -0.087221, -0.490174,
		39.323719, 38.408863, 40.327503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058865, 37.865162, 40.338242>,  <39.930794, 38.469917, 40.670624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058865, 37.865162, 40.338242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773964, 38.090073, 40.170174>,  <39.603024, 38.225018, 40.069332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773964, 38.090073, 40.170174>,  <40.058865, 37.865162, 40.338242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773964, 38.090073, 40.170174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450428, -0.092970, -0.887959,
		-0.538342, -0.821706, -0.187048,
		-0.712251, 0.562277, -0.420169,
		39.560287, 38.258755, 40.044125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828621, 37.514992, 39.760773>,  <40.058865, 37.865162, 40.338242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828621, 37.514992, 39.760773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689266, 37.877319, 39.664349>,  <39.605652, 38.094715, 39.606495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689266, 37.877319, 39.664349>,  <39.828621, 37.514992, 39.760773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689266, 37.877319, 39.664349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100511, -0.219592, -0.970400,
		-0.931946, -0.362305, -0.014542,
		-0.348388, 0.905822, -0.241064,
		39.584751, 38.149067, 39.592030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325241, 37.417068, 39.193794>,  <39.828621, 37.514992, 39.760773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325241, 37.417068, 39.193794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470966, 37.787598, 39.155426>,  <39.558403, 38.009914, 39.132404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470966, 37.787598, 39.155426>,  <39.325241, 37.417068, 39.193794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470966, 37.787598, 39.155426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168824, -0.166985, -0.971398,
		-0.915845, 0.337703, -0.217221,
		0.364317, 0.926322, -0.095920,
		39.580261, 38.065495, 39.126652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190525, 37.572689, 38.515705>,  <39.325241, 37.417068, 39.193794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190525, 37.572689, 38.515705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426262, 37.886124, 38.594360>,  <39.567703, 38.074184, 38.641556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426262, 37.886124, 38.594360>,  <39.190525, 37.572689, 38.515705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426262, 37.886124, 38.594360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266427, 0.041275, -0.962971,
		-0.762687, 0.619911, -0.184444,
		0.589343, 0.783586, 0.196641,
		39.603065, 38.121201, 38.653351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085388, 38.022793, 37.957661>,  <39.190525, 37.572689, 38.515705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085388, 38.022793, 37.957661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437035, 38.141407, 38.106911>,  <39.648022, 38.212574, 38.196461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437035, 38.141407, 38.106911>,  <39.085388, 38.022793, 37.957661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437035, 38.141407, 38.106911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381371, 0.031864, -0.923873,
		-0.285852, 0.954490, -0.085079,
		0.879116, 0.296537, 0.373123,
		39.700771, 38.230370, 38.218849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352619, 38.572586, 37.566639>,  <39.085388, 38.022793, 37.957661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352619, 38.572586, 37.566639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682537, 38.422646, 37.735966>,  <39.880489, 38.332684, 37.837563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682537, 38.422646, 37.735966>,  <39.352619, 38.572586, 37.566639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682537, 38.422646, 37.735966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405184, -0.130358, -0.904894,
		0.394379, 0.917876, 0.044363,
		0.824797, -0.374847, 0.423319,
		39.929977, 38.310192, 37.862961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863262, 39.022705, 37.300911>,  <39.352619, 38.572586, 37.566639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863262, 39.022705, 37.300911> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048832, 38.692966, 37.430668>,  <40.160175, 38.495125, 37.508522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048832, 38.692966, 37.430668>,  <39.863262, 39.022705, 37.300911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048832, 38.692966, 37.430668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589636, 0.014053, -0.807546,
		0.661135, 0.565918, 0.492582,
		0.463928, -0.824342, 0.324395,
		40.188011, 38.445663, 37.527985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690350, 39.159679, 37.325672>,  <39.863262, 39.022705, 37.300911>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690350, 39.159679, 37.325672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587608, 38.773418, 37.309975>,  <40.525963, 38.541660, 37.300556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587608, 38.773418, 37.309975>,  <40.690350, 39.159679, 37.325672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587608, 38.773418, 37.309975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439146, -0.080439, -0.894808,
		0.860917, -0.247068, 0.444724,
		-0.256851, -0.965654, -0.039247,
		40.510551, 38.483723, 37.298199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231663, 38.842224, 36.925529>,  <40.690350, 39.159679, 37.325672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.231663, 38.842224, 36.925529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954792, 38.554783, 36.898708>,  <40.788670, 38.382317, 36.882614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954792, 38.554783, 36.898708>,  <41.231663, 38.842224, 36.925529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954792, 38.554783, 36.898708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324389, -0.226771, -0.918339,
		0.644716, -0.657407, 0.390074,
		-0.692180, -0.718603, -0.067053,
		40.747139, 38.339203, 36.878593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652405, 38.245384, 36.639214>,  <41.231663, 38.842224, 36.925529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.652405, 38.245384, 36.639214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259747, 38.208656, 36.572346>,  <41.024151, 38.186619, 36.532223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259747, 38.208656, 36.572346>,  <41.652405, 38.245384, 36.639214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259747, 38.208656, 36.572346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187444, -0.302433, -0.934558,
		0.035252, -0.948738, 0.314092,
		-0.981642, -0.091819, -0.167174,
		40.965252, 38.181110, 36.522194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492424, 37.513569, 36.387989>,  <41.652405, 38.245384, 36.639214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492424, 37.513569, 36.387989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261612, 37.814747, 36.261429>,  <41.123123, 37.995453, 36.185493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261612, 37.814747, 36.261429>,  <41.492424, 37.513569, 36.387989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.261612, 37.814747, 36.261429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136701, -0.292895, -0.946322,
		-0.805198, -0.589312, 0.066082,
		-0.577034, 0.752943, -0.316398,
		41.088501, 38.040630, 36.166508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843666, 37.289726, 35.964329>,  <41.492424, 37.513569, 36.387989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843666, 37.289726, 35.964329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034767, 37.633621, 35.892101>,  <41.149429, 37.839958, 35.848766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034767, 37.633621, 35.892101>,  <40.843666, 37.289726, 35.964329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.034767, 37.633621, 35.892101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238798, -0.324893, -0.915107,
		-0.845416, 0.394076, -0.360521,
		0.477752, 0.859738, -0.180565,
		41.178093, 37.891544, 35.837933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653381, 36.635708, 35.709721>,  <40.843666, 37.289726, 35.964329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653381, 36.635708, 35.709721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812809, 36.270927, 35.670761>,  <40.908466, 36.052059, 35.647385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812809, 36.270927, 35.670761>,  <40.653381, 36.635708, 35.709721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.812809, 36.270927, 35.670761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283398, -0.223470, 0.932602,
		-0.872253, -0.344105, -0.347514,
		0.398572, -0.911950, -0.097403,
		40.932381, 35.997341, 35.641541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163578, 36.118881, 35.918156>,  <40.653381, 36.635708, 35.709721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163578, 36.118881, 35.918156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502399, 35.906338, 35.923294>,  <40.705692, 35.778812, 35.926376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502399, 35.906338, 35.923294>,  <40.163578, 36.118881, 35.918156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502399, 35.906338, 35.923294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176443, -0.258311, 0.949812,
		-0.501374, -0.806804, -0.312557,
		0.847049, -0.531359, 0.012844,
		40.756516, 35.746929, 35.927147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021622, 35.449703, 36.292984>,  <40.163578, 36.118881, 35.918156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021622, 35.449703, 36.292984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419575, 35.489117, 36.302017>,  <40.658344, 35.512764, 36.307438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419575, 35.489117, 36.302017>,  <40.021622, 35.449703, 36.292984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419575, 35.489117, 36.302017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004694, -0.268191, 0.963354,
		0.100977, -0.958314, -0.267280,
		0.994878, 0.098531, 0.022582,
		40.718037, 35.518677, 36.308792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218540, 34.919533, 36.664970>,  <40.021622, 35.449703, 36.292984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218540, 34.919533, 36.664970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533604, 35.163853, 36.697285>,  <40.722641, 35.310444, 36.716675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533604, 35.163853, 36.697285>,  <40.218540, 34.919533, 36.664970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533604, 35.163853, 36.697285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129550, -0.292376, 0.947488,
		0.602343, -0.735828, -0.309420,
		0.787655, 0.610798, 0.080784,
		40.769901, 35.347092, 36.721519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799164, 34.540230, 36.952209>,  <40.218540, 34.919533, 36.664970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799164, 34.540230, 36.952209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877975, 34.925789, 37.023846>,  <40.925262, 35.157124, 37.066826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877975, 34.925789, 37.023846>,  <40.799164, 34.540230, 36.952209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877975, 34.925789, 37.023846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084788, -0.198738, 0.976378,
		0.976724, -0.177191, -0.120885,
		0.197029, 0.963902, 0.179088,
		40.937084, 35.214958, 37.077572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418053, 34.531185, 37.357559>,  <40.799164, 34.540230, 36.952209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418053, 34.531185, 37.357559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229210, 34.878258, 37.419842>,  <41.115906, 35.086502, 37.457211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229210, 34.878258, 37.419842>,  <41.418053, 34.531185, 37.357559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229210, 34.878258, 37.419842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150859, -0.253544, 0.955488,
		0.868538, 0.427602, 0.250597,
		-0.472106, 0.867682, 0.155705,
		41.087578, 35.138561, 37.466553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774132, 34.876652, 37.921909>,  <41.418053, 34.531185, 37.357559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.774132, 34.876652, 37.921909> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413353, 35.049389, 37.921997>,  <41.196884, 35.153030, 37.922050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413353, 35.049389, 37.921997>,  <41.774132, 34.876652, 37.921909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413353, 35.049389, 37.921997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115212, -0.241127, 0.963631,
		0.416187, 0.869122, 0.267238,
		-0.901951, 0.431839, 0.000221,
		41.142769, 35.178940, 37.922062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752121, 35.169155, 38.538197>,  <41.774132, 34.876652, 37.921909>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752121, 35.169155, 38.538197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371334, 35.154182, 38.416641>,  <41.142860, 35.145199, 38.343708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371334, 35.154182, 38.416641>,  <41.752121, 35.169155, 38.538197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371334, 35.154182, 38.416641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286767, -0.238847, 0.927748,
		-0.107310, 0.970335, 0.216642,
		-0.951971, -0.037430, -0.303891,
		41.085743, 35.142952, 38.325474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375599, 35.582817, 39.000267>,  <41.752121, 35.169155, 38.538197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.375599, 35.582817, 39.000267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104172, 35.336449, 38.840172>,  <40.941315, 35.188625, 38.744114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104172, 35.336449, 38.840172>,  <41.375599, 35.582817, 39.000267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104172, 35.336449, 38.840172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492511, -0.022741, 0.870009,
		-0.544960, 0.787478, -0.287918,
		-0.678566, -0.615923, -0.400235,
		40.900600, 35.151672, 38.720100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725479, 35.899330, 39.147675>,  <41.375599, 35.582817, 39.000267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725479, 35.899330, 39.147675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663937, 35.510254, 39.078167>,  <40.627010, 35.276806, 39.036461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663937, 35.510254, 39.078167>,  <40.725479, 35.899330, 39.147675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663937, 35.510254, 39.078167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569285, -0.056482, 0.820197,
		-0.807615, 0.225120, -0.545049,
		-0.153858, -0.972693, -0.173773,
		40.617779, 35.218445, 39.026035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030365, 35.855907, 39.208591>,  <40.725479, 35.899330, 39.147675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030365, 35.855907, 39.208591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162102, 35.480427, 39.249340>,  <40.241142, 35.255138, 39.273788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162102, 35.480427, 39.249340>,  <40.030365, 35.855907, 39.208591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162102, 35.480427, 39.249340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528345, -0.093797, 0.843833,
		-0.782551, -0.331731, -0.526848,
		0.329342, -0.938700, 0.101867,
		40.260906, 35.198818, 39.279900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464600, 35.361244, 39.405098>,  <40.030365, 35.855907, 39.208591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464600, 35.361244, 39.405098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779846, 35.147823, 39.527859>,  <39.968994, 35.019772, 39.601517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779846, 35.147823, 39.527859>,  <39.464600, 35.361244, 39.405098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779846, 35.147823, 39.527859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489189, -0.240329, 0.838413,
		-0.373583, -0.810901, -0.450417,
		0.788118, -0.533556, 0.306901,
		40.016281, 34.987755, 39.619930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099548, 34.892113, 39.755165>,  <39.464600, 35.361244, 39.405098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099548, 34.892113, 39.755165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482731, 34.882038, 39.869484>,  <39.712643, 34.875992, 39.938076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482731, 34.882038, 39.869484>,  <39.099548, 34.892113, 39.755165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482731, 34.882038, 39.869484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286720, -0.048367, 0.956793,
		-0.010270, -0.998512, -0.053554,
		0.957959, -0.025181, 0.285797,
		39.770119, 34.874481, 39.955223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245125, 34.169460, 39.927132>,  <39.099548, 34.892113, 39.755165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245125, 34.169460, 39.927132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484623, 34.424847, 40.120567>,  <39.628323, 34.578079, 40.236629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484623, 34.424847, 40.120567>,  <39.245125, 34.169460, 39.927132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484623, 34.424847, 40.120567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427687, -0.255627, 0.867028,
		0.677188, -0.725958, 0.120007,
		0.598749, 0.638466, 0.483591,
		39.664249, 34.616386, 40.265644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083191, 33.487953, 40.147053>,  <39.245125, 34.169460, 39.927132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083191, 33.487953, 40.147053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809227, 33.196503, 40.146767>,  <38.644848, 33.021633, 40.146595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809227, 33.196503, 40.146767>,  <39.083191, 33.487953, 40.147053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809227, 33.196503, 40.146767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160613, -0.150015, -0.975550,
		0.710703, -0.668282, 0.219774,
		-0.684912, -0.728625, -0.000718,
		38.603752, 32.977917, 40.146553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435287, 32.920666, 39.907398>,  <39.083191, 33.487953, 40.147053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435287, 32.920666, 39.907398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049160, 32.827976, 39.859287>,  <38.817482, 32.772362, 39.830421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049160, 32.827976, 39.859287>,  <39.435287, 32.920666, 39.907398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049160, 32.827976, 39.859287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193522, -0.325844, -0.925405,
		0.175247, -0.916586, 0.359387,
		-0.965317, -0.231724, -0.120277,
		38.759563, 32.758461, 39.823204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429852, 32.333138, 39.502354>,  <39.435287, 32.920666, 39.907398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429852, 32.333138, 39.502354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069092, 32.495800, 39.444092>,  <38.852638, 32.593399, 39.409134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069092, 32.495800, 39.444092>,  <39.429852, 32.333138, 39.502354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069092, 32.495800, 39.444092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086085, -0.161212, -0.983158,
		-0.423289, -0.899244, 0.110390,
		-0.901895, 0.406657, -0.145651,
		38.798523, 32.617798, 39.400398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247120, 31.913065, 38.929871>,  <39.429852, 32.333138, 39.502354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247120, 31.913065, 38.929871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968166, 32.199745, 38.929886>,  <38.800797, 32.371754, 38.929897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968166, 32.199745, 38.929886>,  <39.247120, 31.913065, 38.929871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968166, 32.199745, 38.929886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191557, -0.186340, -0.963630,
		-0.690627, -0.672025, 0.267239,
		-0.697381, 0.716700, 0.000040,
		38.758953, 32.414757, 38.929897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728649, 31.617971, 38.621460>,  <39.247120, 31.913065, 38.929871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728649, 31.617971, 38.621460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670540, 32.007347, 38.550678>,  <38.635674, 32.240971, 38.508209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670540, 32.007347, 38.550678>,  <38.728649, 31.617971, 38.621460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670540, 32.007347, 38.550678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143225, -0.197658, -0.969752,
		-0.978971, -0.115532, 0.168135,
		-0.145271, 0.973439, -0.176955,
		38.626957, 32.299377, 38.497593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185921, 31.665300, 38.176552>,  <38.728649, 31.617971, 38.621460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185921, 31.665300, 38.176552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339771, 32.030296, 38.120800>,  <38.432083, 32.249294, 38.087349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339771, 32.030296, 38.120800>,  <38.185921, 31.665300, 38.176552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339771, 32.030296, 38.120800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212206, -0.059541, -0.975409,
		-0.898348, 0.404748, 0.170735,
		0.384629, 0.912488, -0.139378,
		38.455158, 32.304043, 38.078987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676617, 32.039295, 37.756443>,  <38.185921, 31.665300, 38.176552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676617, 32.039295, 37.756443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028431, 32.226917, 37.724426>,  <38.239521, 32.339489, 37.705215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028431, 32.226917, 37.724426>,  <37.676617, 32.039295, 37.756443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028431, 32.226917, 37.724426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052200, -0.072078, -0.996032,
		-0.472963, 0.880223, -0.038911,
		0.879535, 0.469055, -0.080038,
		38.292290, 32.367634, 37.700417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410759, 32.646687, 37.414474>,  <37.676617, 32.039295, 37.756443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410759, 32.646687, 37.414474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798397, 32.554195, 37.380074>,  <38.030979, 32.498699, 37.359432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798397, 32.554195, 37.380074>,  <37.410759, 32.646687, 37.414474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798397, 32.554195, 37.380074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079020, 0.039324, -0.996097,
		0.233706, 0.972105, 0.019837,
		0.969091, -0.231226, -0.086006,
		38.089123, 32.484829, 37.354271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486004, 32.983486, 36.782890>,  <37.410759, 32.646687, 37.414474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486004, 32.983486, 36.782890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822483, 32.772121, 36.828789>,  <38.024372, 32.645302, 36.856327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822483, 32.772121, 36.828789>,  <37.486004, 32.983486, 36.782890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822483, 32.772121, 36.828789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109469, -0.041386, -0.993128,
		0.529526, 0.847981, 0.023030,
		0.841201, -0.528408, 0.114742,
		38.074844, 32.613598, 36.863213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026028, 33.186855, 36.233086>,  <37.486004, 32.983486, 36.782890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026028, 33.186855, 36.233086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154743, 32.834560, 36.372086>,  <38.231972, 32.623184, 36.455486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154743, 32.834560, 36.372086>,  <38.026028, 33.186855, 36.233086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154743, 32.834560, 36.372086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318922, -0.244750, -0.915634,
		0.891483, 0.405464, 0.202129,
		0.321786, -0.880736, 0.347502,
		38.251278, 32.570339, 36.476337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672035, 33.054367, 35.917507>,  <38.026028, 33.186855, 36.233086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672035, 33.054367, 35.917507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566525, 32.684998, 36.029011>,  <38.503220, 32.463375, 36.095913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566525, 32.684998, 36.029011>,  <38.672035, 33.054367, 35.917507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566525, 32.684998, 36.029011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495110, -0.377633, -0.782470,
		0.827822, -0.068379, 0.556807,
		-0.263774, -0.923427, 0.278758,
		38.487392, 32.407970, 36.112637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255592, 32.659676, 36.231087>,  <38.672035, 33.054367, 35.917507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255592, 32.659676, 36.231087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976856, 32.439407, 36.047268>,  <38.809616, 32.307247, 35.936977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976856, 32.439407, 36.047268>,  <39.255592, 32.659676, 36.231087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976856, 32.439407, 36.047268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666897, -0.261680, -0.697690,
		0.263942, -0.792647, 0.549587,
		-0.696837, -0.550668, -0.459546,
		38.767803, 32.274208, 35.909405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.753784, 33.107700, 44.141163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.451904, 33.107475, 43.878735>,  <37.270779, 33.107338, 43.721275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.451904, 33.107475, 43.878735>,  <37.753784, 33.107700, 44.141163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451904, 33.107475, 43.878735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613189, -0.356220, -0.705057,
		-0.233308, -0.934402, 0.269185,
		-0.754696, -0.000566, -0.656074,
		37.225494, 33.107307, 43.681911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814465, 32.519737, 43.718945>,  <37.753784, 33.107700, 44.141163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814465, 32.519737, 43.718945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.575630, 32.729149, 43.475826>,  <37.432331, 32.854794, 43.329956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.575630, 32.729149, 43.475826>,  <37.814465, 32.519737, 43.718945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575630, 32.729149, 43.475826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572729, -0.252301, -0.779952,
		-0.561672, -0.813797, -0.149193,
		-0.597081, 0.523525, -0.607796,
		37.396507, 32.886208, 43.293488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710960, 32.078289, 43.154747>,  <37.814465, 32.519737, 43.718945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710960, 32.078289, 43.154747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.604790, 32.438599, 43.017246>,  <37.541088, 32.654785, 42.934746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.604790, 32.438599, 43.017246>,  <37.710960, 32.078289, 43.154747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604790, 32.438599, 43.017246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415596, -0.214819, -0.883817,
		-0.869960, -0.377448, -0.317338,
		-0.265425, 0.900769, -0.343750,
		37.525162, 32.708828, 42.914120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398689, 31.963554, 42.416656>,  <37.710960, 32.078289, 43.154747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398689, 31.963554, 42.416656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.482315, 32.354267, 42.435360>,  <37.532490, 32.588696, 42.446583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.482315, 32.354267, 42.435360>,  <37.398689, 31.963554, 42.416656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482315, 32.354267, 42.435360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264523, -0.010452, -0.964323,
		-0.941445, 0.213977, -0.260566,
		0.209066, 0.976783, 0.046761,
		37.545036, 32.647301, 42.449387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120571, 32.230038, 41.810417>,  <37.398689, 31.963554, 42.416656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120571, 32.230038, 41.810417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.394352, 32.494675, 41.932941>,  <37.558620, 32.653458, 42.006458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.394352, 32.494675, 41.932941>,  <37.120571, 32.230038, 41.810417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394352, 32.494675, 41.932941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242721, 0.189397, -0.951428,
		-0.687470, 0.725553, -0.030949,
		0.684450, 0.661590, 0.306312,
		37.599686, 32.693153, 42.024834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101547, 32.773663, 41.319363>,  <37.120571, 32.230038, 41.810417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101547, 32.773663, 41.319363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.460201, 32.802895, 41.494041>,  <37.675392, 32.820435, 41.598850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.460201, 32.802895, 41.494041>,  <37.101547, 32.773663, 41.319363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460201, 32.802895, 41.494041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393707, 0.319668, -0.861862,
		-0.202581, 0.944707, 0.257855,
		0.896636, 0.073077, 0.436697,
		37.729191, 32.824818, 41.625050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293362, 33.490082, 41.108208>,  <37.101547, 32.773663, 41.319363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293362, 33.490082, 41.108208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.596245, 33.246021, 41.201462>,  <37.777977, 33.099586, 41.257416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.596245, 33.246021, 41.201462>,  <37.293362, 33.490082, 41.108208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596245, 33.246021, 41.201462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360738, 0.093093, -0.928010,
		0.544520, 0.786799, 0.290595,
		0.757210, -0.610148, 0.233137,
		37.823406, 33.062977, 41.271404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848263, 33.866730, 40.816711>,  <37.293362, 33.490082, 41.108208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848263, 33.866730, 40.816711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.996719, 33.498047, 40.861790>,  <38.085793, 33.276836, 40.888836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.996719, 33.498047, 40.861790>,  <37.848263, 33.866730, 40.816711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996719, 33.498047, 40.861790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434231, 0.065000, -0.898453,
		0.820789, 0.382391, 0.424360,
		0.371144, -0.921712, 0.112695,
		38.108063, 33.221535, 40.895599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573177, 33.822414, 40.508995>,  <37.848263, 33.866730, 40.816711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573177, 33.822414, 40.508995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.481289, 33.433167, 40.515438>,  <38.426155, 33.199615, 40.519306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.481289, 33.433167, 40.515438>,  <38.573177, 33.822414, 40.508995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481289, 33.433167, 40.515438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408879, -0.111518, -0.905749,
		0.883201, -0.201485, 0.423508,
		-0.229724, -0.973123, 0.016110,
		38.412373, 33.141232, 40.520271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287598, 33.887543, 40.690155>,  <38.573177, 33.822414, 40.508995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287598, 33.887543, 40.690155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.416828, 34.265984, 40.699192>,  <39.494366, 34.493050, 40.704613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.416828, 34.265984, 40.699192>,  <39.287598, 33.887543, 40.690155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416828, 34.265984, 40.699192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513939, 0.155356, 0.843642,
		0.794661, -0.284176, 0.536431,
		0.323081, 0.946102, 0.022593,
		39.513752, 34.549812, 40.705971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445992, 33.942581, 41.423397>,  <39.287598, 33.887543, 40.690155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445992, 33.942581, 41.423397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.420650, 34.320503, 41.294819>,  <39.405445, 34.547256, 41.217674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.420650, 34.320503, 41.294819>,  <39.445992, 33.942581, 41.423397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420650, 34.320503, 41.294819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239137, 0.298336, 0.924018,
		0.968917, 0.135406, 0.207039,
		-0.063351, 0.944807, -0.321444,
		39.401646, 34.603947, 41.198387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496403, 34.374748, 42.052914>,  <39.445992, 33.942581, 41.423397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496403, 34.374748, 42.052914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.348728, 34.630470, 41.783104>,  <39.260124, 34.783905, 41.621216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.348728, 34.630470, 41.783104>,  <39.496403, 34.374748, 42.052914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348728, 34.630470, 41.783104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543542, 0.440189, 0.714700,
		0.753831, 0.630494, 0.184975,
		-0.369190, 0.639305, -0.674528,
		39.237972, 34.822262, 41.580746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480427, 35.124229, 42.375774>,  <39.496403, 34.374748, 42.052914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480427, 35.124229, 42.375774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.229214, 35.107647, 42.064941>,  <39.078487, 35.097698, 41.878441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.229214, 35.107647, 42.064941>,  <39.480427, 35.124229, 42.375774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229214, 35.107647, 42.064941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690915, 0.489186, 0.532291,
		0.358074, 0.871193, -0.335864,
		-0.628028, -0.041454, -0.777086,
		39.040806, 35.095211, 41.831818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365379, 35.838490, 42.180557>,  <39.480427, 35.124229, 42.375774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365379, 35.838490, 42.180557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.054279, 35.610210, 42.075176>,  <38.867619, 35.473244, 42.011948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.054279, 35.610210, 42.075176>,  <39.365379, 35.838490, 42.180557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054279, 35.610210, 42.075176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609672, 0.582879, 0.537170,
		-0.153001, 0.578404, -0.801274,
		-0.777747, -0.570702, -0.263456,
		38.820953, 35.438999, 41.996140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859043, 36.400581, 42.000881>,  <39.365379, 35.838490, 42.180557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859043, 36.400581, 42.000881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.698593, 36.041218, 42.072388>,  <38.602325, 35.825600, 42.115292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.698593, 36.041218, 42.072388>,  <38.859043, 36.400581, 42.000881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698593, 36.041218, 42.072388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613851, 0.408485, 0.675520,
		-0.679917, 0.161233, -0.715344,
		-0.401123, -0.898412, 0.178763,
		38.578255, 35.771694, 42.126015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172421, 36.472923, 42.193474>,  <38.859043, 36.400581, 42.000881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172421, 36.472923, 42.193474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.236267, 36.107948, 42.344193>,  <38.274574, 35.888962, 42.434624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.236267, 36.107948, 42.344193>,  <38.172421, 36.472923, 42.193474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236267, 36.107948, 42.344193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540467, 0.238635, 0.806814,
		-0.826087, -0.332424, -0.455055,
		0.159612, -0.912440, 0.376798,
		38.284149, 35.834217, 42.457233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482742, 36.158272, 42.375607>,  <38.172421, 36.472923, 42.193474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482742, 36.158272, 42.375607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.744911, 35.932674, 42.576538>,  <37.902214, 35.797318, 42.697098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.744911, 35.932674, 42.576538>,  <37.482742, 36.158272, 42.375607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744911, 35.932674, 42.576538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512611, 0.156263, 0.844282,
		-0.554665, -0.810860, -0.186691,
		0.655421, -0.563993, 0.502329,
		37.941536, 35.763477, 42.727238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078114, 35.680893, 42.653534>,  <37.482742, 36.158272, 42.375607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078114, 35.680893, 42.653534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.410126, 35.697895, 42.875973>,  <37.609333, 35.708096, 43.009438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.410126, 35.697895, 42.875973>,  <37.078114, 35.680893, 42.653534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410126, 35.697895, 42.875973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557669, 0.049746, 0.828571,
		0.007553, -0.997857, 0.064993,
		0.830029, 0.042503, 0.556098,
		37.659134, 35.710648, 43.042801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953918, 35.177158, 43.174328>,  <37.078114, 35.680893, 42.653534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953918, 35.177158, 43.174328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.251331, 35.403542, 43.316795>,  <37.429779, 35.539371, 43.402275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.251331, 35.403542, 43.316795>,  <36.953918, 35.177158, 43.174328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251331, 35.403542, 43.316795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376890, -0.085289, 0.922323,
		0.552375, -0.820009, 0.149889,
		0.743529, 0.565960, 0.356165,
		37.474392, 35.573330, 43.423645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124512, 34.979149, 43.906284>,  <36.953918, 35.177158, 43.174328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124512, 34.979149, 43.906284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.300110, 35.335999, 43.863579>,  <37.405468, 35.550106, 43.837955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.300110, 35.335999, 43.863579>,  <37.124512, 34.979149, 43.906284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300110, 35.335999, 43.863579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165843, 0.197236, 0.966227,
		0.883049, -0.406467, 0.234539,
		0.438999, 0.892122, -0.106759,
		37.431808, 35.603634, 43.831551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657291, 34.874977, 44.379353>,  <37.124512, 34.979149, 43.906284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657291, 34.874977, 44.379353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.611382, 35.267067, 44.314877>,  <37.583836, 35.502323, 44.276192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.611382, 35.267067, 44.314877>,  <37.657291, 34.874977, 44.379353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611382, 35.267067, 44.314877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156037, 0.142458, 0.977424,
		0.981060, 0.137336, 0.136601,
		-0.114776, 0.980227, -0.161189,
		37.576950, 35.561134, 44.266521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005150, 35.208027, 44.947990>,  <37.657291, 34.874977, 44.379353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005150, 35.208027, 44.947990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.763405, 35.490875, 44.801170>,  <37.618359, 35.660583, 44.713078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.763405, 35.490875, 44.801170>,  <38.005150, 35.208027, 44.947990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763405, 35.490875, 44.801170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326653, 0.200281, 0.923681,
		0.726663, 0.678140, 0.109938,
		-0.604366, 0.707116, -0.367053,
		37.582096, 35.703011, 44.691055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140999, 35.872066, 45.283253>,  <38.005150, 35.208027, 44.947990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140999, 35.872066, 45.283253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.767487, 35.950676, 45.163635>,  <37.543377, 35.997841, 45.091866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.767487, 35.950676, 45.163635>,  <38.140999, 35.872066, 45.283253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767487, 35.950676, 45.163635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214101, 0.362763, 0.906953,
		0.286717, 0.910923, -0.296668,
		-0.933785, 0.196522, -0.299040,
		37.487350, 36.009632, 45.073925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.164122, 37.510426, 43.505249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.425137, 37.219448, 43.590126>,  <31.581745, 37.044861, 43.641052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.425137, 37.219448, 43.590126>,  <31.164122, 37.510426, 43.505249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425137, 37.219448, 43.590126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413053, 0.106702, -0.904434,
		0.635280, 0.677825, 0.370098,
		0.652539, -0.727439, 0.212193,
		31.620897, 37.001217, 43.653782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782696, 37.730530, 43.214142>,  <31.164122, 37.510426, 43.505249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782696, 37.730530, 43.214142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.826824, 37.337368, 43.273090>,  <31.853300, 37.101471, 43.308460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.826824, 37.337368, 43.273090>,  <31.782696, 37.730530, 43.214142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826824, 37.337368, 43.273090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518706, -0.069547, -0.852119,
		0.847805, 0.170450, 0.502168,
		0.110320, -0.982909, 0.147375,
		31.859921, 37.042496, 43.317303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500172, 37.568298, 43.142208>,  <31.782696, 37.730530, 43.214142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500172, 37.568298, 43.142208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.330566, 37.213242, 43.070312>,  <32.228802, 37.000210, 43.027176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.330566, 37.213242, 43.070312>,  <32.500172, 37.568298, 43.142208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330566, 37.213242, 43.070312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460220, -0.040250, -0.886892,
		0.780007, -0.458775, 0.425576,
		-0.424014, -0.887640, -0.179742,
		32.203362, 36.946949, 43.016388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045975, 37.058987, 42.973438>,  <32.500172, 37.568298, 43.142208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045975, 37.058987, 42.973438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.710880, 36.892502, 42.832031>,  <32.509823, 36.792610, 42.747189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.710880, 36.892502, 42.832031>,  <33.045975, 37.058987, 42.973438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710880, 36.892502, 42.832031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456472, -0.178407, -0.871668,
		0.299728, -0.891594, 0.339446,
		-0.837733, -0.416211, -0.353514,
		32.459560, 36.767639, 42.725979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280972, 36.506584, 42.645329>,  <33.045975, 37.058987, 42.973438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280972, 36.506584, 42.645329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.922852, 36.599281, 42.493153>,  <32.707981, 36.654900, 42.401848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.922852, 36.599281, 42.493153>,  <33.280972, 36.506584, 42.645329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922852, 36.599281, 42.493153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374298, -0.071715, -0.924531,
		-0.241537, -0.970130, -0.022534,
		-0.895300, 0.231743, -0.380440,
		32.654263, 36.668804, 42.379021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097694, 35.961231, 42.072308>,  <33.280972, 36.506584, 42.645329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097694, 35.961231, 42.072308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.845139, 36.264294, 42.006210>,  <32.693604, 36.446129, 41.966553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.845139, 36.264294, 42.006210>,  <33.097694, 35.961231, 42.072308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845139, 36.264294, 42.006210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125147, -0.110741, -0.985938,
		-0.765298, -0.643194, -0.024897,
		-0.631393, 0.757653, -0.165244,
		32.655720, 36.491589, 41.956638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615192, 35.735168, 41.548710>,  <33.097694, 35.961231, 42.072308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615192, 35.735168, 41.548710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.603760, 36.134991, 41.545292>,  <32.596901, 36.374886, 41.543240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.603760, 36.134991, 41.545292>,  <32.615192, 35.735168, 41.548710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603760, 36.134991, 41.545292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048240, -0.009921, -0.998787,
		-0.998427, -0.028135, 0.048502,
		-0.028582, 0.999555, -0.008548,
		32.595184, 36.434856, 41.542728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152798, 35.933853, 40.927723>,  <32.615192, 35.735168, 41.548710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152798, 35.933853, 40.927723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.361031, 36.267899, 40.998806>,  <32.485970, 36.468327, 41.041454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.361031, 36.267899, 40.998806>,  <32.152798, 35.933853, 40.927723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361031, 36.267899, 40.998806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073358, 0.163612, -0.983794,
		-0.850652, 0.525185, 0.023912,
		0.520586, 0.835112, 0.177703,
		32.517208, 36.518433, 41.052116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900835, 36.355412, 40.366619>,  <32.152798, 35.933853, 40.927723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900835, 36.355412, 40.366619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.240677, 36.529472, 40.485828>,  <32.444580, 36.633907, 40.557354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.240677, 36.529472, 40.485828>,  <31.900835, 36.355412, 40.366619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240677, 36.529472, 40.485828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244315, 0.176071, -0.953577,
		-0.467424, 0.882973, 0.043277,
		0.849603, 0.435151, 0.298024,
		32.495556, 36.660019, 40.575237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002937, 36.997101, 39.975525>,  <31.900835, 36.355412, 40.366619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002937, 36.997101, 39.975525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.376934, 36.934895, 40.103027>,  <32.601334, 36.897572, 40.179527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.376934, 36.934895, 40.103027>,  <32.002937, 36.997101, 39.975525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376934, 36.934895, 40.103027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344989, 0.190249, -0.919123,
		0.082293, 0.969340, 0.231532,
		0.934992, -0.155513, 0.318756,
		32.657433, 36.888241, 40.198654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321365, 37.519535, 39.651405>,  <32.002937, 36.997101, 39.975525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321365, 37.519535, 39.651405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.603439, 37.252991, 39.748299>,  <32.772686, 37.093063, 39.806435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.603439, 37.252991, 39.748299>,  <32.321365, 37.519535, 39.651405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603439, 37.252991, 39.748299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462448, 0.173303, -0.869544,
		0.537450, 0.725211, 0.430368,
		0.705187, -0.666359, 0.242231,
		32.814995, 37.053082, 39.820969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000233, 37.870461, 39.487011>,  <32.321365, 37.519535, 39.651405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000233, 37.870461, 39.487011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.060558, 37.475689, 39.509750>,  <33.096752, 37.238827, 39.523392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.060558, 37.475689, 39.509750>,  <33.000233, 37.870461, 39.487011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060558, 37.475689, 39.509750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383887, 0.005477, -0.923364,
		0.910981, 0.161078, 0.379694,
		0.150813, -0.986926, 0.056846,
		33.105801, 37.179611, 39.526806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668297, 37.913357, 39.252163>,  <33.000233, 37.870461, 39.487011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668297, 37.913357, 39.252163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.527409, 37.540524, 39.218300>,  <33.442875, 37.316826, 39.197983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.527409, 37.540524, 39.218300>,  <33.668297, 37.913357, 39.252163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527409, 37.540524, 39.218300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400906, -0.068525, -0.913553,
		0.845703, -0.355714, 0.397813,
		-0.352223, -0.932080, -0.084656,
		33.421741, 37.260899, 39.192902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272633, 37.513271, 39.134792>,  <33.668297, 37.913357, 39.252163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272633, 37.513271, 39.134792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.957943, 37.312561, 38.990971>,  <33.769127, 37.192135, 38.904678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.957943, 37.312561, 38.990971>,  <34.272633, 37.513271, 39.134792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957943, 37.312561, 38.990971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507782, -0.194825, -0.839167,
		0.351022, -0.842772, 0.408066,
		-0.786728, -0.501775, -0.359557,
		33.721924, 37.162029, 38.883102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967445, 37.469959, 39.324535>,  <34.272633, 37.513271, 39.134792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967445, 37.469959, 39.324535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.935017, 37.867069, 39.289150>,  <34.915562, 38.105335, 39.267918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.935017, 37.867069, 39.289150>,  <34.967445, 37.469959, 39.324535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935017, 37.867069, 39.289150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417246, 0.046802, 0.907588,
		0.905170, 0.110489, 0.410437,
		-0.081069, 0.992775, -0.088465,
		34.910694, 38.164902, 39.262611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113503, 37.694534, 39.985809>,  <34.967445, 37.469959, 39.324535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113503, 37.694534, 39.985809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.970230, 38.040745, 39.845776>,  <34.884266, 38.248470, 39.761753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.970230, 38.040745, 39.845776>,  <35.113503, 37.694534, 39.985809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970230, 38.040745, 39.845776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256754, 0.269197, 0.928230,
		0.897654, 0.422363, 0.125806,
		-0.358183, 0.865530, -0.350089,
		34.862774, 38.300404, 39.740749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389881, 38.156883, 40.390091>,  <35.113503, 37.694534, 39.985809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389881, 38.156883, 40.390091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.057350, 38.327572, 40.247650>,  <34.857830, 38.429985, 40.162186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.057350, 38.327572, 40.247650>,  <35.389881, 38.156883, 40.390091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057350, 38.327572, 40.247650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204773, 0.360478, 0.910013,
		0.516685, 0.829439, -0.212294,
		-0.831327, 0.426718, -0.356100,
		34.807953, 38.455585, 40.140820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356941, 38.717434, 40.766148>,  <35.389881, 38.156883, 40.390091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356941, 38.717434, 40.766148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.991623, 38.728256, 40.603592>,  <34.772430, 38.734749, 40.506058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.991623, 38.728256, 40.603592>,  <35.356941, 38.717434, 40.766148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991623, 38.728256, 40.603592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355721, 0.432961, 0.828255,
		0.198356, 0.901007, -0.385800,
		-0.913300, 0.027052, -0.406388,
		34.717632, 38.736370, 40.481674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048698, 39.433403, 40.946823>,  <35.356941, 38.717434, 40.766148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048698, 39.433403, 40.946823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.746479, 39.198299, 40.831104>,  <34.565147, 39.057240, 40.761673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.746479, 39.198299, 40.831104>,  <35.048698, 39.433403, 40.946823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746479, 39.198299, 40.831104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531605, 0.292040, 0.795053,
		-0.382813, 0.754489, -0.533104,
		-0.755546, -0.587757, -0.289294,
		34.519814, 39.021973, 40.744316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379311, 39.818058, 40.936462>,  <35.048698, 39.433403, 40.946823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379311, 39.818058, 40.936462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.284389, 39.434933, 41.001305>,  <34.227436, 39.205055, 41.040211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.284389, 39.434933, 41.001305>,  <34.379311, 39.818058, 40.936462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284389, 39.434933, 41.001305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448520, 0.256046, 0.856312,
		-0.861694, 0.130499, -0.490360,
		-0.237302, -0.957815, 0.162102,
		34.213200, 39.147587, 41.049934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643295, 39.835278, 41.329117>,  <34.379311, 39.818058, 40.936462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643295, 39.835278, 41.329117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.809010, 39.476814, 41.392693>,  <33.908440, 39.261734, 41.430840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.809010, 39.476814, 41.392693>,  <33.643295, 39.835278, 41.329117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809010, 39.476814, 41.392693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366154, -0.004227, 0.930545,
		-0.833245, -0.443711, -0.329884,
		0.414287, -0.896160, 0.158944,
		33.933296, 39.207966, 41.440376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099957, 39.439320, 41.656803>,  <33.643295, 39.835278, 41.329117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099957, 39.439320, 41.656803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.426052, 39.224796, 41.744221>,  <33.621712, 39.096085, 41.796669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.426052, 39.224796, 41.744221>,  <33.099957, 39.439320, 41.656803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426052, 39.224796, 41.744221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359722, -0.173210, 0.916842,
		-0.453853, -0.826060, -0.334129,
		0.815240, -0.536305, 0.218540,
		33.670624, 39.063904, 41.809784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877071, 38.833309, 42.072578>,  <33.099957, 39.439320, 41.656803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877071, 38.833309, 42.072578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.265911, 38.897869, 42.140652>,  <33.499214, 38.936607, 42.181496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.265911, 38.897869, 42.140652>,  <32.877071, 38.833309, 42.072578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265911, 38.897869, 42.140652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143235, -0.166058, 0.975658,
		0.185737, -0.972817, -0.138307,
		0.972104, 0.161405, 0.170185,
		33.557541, 38.946289, 42.191708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083145, 38.215385, 42.420372>,  <32.877071, 38.833309, 42.072578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083145, 38.215385, 42.420372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.343666, 38.509796, 42.494202>,  <33.499981, 38.686443, 42.538502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.343666, 38.509796, 42.494202>,  <33.083145, 38.215385, 42.420372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343666, 38.509796, 42.494202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274563, 0.001822, 0.961567,
		0.707402, -0.676951, 0.203272,
		0.651304, 0.736026, 0.184577,
		33.539059, 38.730602, 42.549576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445587, 37.872105, 42.921177>,  <33.083145, 38.215385, 42.420372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445587, 37.872105, 42.921177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.501293, 38.266754, 42.955048>,  <33.534718, 38.503544, 42.975372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.501293, 38.266754, 42.955048>,  <33.445587, 37.872105, 42.921177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501293, 38.266754, 42.955048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123669, -0.067516, 0.990024,
		0.982502, -0.148352, 0.112612,
		0.139269, 0.986627, 0.084681,
		33.543076, 38.562744, 42.980453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893295, 37.911007, 43.528030>,  <33.445587, 37.872105, 42.921177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893295, 37.911007, 43.528030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.757919, 38.284267, 43.479534>,  <33.676693, 38.508224, 43.450436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.757919, 38.284267, 43.479534>,  <33.893295, 37.911007, 43.528030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757919, 38.284267, 43.479534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227702, 0.043801, 0.972745,
		0.913024, 0.356818, 0.197655,
		-0.338435, 0.933147, -0.121239,
		33.656387, 38.564213, 43.443161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307407, 38.338642, 43.909363>,  <33.893295, 37.911007, 43.528030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307407, 38.338642, 43.909363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.947468, 38.505184, 43.857334>,  <33.731503, 38.605110, 43.826118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.947468, 38.505184, 43.857334>,  <34.307407, 38.338642, 43.909363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947468, 38.505184, 43.857334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120777, 0.048713, 0.991484,
		0.419145, 0.907896, 0.006451,
		-0.899850, 0.416355, -0.130070,
		33.677513, 38.630089, 43.818314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366398, 38.837795, 44.395741>,  <34.307407, 38.338642, 43.909363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366398, 38.837795, 44.395741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.971226, 38.851566, 44.335327>,  <33.734123, 38.859829, 44.299080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.971226, 38.851566, 44.335327>,  <34.366398, 38.837795, 44.395741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971226, 38.851566, 44.335327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146769, 0.103828, 0.983706,
		0.049546, 0.993999, -0.097522,
		-0.987929, 0.034425, -0.151033,
		33.674847, 38.861893, 44.290016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831478, 39.361122, 44.606331>,  <34.366398, 38.837795, 44.395741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831478, 39.361122, 44.606331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.198338, 39.358673, 44.765732>,  <35.418453, 39.357204, 44.861374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.198338, 39.358673, 44.765732>,  <34.831478, 39.361122, 44.606331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198338, 39.358673, 44.765732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395553, 0.136380, -0.908261,
		-0.048791, 0.990638, 0.127501,
		0.917146, -0.006118, 0.398504,
		35.473480, 39.356838, 44.885284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226768, 39.839138, 44.252296>,  <34.831478, 39.361122, 44.606331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226768, 39.839138, 44.252296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.503300, 39.600262, 44.414989>,  <35.669220, 39.456936, 44.512604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.503300, 39.600262, 44.414989>,  <35.226768, 39.839138, 44.252296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503300, 39.600262, 44.414989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505330, -0.002731, -0.862922,
		0.516437, 0.802097, 0.299888,
		0.691328, -0.597187, 0.406734,
		35.710697, 39.421104, 44.537010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829384, 40.121281, 43.964268>,  <35.226768, 39.839138, 44.252296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829384, 40.121281, 43.964268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.913933, 39.754616, 44.099945>,  <35.964661, 39.534615, 44.181351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.913933, 39.754616, 44.099945>,  <35.829384, 40.121281, 43.964268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913933, 39.754616, 44.099945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631552, -0.136768, -0.763175,
		0.745965, 0.375529, 0.550013,
		0.211370, -0.916664, 0.339190,
		35.977345, 39.479618, 44.201702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514050, 40.093651, 44.033661>,  <35.829384, 40.121281, 43.964268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514050, 40.093651, 44.033661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.430744, 39.703800, 44.000843>,  <36.380760, 39.469891, 43.981152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.430744, 39.703800, 44.000843>,  <36.514050, 40.093651, 44.033661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430744, 39.703800, 44.000843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651967, -0.075802, -0.754449,
		0.729087, -0.210613, 0.651210,
		-0.208260, -0.974626, -0.082047,
		36.368267, 39.411411, 43.976231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149105, 39.772060, 43.763214>,  <36.514050, 40.093651, 44.033661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149105, 39.772060, 43.763214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.858639, 39.502361, 43.709438>,  <36.684361, 39.340542, 43.677174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.858639, 39.502361, 43.709438>,  <37.149105, 39.772060, 43.763214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858639, 39.502361, 43.709438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498173, -0.381255, -0.778761,
		0.473823, -0.632482, 0.612746,
		-0.726165, -0.674248, -0.134439,
		36.640789, 39.300087, 43.669106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458260, 39.129574, 43.818005>,  <37.149105, 39.772060, 43.763214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458260, 39.129574, 43.818005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.130856, 39.097160, 43.590504>,  <36.934414, 39.077713, 43.454002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.130856, 39.097160, 43.590504>,  <37.458260, 39.129574, 43.818005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130856, 39.097160, 43.590504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556438, -0.358094, -0.749764,
		-0.142909, -0.930162, 0.338194,
		-0.818507, -0.081036, -0.568753,
		36.885303, 39.072849, 43.419876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426758, 38.432552, 43.761360>,  <37.458260, 39.129574, 43.818005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426758, 38.432552, 43.761360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.211063, 38.605618, 43.472355>,  <37.081646, 38.709457, 43.298950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.211063, 38.605618, 43.472355>,  <37.426758, 38.432552, 43.761360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211063, 38.605618, 43.472355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527705, -0.495018, -0.690279,
		-0.656315, -0.753498, 0.038613,
		-0.539238, 0.432664, -0.722512,
		37.049294, 38.735416, 43.255600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445210, 37.965298, 43.228470>,  <37.426758, 38.432552, 43.761360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445210, 37.965298, 43.228470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.321651, 38.285099, 43.022411>,  <37.247517, 38.476982, 42.898777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.321651, 38.285099, 43.022411>,  <37.445210, 37.965298, 43.228470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321651, 38.285099, 43.022411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500370, -0.324006, -0.802901,
		-0.808833, -0.505778, -0.299963,
		-0.308899, 0.799506, -0.515143,
		37.228981, 38.524952, 42.867870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299477, 37.643444, 42.631916>,  <37.445210, 37.965298, 43.228470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299477, 37.643444, 42.631916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.381142, 38.031681, 42.580902>,  <37.430141, 38.264626, 42.550293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.381142, 38.031681, 42.580902>,  <37.299477, 37.643444, 42.631916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381142, 38.031681, 42.580902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352513, -0.194426, -0.915387,
		-0.913265, 0.141930, -0.381841,
		0.204161, 0.970595, -0.127530,
		37.442390, 38.322861, 42.542645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082851, 37.749420, 41.913002>,  <37.299477, 37.643444, 42.631916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082851, 37.749420, 41.913002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.333042, 38.041122, 42.023975>,  <37.483154, 38.216145, 42.090561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.333042, 38.041122, 42.023975>,  <37.082851, 37.749420, 41.913002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333042, 38.041122, 42.023975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486220, -0.086210, -0.869574,
		-0.610225, 0.678788, -0.408501,
		0.625473, 0.729257, 0.277432,
		37.520683, 38.259899, 42.107204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161503, 38.233719, 41.283360>,  <37.082851, 37.749420, 41.913002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161503, 38.233719, 41.283360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.480614, 38.291656, 41.517479>,  <37.672081, 38.326420, 41.657951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.480614, 38.291656, 41.517479>,  <37.161503, 38.233719, 41.283360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480614, 38.291656, 41.517479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585705, 0.044387, -0.809308,
		-0.143201, 0.988459, -0.049423,
		0.797774, 0.144841, 0.585302,
		37.719944, 38.335110, 41.693069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437054, 38.833527, 41.058266>,  <37.161503, 38.233719, 41.283360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437054, 38.833527, 41.058266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.736507, 38.651909, 41.251507>,  <37.916180, 38.542938, 41.367451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.736507, 38.651909, 41.251507>,  <37.437054, 38.833527, 41.058266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736507, 38.651909, 41.251507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591401, 0.128015, -0.796151,
		0.299642, 0.881736, 0.364357,
		0.748639, -0.454042, 0.483101,
		37.961098, 38.515697, 41.396439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060631, 39.216747, 41.020496>,  <37.437054, 38.833527, 41.058266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060631, 39.216747, 41.020496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.190960, 38.847805, 41.103535>,  <38.269157, 38.626438, 41.153358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.190960, 38.847805, 41.103535>,  <38.060631, 39.216747, 41.020496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190960, 38.847805, 41.103535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610609, 0.037657, -0.791036,
		0.721801, 0.384496, 0.575470,
		0.325821, -0.922358, 0.207596,
		38.288708, 38.571098, 41.165813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787865, 39.253071, 41.298035>,  <38.060631, 39.216747, 41.020496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787865, 39.253071, 41.298035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.705173, 38.903774, 41.121529>,  <38.655560, 38.694199, 41.015625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.705173, 38.903774, 41.121529>,  <38.787865, 39.253071, 41.298035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705173, 38.903774, 41.121529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715078, 0.172972, -0.677307,
		0.667777, -0.455562, 0.588674,
		-0.206731, -0.873237, -0.441269,
		38.643154, 38.641804, 40.989147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.752090, 42.540714, 34.056919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.431416, 42.599308, 33.825111>,  <29.239010, 42.634464, 33.686028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.431416, 42.599308, 33.825111>,  <29.752090, 42.540714, 34.056919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431416, 42.599308, 33.825111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390686, -0.862169, 0.322536,
		-0.452396, 0.484982, 0.748418,
		-0.801687, 0.146483, -0.579518,
		29.190910, 42.643253, 33.651257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.194717, 42.509895, 34.467907>,  <29.752090, 42.540714, 34.056919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.194717, 42.509895, 34.467907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.058994, 42.397141, 34.108929>,  <28.977560, 42.329487, 33.893539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.058994, 42.397141, 34.108929>,  <29.194717, 42.509895, 34.467907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.058994, 42.397141, 34.108929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296498, -0.873366, 0.386421,
		-0.892726, 0.397207, 0.212761,
		-0.339307, -0.281885, -0.897447,
		28.957203, 42.312576, 33.839695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559124, 42.341404, 34.559349>,  <29.194717, 42.509895, 34.467907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.559124, 42.341404, 34.559349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.646156, 42.160294, 34.213482>,  <28.698376, 42.051628, 34.005962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.646156, 42.160294, 34.213482>,  <28.559124, 42.341404, 34.559349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.646156, 42.160294, 34.213482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474539, -0.823215, 0.311657,
		-0.852920, 0.342511, -0.393972,
		0.217578, -0.452773, -0.864671,
		28.711430, 42.024460, 33.954082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.029451, 41.879848, 34.558670>,  <28.559124, 42.341404, 34.559349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.029451, 41.879848, 34.558670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.287645, 41.730648, 34.292072>,  <28.442562, 41.641129, 34.132114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.287645, 41.730648, 34.292072>,  <28.029451, 41.879848, 34.558670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.287645, 41.730648, 34.292072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318611, -0.924585, 0.208879,
		-0.694147, 0.077525, -0.715647,
		0.645483, -0.373005, -0.666498,
		28.481291, 41.618748, 34.092121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.595415, 41.374989, 34.126644>,  <28.029451, 41.879848, 34.558670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.595415, 41.374989, 34.126644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.980961, 41.278610, 34.081196>,  <28.212288, 41.220783, 34.053925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.980961, 41.278610, 34.081196>,  <27.595415, 41.374989, 34.126644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.980961, 41.278610, 34.081196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184619, -0.911662, 0.367134,
		-0.192045, -0.332891, -0.923202,
		0.963864, -0.240947, -0.113623,
		28.270121, 41.206326, 34.047108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.655716, 40.767689, 33.705223>,  <27.595415, 41.374989, 34.126644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.655716, 40.767689, 33.705223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.001814, 40.776699, 33.905560>,  <28.209473, 40.782104, 34.025761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.001814, 40.776699, 33.905560>,  <27.655716, 40.767689, 33.705223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.001814, 40.776699, 33.905560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095850, -0.973132, 0.209351,
		0.492101, -0.229145, -0.839838,
		0.865245, 0.022524, 0.500843,
		28.261387, 40.783455, 34.055813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.099627, 40.252239, 33.415375>,  <27.655716, 40.767689, 33.705223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.099627, 40.252239, 33.415375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.258764, 40.321133, 33.775829>,  <28.354246, 40.362469, 33.992104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.258764, 40.321133, 33.775829>,  <28.099627, 40.252239, 33.415375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258764, 40.321133, 33.775829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033573, -0.978829, 0.201906,
		0.916838, -0.110581, -0.383640,
		0.397844, 0.172235, 0.901141,
		28.378119, 40.372803, 34.046173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.721807, 39.811592, 33.524826>,  <28.099627, 40.252239, 33.415375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.721807, 39.811592, 33.524826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.556480, 39.907730, 33.876144>,  <28.457285, 39.965412, 34.086937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.556480, 39.907730, 33.876144>,  <28.721807, 39.811592, 33.524826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556480, 39.907730, 33.876144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021475, -0.966843, 0.254468,
		0.910333, 0.086315, 0.404775,
		-0.413318, 0.240344, 0.878296,
		28.432486, 39.979832, 34.139633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083441, 39.276005, 34.007118>,  <28.721807, 39.811592, 33.524826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.083441, 39.276005, 34.007118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.790501, 39.431835, 34.230507>,  <28.614737, 39.525333, 34.364540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.790501, 39.431835, 34.230507>,  <29.083441, 39.276005, 34.007118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.790501, 39.431835, 34.230507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172773, -0.899641, 0.400994,
		0.658645, 0.197178, 0.726160,
		-0.732350, 0.389573, 0.558476,
		28.570795, 39.548706, 34.398048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067877, 38.915653, 34.664787>,  <29.083441, 39.276005, 34.007118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067877, 38.915653, 34.664787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.702904, 39.078812, 34.651585>,  <28.483919, 39.176704, 34.643661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.702904, 39.078812, 34.651585>,  <29.067877, 38.915653, 34.664787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.702904, 39.078812, 34.651585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379527, -0.813287, 0.441049,
		0.153056, 0.414955, 0.896876,
		-0.912432, 0.407894, -0.033008,
		28.429174, 39.201180, 34.641682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860949, 39.078228, 35.335926>,  <29.067877, 38.915653, 34.664787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.860949, 39.078228, 35.335926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.522724, 39.051212, 35.124088>,  <28.319790, 39.035004, 34.996986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.522724, 39.051212, 35.124088>,  <28.860949, 39.078228, 35.335926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.522724, 39.051212, 35.124088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290391, -0.774208, 0.562383,
		-0.447997, 0.629317, 0.635026,
		-0.845560, -0.067540, -0.529591,
		28.269056, 39.030949, 34.965210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.227757, 39.073704, 35.859211>,  <28.860949, 39.078228, 35.335926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.227757, 39.073704, 35.859211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.145031, 38.908810, 35.504292>,  <28.095396, 38.809875, 35.291340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.145031, 38.908810, 35.504292>,  <28.227757, 39.073704, 35.859211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.145031, 38.908810, 35.504292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150255, -0.882761, 0.445147,
		-0.966774, 0.225382, 0.120626,
		-0.206812, -0.412232, -0.887296,
		28.082987, 38.785141, 35.238102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.772301, 38.582508, 36.039600>,  <28.227757, 39.073704, 35.859211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.772301, 38.582508, 36.039600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.881670, 38.454502, 35.676762>,  <27.947292, 38.377697, 35.459057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.881670, 38.454502, 35.676762>,  <27.772301, 38.582508, 36.039600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.881670, 38.454502, 35.676762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202679, -0.941030, 0.270895,
		-0.940284, 0.109764, -0.322207,
		0.273472, -0.320023, -0.907082,
		27.963697, 38.358498, 35.404633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304308, 38.101337, 35.931412>,  <27.772301, 38.582508, 36.039600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.304308, 38.101337, 35.931412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.577431, 38.034355, 35.646954>,  <27.741304, 37.994167, 35.476276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.577431, 38.034355, 35.646954>,  <27.304308, 38.101337, 35.931412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.577431, 38.034355, 35.646954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276615, -0.960169, -0.039499,
		-0.676209, 0.223685, -0.701930,
		0.682807, -0.167455, -0.711150,
		27.782272, 37.984119, 35.433609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.033865, 37.737381, 35.351711>,  <27.304308, 38.101337, 35.931412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.033865, 37.737381, 35.351711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.426231, 37.659691, 35.348114>,  <27.661652, 37.613075, 35.345955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.426231, 37.659691, 35.348114>,  <27.033865, 37.737381, 35.351711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.426231, 37.659691, 35.348114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192773, -0.965457, -0.175304,
		0.025370, 0.173691, -0.984473,
		0.980915, -0.194228, -0.008989,
		27.720507, 37.601421, 35.345417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.035215, 37.229851, 34.812927>,  <27.033865, 37.737381, 35.351711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.035215, 37.229851, 34.812927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.391685, 37.212170, 34.993526>,  <27.605568, 37.201561, 35.101887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.391685, 37.212170, 34.993526>,  <27.035215, 37.229851, 34.812927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.391685, 37.212170, 34.993526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063417, -0.973332, -0.220460,
		0.449204, 0.225101, -0.864607,
		0.891175, -0.044201, 0.451500,
		27.659039, 37.198910, 35.128975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.331846, 36.751953, 34.475567>,  <27.035215, 37.229851, 34.812927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.331846, 36.751953, 34.475567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.583185, 36.765362, 34.786449>,  <27.733988, 36.773407, 34.972980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.583185, 36.765362, 34.786449>,  <27.331846, 36.751953, 34.475567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.583185, 36.765362, 34.786449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011028, -0.999355, 0.034187,
		0.777855, -0.012910, -0.628312,
		0.628348, 0.033521, 0.777210,
		27.771688, 36.775417, 35.019611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.872131, 36.298149, 34.264507>,  <27.331846, 36.751953, 34.475567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.872131, 36.298149, 34.264507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.856613, 36.332615, 34.662716>,  <27.847301, 36.353294, 34.901642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.856613, 36.332615, 34.662716>,  <27.872131, 36.298149, 34.264507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856613, 36.332615, 34.662716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014217, -0.996222, 0.085669,
		0.999146, -0.010830, 0.039875,
		-0.038797, 0.086163, 0.995525,
		27.844975, 36.358463, 34.961372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268169, 35.759697, 34.422726>,  <27.872131, 36.298149, 34.264507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268169, 35.759697, 34.422726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.049273, 35.838932, 34.748005>,  <27.917934, 35.886471, 34.943172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.049273, 35.838932, 34.748005>,  <28.268169, 35.759697, 34.422726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.049273, 35.838932, 34.748005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207873, -0.973315, 0.097198,
		0.810749, -0.115850, 0.573816,
		-0.547243, 0.198084, 0.813196,
		27.885099, 35.898357, 34.991962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.386690, 35.288662, 34.811161>,  <28.268169, 35.759697, 34.422726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.386690, 35.288662, 34.811161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.033541, 35.418617, 34.946800>,  <27.821651, 35.496590, 35.028183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.033541, 35.418617, 34.946800>,  <28.386690, 35.288662, 34.811161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.033541, 35.418617, 34.946800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334282, -0.941926, 0.032125,
		0.329839, -0.084991, 0.940203,
		-0.882871, 0.324889, 0.339095,
		27.768679, 35.516083, 35.048527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.029282, 34.796215, 34.663891>,  <28.386690, 35.288662, 34.811161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.029282, 34.796215, 34.663891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.428469, 34.808903, 34.641785>,  <29.667980, 34.816517, 34.628521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.428469, 34.808903, 34.641785>,  <29.029282, 34.796215, 34.663891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.428469, 34.808903, 34.641785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027681, 0.996992, 0.072387,
		0.057391, -0.070711, 0.995845,
		0.997968, 0.031720, -0.055261,
		29.727859, 34.818420, 34.625206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382166, 35.263885, 35.247723>,  <29.029282, 34.796215, 34.663891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382166, 35.263885, 35.247723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.659967, 35.247189, 34.960411>,  <29.826649, 35.237171, 34.788025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.659967, 35.247189, 34.960411>,  <29.382166, 35.263885, 35.247723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659967, 35.247189, 34.960411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215346, 0.964610, 0.152163,
		0.686508, -0.260356, 0.678912,
		0.694502, -0.041740, -0.718279,
		29.868319, 35.234665, 34.744926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.886179, 35.613258, 35.512871>,  <29.382166, 35.263885, 35.247723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.886179, 35.613258, 35.512871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.996235, 35.599007, 35.128574>,  <30.062267, 35.590454, 34.897995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.996235, 35.599007, 35.128574>,  <29.886179, 35.613258, 35.512871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.996235, 35.599007, 35.128574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501366, 0.857987, 0.111763,
		0.820324, -0.512435, 0.253928,
		0.275138, -0.035629, -0.960744,
		30.078775, 35.588318, 34.840351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631165, 35.741570, 35.473869>,  <29.886179, 35.613258, 35.512871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631165, 35.741570, 35.473869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.513247, 35.825989, 35.101082>,  <30.442495, 35.876640, 34.877411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.513247, 35.825989, 35.101082>,  <30.631165, 35.741570, 35.473869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513247, 35.825989, 35.101082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468328, 0.882047, 0.051602,
		0.832926, -0.421253, -0.358859,
		-0.294793, 0.211044, -0.931964,
		30.424809, 35.889301, 34.821491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236887, 36.070004, 35.075165>,  <30.631165, 35.741570, 35.473869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236887, 36.070004, 35.075165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.895168, 36.165352, 34.890400>,  <30.690138, 36.222561, 34.779541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.895168, 36.165352, 34.890400>,  <31.236887, 36.070004, 35.075165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.895168, 36.165352, 34.890400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332800, 0.933458, -0.133794,
		0.399280, -0.268023, -0.876777,
		-0.854295, 0.238370, -0.461909,
		30.638880, 36.236862, 34.751827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361494, 36.417370, 34.449139>,  <31.236887, 36.070004, 35.075165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361494, 36.417370, 34.449139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.999531, 36.546806, 34.559723>,  <30.782352, 36.624470, 34.626072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.999531, 36.546806, 34.559723>,  <31.361494, 36.417370, 34.449139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.999531, 36.546806, 34.559723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324234, 0.944919, -0.044731,
		-0.275704, 0.049160, -0.959985,
		-0.904908, 0.323593, 0.276457,
		30.728058, 36.643883, 34.642658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387022, 36.989723, 34.190964>,  <31.361494, 36.417370, 34.449139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387022, 36.989723, 34.190964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.065483, 37.041325, 34.423237>,  <30.872561, 37.072285, 34.562599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.065483, 37.041325, 34.423237>,  <31.387022, 36.989723, 34.190964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065483, 37.041325, 34.423237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108656, 0.991620, -0.069883,
		-0.584831, 0.006919, -0.811126,
		-0.803845, 0.129004, 0.580681,
		30.824329, 37.080025, 34.597443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.037613, 37.648838, 33.938942>,  <31.387022, 36.989723, 34.190964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.037613, 37.648838, 33.938942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.876190, 37.595425, 34.301006>,  <30.779337, 37.563377, 34.518246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.876190, 37.595425, 34.301006>,  <31.037613, 37.648838, 33.938942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.876190, 37.595425, 34.301006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039386, 0.985840, 0.162995,
		-0.914107, 0.101429, -0.392582,
		-0.403556, -0.133533, 0.905159,
		30.755123, 37.555367, 34.572556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597956, 38.121758, 34.018951>,  <31.037613, 37.648838, 33.938942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.597956, 38.121758, 34.018951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.686619, 38.027225, 34.397373>,  <30.739817, 37.970509, 34.624428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.686619, 38.027225, 34.397373>,  <30.597956, 38.121758, 34.018951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686619, 38.027225, 34.397373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164709, 0.965321, 0.202549,
		-0.961113, 0.110927, 0.252898,
		0.221660, -0.236327, 0.946053,
		30.753117, 37.956326, 34.681190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462902, 38.731934, 34.285278>,  <30.597956, 38.121758, 34.018951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462902, 38.731934, 34.285278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.674719, 38.566013, 34.581257>,  <30.801809, 38.466461, 34.758846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.674719, 38.566013, 34.581257>,  <30.462902, 38.731934, 34.285278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674719, 38.566013, 34.581257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265760, 0.909501, 0.319657,
		-0.805577, 0.027376, 0.591858,
		0.529544, -0.414800, 0.739949,
		30.833582, 38.441574, 34.803242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389496, 39.214497, 34.959454>,  <30.462902, 38.731934, 34.285278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389496, 39.214497, 34.959454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.701029, 38.976269, 35.038158>,  <30.887949, 38.833332, 35.085381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.701029, 38.976269, 35.038158>,  <30.389496, 39.214497, 34.959454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.701029, 38.976269, 35.038158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475090, 0.764960, 0.434885,
		-0.409523, -0.245221, 0.878725,
		0.778833, -0.595569, 0.196766,
		30.934679, 38.797600, 35.097187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428589, 39.212799, 35.614902>,  <30.389496, 39.214497, 34.959454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.428589, 39.212799, 35.614902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.787935, 39.135883, 35.456932>,  <31.003542, 39.089733, 35.362152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.787935, 39.135883, 35.456932>,  <30.428589, 39.212799, 35.614902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787935, 39.135883, 35.456932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386718, 0.772617, 0.503500,
		0.208306, -0.605050, 0.768455,
		0.898364, -0.192293, -0.394924,
		31.057444, 39.078194, 35.338455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985596, 39.324032, 36.179581>,  <30.428589, 39.212799, 35.614902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985596, 39.324032, 36.179581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.147987, 39.357479, 35.815559>,  <31.245422, 39.377548, 35.597149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.147987, 39.357479, 35.815559>,  <30.985596, 39.324032, 36.179581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147987, 39.357479, 35.815559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324403, 0.917768, 0.229050,
		0.854367, -0.388212, 0.345468,
		0.405979, 0.083622, -0.910048,
		31.269781, 39.382565, 35.542545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657669, 39.575993, 36.287189>,  <30.985596, 39.324032, 36.179581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657669, 39.575993, 36.287189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.611370, 39.623154, 35.892689>,  <31.583591, 39.651451, 35.655987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.611370, 39.623154, 35.892689>,  <31.657669, 39.575993, 36.287189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.611370, 39.623154, 35.892689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503794, 0.862702, 0.044010,
		0.856035, -0.491775, -0.159255,
		-0.115747, 0.117905, -0.986256,
		31.576647, 39.658524, 35.596813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299225, 39.961277, 36.016003>,  <31.657669, 39.575993, 36.287189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299225, 39.961277, 36.016003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.994741, 40.017006, 35.762657>,  <31.812050, 40.050442, 35.610649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.994741, 40.017006, 35.762657>,  <32.299225, 39.961277, 36.016003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994741, 40.017006, 35.762657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380973, 0.886424, -0.262891,
		0.524801, -0.441409, -0.727834,
		-0.761212, 0.139320, -0.633361,
		31.766378, 40.058804, 35.572647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598099, 40.404514, 35.497120>,  <32.299225, 39.961277, 36.016003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598099, 40.404514, 35.497120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.203754, 40.440029, 35.440285>,  <31.967148, 40.461338, 35.406185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.203754, 40.440029, 35.440285>,  <32.598099, 40.404514, 35.497120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203754, 40.440029, 35.440285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141550, 0.895100, -0.422801,
		0.089640, -0.436936, -0.895015,
		-0.985864, 0.088789, -0.142085,
		31.907995, 40.466667, 35.397659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497665, 40.640366, 34.795948>,  <32.598099, 40.404514, 35.497120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497665, 40.640366, 34.795948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.170704, 40.742870, 35.002316>,  <31.974525, 40.804375, 35.126137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.170704, 40.742870, 35.002316>,  <32.497665, 40.640366, 34.795948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170704, 40.742870, 35.002316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095534, 0.943506, -0.317284,
		-0.568082, -0.210062, -0.795712,
		-0.817408, 0.256261, 0.515921,
		31.925482, 40.819748, 35.157093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192169, 41.013451, 34.322437>,  <32.497665, 40.640366, 34.795948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192169, 41.013451, 34.322437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.009876, 41.117771, 34.662857>,  <31.900501, 41.180363, 34.867111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.009876, 41.117771, 34.662857>,  <32.192169, 41.013451, 34.322437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009876, 41.117771, 34.662857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053302, 0.946402, -0.318563,
		-0.888521, -0.190542, -0.417402,
		-0.455730, 0.260801, 0.851054,
		31.873158, 41.196011, 34.918175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541492, 41.408890, 34.140694>,  <32.192169, 41.013451, 34.322437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541492, 41.408890, 34.140694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.674074, 41.517380, 34.502151>,  <31.753624, 41.582474, 34.719025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.674074, 41.517380, 34.502151>,  <31.541492, 41.408890, 34.140694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674074, 41.517380, 34.502151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077822, 0.962383, -0.260312,
		-0.940256, 0.015959, 0.340093,
		0.331454, 0.271227, 0.903645,
		31.773510, 41.598747, 34.773247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215448, 41.990810, 34.263504>,  <31.541492, 41.408890, 34.140694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215448, 41.990810, 34.263504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.501677, 42.022346, 34.541134>,  <31.673414, 42.041267, 34.707710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.501677, 42.022346, 34.541134>,  <31.215448, 41.990810, 34.263504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501677, 42.022346, 34.541134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106672, 0.969624, -0.220113,
		-0.690346, 0.231545, 0.685427,
		0.715572, 0.078838, 0.694075,
		31.716349, 42.045998, 34.749355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077000, 42.503902, 34.699902>,  <31.215448, 41.990810, 34.263504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077000, 42.503902, 34.699902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.471657, 42.479431, 34.760288>,  <31.708452, 42.464748, 34.796520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.471657, 42.479431, 34.760288>,  <31.077000, 42.503902, 34.699902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471657, 42.479431, 34.760288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092274, 0.973656, -0.208517,
		-0.134231, 0.219663, 0.966297,
		0.986645, -0.061174, 0.150964,
		31.767651, 42.461079, 34.805576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279753, 43.052551, 35.106201>,  <31.077000, 42.503902, 34.699902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279753, 43.052551, 35.106201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.601286, 42.938953, 34.897129>,  <31.794207, 42.870796, 34.771687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.601286, 42.938953, 34.897129>,  <31.279753, 43.052551, 35.106201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601286, 42.938953, 34.897129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220384, 0.958328, -0.181765,
		0.552522, 0.030918, 0.832924,
		0.803834, -0.283993, -0.522684,
		31.842436, 42.853756, 34.740322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.924934, 36.507156, 45.658710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.576340, 36.366909, 45.521545>,  <37.367184, 36.282761, 45.439247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.576340, 36.366909, 45.521545>,  <37.924934, 36.507156, 45.658710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576340, 36.366909, 45.521545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412810, 0.146939, 0.898887,
		-0.264775, 0.924921, -0.272792,
		-0.871483, -0.350614, -0.342910,
		37.314896, 36.261726, 45.418671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418537, 37.004795, 45.799740>,  <37.924934, 36.507156, 45.658710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418537, 37.004795, 45.799740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.229122, 36.653316, 45.775536>,  <37.115475, 36.442429, 45.761013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.229122, 36.653316, 45.775536>,  <37.418537, 37.004795, 45.799740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229122, 36.653316, 45.775536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411289, 0.159853, 0.897379,
		-0.778848, 0.449829, -0.437093,
		-0.473538, -0.878693, -0.060509,
		37.087059, 36.389709, 45.757381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878265, 37.096043, 46.109955>,  <37.418537, 37.004795, 45.799740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878265, 37.096043, 46.109955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.868568, 36.696224, 46.117111>,  <36.862751, 36.456333, 46.121403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.868568, 36.696224, 46.117111>,  <36.878265, 37.096043, 46.109955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868568, 36.696224, 46.117111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416921, 0.026373, 0.908560,
		-0.908619, 0.014569, -0.417372,
		-0.024244, -0.999546, 0.017889,
		36.861294, 36.396362, 46.122478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189644, 36.904175, 46.282230>,  <36.878265, 37.096043, 46.109955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189644, 36.904175, 46.282230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.410141, 36.579437, 46.359211>,  <36.542439, 36.384594, 46.405399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.410141, 36.579437, 46.359211>,  <36.189644, 36.904175, 46.282230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410141, 36.579437, 46.359211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365071, -0.027286, 0.930580,
		-0.750238, -0.583230, -0.311424,
		0.551240, -0.811849, 0.192450,
		36.575512, 36.335884, 46.416946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741596, 36.277664, 46.478935>,  <36.189644, 36.904175, 46.282230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741596, 36.277664, 46.478935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.107227, 36.183605, 46.611095>,  <36.326607, 36.127171, 46.690392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.107227, 36.183605, 46.611095>,  <35.741596, 36.277664, 46.478935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107227, 36.183605, 46.611095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359769, -0.094234, 0.928270,
		-0.187149, -0.967380, -0.170738,
		0.914079, -0.235151, 0.330397,
		36.381451, 36.113060, 46.710217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670555, 35.640423, 46.921375>,  <35.741596, 36.277664, 46.478935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670555, 35.640423, 46.921375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.995472, 35.853470, 47.016457>,  <36.190422, 35.981300, 47.073505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.995472, 35.853470, 47.016457>,  <35.670555, 35.640423, 46.921375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995472, 35.853470, 47.016457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249829, -0.050544, 0.966970,
		0.527042, -0.844844, 0.092007,
		0.812288, 0.532620, 0.237705,
		36.239159, 36.013256, 47.087769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872196, 35.364902, 47.534004>,  <35.670555, 35.640423, 46.921375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872196, 35.364902, 47.534004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.097141, 35.695141, 47.552528>,  <36.232109, 35.893284, 47.563644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.097141, 35.695141, 47.552528>,  <35.872196, 35.364902, 47.534004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097141, 35.695141, 47.552528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107119, 0.017204, 0.994097,
		0.819924, -0.564002, 0.098112,
		0.562361, 0.825594, 0.046310,
		36.265850, 35.942818, 47.566422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313931, 35.279591, 48.134045>,  <35.872196, 35.364902, 47.534004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313931, 35.279591, 48.134045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.277489, 35.670563, 48.057812>,  <36.255623, 35.905148, 48.012070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.277489, 35.670563, 48.057812>,  <36.313931, 35.279591, 48.134045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277489, 35.670563, 48.057812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089005, 0.198609, 0.976029,
		0.991856, 0.071961, -0.105091,
		-0.091108, 0.977433, -0.190586,
		36.250156, 35.963795, 48.000637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404949, 35.547134, 48.809269>,  <36.313931, 35.279591, 48.134045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404949, 35.547134, 48.809269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.307514, 35.876244, 48.603859>,  <36.249054, 36.073711, 48.480614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.307514, 35.876244, 48.603859>,  <36.404949, 35.547134, 48.809269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307514, 35.876244, 48.603859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224538, 0.467246, 0.855140,
		0.943530, 0.323605, 0.070930,
		-0.243585, 0.822777, -0.513522,
		36.234440, 36.123077, 48.449802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781914, 36.135918, 49.133926>,  <36.404949, 35.547134, 48.809269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781914, 36.135918, 49.133926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.445950, 36.260460, 48.956112>,  <36.244373, 36.335186, 48.849422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.445950, 36.260460, 48.956112>,  <36.781914, 36.135918, 49.133926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445950, 36.260460, 48.956112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257569, 0.492286, 0.831452,
		0.477717, 0.812842, -0.333279,
		-0.839908, 0.311356, -0.444536,
		36.193977, 36.353867, 48.822750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610245, 36.801903, 49.417675>,  <36.781914, 36.135918, 49.133926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610245, 36.801903, 49.417675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.260628, 36.695923, 49.254776>,  <36.050858, 36.632336, 49.157036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.260628, 36.695923, 49.254776>,  <36.610245, 36.801903, 49.417675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260628, 36.695923, 49.254776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485838, 0.472125, 0.735568,
		-0.002615, 0.840774, -0.541379,
		-0.874045, -0.264946, -0.407245,
		35.998413, 36.616440, 49.132603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205193, 37.199944, 49.646660>,  <36.610245, 36.801903, 49.417675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205193, 37.199944, 49.646660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.913773, 36.949398, 49.535748>,  <35.738918, 36.799072, 49.469200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.913773, 36.949398, 49.535748>,  <36.205193, 37.199944, 49.646660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913773, 36.949398, 49.535748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612829, 0.415166, 0.672368,
		-0.306028, 0.659780, -0.686322,
		-0.728552, -0.626361, -0.277280,
		35.695206, 36.761490, 49.452564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581554, 37.576794, 49.568790>,  <36.205193, 37.199944, 49.646660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581554, 37.576794, 49.568790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.478340, 37.198441, 49.647507>,  <35.416412, 36.971428, 49.694736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.478340, 37.198441, 49.647507>,  <35.581554, 37.576794, 49.568790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478340, 37.198441, 49.647507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747881, 0.324503, 0.579113,
		-0.611631, 0.002257, -0.791140,
		-0.258034, -0.945882, 0.196788,
		35.400928, 36.914677, 49.706543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903999, 37.555748, 49.526463>,  <35.581554, 37.576794, 49.568790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903999, 37.555748, 49.526463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.950665, 37.266834, 49.799137>,  <34.978664, 37.093487, 49.962742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.950665, 37.266834, 49.799137>,  <34.903999, 37.555748, 49.526463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950665, 37.266834, 49.799137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705720, 0.422660, 0.568611,
		-0.698821, -0.547411, -0.460425,
		0.116661, -0.722288, 0.681683,
		34.985664, 37.050148, 50.003643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439381, 37.808323, 50.042698>,  <34.903999, 37.555748, 49.526463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439381, 37.808323, 50.042698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.113537, 38.039612, 50.024487>,  <33.918030, 38.178387, 50.013561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.113537, 38.039612, 50.024487>,  <34.439381, 37.808323, 50.042698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113537, 38.039612, 50.024487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219264, 0.234334, -0.947107,
		-0.536973, -0.781500, -0.317674,
		-0.814606, 0.578226, -0.045524,
		33.869156, 38.213081, 50.010830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951145, 37.645748, 49.547821>,  <34.439381, 37.808323, 50.042698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951145, 37.645748, 49.547821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.923676, 38.041389, 49.599903>,  <33.907192, 38.278774, 49.631153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.923676, 38.041389, 49.599903>,  <33.951145, 37.645748, 49.547821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923676, 38.041389, 49.599903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377117, 0.146570, -0.914495,
		-0.923616, -0.013699, -0.383074,
		-0.068675, 0.989106, 0.130208,
		33.903072, 38.338120, 49.638966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619190, 37.903889, 48.976437>,  <33.951145, 37.645748, 49.547821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619190, 37.903889, 48.976437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.818520, 38.215347, 49.128956>,  <33.938118, 38.402222, 49.220467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.818520, 38.215347, 49.128956>,  <33.619190, 37.903889, 48.976437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818520, 38.215347, 49.128956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229429, 0.305688, -0.924076,
		-0.836084, 0.547971, -0.026312,
		0.498323, 0.778642, 0.381301,
		33.968018, 38.448940, 49.243347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451630, 38.447609, 48.561954>,  <33.619190, 37.903889, 48.976437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451630, 38.447609, 48.561954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.773018, 38.574718, 48.763332>,  <33.965851, 38.650986, 48.884159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.773018, 38.574718, 48.763332>,  <33.451630, 38.447609, 48.561954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773018, 38.574718, 48.763332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361692, 0.411141, -0.836745,
		-0.472886, 0.854390, 0.215401,
		0.803466, 0.317776, 0.503449,
		34.014057, 38.670052, 48.914368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483021, 39.083145, 48.300259>,  <33.451630, 38.447609, 48.561954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483021, 39.083145, 48.300259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.840790, 38.988369, 48.451977>,  <34.055450, 38.931503, 48.543007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.840790, 38.988369, 48.451977>,  <33.483021, 39.083145, 48.300259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840790, 38.988369, 48.451977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444025, 0.369353, -0.816346,
		0.053330, 0.898576, 0.435565,
		0.894426, -0.236937, 0.379292,
		34.109119, 38.917290, 48.565765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883732, 39.663021, 47.904545>,  <33.483021, 39.083145, 48.300259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883732, 39.663021, 47.904545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.126537, 39.392273, 48.071098>,  <34.272221, 39.229824, 48.171032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.126537, 39.392273, 48.071098>,  <33.883732, 39.663021, 47.904545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126537, 39.392273, 48.071098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716505, 0.239525, -0.655170,
		0.343729, 0.696044, 0.630376,
		0.607018, -0.676868, 0.416387,
		34.308643, 39.189213, 48.196014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458519, 40.004822, 48.047501>,  <33.883732, 39.663021, 47.904545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458519, 40.004822, 48.047501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.566307, 39.621716, 48.007378>,  <34.630981, 39.391850, 47.983303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.566307, 39.621716, 48.007378>,  <34.458519, 40.004822, 48.047501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566307, 39.621716, 48.007378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685930, 0.264009, -0.678086,
		0.675932, 0.113921, 0.728106,
		0.269474, -0.957769, -0.100310,
		34.647148, 39.334385, 47.977283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179909, 39.939602, 47.936268>,  <34.458519, 40.004822, 48.047501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179909, 39.939602, 47.936268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.056107, 39.588299, 47.790459>,  <34.981827, 39.377518, 47.702972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.056107, 39.588299, 47.790459>,  <35.179909, 39.939602, 47.936268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056107, 39.588299, 47.790459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582683, 0.127780, -0.802591,
		0.751458, -0.460806, 0.472195,
		-0.309502, -0.878254, -0.364525,
		34.963257, 39.324821, 47.681103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740856, 39.639980, 47.610180>,  <35.179909, 39.939602, 47.936268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740856, 39.639980, 47.610180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.437141, 39.434628, 47.450222>,  <35.254913, 39.311417, 47.354248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.437141, 39.434628, 47.450222>,  <35.740856, 39.639980, 47.610180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437141, 39.434628, 47.450222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500728, -0.068431, -0.862895,
		0.415631, -0.855427, 0.309025,
		-0.759290, -0.513383, -0.399894,
		35.209354, 39.280613, 47.330254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100330, 39.153965, 47.214684>,  <35.740856, 39.639980, 47.610180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100330, 39.153965, 47.214684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.719254, 39.161957, 47.093372>,  <35.490608, 39.166752, 47.020584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.719254, 39.161957, 47.093372>,  <36.100330, 39.153965, 47.214684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719254, 39.161957, 47.093372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303070, -0.012828, -0.952882,
		-0.022938, -0.999718, 0.006163,
		-0.952692, 0.019989, -0.303279,
		35.433445, 39.167950, 47.002388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987946, 38.644981, 46.685322>,  <36.100330, 39.153965, 47.214684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987946, 38.644981, 46.685322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.683834, 38.900394, 46.637558>,  <35.501366, 39.053642, 46.608898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.683834, 38.900394, 46.637558>,  <35.987946, 38.644981, 46.685322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683834, 38.900394, 46.637558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148945, -0.007571, -0.988816,
		-0.632292, -0.769561, -0.089350,
		-0.760277, 0.638529, -0.119410,
		35.455750, 39.091953, 46.601734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604164, 38.376488, 46.110313>,  <35.987946, 38.644981, 46.685322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604164, 38.376488, 46.110313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.505699, 38.762192, 46.149517>,  <35.446621, 38.993614, 46.173038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.505699, 38.762192, 46.149517>,  <35.604164, 38.376488, 46.110313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505699, 38.762192, 46.149517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003455, 0.101996, -0.994779,
		-0.969223, -0.244537, -0.028439,
		-0.246160, 0.964261, 0.098012,
		35.431850, 39.051472, 46.178921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098091, 38.446190, 45.645107>,  <35.604164, 38.376488, 46.110313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098091, 38.446190, 45.645107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.264950, 38.802959, 45.714916>,  <35.365067, 39.017021, 45.756802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.264950, 38.802959, 45.714916>,  <35.098091, 38.446190, 45.645107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264950, 38.802959, 45.714916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068284, 0.160729, -0.984634,
		-0.906270, 0.422654, 0.006143,
		0.417147, 0.891925, 0.174525,
		35.390095, 39.070538, 45.767273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688988, 38.949726, 45.278622>,  <35.098091, 38.446190, 45.645107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688988, 38.949726, 45.278622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.046528, 39.124722, 45.317883>,  <35.261051, 39.229717, 45.341438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.046528, 39.124722, 45.317883>,  <34.688988, 38.949726, 45.278622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046528, 39.124722, 45.317883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109732, -0.001200, -0.993960,
		-0.434724, 0.899225, -0.049079,
		0.893853, 0.437484, 0.098152,
		35.314682, 39.255966, 45.347328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188614, 39.307327, 44.932812>,  <34.688988, 38.949726, 45.278622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188614, 39.307327, 44.932812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.849689, 39.140514, 44.801266>,  <33.646336, 39.040428, 44.722340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.849689, 39.140514, 44.801266>,  <34.188614, 39.307327, 44.932812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849689, 39.140514, 44.801266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355280, -0.015192, 0.934637,
		-0.394769, 0.908765, -0.135291,
		-0.847310, -0.417032, -0.328863,
		33.595497, 39.015404, 44.702606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702854, 39.620548, 45.276638>,  <34.188614, 39.307327, 44.932812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702854, 39.620548, 45.276638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.554302, 39.268734, 45.157646>,  <33.465172, 39.057644, 45.086250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.554302, 39.268734, 45.157646>,  <33.702854, 39.620548, 45.276638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554302, 39.268734, 45.157646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303125, -0.187990, 0.934224,
		-0.877608, 0.437123, -0.196794,
		-0.371376, -0.879536, -0.297484,
		33.442890, 39.004871, 45.068401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971069, 39.647221, 45.465706>,  <33.702854, 39.620548, 45.276638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971069, 39.647221, 45.465706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.049728, 39.259239, 45.408409>,  <33.096924, 39.026451, 45.374031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.049728, 39.259239, 45.408409>,  <32.971069, 39.647221, 45.465706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049728, 39.259239, 45.408409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572693, -0.232210, 0.786194,
		-0.795835, -0.072571, -0.601150,
		0.196648, -0.969955, -0.143240,
		33.108723, 38.968254, 45.365437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388992, 39.270424, 45.408646>,  <32.971069, 39.647221, 45.465706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388992, 39.270424, 45.408646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.665718, 39.018230, 45.549438>,  <32.831753, 38.866917, 45.633915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.665718, 39.018230, 45.549438>,  <32.388992, 39.270424, 45.408646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665718, 39.018230, 45.549438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611430, -0.252181, 0.750039,
		-0.384122, -0.734098, -0.559956,
		0.691812, -0.630480, 0.351981,
		32.873260, 38.829086, 45.655033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998936, 38.763424, 45.644489>,  <32.388992, 39.270424, 45.408646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998936, 38.763424, 45.644489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.355839, 38.667831, 45.797729>,  <32.569981, 38.610477, 45.889675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.355839, 38.667831, 45.797729>,  <31.998936, 38.763424, 45.644489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355839, 38.667831, 45.797729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451347, -0.447828, 0.771839,
		-0.012888, -0.861591, -0.507440,
		0.892256, -0.238979, 0.383104,
		32.623516, 38.596138, 45.912663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912323, 38.099903, 45.955788>,  <31.998936, 38.763424, 45.644489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912323, 38.099903, 45.955788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.233833, 38.252548, 46.138355>,  <32.426739, 38.344135, 46.247894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.233833, 38.252548, 46.138355>,  <31.912323, 38.099903, 45.955788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233833, 38.252548, 46.138355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298543, -0.404867, 0.864265,
		0.514602, -0.830936, -0.211495,
		0.803777, 0.381612, 0.456416,
		32.474968, 38.367031, 46.275280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130440, 37.580246, 46.422649>,  <31.912323, 38.099903, 45.955788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130440, 37.580246, 46.422649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.271133, 37.928310, 46.560692>,  <32.355549, 38.137150, 46.643517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.271133, 37.928310, 46.560692>,  <32.130440, 37.580246, 46.422649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271133, 37.928310, 46.560692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427824, -0.178476, 0.886066,
		0.832616, -0.459304, 0.309501,
		0.351735, 0.870164, 0.345103,
		32.376656, 38.189362, 46.664223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183228, 36.814960, 46.389278>,  <32.130440, 37.580246, 46.422649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183228, 36.814960, 46.389278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.845766, 36.601070, 46.408508>,  <31.643290, 36.472736, 46.420048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.845766, 36.601070, 46.408508>,  <32.183228, 36.814960, 46.389278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845766, 36.601070, 46.408508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031095, -0.040725, -0.998686,
		0.535985, -0.844042, 0.017731,
		-0.843655, -0.534729, 0.048073,
		31.592669, 36.440651, 46.422932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381355, 36.238972, 46.049358>,  <32.183228, 36.814960, 46.389278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381355, 36.238972, 46.049358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.985754, 36.297359, 46.039879>,  <31.748392, 36.332390, 46.034191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.985754, 36.297359, 46.039879>,  <32.381355, 36.238972, 46.049358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985754, 36.297359, 46.039879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005779, -0.121961, -0.992518,
		-0.147770, -0.981742, 0.119776,
		-0.989005, 0.145972, -0.023695,
		31.689053, 36.341148, 46.032772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077374, 35.693718, 45.609058>,  <32.381355, 36.238972, 46.049358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077374, 35.693718, 45.609058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.792673, 35.974682, 45.606812>,  <31.621853, 36.143261, 45.605465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.792673, 35.974682, 45.606812>,  <32.077374, 35.693718, 45.609058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792673, 35.974682, 45.606812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002423, -0.005534, -0.999982,
		-0.702427, -0.711752, 0.002237,
		-0.711752, 0.702409, -0.005612,
		31.579147, 36.185406, 45.605129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597700, 35.455029, 45.142883>,  <32.077374, 35.693718, 45.609058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597700, 35.455029, 45.142883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.513000, 35.844273, 45.179134>,  <31.462181, 36.077820, 45.200886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.513000, 35.844273, 45.179134>,  <31.597700, 35.455029, 45.142883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513000, 35.844273, 45.179134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073015, 0.076718, -0.994376,
		-0.974593, -0.217175, 0.054807,
		-0.211749, 0.973113, 0.090626,
		31.449476, 36.136208, 45.206322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149374, 35.552750, 44.729565>,  <31.597700, 35.455029, 45.142883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149374, 35.552750, 44.729565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.272058, 35.929005, 44.787701>,  <31.345669, 36.154758, 44.822582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.272058, 35.929005, 44.787701>,  <31.149374, 35.552750, 44.729565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272058, 35.929005, 44.787701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137961, 0.195024, -0.971047,
		-0.941751, 0.277780, 0.189588,
		0.306712, 0.940640, 0.145341,
		31.364073, 36.211197, 44.831303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858049, 35.868877, 44.205990>,  <31.149374, 35.552750, 44.729565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858049, 35.868877, 44.205990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.138250, 36.130161, 44.320961>,  <31.306372, 36.286930, 44.389942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.138250, 36.130161, 44.320961>,  <30.858049, 35.868877, 44.205990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.138250, 36.130161, 44.320961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360196, 0.024073, -0.932566,
		-0.616081, 0.756794, -0.218420,
		0.700502, 0.653210, 0.287425,
		31.348400, 36.326126, 44.407188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813402, 36.518616, 43.898926>,  <30.858049, 35.868877, 44.205990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813402, 36.518616, 43.898926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.203339, 36.456673, 43.963062>,  <31.437300, 36.419506, 44.001545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.203339, 36.456673, 43.963062>,  <30.813402, 36.518616, 43.898926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203339, 36.456673, 43.963062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179460, 0.118568, -0.976594,
		0.132218, 0.980797, 0.143374,
		0.974840, -0.154853, 0.160337,
		31.495790, 36.410217, 44.011162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.044460, 33.657310, 49.180218> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.249344, 33.809547, 49.488190>,  <34.372272, 33.900890, 49.672974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.249344, 33.809547, 49.488190>,  <34.044460, 33.657310, 49.180218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249344, 33.809547, 49.488190> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679668, -0.727669, -0.092457,
		0.525066, 0.570654, -0.631395,
		0.512208, 0.380593, 0.769930,
		34.403008, 33.923725, 49.719170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468590, 34.223450, 49.309479>,  <34.044460, 33.657310, 49.180218>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468590, 34.223450, 49.309479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.846813, 34.349876, 49.278446>,  <34.073750, 34.425732, 49.259827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.846813, 34.349876, 49.278446>,  <33.468590, 34.223450, 49.309479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846813, 34.349876, 49.278446> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034683, -0.334898, -0.941616,
		-0.323594, 0.887664, -0.327629,
		0.945560, 0.316064, -0.077584,
		34.130482, 34.444695, 49.255173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402214, 34.531540, 48.596371>,  <33.468590, 34.223450, 49.309479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402214, 34.531540, 48.596371> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.789982, 34.497955, 48.688602>,  <34.022644, 34.477802, 48.743942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.789982, 34.497955, 48.688602>,  <33.402214, 34.531540, 48.596371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789982, 34.497955, 48.688602> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201159, -0.266246, -0.942681,
		0.140542, 0.960241, -0.241215,
		0.969424, -0.083964, 0.230580,
		34.080811, 34.472767, 48.757778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749985, 34.954494, 48.041294>,  <33.402214, 34.531540, 48.596371>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749985, 34.954494, 48.041294> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.999344, 34.670399, 48.172100>,  <34.148960, 34.499943, 48.250584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.999344, 34.670399, 48.172100>,  <33.749985, 34.954494, 48.041294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999344, 34.670399, 48.172100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154586, -0.298022, -0.941959,
		0.766472, 0.637766, -0.075993,
		0.623397, -0.710238, 0.327015,
		34.186363, 34.457329, 48.270206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225891, 34.958401, 47.515675>,  <33.749985, 34.954494, 48.041294>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225891, 34.958401, 47.515675> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.274540, 34.612415, 47.710423>,  <34.303730, 34.404823, 47.827271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.274540, 34.612415, 47.710423>,  <34.225891, 34.958401, 47.515675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274540, 34.612415, 47.710423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272434, -0.442582, -0.854342,
		0.954456, 0.236548, 0.181818,
		0.121624, -0.864966, 0.486869,
		34.311028, 34.352924, 47.856483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952732, 34.742050, 47.374893>,  <34.225891, 34.958401, 47.515675>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952732, 34.742050, 47.374893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.754173, 34.412315, 47.483746>,  <34.635036, 34.214474, 47.549057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.754173, 34.412315, 47.483746>,  <34.952732, 34.742050, 47.374893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754173, 34.412315, 47.483746> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260207, -0.440362, -0.859287,
		0.828179, -0.355738, 0.433093,
		-0.496399, -0.824337, 0.272133,
		34.605255, 34.165012, 47.565384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497475, 34.257198, 47.494385>,  <34.952732, 34.742050, 47.374893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497475, 34.257198, 47.494385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.172932, 34.034748, 47.422363>,  <34.978207, 33.901279, 47.379150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.172932, 34.034748, 47.422363>,  <35.497475, 34.257198, 47.494385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172932, 34.034748, 47.422363> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437507, -0.373460, -0.817995,
		0.387663, -0.742464, 0.546319,
		-0.811360, -0.556124, -0.180056,
		34.929523, 33.867912, 47.368347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800911, 33.584957, 47.307766>,  <35.497475, 34.257198, 47.494385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800911, 33.584957, 47.307766> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.430977, 33.593704, 47.155869>,  <35.209015, 33.598953, 47.064732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.430977, 33.593704, 47.155869>,  <35.800911, 33.584957, 47.307766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430977, 33.593704, 47.155869> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365478, -0.225529, -0.903085,
		-0.105396, -0.973991, 0.200583,
		-0.924834, 0.021873, -0.379743,
		35.153526, 33.600266, 47.041946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840759, 32.975689, 46.917370>,  <35.800911, 33.584957, 47.307766>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840759, 32.975689, 46.917370> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.553162, 33.205681, 46.761192>,  <35.380604, 33.343674, 46.667488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.553162, 33.205681, 46.761192>,  <35.840759, 32.975689, 46.917370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553162, 33.205681, 46.761192> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290538, -0.261679, -0.920387,
		-0.631371, -0.775194, 0.021094,
		-0.718998, 0.574977, -0.390440,
		35.337463, 33.378174, 46.644062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590721, 32.589603, 46.442070>,  <35.840759, 32.975689, 46.917370>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590721, 32.589603, 46.442070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.460186, 32.942616, 46.306633>,  <35.381866, 33.154423, 46.225372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.460186, 32.942616, 46.306633>,  <35.590721, 32.589603, 46.442070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460186, 32.942616, 46.306633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236156, -0.270721, -0.933242,
		-0.915280, -0.384508, -0.120070,
		-0.326333, 0.882533, -0.338589,
		35.362286, 33.207375, 46.205055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115959, 32.488262, 45.910450>,  <35.590721, 32.589603, 46.442070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115959, 32.488262, 45.910450> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.257507, 32.861282, 45.881824>,  <35.342438, 33.085094, 45.864651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.257507, 32.861282, 45.881824>,  <35.115959, 32.488262, 45.910450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257507, 32.861282, 45.881824> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279524, -0.178465, -0.943407,
		-0.892547, 0.313844, -0.323824,
		0.353874, 0.932551, -0.071561,
		35.363670, 33.141048, 45.860355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807850, 32.839863, 45.243237>,  <35.115959, 32.488262, 45.910450>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807850, 32.839863, 45.243237> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.131645, 33.058380, 45.329308>,  <35.325920, 33.189491, 45.380951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.131645, 33.058380, 45.329308>,  <34.807850, 32.839863, 45.243237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131645, 33.058380, 45.329308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356550, -0.166207, -0.919373,
		-0.466480, 0.820941, -0.329322,
		0.809487, 0.546289, 0.215174,
		35.374493, 33.222267, 45.393860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285149, 33.327511, 44.957767>,  <34.807850, 32.839863, 45.243237>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285149, 33.327511, 44.957767> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.999447, 33.409649, 44.690132>,  <33.828026, 33.458931, 44.529552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.999447, 33.409649, 44.690132>,  <34.285149, 33.327511, 44.957767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999447, 33.409649, 44.690132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631320, 0.223654, 0.742573,
		0.302129, 0.952792, -0.030105,
		-0.714250, 0.205347, -0.669088,
		33.785172, 33.471252, 44.489407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934509, 33.961254, 45.168755>,  <34.285149, 33.327511, 44.957767>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934509, 33.961254, 45.168755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.659260, 33.770115, 44.950340>,  <33.494110, 33.655434, 44.819290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.659260, 33.770115, 44.950340>,  <33.934509, 33.961254, 45.168755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659260, 33.770115, 44.950340> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663202, 0.108899, 0.740476,
		-0.294370, 0.871668, -0.391843,
		-0.688120, -0.477844, -0.546036,
		33.452824, 33.626762, 44.786530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276573, 34.337139, 45.295597>,  <33.934509, 33.961254, 45.168755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276573, 34.337139, 45.295597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.182301, 33.973652, 45.157795>,  <33.125736, 33.755558, 45.075115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.182301, 33.973652, 45.157795>,  <33.276573, 34.337139, 45.295597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182301, 33.973652, 45.157795> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672398, -0.103465, 0.732923,
		-0.701665, 0.404380, -0.586636,
		-0.235683, -0.908720, -0.344503,
		33.111595, 33.701035, 45.054443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486244, 34.295330, 45.190891>,  <33.276573, 34.337139, 45.295597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486244, 34.295330, 45.190891> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.587826, 33.909050, 45.212521>,  <32.648773, 33.677280, 45.225498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.587826, 33.909050, 45.212521>,  <32.486244, 34.295330, 45.190891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587826, 33.909050, 45.212521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683302, -0.139562, 0.716673,
		-0.684549, -0.218945, -0.695310,
		0.253951, -0.965705, 0.054069,
		32.664013, 33.619339, 45.228741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902256, 33.954727, 45.217075>,  <32.486244, 34.295330, 45.190891>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902256, 33.954727, 45.217075> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.156303, 33.680965, 45.360298>,  <32.308731, 33.516708, 45.446232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.156303, 33.680965, 45.360298>,  <31.902256, 33.954727, 45.217075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156303, 33.680965, 45.360298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604129, -0.151302, 0.782391,
		-0.481300, -0.713227, -0.509567,
		0.635120, -0.684409, 0.358059,
		32.346840, 33.475643, 45.467716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480429, 33.361507, 45.293045>,  <31.902256, 33.954727, 45.217075>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480429, 33.361507, 45.293045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.796604, 33.339249, 45.537048>,  <31.986309, 33.325893, 45.683449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.796604, 33.339249, 45.537048>,  <31.480429, 33.361507, 45.293045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796604, 33.339249, 45.537048> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612539, -0.068728, 0.787447,
		-0.001894, -0.996082, -0.088411,
		0.790438, -0.055647, 0.610009,
		32.033737, 33.322552, 45.720051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368629, 32.789936, 45.778000>,  <31.480429, 33.361507, 45.293045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368629, 32.789936, 45.778000> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.631905, 33.049847, 45.930096>,  <31.789869, 33.205791, 46.021351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.631905, 33.049847, 45.930096>,  <31.368629, 32.789936, 45.778000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631905, 33.049847, 45.930096> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427595, -0.093046, 0.899169,
		0.619637, -0.754410, 0.216599,
		0.658189, 0.649775, 0.380237,
		31.829361, 33.244778, 46.044167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902590, 32.477409, 46.220600>,  <31.368629, 32.789936, 45.778000>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902590, 32.477409, 46.220600> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.826412, 32.846561, 46.354477>,  <31.780704, 33.068054, 46.434803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.826412, 32.846561, 46.354477>,  <31.902590, 32.477409, 46.220600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826412, 32.846561, 46.354477> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240044, -0.374358, 0.895676,
		0.951898, 0.090237, 0.292827,
		-0.190446, 0.922883, 0.334690,
		31.769278, 33.123425, 46.454884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938383, 32.257164, 46.835537>,  <31.902590, 32.477409, 46.220600>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938383, 32.257164, 46.835537> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.841730, 32.644878, 46.853886>,  <31.783739, 32.877506, 46.864895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.841730, 32.644878, 46.853886>,  <31.938383, 32.257164, 46.835537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841730, 32.644878, 46.853886> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283010, -0.115611, 0.952124,
		0.928180, 0.217082, 0.302252,
		-0.241633, 0.969283, 0.045871,
		31.769239, 32.935665, 46.867645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267498, 32.559475, 47.412685>,  <31.938383, 32.257164, 46.835537>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267498, 32.559475, 47.412685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.966480, 32.811630, 47.336487>,  <31.785870, 32.962925, 47.290768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.966480, 32.811630, 47.336487>,  <32.267498, 32.559475, 47.412685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966480, 32.811630, 47.336487> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263775, -0.023484, 0.964298,
		0.603409, 0.775924, 0.183954,
		-0.752542, 0.630389, -0.190499,
		31.740717, 33.000748, 47.279339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340282, 32.864517, 47.933548>,  <32.267498, 32.559475, 47.412685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340282, 32.864517, 47.933548> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.970894, 32.957962, 47.811810>,  <31.749260, 33.014030, 47.738766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.970894, 32.957962, 47.811810>,  <32.340282, 32.864517, 47.933548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970894, 32.957962, 47.811810> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322986, -0.045213, 0.945323,
		0.207078, 0.971278, 0.117206,
		-0.923471, 0.233611, -0.304347,
		31.693853, 33.028046, 47.720505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086201, 33.214436, 48.518581>,  <32.340282, 32.864517, 47.933548>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086201, 33.214436, 48.518581> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.765820, 33.132175, 48.293663>,  <31.573591, 33.082821, 48.158710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.765820, 33.132175, 48.293663>,  <32.086201, 33.214436, 48.518581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765820, 33.132175, 48.293663> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555897, -0.093384, 0.825989,
		-0.222373, 0.974160, -0.039523,
		-0.800955, -0.205649, -0.562299,
		31.525534, 33.070480, 48.124973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585241, 33.650688, 48.778049>,  <32.086201, 33.214436, 48.518581>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585241, 33.650688, 48.778049> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.398039, 33.352242, 48.588615>,  <31.285717, 33.173172, 48.474957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.398039, 33.352242, 48.588615>,  <31.585241, 33.650688, 48.778049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398039, 33.352242, 48.588615> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561501, -0.162760, 0.811311,
		-0.682412, 0.645617, -0.342772,
		-0.468007, -0.746115, -0.473584,
		31.257637, 33.128407, 48.446541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958242, 33.694279, 48.969498>,  <31.585241, 33.650688, 48.778049>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958242, 33.694279, 48.969498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.000351, 33.318134, 48.840107>,  <31.025616, 33.092445, 48.762474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.000351, 33.318134, 48.840107>,  <30.958242, 33.694279, 48.969498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.000351, 33.318134, 48.840107> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490082, -0.332096, 0.805935,
		-0.865296, 0.073687, -0.495815,
		0.105271, -0.940363, -0.323474,
		31.031933, 33.036026, 48.743065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366152, 34.354237, 48.651348>,  <30.958242, 33.694279, 48.969498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366152, 34.354237, 48.651348> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.232519, 34.701138, 48.799004>,  <31.152340, 34.909279, 48.887596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.232519, 34.701138, 48.799004>,  <31.366152, 34.354237, 48.651348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232519, 34.701138, 48.799004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133162, 0.431141, -0.892404,
		-0.933091, -0.248979, -0.259521,
		-0.334080, 0.867252, 0.369139,
		31.132296, 34.961315, 48.909744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788134, 34.592297, 48.301201>,  <31.366152, 34.354237, 48.651348>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788134, 34.592297, 48.301201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.993404, 34.903099, 48.447029>,  <31.116568, 35.089581, 48.534527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.993404, 34.903099, 48.447029>,  <30.788134, 34.592297, 48.301201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993404, 34.903099, 48.447029> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081477, 0.466947, -0.880524,
		-0.854407, 0.422161, 0.302935,
		0.513177, 0.777008, 0.364566,
		31.147358, 35.136200, 48.556400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466717, 35.256805, 48.060925>,  <30.788134, 34.592297, 48.301201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466717, 35.256805, 48.060925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.840324, 35.367310, 48.151512>,  <31.064489, 35.433613, 48.205864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.840324, 35.367310, 48.151512>,  <30.466717, 35.256805, 48.060925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840324, 35.367310, 48.151512> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026384, 0.578895, -0.814975,
		-0.356248, 0.767177, 0.533410,
		0.934019, 0.276260, 0.226472,
		31.120529, 35.450188, 48.219452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460117, 35.966259, 48.007591>,  <30.466717, 35.256805, 48.060925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460117, 35.966259, 48.007591> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.851288, 35.884613, 47.989727>,  <31.085991, 35.835625, 47.979008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.851288, 35.884613, 47.989727>,  <30.460117, 35.966259, 48.007591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851288, 35.884613, 47.989727> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073300, 0.535285, -0.841485,
		0.195666, 0.819637, 0.538432,
		0.977927, -0.204117, -0.044658,
		31.144667, 35.823380, 47.976330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748552, 36.545937, 47.847897>,  <30.460117, 35.966259, 48.007591>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.748552, 36.545937, 47.847897> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.033978, 36.286163, 47.742779>,  <31.205233, 36.130299, 47.679707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.033978, 36.286163, 47.742779>,  <30.748552, 36.545937, 47.847897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033978, 36.286163, 47.742779> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084629, 0.452258, -0.887863,
		0.695463, 0.611305, 0.377675,
		0.713561, -0.649438, -0.262794,
		31.248047, 36.091331, 47.663940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268005, 36.938793, 47.511589>,  <30.748552, 36.545937, 47.847897>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268005, 36.938793, 47.511589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.333311, 36.568417, 47.375374>,  <31.372496, 36.346191, 47.293644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.333311, 36.568417, 47.375374>,  <31.268005, 36.938793, 47.511589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333311, 36.568417, 47.375374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067566, 0.354858, -0.932476,
		0.984266, 0.129232, 0.120498,
		0.163265, -0.925946, -0.340543,
		31.382290, 36.290634, 47.273212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774815, 37.051441, 47.038353>,  <31.268005, 36.938793, 47.511589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774815, 37.051441, 47.038353> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.601219, 36.699009, 46.963150>,  <31.497063, 36.487549, 46.918030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.601219, 36.699009, 46.963150>,  <31.774815, 37.051441, 47.038353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601219, 36.699009, 46.963150> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034111, 0.192461, -0.980711,
		0.900273, -0.432030, -0.053471,
		-0.433988, -0.881084, -0.188005,
		31.471024, 36.434685, 46.906750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478374, 37.363457, 47.003201>,  <31.774815, 37.051441, 47.038353>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478374, 37.363457, 47.003201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.414291, 37.756630, 47.039356>,  <32.375843, 37.992535, 47.061050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.414291, 37.756630, 47.039356>,  <32.478374, 37.363457, 47.003201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414291, 37.756630, 47.039356> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201973, -0.122281, 0.971728,
		0.966199, 0.137419, 0.218117,
		-0.160206, 0.982936, 0.090393,
		32.366230, 38.051510, 47.066475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733429, 37.485161, 47.679440>,  <32.478374, 37.363457, 47.003201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733429, 37.485161, 47.679440> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.524052, 37.816715, 47.600498>,  <32.398426, 38.015648, 47.553135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.524052, 37.816715, 47.600498>,  <32.733429, 37.485161, 47.679440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524052, 37.816715, 47.600498> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303264, 0.035211, 0.952256,
		0.796264, 0.558303, 0.232941,
		-0.523445, 0.828890, -0.197350,
		32.367020, 38.065384, 47.541294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885460, 38.023537, 48.167381>,  <32.733429, 37.485161, 47.679440>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885460, 38.023537, 48.167381> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.529041, 38.146259, 48.033573>,  <32.315189, 38.219894, 47.953289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.529041, 38.146259, 48.033573>,  <32.885460, 38.023537, 48.167381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529041, 38.146259, 48.033573> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337988, 0.043475, 0.940146,
		0.302989, 0.950777, 0.064960,
		-0.891045, 0.306809, -0.334524,
		32.261726, 38.238300, 47.933216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698143, 38.596329, 48.627831>,  <32.885460, 38.023537, 48.167381>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698143, 38.596329, 48.627831> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.358837, 38.475639, 48.453743>,  <32.155254, 38.403225, 48.349289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.358837, 38.475639, 48.453743>,  <32.698143, 38.596329, 48.627831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358837, 38.475639, 48.453743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499016, 0.180256, 0.847638,
		-0.177300, 0.936201, -0.303468,
		-0.848262, -0.301722, -0.435220,
		32.104359, 38.385124, 48.323177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098259, 39.077450, 48.887619>,  <32.698143, 38.596329, 48.627831>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098259, 39.077450, 48.887619> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.948021, 38.730621, 48.756702>,  <31.857878, 38.522526, 48.678154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.948021, 38.730621, 48.756702>,  <32.098259, 39.077450, 48.887619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948021, 38.730621, 48.756702> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418754, -0.156270, 0.894553,
		-0.826786, 0.473042, -0.304395,
		-0.375593, -0.867070, -0.327290,
		31.835342, 38.470501, 48.658516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362215, 39.113846, 48.988239>,  <32.098259, 39.077450, 48.887619>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362215, 39.113846, 48.988239> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.473637, 38.729977, 49.003407>,  <31.540489, 38.499657, 49.012508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.473637, 38.729977, 49.003407>,  <31.362215, 39.113846, 48.988239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473637, 38.729977, 49.003407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513609, -0.115484, 0.850217,
		-0.811550, -0.256308, -0.525064,
		0.278554, -0.959672, 0.037921,
		31.557203, 38.442074, 49.014782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737181, 38.836079, 49.234547>,  <31.362215, 39.113846, 48.988239>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737181, 38.836079, 49.234547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.985445, 38.531059, 49.307537>,  <31.134403, 38.348049, 49.351334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.985445, 38.531059, 49.307537>,  <30.737181, 38.836079, 49.234547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.985445, 38.531059, 49.307537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381702, -0.090561, 0.919838,
		-0.684897, -0.640559, -0.347275,
		0.620660, -0.762550, 0.182478,
		31.171642, 38.302296, 49.362282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341932, 38.157402, 49.513077>,  <30.737181, 38.836079, 49.234547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341932, 38.157402, 49.513077> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.731541, 38.129139, 49.599140>,  <30.965305, 38.112183, 49.650776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.731541, 38.129139, 49.599140>,  <30.341932, 38.157402, 49.513077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731541, 38.129139, 49.599140> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225577, -0.219015, 0.949288,
		-0.019948, -0.973160, -0.229262,
		0.974021, -0.070653, 0.215154,
		31.023746, 38.107944, 49.663685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302597, 37.598633, 49.898323>,  <30.341932, 38.157402, 49.513077>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302597, 37.598633, 49.898323> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.652079, 37.774315, 49.981979>,  <30.861767, 37.879723, 50.032173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.652079, 37.774315, 49.981979>,  <30.302597, 37.598633, 49.898323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.652079, 37.774315, 49.981979> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074903, -0.303343, 0.949933,
		0.480658, -0.845625, -0.232134,
		0.873703, 0.439206, 0.209144,
		30.914190, 37.906078, 50.044724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.505447, 37.606453, 35.100483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844009, 37.660587, 35.306507>,  <38.047146, 37.693069, 35.430122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844009, 37.660587, 35.306507>,  <37.505447, 37.606453, 35.100483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844009, 37.660587, 35.306507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532097, 0.175271, 0.828343,
		0.021832, -0.975174, 0.220363,
		0.846402, 0.135339, 0.515061,
		38.097931, 37.701187, 35.461025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646011, 36.992458, 35.615864>,  <37.505447, 37.606453, 35.100483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646011, 36.992458, 35.615864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788345, 37.346687, 35.735291>,  <37.873745, 37.559223, 35.806946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788345, 37.346687, 35.735291>,  <37.646011, 36.992458, 35.615864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788345, 37.346687, 35.735291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630821, -0.008116, 0.775886,
		0.689524, -0.464435, 0.555748,
		0.355838, 0.885570, 0.298571,
		37.895096, 37.612358, 35.824863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589470, 36.913105, 36.325279>,  <37.646011, 36.992458, 35.615864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589470, 36.913105, 36.325279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615883, 37.308952, 36.274208>,  <37.631729, 37.546459, 36.243565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615883, 37.308952, 36.274208>,  <37.589470, 36.913105, 36.325279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615883, 37.308952, 36.274208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546878, 0.142923, 0.824923,
		0.834604, 0.015353, 0.550636,
		0.066033, 0.989615, -0.127680,
		37.635693, 37.605835, 36.235905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860279, 37.253178, 37.054840>,  <37.589470, 36.913105, 36.325279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860279, 37.253178, 37.054840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661400, 37.524681, 36.838661>,  <37.542072, 37.687584, 36.708954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661400, 37.524681, 36.838661>,  <37.860279, 37.253178, 37.054840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661400, 37.524681, 36.838661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583297, 0.199636, 0.787344,
		0.642309, 0.706705, 0.296660,
		-0.497196, 0.678759, -0.540447,
		37.512241, 37.728310, 36.676529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870003, 37.857883, 37.433754>,  <37.860279, 37.253178, 37.054840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870003, 37.857883, 37.433754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.567513, 37.899563, 37.175369>,  <37.386017, 37.924572, 37.020340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.567513, 37.899563, 37.175369>,  <37.870003, 37.857883, 37.433754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567513, 37.899563, 37.175369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550757, 0.431628, 0.714397,
		0.353255, 0.896013, -0.269020,
		-0.756226, 0.104200, -0.645960,
		37.340645, 37.930824, 36.981583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608929, 38.524605, 37.552162>,  <37.870003, 37.857883, 37.433754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608929, 38.524605, 37.552162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306580, 38.334599, 37.371929>,  <37.125172, 38.220592, 37.263790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306580, 38.334599, 37.371929>,  <37.608929, 38.524605, 37.552162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306580, 38.334599, 37.371929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607742, 0.253058, 0.752736,
		-0.243541, 0.842804, -0.479968,
		-0.755869, -0.475018, -0.450578,
		37.079819, 38.192093, 37.236755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962490, 38.994904, 37.676128>,  <37.608929, 38.524605, 37.552162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962490, 38.994904, 37.676128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811722, 38.643982, 37.557285>,  <36.721260, 38.433430, 37.485981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811722, 38.643982, 37.557285>,  <36.962490, 38.994904, 37.676128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811722, 38.643982, 37.557285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819945, 0.166828, 0.547594,
		-0.430841, 0.450006, -0.782222,
		-0.376917, -0.877305, -0.297103,
		36.698647, 38.380791, 37.468155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236488, 39.142632, 37.457321>,  <36.962490, 38.994904, 37.676128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236488, 39.142632, 37.457321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265789, 38.755939, 37.555363>,  <36.283367, 38.523926, 37.614185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265789, 38.755939, 37.555363>,  <36.236488, 39.142632, 37.457321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265789, 38.755939, 37.555363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844444, 0.070635, 0.530966,
		-0.530612, -0.245865, -0.811173,
		0.073248, -0.966727, 0.245099,
		36.287762, 38.465919, 37.628891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524982, 38.839931, 37.368320>,  <36.236488, 39.142632, 37.457321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524982, 38.839931, 37.368320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745899, 38.621906, 37.620632>,  <35.878448, 38.491093, 37.772018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745899, 38.621906, 37.620632>,  <35.524982, 38.839931, 37.368320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745899, 38.621906, 37.620632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723337, 0.062839, 0.687629,
		-0.414438, -0.836038, -0.359558,
		0.552290, -0.545061, 0.630780,
		35.911587, 38.458389, 37.809868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041336, 38.445362, 37.585392>,  <35.524982, 38.839931, 37.368320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041336, 38.445362, 37.585392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317272, 38.443684, 37.874973>,  <35.482834, 38.442677, 38.048721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317272, 38.443684, 37.874973>,  <35.041336, 38.445362, 37.585392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317272, 38.443684, 37.874973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722484, 0.059902, 0.688788,
		-0.046253, -0.998195, 0.038294,
		0.689839, -0.004191, 0.723951,
		35.524223, 38.442425, 38.092159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768852, 37.915455, 37.943604>,  <35.041336, 38.445362, 37.585392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768852, 37.915455, 37.943604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023357, 38.114361, 38.179531>,  <35.176060, 38.233704, 38.321087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023357, 38.114361, 38.179531>,  <34.768852, 37.915455, 37.943604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023357, 38.114361, 38.179531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664310, -0.035572, 0.746611,
		0.392247, -0.866868, 0.307706,
		0.636267, 0.497268, 0.589822,
		35.214237, 38.263542, 38.356476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717644, 37.605808, 38.540085>,  <34.768852, 37.915455, 37.943604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717644, 37.605808, 38.540085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878090, 37.938076, 38.694538>,  <34.974358, 38.137436, 38.787212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878090, 37.938076, 38.694538>,  <34.717644, 37.605808, 38.540085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878090, 37.938076, 38.694538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512043, -0.146205, 0.846426,
		0.759552, -0.537232, 0.366692,
		0.401115, 0.830666, 0.386136,
		34.998425, 38.187275, 38.810379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680508, 36.857677, 38.872791>,  <34.717644, 37.605808, 38.540085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680508, 36.857677, 38.872791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320599, 36.873631, 38.698982>,  <34.104652, 36.883202, 38.594696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320599, 36.873631, 38.698982>,  <34.680508, 36.857677, 38.872791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320599, 36.873631, 38.698982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388489, -0.380232, -0.839345,
		-0.198693, -0.924031, 0.326631,
		-0.899776, 0.039879, -0.434525,
		34.050667, 36.885593, 38.568626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613148, 36.275173, 38.449120>,  <34.680508, 36.857677, 38.872791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613148, 36.275173, 38.449120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339359, 36.512821, 38.280113>,  <34.175087, 36.655411, 38.178711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339359, 36.512821, 38.280113>,  <34.613148, 36.275173, 38.449120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339359, 36.512821, 38.280113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149544, -0.452806, -0.878979,
		-0.713534, -0.664823, 0.221087,
		-0.684475, 0.594119, -0.422513,
		34.134018, 36.691055, 38.153358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267078, 35.850899, 37.969189>,  <34.613148, 36.275173, 38.449120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267078, 35.850899, 37.969189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175922, 36.211849, 37.822880>,  <34.121227, 36.428417, 37.735096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175922, 36.211849, 37.822880>,  <34.267078, 35.850899, 37.969189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175922, 36.211849, 37.822880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117993, -0.347292, -0.930304,
		-0.966511, -0.255165, -0.027330,
		-0.227889, 0.902374, -0.365769,
		34.107555, 36.482563, 37.713150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808620, 35.772633, 37.404678>,  <34.267078, 35.850899, 37.969189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808620, 35.772633, 37.404678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949852, 36.138573, 37.326317>,  <34.034592, 36.358139, 37.279301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949852, 36.138573, 37.326317>,  <33.808620, 35.772633, 37.404678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949852, 36.138573, 37.326317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368011, -0.328316, -0.869929,
		-0.860175, 0.235062, -0.452598,
		0.353082, 0.914852, -0.195904,
		34.055775, 36.413029, 37.267548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599224, 35.913857, 36.778748>,  <33.808620, 35.772633, 37.404678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599224, 35.913857, 36.778748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912884, 36.153732, 36.842594>,  <34.101082, 36.297657, 36.880901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912884, 36.153732, 36.842594>,  <33.599224, 35.913857, 36.778748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912884, 36.153732, 36.842594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383632, -0.266273, -0.884265,
		-0.487782, 0.754633, -0.438859,
		0.784152, 0.599689, 0.159618,
		34.148129, 36.333637, 36.890480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741795, 36.404636, 36.198536>,  <33.599224, 35.913857, 36.778748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741795, 36.404636, 36.198536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093960, 36.341312, 36.377338>,  <34.305260, 36.303318, 36.484619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093960, 36.341312, 36.377338>,  <33.741795, 36.404636, 36.198536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093960, 36.341312, 36.377338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393491, -0.282180, -0.874951,
		0.264648, 0.946210, -0.186142,
		0.880413, -0.158309, 0.447003,
		34.358082, 36.293819, 36.511440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286888, 36.597210, 35.715206>,  <33.741795, 36.404636, 36.198536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286888, 36.597210, 35.715206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496998, 36.386497, 35.982517>,  <34.623062, 36.260071, 36.142902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496998, 36.386497, 35.982517>,  <34.286888, 36.597210, 35.715206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496998, 36.386497, 35.982517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536936, -0.404073, -0.740557,
		0.660141, 0.747817, 0.070597,
		0.525275, -0.526778, 0.668275,
		34.654579, 36.228462, 36.182999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917019, 36.638626, 35.515182>,  <34.286888, 36.597210, 35.715206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917019, 36.638626, 35.515182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989422, 36.333706, 35.763741>,  <35.032864, 36.150753, 35.912876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989422, 36.333706, 35.763741>,  <34.917019, 36.638626, 35.515182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989422, 36.333706, 35.763741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598942, -0.415710, -0.684437,
		0.780068, 0.496068, 0.381328,
		0.181005, -0.762300, 0.621398,
		35.043724, 36.105015, 35.950161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676510, 36.501144, 35.545208>,  <34.917019, 36.638626, 35.515182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676510, 36.501144, 35.545208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480564, 36.171604, 35.659267>,  <35.362999, 35.973881, 35.727703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480564, 36.171604, 35.659267>,  <35.676510, 36.501144, 35.545208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480564, 36.171604, 35.659267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514528, -0.537251, -0.668298,
		0.703772, -0.180657, 0.687072,
		-0.489863, -0.823848, 0.285149,
		35.333607, 35.924450, 35.744812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164257, 36.032646, 35.597252>,  <35.676510, 36.501144, 35.545208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164257, 36.032646, 35.597252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858707, 35.774822, 35.584358>,  <35.675377, 35.620129, 35.576622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858707, 35.774822, 35.584358>,  <36.164257, 36.032646, 35.597252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858707, 35.774822, 35.584358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590049, -0.677290, -0.439455,
		0.261424, -0.354706, 0.897686,
		-0.763871, -0.644563, -0.032234,
		35.629547, 35.581451, 35.574688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519440, 35.427670, 35.684444>,  <36.164257, 36.032646, 35.597252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519440, 35.427670, 35.684444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156406, 35.319374, 35.556072>,  <35.938587, 35.254395, 35.479050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156406, 35.319374, 35.556072>,  <36.519440, 35.427670, 35.684444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156406, 35.319374, 35.556072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416735, -0.674132, -0.609817,
		-0.051245, -0.687201, 0.724658,
		-0.907582, -0.270740, -0.320927,
		35.884132, 35.238152, 35.459793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535168, 34.768154, 35.636768>,  <36.519440, 35.427670, 35.684444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535168, 34.768154, 35.636768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230583, 34.833706, 35.385906>,  <36.047832, 34.873039, 35.235390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230583, 34.833706, 35.385906>,  <36.535168, 34.768154, 35.636768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230583, 34.833706, 35.385906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326109, -0.739306, -0.589134,
		-0.560207, -0.653123, 0.509509,
		-0.761460, 0.163882, -0.627154,
		36.002144, 34.882870, 35.197762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662731, 34.060123, 35.238041>,  <36.535168, 34.768154, 35.636768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662731, 34.060123, 35.238041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373108, 33.943348, 35.488007>,  <36.199333, 33.873283, 35.637985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373108, 33.943348, 35.488007>,  <36.662731, 34.060123, 35.238041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373108, 33.943348, 35.488007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618542, 0.675722, -0.401006,
		-0.305197, -0.676885, -0.669837,
		-0.724059, -0.291936, 0.624910,
		36.155891, 33.855766, 35.675480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114910, 33.837845, 34.865494>,  <36.662731, 34.060123, 35.238041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114910, 33.837845, 34.865494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003719, 33.980797, 35.222149>,  <35.937004, 34.066566, 35.436142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003719, 33.980797, 35.222149>,  <36.114910, 33.837845, 34.865494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003719, 33.980797, 35.222149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585234, 0.673052, -0.452220,
		-0.761729, -0.647520, 0.022060,
		-0.277974, 0.357379, 0.891634,
		35.920326, 34.088009, 35.489639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302330, 33.234089, 34.381824>,  <36.114910, 33.837845, 34.865494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302330, 33.234089, 34.381824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995007, 33.249393, 34.637398>,  <35.810612, 33.258575, 34.790741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995007, 33.249393, 34.637398>,  <36.302330, 33.234089, 34.381824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995007, 33.249393, 34.637398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225991, 0.950140, 0.214853,
		-0.598858, 0.309467, -0.738647,
		-0.768308, 0.038261, 0.638935,
		35.764515, 33.260872, 34.829079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158325, 32.505589, 34.198914>,  <36.302330, 33.234089, 34.381824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158325, 32.505589, 34.198914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378876, 32.185463, 34.293129>,  <36.511208, 31.993387, 34.349659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378876, 32.185463, 34.293129>,  <36.158325, 32.505589, 34.198914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378876, 32.185463, 34.293129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558882, -0.144737, 0.816518,
		-0.619382, -0.581847, -0.527087,
		0.551378, -0.800316, 0.235536,
		36.544289, 31.945368, 34.363789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590992, 32.056862, 34.427788>,  <36.158325, 32.505589, 34.198914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590992, 32.056862, 34.427788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958992, 31.981215, 34.565098>,  <36.179790, 31.935825, 34.647484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958992, 31.981215, 34.565098>,  <35.590992, 32.056862, 34.427788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958992, 31.981215, 34.565098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349262, 0.001775, 0.937023,
		-0.177818, -0.981953, -0.064419,
		0.919998, -0.189119, 0.343275,
		36.234993, 31.924479, 34.668079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571579, 31.430120, 34.769890>,  <35.590992, 32.056862, 34.427788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571579, 31.430120, 34.769890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872585, 31.654446, 34.907997>,  <36.053188, 31.789042, 34.990860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872585, 31.654446, 34.907997>,  <35.571579, 31.430120, 34.769890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872585, 31.654446, 34.907997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403275, -0.022078, 0.914813,
		0.520664, -0.827646, 0.209549,
		0.752515, 0.560816, 0.345264,
		36.098339, 31.822691, 35.011578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761463, 31.106392, 35.427322>,  <35.571579, 31.430120, 34.769890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761463, 31.106392, 35.427322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882980, 31.486980, 35.446987>,  <35.955891, 31.715334, 35.458786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882980, 31.486980, 35.446987>,  <35.761463, 31.106392, 35.427322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882980, 31.486980, 35.446987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367288, 0.069350, 0.927518,
		0.879097, -0.299826, 0.370531,
		0.303790, 0.951470, 0.049157,
		35.974117, 31.772421, 35.461735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067986, 31.221937, 36.029423>,  <35.761463, 31.106392, 35.427322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067986, 31.221937, 36.029423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029873, 31.609472, 35.937965>,  <36.007008, 31.841993, 35.883091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029873, 31.609472, 35.937965>,  <36.067986, 31.221937, 36.029423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029873, 31.609472, 35.937965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087774, 0.220620, 0.971402,
		0.991573, 0.112622, 0.064018,
		-0.095278, 0.968836, -0.228646,
		36.001289, 31.900124, 35.869373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487312, 31.555243, 36.504669>,  <36.067986, 31.221937, 36.029423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487312, 31.555243, 36.504669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229290, 31.836180, 36.384258>,  <36.074478, 32.004742, 36.312012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229290, 31.836180, 36.384258>,  <36.487312, 31.555243, 36.504669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229290, 31.836180, 36.384258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003206, 0.391452, 0.920193,
		0.764129, 0.594540, -0.250257,
		-0.645055, 0.702344, -0.301026,
		36.035774, 32.046883, 36.293949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670937, 32.154106, 36.802391>,  <36.487312, 31.555243, 36.504669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670937, 32.154106, 36.802391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299644, 32.265110, 36.703289>,  <36.076870, 32.331711, 36.643826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299644, 32.265110, 36.703289>,  <36.670937, 32.154106, 36.802391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299644, 32.265110, 36.703289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118036, 0.411883, 0.903560,
		0.352793, 0.867952, -0.349564,
		-0.928226, 0.277509, -0.247759,
		36.021175, 32.348362, 36.628960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699554, 32.956627, 37.000572>,  <36.670937, 32.154106, 36.802391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699554, 32.956627, 37.000572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320145, 32.835423, 36.963707>,  <36.092499, 32.762699, 36.941589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320145, 32.835423, 36.963707>,  <36.699554, 32.956627, 37.000572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320145, 32.835423, 36.963707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273912, 0.638761, 0.718996,
		-0.158992, 0.707228, -0.688876,
		-0.948522, -0.303006, -0.092160,
		36.035587, 32.744522, 36.936058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300495, 33.613312, 37.059406>,  <36.699554, 32.956627, 37.000572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300495, 33.613312, 37.059406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.091610, 33.283520, 37.146610>,  <35.966278, 33.085644, 37.198933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.091610, 33.283520, 37.146610>,  <36.300495, 33.613312, 37.059406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091610, 33.283520, 37.146610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335658, 0.433710, 0.836200,
		-0.783981, 0.363499, -0.503232,
		-0.522214, -0.824478, 0.218009,
		35.934944, 33.036175, 37.212013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726799, 33.816380, 37.256794>,  <36.300495, 33.613312, 37.059406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726799, 33.816380, 37.256794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725674, 33.453896, 37.425926>,  <35.724998, 33.236404, 37.527405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725674, 33.453896, 37.425926>,  <35.726799, 33.816380, 37.256794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725674, 33.453896, 37.425926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152335, 0.418283, 0.895452,
		-0.988325, -0.061893, -0.139224,
		-0.002812, -0.906206, 0.422828,
		35.724831, 33.182034, 37.552776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177448, 33.819206, 37.703339>,  <35.726799, 33.816380, 37.256794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177448, 33.819206, 37.703339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384975, 33.516262, 37.861946>,  <35.509491, 33.334496, 37.957111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384975, 33.516262, 37.861946>,  <35.177448, 33.819206, 37.703339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384975, 33.516262, 37.861946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226873, 0.325212, 0.918023,
		-0.824228, -0.566249, -0.003099,
		0.518822, -0.757363, 0.396516,
		35.540623, 33.289055, 37.980900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773033, 33.557873, 38.298828>,  <35.177448, 33.819206, 37.703339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773033, 33.557873, 38.298828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131878, 33.387424, 38.345482>,  <35.347187, 33.285156, 38.373474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131878, 33.387424, 38.345482>,  <34.773033, 33.557873, 38.298828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131878, 33.387424, 38.345482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076327, 0.110527, 0.990938,
		-0.435154, -0.897888, 0.066631,
		0.897115, -0.426124, 0.116630,
		35.401012, 33.259586, 38.380470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708988, 33.046696, 38.704071>,  <34.773033, 33.557873, 38.298828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708988, 33.046696, 38.704071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094776, 33.145279, 38.742126>,  <35.326248, 33.204430, 38.764961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094776, 33.145279, 38.742126>,  <34.708988, 33.046696, 38.704071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094776, 33.145279, 38.742126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121386, 0.093564, 0.988186,
		0.234649, -0.964625, 0.120157,
		0.964472, 0.246462, 0.095137,
		35.384117, 33.219215, 38.770668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887775, 32.654350, 39.264812>,  <34.708988, 33.046696, 38.704071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887775, 32.654350, 39.264812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152477, 32.948429, 39.206062>,  <35.311298, 33.124874, 39.170811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152477, 32.948429, 39.206062>,  <34.887775, 32.654350, 39.264812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152477, 32.948429, 39.206062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038485, 0.162342, 0.985984,
		0.748733, -0.658131, 0.079137,
		0.661754, 0.735193, -0.146878,
		35.351002, 33.168987, 39.161999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446877, 32.556381, 39.731564>,  <34.887775, 32.654350, 39.264812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446877, 32.556381, 39.731564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436214, 32.947361, 39.647774>,  <35.429817, 33.181950, 39.597500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436214, 32.947361, 39.647774>,  <35.446877, 32.556381, 39.731564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436214, 32.947361, 39.647774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114595, 0.205182, 0.971992,
		0.993055, 0.049914, 0.106541,
		-0.026656, 0.977450, -0.209477,
		35.428219, 33.240597, 39.584930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736050, 32.791481, 40.268848>,  <35.446877, 32.556381, 39.731564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736050, 32.791481, 40.268848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572636, 33.131817, 40.136681>,  <35.474586, 33.336018, 40.057381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572636, 33.131817, 40.136681>,  <35.736050, 32.791481, 40.268848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572636, 33.131817, 40.136681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184430, 0.277590, 0.942831,
		0.893917, 0.446114, 0.043516,
		-0.408531, 0.850838, -0.330419,
		35.450077, 33.387070, 40.037556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985142, 33.168030, 40.766968>,  <35.736050, 32.791481, 40.268848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985142, 33.168030, 40.766968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683578, 33.372162, 40.601467>,  <35.502640, 33.494640, 40.502167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683578, 33.372162, 40.601467>,  <35.985142, 33.168030, 40.766968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683578, 33.372162, 40.601467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361421, 0.203753, 0.909868,
		0.548638, 0.835492, 0.030835,
		-0.753904, 0.510332, -0.413750,
		35.457409, 33.525261, 40.477341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061195, 33.778355, 40.981895>,  <35.985142, 33.168030, 40.766968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061195, 33.778355, 40.981895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673874, 33.730186, 40.894360>,  <35.441483, 33.701286, 40.841839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673874, 33.730186, 40.894360>,  <36.061195, 33.778355, 40.981895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673874, 33.730186, 40.894360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242067, 0.236289, 0.941048,
		-0.061608, 0.964193, -0.257948,
		-0.968302, -0.120417, -0.218842,
		35.383385, 33.694061, 40.828709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747437, 34.126137, 41.467419>,  <36.061195, 33.778355, 40.981895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747437, 34.126137, 41.467419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450077, 33.897430, 41.328598>,  <35.271660, 33.760208, 41.245304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450077, 33.897430, 41.328598>,  <35.747437, 34.126137, 41.467419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450077, 33.897430, 41.328598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455430, 0.052707, 0.888710,
		-0.489840, 0.818723, -0.299581,
		-0.743398, -0.571764, -0.347053,
		35.227058, 33.725903, 41.224483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090439, 34.458076, 41.632763>,  <35.747437, 34.126137, 41.467419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090439, 34.458076, 41.632763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015133, 34.068611, 41.581322>,  <34.969952, 33.834930, 41.550457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015133, 34.068611, 41.581322>,  <35.090439, 34.458076, 41.632763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015133, 34.068611, 41.581322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632686, 0.020080, 0.774148,
		-0.751176, 0.227107, -0.619803,
		-0.188260, -0.973663, -0.128604,
		34.958656, 33.776512, 41.542740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428890, 34.485352, 41.746330>,  <35.090439, 34.458076, 41.632763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428890, 34.485352, 41.746330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531048, 34.100338, 41.782791>,  <34.592342, 33.869331, 41.804668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531048, 34.100338, 41.782791>,  <34.428890, 34.485352, 41.746330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531048, 34.100338, 41.782791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461989, -0.038672, 0.886042,
		-0.849318, -0.268400, -0.454555,
		0.255392, -0.962531, 0.091153,
		34.607666, 33.811577, 41.810139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864269, 33.980907, 41.936100>,  <34.428890, 34.485352, 41.746330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864269, 33.980907, 41.936100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181255, 33.775131, 42.067154>,  <34.371449, 33.651665, 42.145786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181255, 33.775131, 42.067154>,  <33.864269, 33.980907, 41.936100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181255, 33.775131, 42.067154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448673, -0.127830, 0.884507,
		-0.413144, -0.847945, -0.332117,
		0.792468, -0.514440, 0.327638,
		34.418995, 33.620800, 42.165443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634342, 33.304253, 42.121986>,  <33.864269, 33.980907, 41.936100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634342, 33.304253, 42.121986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957397, 33.428017, 42.322781>,  <34.151230, 33.502274, 42.443256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957397, 33.428017, 42.322781>,  <33.634342, 33.304253, 42.121986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957397, 33.428017, 42.322781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489417, -0.123127, 0.863314,
		0.328924, -0.942924, 0.051988,
		0.807638, 0.309409, 0.501983,
		34.199688, 33.520840, 42.473377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566212, 32.814240, 42.654434>,  <33.634342, 33.304253, 42.121986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566212, 32.814240, 42.654434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849251, 33.076584, 42.759621>,  <34.019073, 33.233990, 42.822735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849251, 33.076584, 42.759621>,  <33.566212, 32.814240, 42.654434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849251, 33.076584, 42.759621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275890, -0.086186, 0.957317,
		0.650534, -0.749943, 0.119961,
		0.707595, 0.655864, 0.262969,
		34.061531, 33.273342, 42.838512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943386, 32.507751, 43.073391>,  <33.566212, 32.814240, 42.654434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943386, 32.507751, 43.073391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998928, 32.894730, 43.158031>,  <34.032253, 33.126915, 43.208817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998928, 32.894730, 43.158031>,  <33.943386, 32.507751, 43.073391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998928, 32.894730, 43.158031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391366, -0.142674, 0.909108,
		0.909699, -0.209046, 0.358813,
		0.138852, 0.967442, 0.211604,
		34.040585, 33.184963, 43.221512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024246, 32.467678, 43.862747>,  <33.943386, 32.507751, 43.073391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024246, 32.467678, 43.862747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007843, 32.854469, 43.762135>,  <33.998001, 33.086544, 43.701767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007843, 32.854469, 43.762135>,  <34.024246, 32.467678, 43.862747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007843, 32.854469, 43.762135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352523, 0.221557, 0.909197,
		0.934904, 0.125954, 0.331798,
		-0.041005, 0.966979, -0.251536,
		33.995541, 33.144562, 43.686672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414650, 32.872097, 44.363747>,  <34.024246, 32.467678, 43.862747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414650, 32.872097, 44.363747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158463, 33.124641, 44.188843>,  <34.004749, 33.276169, 44.083900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158463, 33.124641, 44.188843>,  <34.414650, 32.872097, 44.363747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158463, 33.124641, 44.188843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385120, 0.228557, 0.894116,
		0.664445, 0.741046, 0.096766,
		-0.640465, 0.631358, -0.437256,
		33.966324, 33.314049, 44.057667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076210, 33.211006, 44.622784>,  <34.414650, 32.872097, 44.363747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076210, 33.211006, 44.622784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415882, 33.241287, 44.831841>,  <35.619686, 33.259457, 44.957275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415882, 33.241287, 44.831841>,  <35.076210, 33.211006, 44.622784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415882, 33.241287, 44.831841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510765, 0.133741, -0.849254,
		-0.134193, 0.988120, 0.074902,
		0.849183, 0.075707, 0.522645,
		35.670635, 33.264000, 44.988632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429173, 33.793549, 44.344223>,  <35.076210, 33.211006, 44.622784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429173, 33.793549, 44.344223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716228, 33.591259, 44.535740>,  <35.888462, 33.469887, 44.650650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716228, 33.591259, 44.535740>,  <35.429173, 33.793549, 44.344223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716228, 33.591259, 44.535740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620921, 0.153306, -0.768736,
		0.315363, 0.848967, 0.424030,
		0.717638, -0.505720, 0.478794,
		35.931519, 33.439545, 44.679379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988071, 34.132954, 44.201962>,  <35.429173, 33.793549, 44.344223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988071, 34.132954, 44.201962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128616, 33.770615, 44.296608>,  <36.212944, 33.553211, 44.353394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128616, 33.770615, 44.296608>,  <35.988071, 34.132954, 44.201962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128616, 33.770615, 44.296608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624151, 0.038261, -0.780367,
		0.697840, 0.421873, 0.578829,
		0.351363, -0.905847, 0.236612,
		36.234024, 33.498859, 44.367592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766571, 34.150326, 44.263588>,  <35.988071, 34.132954, 44.201962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766571, 34.150326, 44.263588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669662, 33.767086, 44.202457>,  <36.611519, 33.537144, 44.165779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669662, 33.767086, 44.202457>,  <36.766571, 34.150326, 44.263588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669662, 33.767086, 44.202457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693861, -0.061001, -0.717520,
		0.678130, -0.279877, 0.679565,
		-0.242271, -0.958096, -0.152829,
		36.596981, 33.479656, 44.156609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442539, 33.816265, 44.203899>,  <36.766571, 34.150326, 44.263588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442539, 33.816265, 44.203899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184528, 33.563515, 44.032005>,  <37.029720, 33.411865, 43.928871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184528, 33.563515, 44.032005>,  <37.442539, 33.816265, 44.203899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184528, 33.563515, 44.032005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679584, -0.217181, -0.700712,
		0.349437, -0.744016, 0.569503,
		-0.645027, -0.631880, -0.429730,
		36.991020, 33.373951, 43.903088>
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
