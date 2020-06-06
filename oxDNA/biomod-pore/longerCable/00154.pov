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
	<23.977438, 34.701164, 35.093143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.183640, 35.042408, 35.060986>,  <24.307360, 35.247154, 35.041691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.183640, 35.042408, 35.060986>,  <23.977438, 34.701164, 35.093143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.183640, 35.042408, 35.060986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456254, 0.193860, -0.868476,
		-0.725320, 0.484381, 0.489169,
		0.515503, 0.853108, -0.080390,
		24.338291, 35.298340, 35.036869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.384573, 34.038044, 34.695244>,  <23.977438, 34.701164, 35.093143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.384573, 34.038044, 34.695244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.416771, 33.919830, 34.314468>,  <24.436090, 33.848904, 34.086002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.416771, 33.919830, 34.314468>,  <24.384573, 34.038044, 34.695244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.416771, 33.919830, 34.314468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872756, 0.482219, -0.075909,
		0.481475, -0.824696, 0.296746,
		0.080495, -0.295535, -0.951935,
		24.440920, 33.831169, 34.028889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.969063, 33.615482, 34.634560>,  <24.384573, 34.038044, 34.695244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.969063, 33.615482, 34.634560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.888975, 33.784512, 34.280983>,  <24.840923, 33.885929, 34.068836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.888975, 33.784512, 34.280983>,  <24.969063, 33.615482, 34.634560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.888975, 33.784512, 34.280983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834281, 0.546576, 0.072321,
		0.513701, -0.722973, -0.461976,
		-0.200219, 0.422569, -0.883939,
		24.828909, 33.911282, 34.015800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.632917, 33.640541, 34.240837>,  <24.969063, 33.615482, 34.634560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.632917, 33.640541, 34.240837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396517, 33.927204, 34.092724>,  <25.254677, 34.099201, 34.003857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396517, 33.927204, 34.092724>,  <25.632917, 33.640541, 34.240837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.396517, 33.927204, 34.092724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793419, 0.599293, -0.106466,
		0.145608, -0.356712, -0.922797,
		-0.591003, 0.716662, -0.370284,
		25.219215, 34.142204, 33.981640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.609018, 34.120197, 33.632229>,  <25.632917, 33.640541, 34.240837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.609018, 34.120197, 33.632229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.966419, 34.091335, 33.809517>,  <26.180861, 34.074020, 33.915890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.966419, 34.091335, 33.809517>,  <25.609018, 34.120197, 33.632229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.966419, 34.091335, 33.809517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448382, 0.089288, -0.889371,
		0.024595, 0.993389, 0.112131,
		0.893504, -0.072151, 0.443222,
		26.234470, 34.069691, 33.942482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.165382, 34.354282, 33.057598>,  <25.609018, 34.120197, 33.632229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.165382, 34.354282, 33.057598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.374041, 34.210552, 33.367119>,  <26.499235, 34.124313, 33.552834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.374041, 34.210552, 33.367119>,  <26.165382, 34.354282, 33.057598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.374041, 34.210552, 33.367119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761796, -0.212185, -0.612082,
		0.384124, 0.908771, 0.163045,
		0.521647, -0.359322, 0.773804,
		26.530535, 34.102757, 33.599258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.868013, 34.711552, 33.111053>,  <26.165382, 34.354282, 33.057598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.868013, 34.711552, 33.111053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.922386, 34.368374, 33.309223>,  <26.955009, 34.162468, 33.428123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.922386, 34.368374, 33.309223>,  <26.868013, 34.711552, 33.111053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.922386, 34.368374, 33.309223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880712, -0.124374, -0.457031,
		0.453727, 0.498452, 0.738700,
		0.135933, -0.857949, 0.495425,
		26.963165, 34.110989, 33.457851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.492538, 34.768467, 33.523232>,  <26.868013, 34.711552, 33.111053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.492538, 34.768467, 33.523232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.429802, 34.377224, 33.468517>,  <27.392160, 34.142479, 33.435688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.429802, 34.377224, 33.468517>,  <27.492538, 34.768467, 33.523232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.429802, 34.377224, 33.468517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822849, -0.052820, -0.565801,
		0.546188, -0.201292, 0.813117,
		-0.156840, -0.978106, -0.136783,
		27.382750, 34.083794, 33.427483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.092617, 34.444752, 33.754940>,  <27.492538, 34.768467, 33.523232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.092617, 34.444752, 33.754940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.913738, 34.236626, 33.463932>,  <27.806410, 34.111748, 33.289330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.913738, 34.236626, 33.463932>,  <28.092617, 34.444752, 33.754940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.913738, 34.236626, 33.463932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859962, -0.026482, -0.509670,
		0.245925, -0.853562, 0.459297,
		-0.447198, -0.520318, -0.727518,
		27.779579, 34.080532, 33.245678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.578741, 33.858639, 33.672237>,  <28.092617, 34.444752, 33.754940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.578741, 33.858639, 33.672237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349125, 33.896374, 33.346889>,  <28.211355, 33.919014, 33.151680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349125, 33.896374, 33.346889>,  <28.578741, 33.858639, 33.672237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349125, 33.896374, 33.346889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818630, 0.044341, -0.572607,
		-0.017956, -0.994552, -0.102685,
		-0.574041, 0.094342, -0.813374,
		28.176912, 33.924675, 33.102879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893749, 33.462841, 33.090321>,  <28.578741, 33.858639, 33.672237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893749, 33.462841, 33.090321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.649805, 33.731270, 32.921688>,  <28.503439, 33.892326, 32.820511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.649805, 33.731270, 32.921688>,  <28.893749, 33.462841, 33.090321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.649805, 33.731270, 32.921688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731883, 0.272855, -0.624418,
		-0.304002, -0.689354, -0.657551,
		-0.609861, 0.671075, -0.421578,
		28.466846, 33.932590, 32.795216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891769, 33.378208, 32.373032>,  <28.893749, 33.462841, 33.090321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891769, 33.378208, 32.373032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.827164, 33.761330, 32.468136>,  <28.788401, 33.991203, 32.525196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.827164, 33.761330, 32.468136>,  <28.891769, 33.378208, 32.373032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.827164, 33.761330, 32.468136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667258, 0.283493, -0.688766,
		-0.727104, 0.047401, -0.684889,
		-0.161513, 0.957802, 0.237757,
		28.778709, 34.048672, 32.539463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523355, 33.658978, 32.004978>,  <28.891769, 33.378208, 32.373032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.523355, 33.658978, 32.004978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.494444, 34.011162, 31.817551>,  <29.477097, 34.222473, 31.705093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.494444, 34.011162, 31.817551>,  <29.523355, 33.658978, 32.004978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.494444, 34.011162, 31.817551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854423, 0.187699, 0.484491,
		0.514527, 0.435375, 0.738723,
		-0.072277, 0.880465, -0.468570,
		29.472761, 34.275303, 31.676979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543966, 34.315220, 32.488026>,  <29.523355, 33.658978, 32.004978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543966, 34.315220, 32.488026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.326809, 34.350918, 32.154007>,  <29.196514, 34.372337, 31.953596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.326809, 34.350918, 32.154007>,  <29.543966, 34.315220, 32.488026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.326809, 34.350918, 32.154007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780952, 0.312015, 0.541074,
		0.308837, 0.945876, -0.099692,
		-0.542894, 0.089249, -0.835045,
		29.163940, 34.377693, 31.903494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.991465, 34.904564, 32.336861>,  <29.543966, 34.315220, 32.488026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.991465, 34.904564, 32.336861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.840757, 34.586426, 32.146923>,  <28.750334, 34.395542, 32.032959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.840757, 34.586426, 32.146923>,  <28.991465, 34.904564, 32.336861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.840757, 34.586426, 32.146923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811947, 0.036822, 0.582568,
		-0.445856, 0.605042, -0.659649,
		-0.376768, -0.795342, -0.474845,
		28.727728, 34.347824, 32.004471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.312157, 35.052372, 32.117847>,  <28.991465, 34.904564, 32.336861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.312157, 35.052372, 32.117847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.391901, 34.667187, 32.190468>,  <28.439747, 34.436077, 32.234039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.391901, 34.667187, 32.190468>,  <28.312157, 35.052372, 32.117847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.391901, 34.667187, 32.190468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708129, -0.013506, 0.705954,
		-0.677354, -0.269301, -0.684594,
		0.199360, -0.962961, 0.181551,
		28.451710, 34.378300, 32.244934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.683390, 34.662827, 32.199692>,  <28.312157, 35.052372, 32.117847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.683390, 34.662827, 32.199692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.935751, 34.403584, 32.370300>,  <28.087168, 34.248039, 32.472664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.935751, 34.403584, 32.370300>,  <27.683390, 34.662827, 32.199692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.935751, 34.403584, 32.370300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717117, -0.277278, 0.639422,
		-0.296155, -0.709271, -0.639708,
		0.630900, -0.648114, 0.426513,
		28.125021, 34.209152, 32.498257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.455183, 33.967735, 31.988840>,  <27.683390, 34.662827, 32.199692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.455183, 33.967735, 31.988840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645271, 33.933949, 32.339161>,  <27.759325, 33.913677, 32.549355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645271, 33.933949, 32.339161>,  <27.455183, 33.967735, 31.988840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.645271, 33.933949, 32.339161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877980, -0.110662, 0.465730,
		0.057580, -0.990262, -0.126748,
		0.475221, -0.084465, 0.875803,
		27.787838, 33.908611, 32.601902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.263172, 33.391121, 32.292046>,  <27.455183, 33.967735, 31.988840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.263172, 33.391121, 32.292046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.392790, 33.628716, 32.586575>,  <27.470560, 33.771275, 32.763290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.392790, 33.628716, 32.586575>,  <27.263172, 33.391121, 32.292046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.392790, 33.628716, 32.586575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871386, -0.115645, 0.476774,
		0.368350, -0.796118, 0.480119,
		0.324045, 0.593989, 0.736324,
		27.490004, 33.806911, 32.807472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.200615, 32.962593, 32.822151>,  <27.263172, 33.391121, 32.292046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.200615, 32.962593, 32.822151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.240341, 33.316139, 33.004978>,  <27.264177, 33.528267, 33.114674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.240341, 33.316139, 33.004978>,  <27.200615, 32.962593, 32.822151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.240341, 33.316139, 33.004978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632552, -0.298505, 0.714683,
		0.768124, -0.360100, 0.529446,
		0.099315, 0.883868, 0.457071,
		27.270136, 33.581299, 33.142101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.994650, 32.845539, 33.540493>,  <27.200615, 32.962593, 32.822151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.994650, 32.845539, 33.540493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.160259, 33.209442, 33.528347>,  <27.259624, 33.427784, 33.521057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.160259, 33.209442, 33.528347>,  <26.994650, 32.845539, 33.540493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.160259, 33.209442, 33.528347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604645, 0.299800, 0.737919,
		0.680433, -0.287154, 0.674206,
		0.414023, 0.909760, -0.030367,
		27.284466, 33.482368, 33.519238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036676, 33.068520, 34.207455>,  <26.994650, 32.845539, 33.540493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.036676, 33.068520, 34.207455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032454, 33.390831, 33.970608>,  <27.029921, 33.584217, 33.828499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032454, 33.390831, 33.970608>,  <27.036676, 33.068520, 34.207455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.032454, 33.390831, 33.970608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636589, 0.451239, 0.625410,
		0.771131, 0.383539, 0.508188,
		-0.010555, 0.805780, -0.592121,
		27.029287, 33.632565, 33.792973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.171637, 33.580536, 34.646889>,  <27.036676, 33.068520, 34.207455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.171637, 33.580536, 34.646889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970041, 33.715057, 34.328671>,  <26.849083, 33.795773, 34.137741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970041, 33.715057, 34.328671>,  <27.171637, 33.580536, 34.646889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.970041, 33.715057, 34.328671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655352, 0.451059, 0.605854,
		0.562590, 0.826707, -0.006930,
		-0.503989, 0.336306, -0.795546,
		26.818844, 33.815948, 34.090008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.107338, 34.315239, 34.702045>,  <27.171637, 33.580536, 34.646889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.107338, 34.315239, 34.702045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795523, 34.174606, 34.494698>,  <26.608435, 34.090225, 34.370289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795523, 34.174606, 34.494698>,  <27.107338, 34.315239, 34.702045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.795523, 34.174606, 34.494698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625631, 0.476901, 0.617374,
		0.030153, 0.805576, -0.591725,
		-0.779536, -0.351586, -0.518373,
		26.561663, 34.069130, 34.339184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.498487, 34.428478, 35.216434>,  <27.107338, 34.315239, 34.702045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.498487, 34.428478, 35.216434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.630762, 34.605564, 35.549816>,  <26.710127, 34.711815, 35.749844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.630762, 34.605564, 35.549816>,  <26.498487, 34.428478, 35.216434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.630762, 34.605564, 35.549816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876259, 0.183915, -0.445360,
		-0.350454, 0.877596, -0.327118,
		0.330685, 0.442719, 0.833455,
		26.729967, 34.738380, 35.799854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.715637, 35.080204, 35.065922>,  <26.498487, 34.428478, 35.216434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.715637, 35.080204, 35.065922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.906246, 34.964394, 35.397968>,  <27.020611, 34.894905, 35.597198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.906246, 34.964394, 35.397968>,  <26.715637, 35.080204, 35.065922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.906246, 34.964394, 35.397968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871667, 0.278623, -0.403193,
		-0.114554, 0.915719, 0.385144,
		0.476522, -0.289530, 0.830120,
		27.049202, 34.877533, 35.647003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.100836, 35.615799, 35.313030>,  <26.715637, 35.080204, 35.065922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.100836, 35.615799, 35.313030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.270737, 35.273869, 35.432262>,  <27.372677, 35.068710, 35.503803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.270737, 35.273869, 35.432262>,  <27.100836, 35.615799, 35.313030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270737, 35.273869, 35.432262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853975, 0.269029, -0.445365,
		0.300518, 0.443726, 0.844273,
		0.424754, -0.854828, 0.298083,
		27.398163, 35.017422, 35.521687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.776018, 35.682545, 35.678207>,  <27.100836, 35.615799, 35.313030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.776018, 35.682545, 35.678207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.733606, 35.337719, 35.479977>,  <27.708160, 35.130821, 35.361038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.733606, 35.337719, 35.479977>,  <27.776018, 35.682545, 35.678207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.733606, 35.337719, 35.479977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867563, 0.163336, -0.469740,
		0.485894, -0.479750, 0.730580,
		-0.106028, -0.862068, -0.495577,
		27.701797, 35.079098, 35.331303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.396715, 35.624195, 35.455994>,  <27.776018, 35.682545, 35.678207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.396715, 35.624195, 35.455994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.211454, 35.298935, 35.314983>,  <28.100298, 35.103779, 35.230377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.211454, 35.298935, 35.314983>,  <28.396715, 35.624195, 35.455994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.211454, 35.298935, 35.314983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746159, -0.143115, -0.650203,
		0.478262, -0.564183, 0.673025,
		-0.463154, -0.813151, -0.352524,
		28.072508, 35.054989, 35.209225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.787094, 35.075180, 35.767548>,  <28.396715, 35.624195, 35.455994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.787094, 35.075180, 35.767548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589821, 35.007629, 35.426197>,  <28.471457, 34.967098, 35.221386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589821, 35.007629, 35.426197>,  <28.787094, 35.075180, 35.767548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.589821, 35.007629, 35.426197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863230, -0.216466, -0.456044,
		-0.107714, -0.961574, 0.252534,
		-0.493185, -0.168873, -0.853376,
		28.441866, 34.956966, 35.170185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901896, 34.435905, 35.686047>,  <28.787094, 35.075180, 35.767548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901896, 34.435905, 35.686047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.879244, 34.558220, 35.305882>,  <28.865652, 34.631607, 35.077782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.879244, 34.558220, 35.305882>,  <28.901896, 34.435905, 35.686047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.879244, 34.558220, 35.305882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939531, -0.305715, -0.154340,
		-0.337750, -0.901685, -0.269979,
		-0.056630, 0.305782, -0.950416,
		28.862255, 34.649956, 35.020756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136770, 33.853886, 35.349388>,  <28.901896, 34.435905, 35.686047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136770, 33.853886, 35.349388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.230518, 34.188438, 35.151180>,  <29.286768, 34.389172, 35.032257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.230518, 34.188438, 35.151180>,  <29.136770, 33.853886, 35.349388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.230518, 34.188438, 35.151180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905554, -0.373233, -0.201667,
		-0.353614, -0.401452, -0.844863,
		0.234371, 0.836381, -0.495516,
		29.300829, 34.439354, 35.002525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.532024, 33.567863, 34.810452>,  <29.136770, 33.853886, 35.349388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.532024, 33.567863, 34.810452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.679453, 33.928535, 34.900890>,  <29.767910, 34.144939, 34.955154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.679453, 33.928535, 34.900890>,  <29.532024, 33.567863, 34.810452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.679453, 33.928535, 34.900890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929471, -0.361486, -0.073560,
		0.015404, 0.237264, -0.971323,
		0.368573, 0.901684, 0.226099,
		29.790024, 34.199039, 34.968719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218296, 33.768509, 34.470581>,  <29.532024, 33.567863, 34.810452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218296, 33.768509, 34.470581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185297, 33.951046, 34.824970>,  <30.165499, 34.060570, 35.037601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185297, 33.951046, 34.824970>,  <30.218296, 33.768509, 34.470581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185297, 33.951046, 34.824970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926699, -0.291928, 0.236656,
		0.366637, 0.840551, -0.398813,
		-0.082496, 0.456346, 0.885970,
		30.160547, 34.087952, 35.090759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681757, 34.377163, 34.539948>,  <30.218296, 33.768509, 34.470581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681757, 34.377163, 34.539948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628265, 34.138687, 34.856598>,  <30.596170, 33.995602, 35.046589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628265, 34.138687, 34.856598>,  <30.681757, 34.377163, 34.539948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628265, 34.138687, 34.856598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933629, -0.343678, -0.101110,
		0.332345, 0.725566, 0.602578,
		-0.133731, -0.596188, 0.791629,
		30.588146, 33.959831, 35.094086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656080, 34.932205, 35.035397>,  <30.681757, 34.377163, 34.539948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656080, 34.932205, 35.035397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323893, 35.140427, 34.956055>,  <30.124580, 35.265362, 34.908451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323893, 35.140427, 34.956055>,  <30.656080, 34.932205, 35.035397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323893, 35.140427, 34.956055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336757, 0.752768, 0.565628,
		0.443754, 0.402940, -0.800451,
		-0.830468, 0.520558, -0.198351,
		30.074753, 35.296593, 34.896549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831104, 35.600014, 34.761536>,  <30.656080, 34.932205, 35.035397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831104, 35.600014, 34.761536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.470093, 35.630318, 34.931103>,  <30.253487, 35.648499, 35.032845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.470093, 35.630318, 34.931103>,  <30.831104, 35.600014, 34.761536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470093, 35.630318, 34.931103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296626, 0.823001, 0.484441,
		-0.312183, 0.562965, -0.765253,
		-0.902527, 0.075759, 0.423917,
		30.199335, 35.653046, 35.058277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570990, 35.807892, 34.499588>,  <30.831104, 35.600014, 34.761536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570990, 35.807892, 34.499588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756666, 35.792667, 34.853554>,  <31.868073, 35.783531, 35.065933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756666, 35.792667, 34.853554>,  <31.570990, 35.807892, 34.499588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756666, 35.792667, 34.853554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835550, -0.312700, -0.451747,
		0.293909, 0.949089, -0.113348,
		0.464192, -0.038065, 0.884916,
		31.895924, 35.781246, 35.119030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095894, 36.103901, 34.366310>,  <31.570990, 35.807892, 34.499588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095894, 36.103901, 34.366310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179585, 35.878841, 34.686222>,  <32.229801, 35.743805, 34.878170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179585, 35.878841, 34.686222>,  <32.095894, 36.103901, 34.366310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179585, 35.878841, 34.686222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945455, -0.092432, -0.312364,
		0.249676, 0.821514, 0.512618,
		0.209229, -0.562647, 0.799782,
		32.242352, 35.710049, 34.926155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705296, 36.209728, 34.472973>,  <32.095894, 36.103901, 34.366310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705296, 36.209728, 34.472973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706867, 35.929012, 34.757923>,  <32.707809, 35.760582, 34.928894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706867, 35.929012, 34.757923>,  <32.705296, 36.209728, 34.472973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706867, 35.929012, 34.757923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979721, -0.140008, -0.143331,
		0.200326, 0.698493, 0.687006,
		0.003929, -0.701788, 0.712375,
		32.708046, 35.718475, 34.971634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241112, 36.398838, 34.952251>,  <32.705296, 36.209728, 34.472973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241112, 36.398838, 34.952251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180386, 36.003567, 34.943687>,  <33.143951, 35.766403, 34.938549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180386, 36.003567, 34.943687>,  <33.241112, 36.398838, 34.952251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180386, 36.003567, 34.943687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934453, -0.136432, -0.328913,
		0.322104, -0.069935, 0.944117,
		-0.151811, -0.988178, -0.021406,
		33.134842, 35.707115, 34.937267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676907, 36.066471, 35.441200>,  <33.241112, 36.398838, 34.952251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676907, 36.066471, 35.441200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582031, 35.829689, 35.133091>,  <33.525105, 35.687618, 34.948223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582031, 35.829689, 35.133091>,  <33.676907, 36.066471, 35.441200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582031, 35.829689, 35.133091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957884, -0.010400, -0.286969,
		0.161862, -0.805902, 0.569493,
		-0.237191, -0.591957, -0.770277,
		33.510876, 35.652103, 34.902008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341629, 35.893150, 35.286205>,  <33.676907, 36.066471, 35.441200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341629, 35.893150, 35.286205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427010, 36.098137, 34.953503>,  <34.478237, 36.221130, 34.753883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427010, 36.098137, 34.953503>,  <34.341629, 35.893150, 35.286205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427010, 36.098137, 34.953503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172387, 0.857774, 0.484259,
		0.961624, 0.040018, 0.271436,
		0.213452, 0.512468, -0.831755,
		34.491047, 36.251877, 34.703976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829285, 36.432034, 35.452179>,  <34.341629, 35.893150, 35.286205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829285, 36.432034, 35.452179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637020, 36.554745, 35.123581>,  <34.521664, 36.628372, 34.926422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637020, 36.554745, 35.123581>,  <34.829285, 36.432034, 35.452179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637020, 36.554745, 35.123581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163265, 0.889120, 0.427562,
		0.861576, 0.339632, -0.377276,
		-0.480658, 0.306781, -0.821495,
		34.492825, 36.646778, 34.877132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368572, 36.105316, 35.074131>,  <34.829285, 36.432034, 35.452179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368572, 36.105316, 35.074131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277771, 35.816257, 35.335285>,  <35.223289, 35.642822, 35.491978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277771, 35.816257, 35.335285>,  <35.368572, 36.105316, 35.074131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277771, 35.816257, 35.335285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144377, -0.687946, -0.711256,
		0.963133, -0.067197, 0.260500,
		-0.227004, -0.722644, 0.652882,
		35.209671, 35.599464, 35.531151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870106, 35.568832, 35.175198>,  <35.368572, 36.105316, 35.074131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870106, 35.568832, 35.175198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507446, 35.418625, 35.252121>,  <35.289852, 35.328499, 35.298275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507446, 35.418625, 35.252121>,  <35.870106, 35.568832, 35.175198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507446, 35.418625, 35.252121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164451, -0.734315, -0.658588,
		0.388524, -0.565480, 0.727517,
		-0.906645, -0.375519, 0.192305,
		35.235455, 35.305969, 35.309811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055088, 34.922729, 35.326157>,  <35.870106, 35.568832, 35.175198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055088, 34.922729, 35.326157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673332, 34.968166, 35.215714>,  <35.444279, 34.995430, 35.149448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673332, 34.968166, 35.215714>,  <36.055088, 34.922729, 35.326157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673332, 34.968166, 35.215714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115767, -0.711646, -0.692935,
		-0.275204, -0.693294, 0.666037,
		-0.954391, 0.113593, -0.276108,
		35.387016, 35.002243, 35.132881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733822, 34.210854, 35.378315>,  <36.055088, 34.922729, 35.326157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733822, 34.210854, 35.378315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548740, 34.456062, 35.122158>,  <35.437691, 34.603188, 34.968464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548740, 34.456062, 35.122158>,  <35.733822, 34.210854, 35.378315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548740, 34.456062, 35.122158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169079, -0.648090, -0.742558,
		-0.870240, -0.451861, 0.196223,
		-0.462703, 0.613026, -0.640394,
		35.409931, 34.639969, 34.930038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150867, 33.879513, 35.015778>,  <35.733822, 34.210854, 35.378315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150867, 33.879513, 35.015778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325417, 34.150455, 34.778873>,  <35.430145, 34.313019, 34.636730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325417, 34.150455, 34.778873>,  <35.150867, 33.879513, 35.015778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325417, 34.150455, 34.778873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258195, -0.724820, -0.638726,
		-0.861923, 0.125807, -0.491183,
		0.436376, 0.677354, -0.592257,
		35.456329, 34.353661, 34.601196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965332, 33.649887, 34.326523>,  <35.150867, 33.879513, 35.015778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965332, 33.649887, 34.326523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282856, 33.889080, 34.282185>,  <35.473370, 34.032597, 34.255581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282856, 33.889080, 34.282185>,  <34.965332, 33.649887, 34.326523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282856, 33.889080, 34.282185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357495, -0.606243, -0.710399,
		-0.492007, 0.524293, -0.695015,
		0.793806, 0.597985, -0.110844,
		35.520996, 34.068474, 34.248932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025543, 33.641850, 33.513939>,  <34.965332, 33.649887, 34.326523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025543, 33.641850, 33.513939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383373, 33.738121, 33.664574>,  <35.598072, 33.795883, 33.754955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383373, 33.738121, 33.664574>,  <35.025543, 33.641850, 33.513939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383373, 33.738121, 33.664574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446913, -0.488302, -0.749554,
		0.003482, 0.838829, -0.544384,
		0.894571, 0.240682, 0.376584,
		35.651745, 33.810326, 33.777550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235485, 34.178726, 32.998417>,  <35.025543, 33.641850, 33.513939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235485, 34.178726, 32.998417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984077, 34.481724, 32.927799>,  <34.833233, 34.663521, 32.885429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984077, 34.481724, 32.927799>,  <35.235485, 34.178726, 32.998417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984077, 34.481724, 32.927799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329309, 0.053525, -0.942704,
		-0.704641, -0.650646, -0.283091,
		-0.628519, 0.757492, -0.176548,
		34.795521, 34.708973, 32.874836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911655, 33.989132, 32.381088>,  <35.235485, 34.178726, 32.998417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911655, 33.989132, 32.381088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946804, 34.378174, 32.467182>,  <34.967896, 34.611599, 32.518841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946804, 34.378174, 32.467182>,  <34.911655, 33.989132, 32.381088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946804, 34.378174, 32.467182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420664, 0.159628, -0.893062,
		-0.902951, 0.169019, -0.395111,
		0.087874, 0.972600, 0.215237,
		34.973167, 34.669952, 32.531754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510544, 33.662838, 31.884243>,  <34.911655, 33.989132, 32.381088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510544, 33.662838, 31.884243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521915, 33.751339, 31.494322>,  <34.528740, 33.804440, 31.260370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521915, 33.751339, 31.494322>,  <34.510544, 33.662838, 31.884243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521915, 33.751339, 31.494322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997427, -0.070480, 0.013090,
		-0.065807, -0.972666, -0.222687,
		0.028427, 0.221253, -0.974802,
		34.530445, 33.817715, 31.201881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185883, 33.393566, 31.669050>,  <34.510544, 33.662838, 31.884243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185883, 33.393566, 31.669050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042316, 33.634777, 31.384083>,  <34.956177, 33.779503, 31.213102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042316, 33.634777, 31.384083>,  <35.185883, 33.393566, 31.669050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042316, 33.634777, 31.384083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932547, 0.199602, -0.300859,
		-0.039227, -0.772344, -0.633992,
		-0.358912, 0.603029, -0.712417,
		34.934643, 33.815685, 31.170359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522335, 33.146008, 31.172396>,  <35.185883, 33.393566, 31.669050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522335, 33.146008, 31.172396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424194, 33.520702, 31.072531>,  <35.365311, 33.745518, 31.012611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424194, 33.520702, 31.072531>,  <35.522335, 33.146008, 31.172396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424194, 33.520702, 31.072531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924573, 0.148668, -0.350803,
		-0.291492, -0.316901, -0.902555,
		-0.245351, 0.936735, -0.249662,
		35.350590, 33.801723, 30.997633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048561, 32.545315, 31.269190>,  <35.522335, 33.146008, 31.172396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048561, 32.545315, 31.269190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795551, 32.599529, 31.574226>,  <35.643745, 32.632057, 31.757248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795551, 32.599529, 31.574226>,  <36.048561, 32.545315, 31.269190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795551, 32.599529, 31.574226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063130, 0.972273, -0.225167,
		-0.771964, -0.190566, -0.606428,
		-0.632523, 0.135537, 0.762591,
		35.605793, 32.640190, 31.803003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461384, 32.654182, 31.962938>,  <36.048561, 32.545315, 31.269190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461384, 32.654182, 31.962938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335930, 32.340931, 32.177731>,  <36.260658, 32.152981, 32.306606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335930, 32.340931, 32.177731>,  <36.461384, 32.654182, 31.962938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335930, 32.340931, 32.177731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097900, 0.589168, 0.802058,
		-0.944485, 0.198980, -0.261449,
		-0.313630, -0.783128, 0.536980,
		36.241840, 32.105991, 32.338825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874790, 32.888744, 32.347351>,  <36.461384, 32.654182, 31.962938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874790, 32.888744, 32.347351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102909, 32.604897, 32.512859>,  <36.239780, 32.434589, 32.612164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102909, 32.604897, 32.512859>,  <35.874790, 32.888744, 32.347351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102909, 32.604897, 32.512859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054960, 0.469622, 0.881155,
		-0.819599, -0.525259, 0.228822,
		0.570295, -0.709619, 0.413770,
		36.273998, 32.392010, 32.636990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505665, 32.392979, 32.869179>,  <35.874790, 32.888744, 32.347351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505665, 32.392979, 32.869179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895176, 32.444736, 32.944016>,  <36.128883, 32.475792, 32.988918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895176, 32.444736, 32.944016>,  <35.505665, 32.392979, 32.869179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895176, 32.444736, 32.944016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226838, 0.490488, 0.841407,
		0.017108, -0.861787, 0.506981,
		0.973782, 0.129397, 0.187095,
		36.187309, 32.483555, 33.000145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768368, 32.333939, 33.637039>,  <35.505665, 32.392979, 32.869179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768368, 32.333939, 33.637039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012863, 32.593006, 33.455090>,  <36.159561, 32.748447, 33.345921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012863, 32.593006, 33.455090>,  <35.768368, 32.333939, 33.637039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012863, 32.593006, 33.455090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372421, 0.742508, 0.556762,
		0.698342, -0.170913, 0.695059,
		0.611245, 0.647665, -0.454873,
		36.196236, 32.787308, 33.318626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196632, 32.651321, 34.149754>,  <35.768368, 32.333939, 33.637039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196632, 32.651321, 34.149754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258240, 32.909168, 33.850220>,  <36.295204, 33.063877, 33.670502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258240, 32.909168, 33.850220>,  <36.196632, 32.651321, 34.149754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258240, 32.909168, 33.850220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103395, 0.764228, 0.636604,
		0.982644, -0.020620, 0.184352,
		0.154014, 0.644616, -0.748832,
		36.304443, 33.102554, 33.625568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563728, 33.282928, 34.348228>,  <36.196632, 32.651321, 34.149754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563728, 33.282928, 34.348228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421764, 33.465191, 34.021690>,  <36.336586, 33.574547, 33.825768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421764, 33.465191, 34.021690>,  <36.563728, 33.282928, 34.348228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421764, 33.465191, 34.021690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328217, 0.756884, 0.565155,
		0.875394, 0.468517, -0.119071,
		-0.354908, 0.455652, -0.816346,
		36.315292, 33.601887, 33.776787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823158, 33.957912, 34.347401>,  <36.563728, 33.282928, 34.348228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823158, 33.957912, 34.347401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474388, 33.921017, 34.155056>,  <36.265125, 33.898880, 34.039650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474388, 33.921017, 34.155056>,  <36.823158, 33.957912, 34.347401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474388, 33.921017, 34.155056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330000, 0.836231, 0.437969,
		0.361717, 0.540564, -0.759573,
		-0.871929, -0.092239, -0.480865,
		36.212811, 33.893345, 34.010796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673843, 34.660851, 34.155319>,  <36.823158, 33.957912, 34.347401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673843, 34.660851, 34.155319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310226, 34.495453, 34.176006>,  <36.092056, 34.396214, 34.188419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310226, 34.495453, 34.176006>,  <36.673843, 34.660851, 34.155319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310226, 34.495453, 34.176006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378885, 0.871798, 0.310508,
		-0.173479, 0.262668, -0.949163,
		-0.909038, -0.413490, 0.051718,
		36.037514, 34.371407, 34.191521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151730, 35.016773, 33.824902>,  <36.673843, 34.660851, 34.155319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151730, 35.016773, 33.824902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006039, 34.836258, 34.150768>,  <35.918625, 34.727947, 34.346287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006039, 34.836258, 34.150768>,  <36.151730, 35.016773, 33.824902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006039, 34.836258, 34.150768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330496, 0.880449, 0.339973,
		-0.870697, -0.145417, -0.469830,
		-0.364223, -0.451290, 0.814665,
		35.896770, 34.700871, 34.395168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513298, 35.262897, 33.763752>,  <36.151730, 35.016773, 33.824902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513298, 35.262897, 33.763752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620758, 35.155220, 34.133698>,  <35.685234, 35.090614, 34.355663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620758, 35.155220, 34.133698>,  <35.513298, 35.262897, 33.763752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620758, 35.155220, 34.133698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293299, 0.891702, 0.344737,
		-0.917499, -0.363872, 0.160599,
		0.268647, -0.269192, 0.924859,
		35.701351, 35.074463, 34.411156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666458, 35.283257, 32.981392>,  <35.513298, 35.262897, 33.763752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666458, 35.283257, 32.981392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759388, 35.581608, 33.231094>,  <35.815147, 35.760616, 33.380917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759388, 35.581608, 33.231094>,  <35.666458, 35.283257, 32.981392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759388, 35.581608, 33.231094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652138, 0.595634, -0.468973,
		-0.721623, -0.298147, 0.624794,
		0.232326, 0.745875, 0.624256,
		35.829086, 35.805370, 33.418373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021221, 35.548698, 33.206829>,  <35.666458, 35.283257, 32.981392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021221, 35.548698, 33.206829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291988, 35.837273, 33.265224>,  <35.454449, 36.010418, 33.300262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291988, 35.837273, 33.265224>,  <35.021221, 35.548698, 33.206829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291988, 35.837273, 33.265224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682146, 0.689386, -0.243771,
		-0.276505, 0.065430, 0.958783,
		0.676921, 0.721434, 0.145985,
		35.495064, 36.053703, 33.309021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616264, 36.110535, 33.370792>,  <35.021221, 35.548698, 33.206829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616264, 36.110535, 33.370792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969452, 36.264633, 33.263496>,  <35.181366, 36.357094, 33.199120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969452, 36.264633, 33.263496>,  <34.616264, 36.110535, 33.370792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969452, 36.264633, 33.263496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469272, 0.709313, -0.525984,
		-0.012364, 0.590306, 0.807085,
		0.882967, 0.385246, -0.268244,
		35.234341, 36.380207, 33.183022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598465, 36.897663, 33.575214>,  <34.616264, 36.110535, 33.370792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598465, 36.897663, 33.575214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851109, 36.818520, 33.275368>,  <35.002693, 36.771034, 33.095459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851109, 36.818520, 33.275368>,  <34.598465, 36.897663, 33.575214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851109, 36.818520, 33.275368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435962, 0.708892, -0.554446,
		0.641098, 0.676995, 0.361482,
		0.631609, -0.197862, -0.749613,
		35.040592, 36.759163, 33.050484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737972, 37.507397, 33.337627>,  <34.598465, 36.897663, 33.575214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737972, 37.507397, 33.337627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856228, 37.267284, 33.040371>,  <34.927181, 37.123215, 32.862019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856228, 37.267284, 33.040371>,  <34.737972, 37.507397, 33.337627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856228, 37.267284, 33.040371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418109, 0.618143, -0.665645,
		0.858944, 0.507502, -0.068240,
		0.295635, -0.600284, -0.743141,
		34.944920, 37.087200, 32.817429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775578, 37.973267, 32.779160>,  <34.737972, 37.507397, 33.337627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775578, 37.973267, 32.779160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791607, 37.618061, 32.595936>,  <34.801224, 37.404938, 32.486000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791607, 37.618061, 32.595936>,  <34.775578, 37.973267, 32.779160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791607, 37.618061, 32.595936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329038, 0.421129, -0.845212,
		0.943466, 0.184591, -0.275315,
		0.040076, -0.888018, -0.458058,
		34.803631, 37.351654, 32.458519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216888, 38.120098, 32.171570>,  <34.775578, 37.973267, 32.779160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216888, 38.120098, 32.171570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003559, 37.794876, 32.078182>,  <34.875561, 37.599743, 32.022148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003559, 37.794876, 32.078182>,  <35.216888, 38.120098, 32.171570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003559, 37.794876, 32.078182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192630, 0.385482, -0.902384,
		0.823686, -0.436290, -0.362205,
		-0.533325, -0.813053, -0.233473,
		34.843563, 37.550961, 32.008141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441742, 37.949841, 31.530384>,  <35.216888, 38.120098, 32.171570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441742, 37.949841, 31.530384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091362, 37.761757, 31.573481>,  <34.881134, 37.648907, 31.599339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091362, 37.761757, 31.573481>,  <35.441742, 37.949841, 31.530384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091362, 37.761757, 31.573481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250257, 0.252001, -0.934809,
		0.412407, -0.845811, -0.338414,
		-0.875952, -0.470212, 0.107743,
		34.828575, 37.620693, 31.605804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390461, 37.629219, 30.935169>,  <35.441742, 37.949841, 31.530384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390461, 37.629219, 30.935169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020721, 37.626301, 31.087761>,  <34.798878, 37.624550, 31.179316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020721, 37.626301, 31.087761>,  <35.390461, 37.629219, 30.935169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020721, 37.626301, 31.087761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360440, 0.344627, -0.866784,
		-0.125144, -0.938711, -0.321186,
		-0.924350, -0.007296, 0.381478,
		34.743416, 37.624111, 31.202204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985996, 37.438610, 30.401989>,  <35.390461, 37.629219, 30.935169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985996, 37.438610, 30.401989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740486, 37.632866, 30.650965>,  <34.593178, 37.749420, 30.800350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740486, 37.632866, 30.650965>,  <34.985996, 37.438610, 30.401989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740486, 37.632866, 30.650965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360336, 0.529180, -0.768197,
		-0.702448, -0.695791, -0.149806,
		-0.613779, 0.485638, 0.622440,
		34.556351, 37.778557, 30.837696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361378, 37.373215, 30.098072>,  <34.985996, 37.438610, 30.401989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361378, 37.373215, 30.098072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309399, 37.691235, 30.335054>,  <34.278210, 37.882046, 30.477243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309399, 37.691235, 30.335054>,  <34.361378, 37.373215, 30.098072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309399, 37.691235, 30.335054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500405, 0.463256, -0.731430,
		-0.855984, -0.391515, 0.337650,
		-0.129947, 0.795053, 0.592456,
		34.270416, 37.929752, 30.512791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739147, 37.576618, 29.970188>,  <34.361378, 37.373215, 30.098072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739147, 37.576618, 29.970188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860172, 37.908768, 30.157351>,  <33.932785, 38.108059, 30.269648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860172, 37.908768, 30.157351>,  <33.739147, 37.576618, 29.970188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860172, 37.908768, 30.157351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435282, 0.557110, -0.707218,
		-0.847932, 0.010304, 0.530006,
		0.302559, 0.830375, 0.467906,
		33.950939, 38.157879, 30.297722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217255, 38.025707, 29.956554>,  <33.739147, 37.576618, 29.970188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217255, 38.025707, 29.956554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544983, 38.249847, 30.005093>,  <33.741619, 38.384331, 30.034216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544983, 38.249847, 30.005093>,  <33.217255, 38.025707, 29.956554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544983, 38.249847, 30.005093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407562, 0.718082, -0.564138,
		-0.403251, 0.412753, 0.816715,
		0.819318, 0.560351, 0.121345,
		33.790779, 38.417953, 30.041496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950424, 38.597130, 29.997122>,  <33.217255, 38.025707, 29.956554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950424, 38.597130, 29.997122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336296, 38.675537, 29.926727>,  <33.567818, 38.722580, 29.884491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336296, 38.675537, 29.926727>,  <32.950424, 38.597130, 29.997122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336296, 38.675537, 29.926727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263307, 0.697124, -0.666849,
		-0.008031, 0.689634, 0.724114,
		0.964679, 0.196019, -0.175987,
		33.625698, 38.734344, 29.873932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117081, 39.225235, 30.267580>,  <32.950424, 38.597130, 29.997122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117081, 39.225235, 30.267580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368511, 39.152996, 29.964983>,  <33.519367, 39.109653, 29.783424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368511, 39.152996, 29.964983>,  <33.117081, 39.225235, 30.267580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368511, 39.152996, 29.964983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362685, 0.792370, -0.490520,
		0.688008, 0.582696, 0.432562,
		0.628574, -0.180598, -0.756492,
		33.557083, 39.098816, 29.738035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416458, 39.970211, 30.105820>,  <33.117081, 39.225235, 30.267580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416458, 39.970211, 30.105820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487839, 39.727169, 29.796246>,  <33.530666, 39.581345, 29.610502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487839, 39.727169, 29.796246>,  <33.416458, 39.970211, 30.105820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487839, 39.727169, 29.796246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242065, 0.735275, -0.633068,
		0.953708, 0.300314, -0.015868,
		0.178452, -0.607604, -0.773933,
		33.541374, 39.544888, 29.564066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608948, 40.462204, 29.628361>,  <33.416458, 39.970211, 30.105820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608948, 40.462204, 29.628361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543339, 40.129547, 29.416147>,  <33.503975, 39.929955, 29.288818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543339, 40.129547, 29.416147>,  <33.608948, 40.462204, 29.628361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543339, 40.129547, 29.416147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308254, 0.554096, -0.773277,
		0.937058, 0.036706, -0.347240,
		-0.164020, -0.831643, -0.530535,
		33.494133, 39.880054, 29.256987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863445, 40.606815, 28.983002>,  <33.608948, 40.462204, 29.628361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863445, 40.606815, 28.983002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597809, 40.311146, 28.938086>,  <33.438427, 40.133743, 28.911137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597809, 40.311146, 28.938086>,  <33.863445, 40.606815, 28.983002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597809, 40.311146, 28.938086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215180, 0.332798, -0.918119,
		0.716017, -0.585552, -0.380063,
		-0.664091, -0.739171, -0.112290,
		33.398582, 40.089394, 28.904398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045910, 40.367321, 28.337847>,  <33.863445, 40.606815, 28.983002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045910, 40.367321, 28.337847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668457, 40.275860, 28.433573>,  <33.441986, 40.220982, 28.491009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668457, 40.275860, 28.433573>,  <34.045910, 40.367321, 28.337847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668457, 40.275860, 28.433573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313942, 0.389254, -0.865980,
		0.104855, -0.892300, -0.439097,
		-0.943634, -0.228654, 0.239315,
		33.385368, 40.207264, 28.505367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746616, 40.195484, 27.714153>,  <34.045910, 40.367321, 28.337847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746616, 40.195484, 27.714153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412628, 40.223019, 27.932543>,  <33.212234, 40.239540, 28.063578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412628, 40.223019, 27.932543>,  <33.746616, 40.195484, 27.714153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412628, 40.223019, 27.932543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526179, 0.190641, -0.828729,
		-0.161129, -0.979244, -0.122961,
		-0.834969, 0.068833, 0.545976,
		33.162136, 40.243668, 28.096336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210495, 39.869961, 27.319660>,  <33.746616, 40.195484, 27.714153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210495, 39.869961, 27.319660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052879, 40.106258, 27.601301>,  <32.958309, 40.248035, 27.770287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052879, 40.106258, 27.601301>,  <33.210495, 39.869961, 27.319660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052879, 40.106258, 27.601301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623632, 0.390898, -0.676965,
		-0.675145, -0.705848, 0.214378,
		-0.394035, 0.590743, 0.704102,
		32.934669, 40.283482, 27.812532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448895, 39.785965, 27.283796>,  <33.210495, 39.869961, 27.319660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448895, 39.785965, 27.283796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537895, 40.149120, 27.425913>,  <32.591297, 40.367012, 27.511183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537895, 40.149120, 27.425913>,  <32.448895, 39.785965, 27.283796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537895, 40.149120, 27.425913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513183, 0.418920, -0.749099,
		-0.828936, -0.015650, 0.559124,
		0.222505, 0.907888, 0.355290,
		32.604645, 40.421486, 27.532499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888550, 40.150097, 27.102936>,  <32.448895, 39.785965, 27.283796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888550, 40.150097, 27.102936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149925, 40.439106, 27.193251>,  <32.306751, 40.612511, 27.247438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149925, 40.439106, 27.193251>,  <31.888550, 40.150097, 27.102936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149925, 40.439106, 27.193251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483422, 0.627833, -0.610025,
		-0.582512, 0.289465, 0.759533,
		0.653440, 0.722521, 0.225786,
		32.345959, 40.655861, 27.260986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478247, 40.833809, 27.272802>,  <31.888550, 40.150097, 27.102936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478247, 40.833809, 27.272802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852510, 40.933941, 27.173302>,  <32.077068, 40.994022, 27.113602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852510, 40.933941, 27.173302>,  <31.478247, 40.833809, 27.272802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852510, 40.933941, 27.173302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349885, 0.565932, -0.746526,
		-0.046103, 0.785528, 0.617107,
		0.935657, 0.250334, -0.248753,
		32.133209, 41.009041, 27.098675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444466, 41.512959, 27.190453>,  <31.478247, 40.833809, 27.272802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444466, 41.512959, 27.190453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777878, 41.426941, 26.986891>,  <31.977924, 41.375328, 26.864754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777878, 41.426941, 26.986891>,  <31.444466, 41.512959, 27.190453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777878, 41.426941, 26.986891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285871, 0.620353, -0.730370,
		0.472765, 0.754265, 0.455607,
		0.833530, -0.215048, -0.508904,
		32.027935, 41.362427, 26.834219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606638, 42.163227, 26.941830>,  <31.444466, 41.512959, 27.190453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606638, 42.163227, 26.941830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817064, 41.907848, 26.717100>,  <31.943319, 41.754623, 26.582262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817064, 41.907848, 26.717100>,  <31.606638, 42.163227, 26.941830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817064, 41.907848, 26.717100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255419, 0.511514, -0.820436,
		0.811183, 0.575102, 0.106019,
		0.526065, -0.638444, -0.561823,
		31.974884, 41.716316, 26.548553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997807, 42.587025, 26.517778>,  <31.606638, 42.163227, 26.941830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997807, 42.587025, 26.517778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976982, 42.221630, 26.356369>,  <31.964487, 42.002392, 26.259523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976982, 42.221630, 26.356369>,  <31.997807, 42.587025, 26.517778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976982, 42.221630, 26.356369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370617, 0.392886, -0.841596,
		0.927326, 0.105739, -0.359008,
		-0.052059, -0.913488, -0.403522,
		31.961365, 41.947582, 26.235312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384056, 42.651409, 25.867216>,  <31.997807, 42.587025, 26.517778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384056, 42.651409, 25.867216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136871, 42.337696, 25.845232>,  <31.988562, 42.149467, 25.832041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136871, 42.337696, 25.845232>,  <32.384056, 42.651409, 25.867216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136871, 42.337696, 25.845232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190128, 0.216905, -0.957499,
		0.762874, -0.581247, -0.283153,
		-0.617961, -0.784286, -0.054960,
		31.951483, 42.102409, 25.828745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425198, 42.431812, 25.141884>,  <32.384056, 42.651409, 25.867216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425198, 42.431812, 25.141884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106369, 42.232777, 25.278753>,  <31.915071, 42.113354, 25.360874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106369, 42.232777, 25.278753>,  <32.425198, 42.431812, 25.141884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106369, 42.232777, 25.278753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529336, 0.302982, -0.792468,
		0.290645, -0.812782, -0.504887,
		-0.797075, -0.497582, 0.342175,
		31.867247, 42.083500, 25.381405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144596, 42.064159, 24.602646>,  <32.425198, 42.431812, 25.141884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144596, 42.064159, 24.602646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835808, 42.133942, 24.847145>,  <31.650536, 42.175812, 24.993845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835808, 42.133942, 24.847145>,  <32.144596, 42.064159, 24.602646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835808, 42.133942, 24.847145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523160, 0.371828, -0.766843,
		-0.361063, -0.911761, -0.195770,
		-0.771970, 0.174460, 0.611249,
		31.604218, 42.186279, 25.030519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562468, 41.725079, 24.354496>,  <32.144596, 42.064159, 24.602646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562468, 41.725079, 24.354496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390324, 42.010998, 24.574986>,  <31.287037, 42.182549, 24.707279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390324, 42.010998, 24.574986>,  <31.562468, 41.725079, 24.354496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390324, 42.010998, 24.574986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545448, 0.280637, -0.789765,
		-0.719220, -0.640548, 0.269112,
		-0.430359, 0.714802, 0.551226,
		31.261215, 42.225437, 24.740353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886528, 41.640869, 24.214573>,  <31.562468, 41.725079, 24.354496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886528, 41.640869, 24.214573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908583, 42.008621, 24.370371>,  <30.921816, 42.229271, 24.463850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908583, 42.008621, 24.370371>,  <30.886528, 41.640869, 24.214573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908583, 42.008621, 24.370371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521119, 0.359243, -0.774196,
		-0.851701, -0.160287, 0.498912,
		0.055137, 0.919376, 0.389496,
		30.925123, 42.284435, 24.487219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113293, 41.928013, 24.187141>,  <30.886528, 41.640869, 24.214573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113293, 41.928013, 24.187141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380861, 42.224213, 24.213093>,  <30.541403, 42.401932, 24.228662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380861, 42.224213, 24.213093>,  <30.113293, 41.928013, 24.187141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380861, 42.224213, 24.213093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437274, 0.462578, -0.771241,
		-0.601112, 0.487530, 0.633228,
		0.668921, 0.740497, 0.064877,
		30.581537, 42.446362, 24.232555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694695, 42.411133, 24.048199>,  <30.113293, 41.928013, 24.187141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.694695, 42.411133, 24.048199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057062, 42.576347, 24.010857>,  <30.274483, 42.675476, 23.988451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057062, 42.576347, 24.010857>,  <29.694695, 42.411133, 24.048199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057062, 42.576347, 24.010857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338553, 0.574045, -0.745557,
		-0.254349, 0.707020, 0.659871,
		0.905919, 0.413033, -0.093356,
		30.328838, 42.700256, 23.982849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607082, 43.116226, 24.022709>,  <29.694695, 42.411133, 24.048199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.607082, 43.116226, 24.022709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982790, 43.112465, 23.885490>,  <30.208216, 43.110207, 23.803160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982790, 43.112465, 23.885490>,  <29.607082, 43.116226, 24.022709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982790, 43.112465, 23.885490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212317, 0.769420, -0.602423,
		0.269614, 0.638674, 0.720697,
		0.939271, -0.009406, -0.343048,
		30.264572, 43.109642, 23.782576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.989609, 43.778461, 24.143343>,  <29.607082, 43.116226, 24.022709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.989609, 43.778461, 24.143343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.145437, 43.593704, 23.824623>,  <30.238934, 43.482849, 23.633390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.145437, 43.593704, 23.824623>,  <29.989609, 43.778461, 24.143343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.145437, 43.593704, 23.824623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198158, 0.802852, -0.562283,
		0.899426, 0.376942, 0.221240,
		0.389571, -0.461892, -0.796800,
		30.262308, 43.455135, 23.585583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295782, 44.273235, 23.821899>,  <29.989609, 43.778461, 24.143343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.295782, 44.273235, 23.821899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.272322, 43.991287, 23.539137>,  <30.258245, 43.822117, 23.369480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.272322, 43.991287, 23.539137>,  <30.295782, 44.273235, 23.821899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.272322, 43.991287, 23.539137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123125, 0.707825, -0.695574,
		0.990657, 0.046243, -0.128301,
		-0.058649, -0.704872, -0.706905,
		30.254726, 43.779827, 23.327065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511377, 44.645973, 23.265287>,  <30.295782, 44.273235, 23.821899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511377, 44.645973, 23.265287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.353043, 44.318161, 23.099546>,  <30.258041, 44.121475, 23.000101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.353043, 44.318161, 23.099546>,  <30.511377, 44.645973, 23.265287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353043, 44.318161, 23.099546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362839, 0.554069, -0.749236,
		0.843600, -0.146231, -0.516677,
		-0.395837, -0.819526, -0.414355,
		30.234291, 44.072304, 22.975241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.690983, 44.533310, 22.635681>,  <30.511377, 44.645973, 23.265287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.690983, 44.533310, 22.635681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.327675, 44.366219, 22.626364>,  <30.109690, 44.265965, 22.620773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.327675, 44.366219, 22.626364>,  <30.690983, 44.533310, 22.635681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327675, 44.366219, 22.626364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266995, 0.621595, -0.736433,
		0.322111, -0.662662, -0.676109,
		-0.908272, -0.417731, -0.023295,
		30.055193, 44.240898, 22.619375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.381325, 44.639351, 22.021271>,  <30.690983, 44.533310, 22.635681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.381325, 44.639351, 22.021271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.044071, 44.517216, 22.198309>,  <29.841719, 44.443935, 22.304533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.044071, 44.517216, 22.198309>,  <30.381325, 44.639351, 22.021271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.044071, 44.517216, 22.198309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524693, 0.647181, -0.553041,
		-0.117574, -0.698515, -0.705871,
		-0.843134, -0.305342, 0.442598,
		29.791132, 44.425613, 22.331089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902372, 44.450298, 21.423325>,  <30.381325, 44.639351, 22.021271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902372, 44.450298, 21.423325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.706587, 44.524452, 21.764162>,  <29.589115, 44.568943, 21.968664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.706587, 44.524452, 21.764162>,  <29.902372, 44.450298, 21.423325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706587, 44.524452, 21.764162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654774, 0.567227, -0.499525,
		-0.575932, -0.802426, -0.156252,
		-0.489462, 0.185383, 0.852092,
		29.559748, 44.580067, 22.019789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.188513, 44.088135, 21.376507>,  <29.902372, 44.450298, 21.423325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.188513, 44.088135, 21.376507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180344, 44.394459, 21.633606>,  <29.175442, 44.578251, 21.787865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180344, 44.394459, 21.633606>,  <29.188513, 44.088135, 21.376507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.180344, 44.394459, 21.633606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662624, 0.471040, -0.582281,
		-0.748674, -0.437793, 0.497820,
		-0.020425, 0.765806, 0.642747,
		29.174215, 44.624199, 21.826429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.565907, 44.403526, 21.235889>,  <29.188513, 44.088135, 21.376507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.565907, 44.403526, 21.235889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.749949, 44.692249, 21.442690>,  <28.860374, 44.865482, 21.566771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.749949, 44.692249, 21.442690>,  <28.565907, 44.403526, 21.235889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.749949, 44.692249, 21.442690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634593, 0.674606, -0.377092,
		-0.620962, -0.154584, 0.768446,
		0.460106, 0.721811, 0.517002,
		28.887980, 44.908794, 21.597790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.072412, 45.014679, 21.490345>,  <28.565907, 44.403526, 21.235889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.072412, 45.014679, 21.490345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448689, 45.148762, 21.469414>,  <28.674454, 45.229214, 21.456856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448689, 45.148762, 21.469414>,  <28.072412, 45.014679, 21.490345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.448689, 45.148762, 21.469414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310731, 0.789336, -0.529523,
		-0.136198, 0.514376, 0.846680,
		0.940690, 0.335210, -0.052326,
		28.730896, 45.249325, 21.453716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994198, 45.699268, 21.591352>,  <28.072412, 45.014679, 21.490345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.994198, 45.699268, 21.591352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.344049, 45.634357, 21.408623>,  <28.553961, 45.595409, 21.298985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.344049, 45.634357, 21.408623>,  <27.994198, 45.699268, 21.591352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.344049, 45.634357, 21.408623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165783, 0.785383, -0.596397,
		0.455563, 0.597360, 0.660017,
		0.874630, -0.162277, -0.456824,
		28.606438, 45.585674, 21.271576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.514496, 46.246990, 21.594999>,  <27.994198, 45.699268, 21.591352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.514496, 46.246990, 21.594999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.475557, 46.036625, 21.257021>,  <28.452194, 45.910404, 21.054234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.475557, 46.036625, 21.257021>,  <28.514496, 46.246990, 21.594999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475557, 46.036625, 21.257021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071067, 0.850485, -0.521177,
		0.992710, 0.009313, -0.120169,
		-0.097348, -0.525918, -0.844946,
		28.446352, 45.878849, 21.003536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805752, 46.648056, 21.582813>,  <28.514496, 46.246990, 21.594999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805752, 46.648056, 21.582813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.744017, 46.911938, 21.288610>,  <27.706976, 47.070267, 21.112089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.744017, 46.911938, 21.288610>,  <27.805752, 46.648056, 21.582813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.744017, 46.911938, 21.288610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968659, 0.045609, 0.244170,
		0.194626, 0.750138, 0.631992,
		-0.154336, 0.659706, -0.735505,
		27.697716, 47.109848, 21.067959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.236385, 46.768925, 21.966850>,  <27.805752, 46.648056, 21.582813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.236385, 46.768925, 21.966850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601707, 46.931778, 21.971172>,  <27.820900, 47.029491, 21.973766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601707, 46.931778, 21.971172>,  <27.236385, 46.768925, 21.966850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.601707, 46.931778, 21.971172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110271, -0.272733, 0.955749,
		0.392068, -0.871698, -0.293984,
		0.913304, 0.407136, 0.010807,
		27.875698, 47.053917, 21.974415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.528448, 46.317097, 22.385311>,  <27.236385, 46.768925, 21.966850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.528448, 46.317097, 22.385311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.755341, 46.645573, 22.360334>,  <27.891476, 46.842659, 22.345348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.755341, 46.645573, 22.360334>,  <27.528448, 46.317097, 22.385311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755341, 46.645573, 22.360334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357008, -0.176861, 0.917205,
		0.742154, -0.542560, -0.393492,
		0.567232, 0.821188, -0.062440,
		27.925510, 46.891930, 22.341602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.311825, 46.163986, 22.501133>,  <27.528448, 46.317097, 22.385311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.311825, 46.163986, 22.501133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265272, 46.547031, 22.606535>,  <28.237341, 46.776859, 22.669775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265272, 46.547031, 22.606535>,  <28.311825, 46.163986, 22.501133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.265272, 46.547031, 22.606535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552745, -0.157974, 0.818240,
		0.825183, 0.240880, -0.510930,
		-0.116384, 0.957612, 0.263503,
		28.230356, 46.834316, 22.685585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.040304, 46.366516, 22.490187>,  <28.311825, 46.163986, 22.501133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.040304, 46.366516, 22.490187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.804016, 46.577511, 22.734419>,  <28.662243, 46.704105, 22.880959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.804016, 46.577511, 22.734419>,  <29.040304, 46.366516, 22.490187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.804016, 46.577511, 22.734419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617775, -0.191108, 0.762779,
		0.519041, 0.827791, -0.212976,
		-0.590720, 0.527485, 0.610582,
		28.626801, 46.735756, 22.917593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465450, 46.958221, 22.856289>,  <29.040304, 46.366516, 22.490187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465450, 46.958221, 22.856289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143475, 46.844742, 23.064743>,  <28.950289, 46.776653, 23.189816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143475, 46.844742, 23.064743>,  <29.465450, 46.958221, 22.856289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.143475, 46.844742, 23.064743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574048, -0.150127, 0.804942,
		-0.150127, 0.947088, 0.283702,
		-0.804942, -0.283702, 0.521135,
		28.901993, 46.759632, 23.221083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609283, 47.335136, 23.455687>,  <29.465450, 46.958221, 22.856289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609283, 47.335136, 23.455687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.440945, 46.972916, 23.477102>,  <29.339941, 46.755585, 23.489952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.440945, 46.972916, 23.477102>,  <29.609283, 47.335136, 23.455687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.440945, 46.972916, 23.477102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664303, -0.267462, 0.697972,
		-0.617729, 0.329307, 0.714121,
		-0.420847, -0.905550, 0.053541,
		29.314690, 46.701252, 23.493164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.484545, 47.228405, 24.113907>,  <29.609283, 47.335136, 23.455687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.484545, 47.228405, 24.113907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.550795, 46.893650, 23.905220>,  <29.590544, 46.692799, 23.780008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.550795, 46.893650, 23.905220>,  <29.484545, 47.228405, 24.113907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.550795, 46.893650, 23.905220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792185, -0.202189, 0.575816,
		-0.587378, -0.508665, 0.629481,
		0.165623, -0.836887, -0.521718,
		29.600481, 46.642586, 23.748705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392349, 46.684586, 24.499578>,  <29.484545, 47.228405, 24.113907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392349, 46.684586, 24.499578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651083, 46.583729, 24.211681>,  <29.806322, 46.523216, 24.038942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651083, 46.583729, 24.211681>,  <29.392349, 46.684586, 24.499578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651083, 46.583729, 24.211681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554681, -0.492156, 0.670904,
		-0.523391, -0.833190, -0.178483,
		0.646832, -0.252144, -0.719745,
		29.845133, 46.508087, 23.995758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596701, 45.877117, 24.468382>,  <29.392349, 46.684586, 24.499578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596701, 45.877117, 24.468382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910681, 46.032021, 24.274937>,  <30.099070, 46.124962, 24.158869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910681, 46.032021, 24.274937>,  <29.596701, 45.877117, 24.468382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910681, 46.032021, 24.274937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617895, -0.546445, 0.565335,
		-0.045339, -0.742583, -0.668217,
		0.784952, 0.387257, -0.483614,
		30.146166, 46.148197, 24.129852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993746, 45.332966, 24.306648>,  <29.596701, 45.877117, 24.468382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.993746, 45.332966, 24.306648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.262384, 45.627785, 24.276384>,  <30.423569, 45.804676, 24.258226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.262384, 45.627785, 24.276384>,  <29.993746, 45.332966, 24.306648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.262384, 45.627785, 24.276384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679072, -0.571478, 0.460733,
		0.296341, -0.360806, -0.884308,
		0.671598, 0.737043, -0.075661,
		30.463863, 45.848896, 24.253687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649048, 45.010704, 24.067083>,  <29.993746, 45.332966, 24.306648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649048, 45.010704, 24.067083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743748, 45.362923, 24.231325>,  <30.800568, 45.574253, 24.329870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743748, 45.362923, 24.231325>,  <30.649048, 45.010704, 24.067083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743748, 45.362923, 24.231325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753800, -0.433107, 0.494170,
		0.612972, 0.192517, -0.766291,
		0.236750, 0.880543, 0.410602,
		30.814774, 45.627087, 24.354506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411678, 45.005928, 24.123980>,  <30.649048, 45.010704, 24.067083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411678, 45.005928, 24.123980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345503, 45.311668, 24.373264>,  <31.305798, 45.495113, 24.522835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345503, 45.311668, 24.373264>,  <31.411678, 45.005928, 24.123980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345503, 45.311668, 24.373264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597095, -0.425311, 0.680138,
		0.784925, 0.484639, -0.386029,
		-0.165439, 0.764353, 0.623213,
		31.295872, 45.540974, 24.560228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094677, 45.233009, 24.266392>,  <31.411678, 45.005928, 24.123980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094677, 45.233009, 24.266392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843699, 45.352325, 24.554094>,  <31.693111, 45.423916, 24.726717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843699, 45.352325, 24.554094>,  <32.094677, 45.233009, 24.266392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843699, 45.352325, 24.554094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586390, -0.426728, 0.688513,
		0.512305, 0.853771, 0.092834,
		-0.627447, 0.298292, 0.719258,
		31.655464, 45.441814, 24.769871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556046, 45.606976, 24.730045>,  <32.094677, 45.233009, 24.266392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556046, 45.606976, 24.730045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220253, 45.512505, 24.925795>,  <32.018776, 45.455822, 25.043243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220253, 45.512505, 24.925795>,  <32.556046, 45.606976, 24.730045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220253, 45.512505, 24.925795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543166, -0.390233, 0.743431,
		0.015384, 0.889908, 0.455880,
		-0.839484, -0.236182, 0.489371,
		31.968409, 45.441650, 25.072605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742283, 45.719719, 25.427902>,  <32.556046, 45.606976, 24.730045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742283, 45.719719, 25.427902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415752, 45.489162, 25.442760>,  <32.219833, 45.350830, 25.451675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415752, 45.489162, 25.442760>,  <32.742283, 45.719719, 25.427902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415752, 45.489162, 25.442760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342153, -0.430768, 0.835087,
		-0.465336, 0.694415, 0.548863,
		-0.816329, -0.576391, 0.037145,
		32.170853, 45.316246, 25.453903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466682, 45.870995, 26.061438>,  <32.742283, 45.719719, 25.427902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466682, 45.870995, 26.061438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366901, 45.509018, 25.923540>,  <32.307034, 45.291832, 25.840801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366901, 45.509018, 25.923540>,  <32.466682, 45.870995, 26.061438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366901, 45.509018, 25.923540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185753, -0.394103, 0.900099,
		-0.950405, 0.160495, 0.266407,
		-0.249453, -0.904944, -0.344745,
		32.292065, 45.237534, 25.820116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144424, 45.616608, 26.602070>,  <32.466682, 45.870995, 26.061438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144424, 45.616608, 26.602070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202721, 45.283600, 26.388279>,  <32.237698, 45.083794, 26.260004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202721, 45.283600, 26.388279>,  <32.144424, 45.616608, 26.602070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202721, 45.283600, 26.388279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350167, -0.461864, 0.814902,
		-0.925280, -0.305920, 0.224210,
		0.145740, -0.832523, -0.534477,
		32.246441, 45.033844, 26.227936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886646, 45.130779, 27.002254>,  <32.144424, 45.616608, 26.602070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886646, 45.130779, 27.002254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115559, 44.938286, 26.736649>,  <32.252907, 44.822792, 26.577286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115559, 44.938286, 26.736649>,  <31.886646, 45.130779, 27.002254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115559, 44.938286, 26.736649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402543, -0.540602, 0.738721,
		-0.714462, -0.690048, -0.115659,
		0.572279, -0.481230, -0.664014,
		32.287243, 44.793919, 26.537445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946478, 44.428062, 27.235926>,  <31.886646, 45.130779, 27.002254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946478, 44.428062, 27.235926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249325, 44.502651, 26.985487>,  <32.431034, 44.547405, 26.835224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249325, 44.502651, 26.985487>,  <31.946478, 44.428062, 27.235926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249325, 44.502651, 26.985487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559289, -0.680283, 0.473719,
		-0.337587, -0.708832, -0.619349,
		0.757120, 0.186474, -0.626097,
		32.476460, 44.558594, 26.797657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090500, 43.816437, 27.003506>,  <31.946478, 44.428062, 27.235926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090500, 43.816437, 27.003506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415462, 44.046619, 26.965874>,  <32.610439, 44.184731, 26.943295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415462, 44.046619, 26.965874>,  <32.090500, 43.816437, 27.003506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415462, 44.046619, 26.965874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559291, -0.723390, 0.404846,
		0.164914, -0.381517, -0.909532,
		0.812402, 0.575458, -0.094082,
		32.659184, 44.219257, 26.937649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674210, 43.398865, 26.794050>,  <32.090500, 43.816437, 27.003506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674210, 43.398865, 26.794050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830437, 43.726418, 26.962280>,  <32.924171, 43.922951, 27.063219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830437, 43.726418, 26.962280>,  <32.674210, 43.398865, 26.794050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830437, 43.726418, 26.962280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479357, -0.570946, 0.666512,
		0.785922, -0.058713, -0.615531,
		0.390568, 0.818886, 0.420575,
		32.947605, 43.972084, 27.088453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409016, 43.364239, 26.738832>,  <32.674210, 43.398865, 26.794050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409016, 43.364239, 26.738832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312386, 43.620575, 27.030302>,  <33.254410, 43.774376, 27.205185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312386, 43.620575, 27.030302>,  <33.409016, 43.364239, 26.738832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312386, 43.620575, 27.030302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581489, -0.505562, 0.637399,
		0.776861, 0.577695, -0.250511,
		-0.241573, 0.640840, 0.728675,
		33.239914, 43.812828, 27.248905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961700, 43.392467, 27.101633>,  <33.409016, 43.364239, 26.738832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961700, 43.392467, 27.101633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695072, 43.554802, 27.351746>,  <33.535095, 43.652203, 27.501814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695072, 43.554802, 27.351746>,  <33.961700, 43.392467, 27.101633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695072, 43.554802, 27.351746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458233, -0.438531, 0.773119,
		0.587964, 0.801866, 0.106347,
		-0.666574, 0.405834, 0.625282,
		33.495098, 43.676552, 27.539330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230991, 43.551365, 27.703384>,  <33.961700, 43.392467, 27.101633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230991, 43.551365, 27.703384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858551, 43.547485, 27.849234>,  <33.635086, 43.545158, 27.936743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858551, 43.547485, 27.849234>,  <34.230991, 43.551365, 27.703384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858551, 43.547485, 27.849234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336132, -0.410987, 0.847411,
		0.141633, 0.911590, 0.385933,
		-0.931104, -0.009703, 0.364624,
		33.579220, 43.544575, 27.958620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323479, 43.819267, 28.368807>,  <34.230991, 43.551365, 27.703384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323479, 43.819267, 28.368807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984234, 43.609550, 28.338261>,  <33.780689, 43.483719, 28.319933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984234, 43.609550, 28.338261>,  <34.323479, 43.819267, 28.368807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984234, 43.609550, 28.338261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191838, -0.438230, 0.878153,
		-0.493873, 0.730119, 0.472246,
		-0.848108, -0.524291, -0.076365,
		33.729801, 43.452263, 28.315351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958443, 44.013687, 28.957943>,  <34.323479, 43.819267, 28.368807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958443, 44.013687, 28.957943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824623, 43.661297, 28.824104>,  <33.744331, 43.449863, 28.743801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824623, 43.661297, 28.824104>,  <33.958443, 44.013687, 28.957943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824623, 43.661297, 28.824104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015334, -0.349921, 0.936654,
		-0.942254, 0.318485, 0.103556,
		-0.334547, -0.880978, -0.334598,
		33.724258, 43.397003, 28.723724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518822, 43.776257, 29.502737>,  <33.958443, 44.013687, 28.957943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518822, 43.776257, 29.502737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616737, 43.455914, 29.284122>,  <33.675488, 43.263706, 29.152954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616737, 43.455914, 29.284122>,  <33.518822, 43.776257, 29.502737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616737, 43.455914, 29.284122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034356, -0.556166, 0.830361,
		-0.968969, -0.222036, -0.108626,
		0.244785, -0.800862, -0.546536,
		33.690174, 43.215656, 29.120161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231731, 43.178368, 29.879869>,  <33.518822, 43.776257, 29.502737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231731, 43.178368, 29.879869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493828, 43.018982, 29.623156>,  <33.651085, 42.923351, 29.469128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493828, 43.018982, 29.623156>,  <33.231731, 43.178368, 29.879869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493828, 43.018982, 29.623156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254986, -0.683048, 0.684417,
		-0.711088, -0.612102, -0.345956,
		0.655238, -0.398467, -0.641785,
		33.690399, 42.899441, 29.430620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115753, 42.589943, 30.008671>,  <33.231731, 43.178368, 29.879869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115753, 42.589943, 30.008671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466671, 42.569687, 29.817760>,  <33.677219, 42.557533, 29.703215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466671, 42.569687, 29.817760>,  <33.115753, 42.589943, 30.008671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466671, 42.569687, 29.817760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336314, -0.644593, 0.686580,
		-0.342420, -0.762847, -0.548465,
		0.877292, -0.050642, -0.477278,
		33.729858, 42.554493, 29.674578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291527, 41.830391, 29.857529>,  <33.115753, 42.589943, 30.008671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291527, 41.830391, 29.857529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634396, 42.036327, 29.851933>,  <33.840118, 42.159889, 29.848574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634396, 42.036327, 29.851933>,  <33.291527, 41.830391, 29.857529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634396, 42.036327, 29.851933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432512, -0.704818, 0.562286,
		0.279627, -0.488027, -0.826825,
		0.857171, 0.514842, -0.013992,
		33.891548, 42.190781, 29.847734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774158, 41.425621, 29.585209>,  <33.291527, 41.830391, 29.857529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774158, 41.425621, 29.585209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007786, 41.674419, 29.793819>,  <34.147961, 41.823700, 29.918985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007786, 41.674419, 29.793819>,  <33.774158, 41.425621, 29.585209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007786, 41.674419, 29.793819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192023, -0.730145, 0.655756,
		0.788667, -0.282859, -0.545889,
		0.584065, 0.621996, 0.521526,
		34.183006, 41.861019, 29.950277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419075, 41.125401, 29.678026>,  <33.774158, 41.425621, 29.585209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419075, 41.125401, 29.678026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399879, 41.387318, 29.979740>,  <34.388363, 41.544468, 30.160769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399879, 41.387318, 29.979740>,  <34.419075, 41.125401, 29.678026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399879, 41.387318, 29.979740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498660, -0.638609, 0.586104,
		0.865469, 0.404258, -0.295871,
		-0.047991, 0.654793, 0.754283,
		34.385483, 41.583755, 30.206024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044369, 40.996319, 30.146852>,  <34.419075, 41.125401, 29.678026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044369, 40.996319, 30.146852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800884, 41.222401, 30.369566>,  <34.654793, 41.358051, 30.503195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800884, 41.222401, 30.369566>,  <35.044369, 40.996319, 30.146852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800884, 41.222401, 30.369566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332561, -0.455385, 0.825850,
		0.720327, 0.687871, 0.089233,
		-0.608713, 0.565207, 0.556785,
		34.618271, 41.391964, 30.536602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522327, 41.347561, 30.682398>,  <35.044369, 40.996319, 30.146852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522327, 41.347561, 30.682398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135052, 41.353123, 30.782331>,  <34.902687, 41.356461, 30.842293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135052, 41.353123, 30.782331>,  <35.522327, 41.347561, 30.682398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135052, 41.353123, 30.782331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216991, -0.450556, 0.865976,
		0.124605, 0.892640, 0.433206,
		-0.968188, 0.013903, 0.249836,
		34.844597, 41.357292, 30.857283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517151, 41.645191, 31.367191>,  <35.522327, 41.347561, 30.682398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517151, 41.645191, 31.367191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171078, 41.448311, 31.328840>,  <34.963432, 41.330181, 31.305830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171078, 41.448311, 31.328840>,  <35.517151, 41.645191, 31.367191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171078, 41.448311, 31.328840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123968, -0.395210, 0.910187,
		-0.485885, 0.775596, 0.402947,
		-0.865186, -0.492199, -0.095878,
		34.911522, 41.300652, 31.300077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304047, 41.713531, 32.036106>,  <35.517151, 41.645191, 31.367191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304047, 41.713531, 32.036106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086121, 41.419285, 31.875086>,  <34.955364, 41.242737, 31.778473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086121, 41.419285, 31.875086>,  <35.304047, 41.713531, 32.036106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086121, 41.419285, 31.875086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183586, -0.573039, 0.798700,
		-0.818215, 0.361239, 0.447248,
		-0.544812, -0.735617, -0.402551,
		34.922676, 41.198601, 31.754320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809273, 41.530205, 32.530720>,  <35.304047, 41.713531, 32.036106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809273, 41.530205, 32.530720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875668, 41.207703, 32.303600>,  <34.915504, 41.014202, 32.167328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875668, 41.207703, 32.303600>,  <34.809273, 41.530205, 32.530720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875668, 41.207703, 32.303600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218196, -0.531486, 0.818483,
		-0.961686, -0.259748, 0.087703,
		0.165986, -0.806260, -0.567798,
		34.925465, 40.965824, 32.133263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457760, 41.046669, 32.889236>,  <34.809273, 41.530205, 32.530720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457760, 41.046669, 32.889236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683495, 40.836235, 32.634754>,  <34.818935, 40.709972, 32.482063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683495, 40.836235, 32.634754>,  <34.457760, 41.046669, 32.889236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683495, 40.836235, 32.634754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123564, -0.708139, 0.695177,
		-0.816245, -0.470926, -0.334624,
		0.564337, -0.526087, -0.636204,
		34.852795, 40.678410, 32.443893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251568, 40.264175, 32.939106>,  <34.457760, 41.046669, 32.889236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251568, 40.264175, 32.939106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624382, 40.283752, 32.795486>,  <34.848068, 40.295498, 32.709312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624382, 40.283752, 32.795486>,  <34.251568, 40.264175, 32.939106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624382, 40.283752, 32.795486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281749, -0.720974, 0.633098,
		-0.227883, -0.691232, -0.685761,
		0.932034, 0.048940, -0.359051,
		34.903992, 40.298435, 32.687771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425663, 39.528065, 33.038582>,  <34.251568, 40.264175, 32.939106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425663, 39.528065, 33.038582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779121, 39.698929, 32.961952>,  <34.991196, 39.801445, 32.915974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779121, 39.698929, 32.961952>,  <34.425663, 39.528065, 33.038582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779121, 39.698929, 32.961952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465052, -0.753936, 0.464012,
		0.053770, -0.499117, -0.864865,
		0.883649, 0.427157, -0.191576,
		35.044216, 39.827076, 32.904480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729179, 39.051495, 32.739452>,  <34.425663, 39.528065, 33.038582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729179, 39.051495, 32.739452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015083, 39.283325, 32.896019>,  <35.186626, 39.422424, 32.989960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015083, 39.283325, 32.896019>,  <34.729179, 39.051495, 32.739452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015083, 39.283325, 32.896019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407565, -0.799999, 0.440332,
		0.568342, -0.155202, -0.808022,
		0.714757, 0.579580, 0.391418,
		35.229511, 39.457199, 33.013443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395123, 38.799564, 32.524399>,  <34.729179, 39.051495, 32.739452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395123, 38.799564, 32.524399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462048, 39.006832, 32.859901>,  <35.502205, 39.131191, 33.061203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462048, 39.006832, 32.859901>,  <35.395123, 38.799564, 32.524399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462048, 39.006832, 32.859901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529209, -0.764998, 0.367037,
		0.831832, 0.382465, -0.402215,
		0.167316, 0.518168, 0.838753,
		35.512241, 39.162281, 33.111526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053051, 38.536350, 32.732502>,  <35.395123, 38.799564, 32.524399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053051, 38.536350, 32.732502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938564, 38.750122, 33.050613>,  <35.869873, 38.878384, 33.241478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938564, 38.750122, 33.050613>,  <36.053051, 38.536350, 32.732502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938564, 38.750122, 33.050613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497901, -0.626183, 0.599991,
		0.818641, 0.567698, -0.086866,
		-0.286220, 0.534428, 0.795276,
		35.852699, 38.910450, 33.289196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674812, 38.654663, 33.149429>,  <36.053051, 38.536350, 32.732502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674812, 38.654663, 33.149429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377914, 38.696289, 33.414230>,  <36.199776, 38.721264, 33.573109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377914, 38.696289, 33.414230>,  <36.674812, 38.654663, 33.149429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377914, 38.696289, 33.414230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544226, -0.482801, 0.686091,
		0.391015, 0.869525, 0.301720,
		-0.742243, 0.104068, 0.662000,
		36.155243, 38.727509, 33.612831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946869, 38.819260, 33.795998>,  <36.674812, 38.654663, 33.149429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946869, 38.819260, 33.795998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602276, 38.631222, 33.872795>,  <36.395519, 38.518398, 33.918873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602276, 38.631222, 33.872795>,  <36.946869, 38.819260, 33.795998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602276, 38.631222, 33.872795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477430, -0.621072, 0.621555,
		-0.172943, 0.627124, 0.759478,
		-0.861482, -0.470091, 0.191998,
		36.343830, 38.490196, 33.930393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643806, 39.327702, 33.652321>,  <36.946869, 38.819260, 33.795998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643806, 39.327702, 33.652321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011642, 39.364338, 33.499504>,  <38.232346, 39.386318, 33.407814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011642, 39.364338, 33.499504>,  <37.643806, 39.327702, 33.652321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011642, 39.364338, 33.499504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233966, 0.908870, -0.345277,
		0.315606, 0.406900, 0.857220,
		0.919594, 0.091589, -0.382045,
		38.287521, 39.391815, 33.384892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886799, 39.970890, 33.821247>,  <37.643806, 39.327702, 33.652321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886799, 39.970890, 33.821247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128040, 39.868828, 33.518948>,  <38.272785, 39.807590, 33.337566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128040, 39.868828, 33.518948>,  <37.886799, 39.970890, 33.821247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128040, 39.868828, 33.518948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222506, 0.856036, -0.466577,
		0.766002, 0.449553, 0.459503,
		0.603102, -0.255157, -0.755753,
		38.308971, 39.792282, 33.292221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301037, 40.514462, 33.706093>,  <37.886799, 39.970890, 33.821247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301037, 40.514462, 33.706093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315201, 40.328800, 33.352074>,  <38.323700, 40.217403, 33.139664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315201, 40.328800, 33.352074>,  <38.301037, 40.514462, 33.706093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315201, 40.328800, 33.352074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220955, 0.860047, -0.459889,
		0.974641, 0.211841, -0.072099,
		0.035415, -0.464158, -0.885044,
		38.325825, 40.189552, 33.086559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585575, 41.015137, 33.320732>,  <38.301037, 40.514462, 33.706093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585575, 41.015137, 33.320732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468437, 40.756947, 33.038567>,  <38.398155, 40.602032, 32.869267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468437, 40.756947, 33.038567>,  <38.585575, 41.015137, 33.320732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468437, 40.756947, 33.038567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000165, 0.737791, -0.675029,
		0.956160, -0.197563, -0.216165,
		-0.292845, -0.645471, -0.705414,
		38.380585, 40.563305, 32.826942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009060, 41.124470, 32.754696>,  <38.585575, 41.015137, 33.320732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009060, 41.124470, 32.754696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.670719, 40.956673, 32.622898>,  <38.467716, 40.855995, 32.543819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.670719, 40.956673, 32.622898>,  <39.009060, 41.124470, 32.754696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670719, 40.956673, 32.622898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192320, 0.815983, -0.545147,
		0.497547, -0.397743, -0.770874,
		-0.845849, -0.419491, -0.329496,
		38.416965, 40.830826, 32.524048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921368, 41.423378, 32.086643>,  <39.009060, 41.124470, 32.754696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921368, 41.423378, 32.086643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563778, 41.263592, 32.167877>,  <38.349224, 41.167721, 32.216618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563778, 41.263592, 32.167877>,  <38.921368, 41.423378, 32.086643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563778, 41.263592, 32.167877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437870, 0.682277, -0.585464,
		0.095315, -0.612311, -0.784850,
		-0.893971, -0.399466, 0.203081,
		38.295586, 41.143753, 32.228802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617905, 41.070110, 31.439100>,  <38.921368, 41.423378, 32.086643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617905, 41.070110, 31.439100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308704, 41.186958, 31.664362>,  <38.123184, 41.257065, 31.799519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308704, 41.186958, 31.664362>,  <38.617905, 41.070110, 31.439100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308704, 41.186958, 31.664362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374185, 0.506901, -0.776554,
		-0.512309, -0.810998, -0.282527,
		-0.772997, 0.292118, 0.563154,
		38.076805, 41.274593, 31.833307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159348, 41.287834, 31.012541>,  <38.617905, 41.070110, 31.439100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159348, 41.287834, 31.012541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980083, 41.462162, 31.324749>,  <37.872524, 41.566757, 31.512074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980083, 41.462162, 31.324749>,  <38.159348, 41.287834, 31.012541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980083, 41.462162, 31.324749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320598, 0.736676, -0.595420,
		-0.834487, -0.517078, -0.190427,
		-0.448161, 0.435820, 0.780521,
		37.845634, 41.592907, 31.558905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472267, 41.458656, 30.799770>,  <38.159348, 41.287834, 31.012541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472267, 41.458656, 30.799770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533215, 41.676826, 31.129448>,  <37.569782, 41.807728, 31.327255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533215, 41.676826, 31.129448>,  <37.472267, 41.458656, 30.799770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533215, 41.676826, 31.129448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522382, 0.752367, -0.401324,
		-0.838989, -0.369396, 0.399555,
		0.152365, 0.545426, 0.824193,
		37.578922, 41.840454, 31.376705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981300, 41.920357, 30.652639>,  <37.472267, 41.458656, 30.799770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981300, 41.920357, 30.652639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.200558, 42.090588, 30.940645>,  <37.332111, 42.192726, 31.113449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.200558, 42.090588, 30.940645>,  <36.981300, 41.920357, 30.652639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200558, 42.090588, 30.940645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261427, 0.904912, -0.335843,
		-0.794478, -0.004142, 0.607278,
		0.548142, 0.425579, 0.720016,
		37.365002, 42.218262, 31.156651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474426, 42.334259, 31.055822>,  <36.981300, 41.920357, 30.652639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474426, 42.334259, 31.055822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848412, 42.467346, 31.105038>,  <37.072803, 42.547199, 31.134567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848412, 42.467346, 31.105038>,  <36.474426, 42.334259, 31.055822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848412, 42.467346, 31.105038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277286, 0.901785, -0.331506,
		-0.221253, 0.275830, 0.935396,
		0.934965, 0.332719, 0.123039,
		37.128902, 42.567162, 31.141949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489208, 42.995026, 31.282915>,  <36.474426, 42.334259, 31.055822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489208, 42.995026, 31.282915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859879, 42.984417, 31.132942>,  <37.082279, 42.978050, 31.042959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859879, 42.984417, 31.132942>,  <36.489208, 42.995026, 31.282915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859879, 42.984417, 31.132942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173349, 0.854932, -0.488918,
		0.333509, 0.518062, 0.787644,
		0.926672, -0.026521, -0.374933,
		37.137878, 42.976460, 31.020462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772915, 43.668884, 31.249502>,  <36.489208, 42.995026, 31.282915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772915, 43.668884, 31.249502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978268, 43.463959, 30.974119>,  <37.101479, 43.341003, 30.808889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978268, 43.463959, 30.974119>,  <36.772915, 43.668884, 31.249502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978268, 43.463959, 30.974119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103225, 0.759557, -0.642198,
		0.851930, 0.400758, 0.337058,
		0.513381, -0.512315, -0.688458,
		37.132282, 43.310265, 30.767582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222847, 44.161240, 30.989517>,  <36.772915, 43.668884, 31.249502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222847, 44.161240, 30.989517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177620, 43.864048, 30.725639>,  <37.150486, 43.685734, 30.567312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177620, 43.864048, 30.725639>,  <37.222847, 44.161240, 30.989517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177620, 43.864048, 30.725639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098999, 0.669074, -0.736572,
		0.988643, -0.017972, -0.149203,
		-0.113066, -0.742978, -0.659697,
		37.143700, 43.641155, 30.527731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469830, 44.472141, 30.438555>,  <37.222847, 44.161240, 30.989517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469830, 44.472141, 30.438555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264584, 44.167065, 30.281069>,  <37.141438, 43.984016, 30.186577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264584, 44.167065, 30.281069>,  <37.469830, 44.472141, 30.438555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264584, 44.167065, 30.281069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203469, 0.553714, -0.807466,
		0.833857, -0.334210, -0.439301,
		-0.513110, -0.762696, -0.393716,
		37.110649, 43.938255, 30.162954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543499, 44.573009, 29.749613>,  <37.469830, 44.472141, 30.438555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543499, 44.573009, 29.749613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237392, 44.315788, 29.761312>,  <37.053730, 44.161457, 29.768332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237392, 44.315788, 29.761312>,  <37.543499, 44.573009, 29.749613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237392, 44.315788, 29.761312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231891, 0.233006, -0.944423,
		0.600497, -0.729516, -0.327429,
		-0.765265, -0.643051, 0.029249,
		37.007812, 44.122871, 29.770086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462440, 44.197395, 29.073826>,  <37.543499, 44.573009, 29.749613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462440, 44.197395, 29.073826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095924, 44.195938, 29.234024>,  <36.876015, 44.195065, 29.330143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095924, 44.195938, 29.234024>,  <37.462440, 44.197395, 29.073826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095924, 44.195938, 29.234024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360014, 0.445646, -0.819628,
		-0.175494, -0.895202, -0.409653,
		-0.916292, -0.003641, 0.400494,
		36.821037, 44.194847, 29.354172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002605, 43.789333, 28.634779>,  <37.462440, 44.197395, 29.073826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002605, 43.789333, 28.634779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779057, 44.030987, 28.862001>,  <36.644928, 44.175980, 28.998335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779057, 44.030987, 28.862001>,  <37.002605, 43.789333, 28.634779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779057, 44.030987, 28.862001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448642, 0.355834, -0.819818,
		-0.697411, -0.713028, 0.072172,
		-0.558872, 0.604130, 0.568057,
		36.611393, 44.212227, 29.032419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315224, 43.702045, 28.326563>,  <37.002605, 43.789333, 28.634779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315224, 43.702045, 28.326563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250393, 44.045113, 28.521757>,  <36.211494, 44.250954, 28.638874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250393, 44.045113, 28.521757>,  <36.315224, 43.702045, 28.326563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250393, 44.045113, 28.521757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516260, 0.347744, -0.782656,
		-0.840955, -0.378781, 0.386418,
		-0.162081, 0.857671, 0.487986,
		36.201767, 44.302414, 28.668154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676342, 43.859646, 28.130491>,  <36.315224, 43.702045, 28.326563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676342, 43.859646, 28.130491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807247, 44.207169, 28.279127>,  <35.885792, 44.415680, 28.368309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807247, 44.207169, 28.279127>,  <35.676342, 43.859646, 28.130491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807247, 44.207169, 28.279127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519098, 0.493891, -0.697574,
		-0.789578, 0.035403, 0.612628,
		0.327267, 0.868803, 0.371588,
		35.905426, 44.467808, 28.390604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044621, 44.278347, 28.158754>,  <35.676342, 43.859646, 28.130491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044621, 44.278347, 28.158754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356968, 44.527382, 28.179260>,  <35.544376, 44.676804, 28.191563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356968, 44.527382, 28.179260>,  <35.044621, 44.278347, 28.158754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356968, 44.527382, 28.179260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420798, 0.584874, -0.693435,
		-0.461707, 0.519911, 0.718693,
		0.780869, 0.622588, 0.051263,
		35.591228, 44.714157, 28.194639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771011, 44.945557, 28.213957>,  <35.044621, 44.278347, 28.158754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771011, 44.945557, 28.213957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144047, 44.973568, 28.072323>,  <35.367867, 44.990376, 27.987343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144047, 44.973568, 28.072323>,  <34.771011, 44.945557, 28.213957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144047, 44.973568, 28.072323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329631, 0.564903, -0.756458,
		0.147052, 0.822181, 0.549904,
		0.932587, 0.070027, -0.354086,
		35.423824, 44.994576, 27.966097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817390, 45.611519, 27.975687>,  <34.771011, 44.945557, 28.213957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817390, 45.611519, 27.975687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112652, 45.438805, 27.768347>,  <35.289810, 45.335175, 27.643942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112652, 45.438805, 27.768347>,  <34.817390, 45.611519, 27.975687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112652, 45.438805, 27.768347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319207, 0.453355, -0.832212,
		0.594337, 0.779761, 0.196816,
		0.738153, -0.431790, -0.518351,
		35.334099, 45.309269, 27.612843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074284, 46.161449, 27.623718>,  <34.817390, 45.611519, 27.975687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074284, 46.161449, 27.623718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196342, 45.826321, 27.442636>,  <35.269577, 45.625244, 27.333988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196342, 45.826321, 27.442636>,  <35.074284, 46.161449, 27.623718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196342, 45.826321, 27.442636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141988, 0.430035, -0.891577,
		0.941660, 0.336342, 0.012263,
		0.305148, -0.837821, -0.452703,
		35.287888, 45.574974, 27.306826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425644, 46.415306, 27.157368>,  <35.074284, 46.161449, 27.623718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425644, 46.415306, 27.157368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328667, 46.046097, 27.037872>,  <35.270481, 45.824570, 26.966175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328667, 46.046097, 27.037872>,  <35.425644, 46.415306, 27.157368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328667, 46.046097, 27.037872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023251, 0.313364, -0.949349,
		0.969887, -0.223217, -0.097435,
		-0.242444, -0.923026, -0.298737,
		35.255932, 45.769188, 26.948252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634747, 46.299923, 26.474922>,  <35.425644, 46.415306, 27.157368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634747, 46.299923, 26.474922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391850, 45.982590, 26.492285>,  <35.246113, 45.792191, 26.502703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391850, 45.982590, 26.492285>,  <35.634747, 46.299923, 26.474922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391850, 45.982590, 26.492285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182385, 0.086012, -0.979458,
		0.773299, -0.602686, -0.196921,
		-0.607243, -0.793330, 0.043408,
		35.209675, 45.744591, 26.505306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749050, 45.934452, 25.847275>,  <35.634747, 46.299923, 26.474922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749050, 45.934452, 25.847275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377216, 45.842983, 25.962912>,  <35.154114, 45.788101, 26.032293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377216, 45.842983, 25.962912>,  <35.749050, 45.934452, 25.847275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377216, 45.842983, 25.962912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338275, 0.217743, -0.915510,
		0.146406, -0.948839, -0.279766,
		-0.929589, -0.228674, 0.289090,
		35.098339, 45.774380, 26.049639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443680, 45.332157, 25.404137>,  <35.749050, 45.934452, 25.847275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443680, 45.332157, 25.404137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123577, 45.532536, 25.535980>,  <34.931515, 45.652763, 25.615086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123577, 45.532536, 25.535980>,  <35.443680, 45.332157, 25.404137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123577, 45.532536, 25.535980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439950, -0.116976, -0.890371,
		-0.407476, -0.857534, 0.314004,
		-0.800255, 0.500951, 0.329607,
		34.883499, 45.682819, 25.634863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860676, 45.018108, 25.127102>,  <35.443680, 45.332157, 25.404137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860676, 45.018108, 25.127102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739403, 45.379711, 25.247673>,  <34.666637, 45.596672, 25.320015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739403, 45.379711, 25.247673>,  <34.860676, 45.018108, 25.127102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739403, 45.379711, 25.247673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515939, 0.110220, -0.849505,
		-0.801179, -0.413071, 0.432994,
		-0.303181, 0.904005, 0.301425,
		34.648449, 45.650913, 25.338100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077950, 45.050182, 25.022247>,  <34.860676, 45.018108, 25.127102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077950, 45.050182, 25.022247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201080, 45.430477, 25.036921>,  <34.274960, 45.658653, 25.045725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201080, 45.430477, 25.036921>,  <34.077950, 45.050182, 25.022247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201080, 45.430477, 25.036921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512993, 0.198321, -0.835169,
		-0.801298, 0.238271, 0.548769,
		0.307829, 0.950734, 0.036683,
		34.293430, 45.715698, 25.047926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439762, 45.398327, 24.944170>,  <34.077950, 45.050182, 25.022247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439762, 45.398327, 24.944170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740055, 45.647526, 24.856285>,  <33.920231, 45.797047, 24.803555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740055, 45.647526, 24.856285>,  <33.439762, 45.398327, 24.944170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740055, 45.647526, 24.856285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511319, 0.337405, -0.790387,
		-0.418279, 0.705711, 0.571853,
		0.750730, 0.623001, -0.219714,
		33.965275, 45.834427, 24.790371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160072, 46.040455, 24.819016>,  <33.439762, 45.398327, 24.944170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160072, 46.040455, 24.819016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513348, 46.079807, 24.635584>,  <33.725315, 46.103420, 24.525524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513348, 46.079807, 24.635584>,  <33.160072, 46.040455, 24.819016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513348, 46.079807, 24.635584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450641, 0.448988, -0.771578,
		0.129986, 0.888105, 0.440878,
		0.883191, 0.098383, -0.458578,
		33.778305, 46.109322, 24.498011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222141, 46.637959, 24.637688>,  <33.160072, 46.040455, 24.819016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222141, 46.637959, 24.637688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493256, 46.479057, 24.390203>,  <33.655926, 46.383717, 24.241713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493256, 46.479057, 24.390203>,  <33.222141, 46.637959, 24.637688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493256, 46.479057, 24.390203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367481, 0.545819, -0.753020,
		0.636840, 0.737749, 0.223966,
		0.677785, -0.397250, -0.618708,
		33.696590, 46.359882, 24.204592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453800, 47.253654, 24.240835>,  <33.222141, 46.637959, 24.637688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453800, 47.253654, 24.240835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578144, 46.931122, 24.039560>,  <33.652752, 46.737602, 23.918795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578144, 46.931122, 24.039560>,  <33.453800, 47.253654, 24.240835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578144, 46.931122, 24.039560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053471, 0.513744, -0.856276,
		0.948950, 0.293089, 0.116588,
		0.310861, -0.806329, -0.503189,
		33.671402, 46.689224, 23.888603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943020, 47.512005, 23.852428>,  <33.453800, 47.253654, 24.240835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943020, 47.512005, 23.852428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833649, 47.176353, 23.664341>,  <33.768028, 46.974964, 23.551489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833649, 47.176353, 23.664341>,  <33.943020, 47.512005, 23.852428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833649, 47.176353, 23.664341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053873, 0.474723, -0.878485,
		0.960384, -0.265531, -0.084594,
		-0.273424, -0.839126, -0.470221,
		33.751621, 46.924614, 23.523275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540062, 47.285156, 23.370798>,  <33.943020, 47.512005, 23.852428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540062, 47.285156, 23.370798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181900, 47.151363, 23.253241>,  <33.967003, 47.071087, 23.182705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181900, 47.151363, 23.253241>,  <34.540062, 47.285156, 23.370798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181900, 47.151363, 23.253241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174838, 0.342915, -0.922952,
		0.409499, -0.877796, -0.248565,
		-0.895401, -0.334489, -0.293896,
		33.913280, 47.051018, 23.165071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626705, 46.945427, 22.678268>,  <34.540062, 47.285156, 23.370798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626705, 46.945427, 22.678268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232578, 47.010704, 22.698299>,  <33.996101, 47.049870, 22.710318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232578, 47.010704, 22.698299>,  <34.626705, 46.945427, 22.678268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232578, 47.010704, 22.698299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037550, 0.493383, -0.869001,
		-0.166527, -0.854365, -0.492269,
		-0.985322, 0.163197, 0.050080,
		33.936981, 47.059662, 22.713324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051422, 46.752228, 22.038467>,  <34.626705, 46.945427, 22.678268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051422, 46.752228, 22.038467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136909, 46.525146, 21.720465>,  <34.188202, 46.388897, 21.529663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136909, 46.525146, 21.720465>,  <34.051422, 46.752228, 22.038467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136909, 46.525146, 21.720465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735977, -0.441579, 0.513173,
		-0.642389, -0.694781, 0.323445,
		0.213716, -0.567704, -0.795008,
		34.201023, 46.354836, 21.481962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090630, 46.044174, 22.311823>,  <34.051422, 46.752228, 22.038467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090630, 46.044174, 22.311823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288906, 46.011616, 21.965952>,  <34.407871, 45.992081, 21.758429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288906, 46.011616, 21.965952>,  <34.090630, 46.044174, 22.311823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288906, 46.011616, 21.965952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775742, -0.406194, 0.482939,
		-0.390532, -0.910155, -0.138211,
		0.495691, -0.081387, -0.864677,
		34.437614, 45.987198, 21.706549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434746, 45.334457, 22.379723>,  <34.090630, 46.044174, 22.311823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434746, 45.334457, 22.379723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622406, 45.577728, 22.123592>,  <34.735001, 45.723690, 21.969913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622406, 45.577728, 22.123592>,  <34.434746, 45.334457, 22.379723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622406, 45.577728, 22.123592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879581, -0.256973, 0.400378,
		0.078954, -0.751056, -0.655500,
		0.469152, 0.608177, -0.640326,
		34.763153, 45.760181, 21.931494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026451, 44.986275, 22.213743>,  <34.434746, 45.334457, 22.379723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026451, 44.986275, 22.213743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102386, 45.370064, 22.130430>,  <35.147949, 45.600338, 22.080442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102386, 45.370064, 22.130430>,  <35.026451, 44.986275, 22.213743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102386, 45.370064, 22.130430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885628, -0.075773, 0.458172,
		0.423819, -0.271439, -0.864117,
		0.189843, 0.959468, -0.208280,
		35.159340, 45.657906, 22.067945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645515, 45.063084, 21.844332>,  <35.026451, 44.986275, 22.213743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645515, 45.063084, 21.844332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590641, 45.414066, 22.028183>,  <35.557716, 45.624657, 22.138493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590641, 45.414066, 22.028183>,  <35.645515, 45.063084, 21.844332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590641, 45.414066, 22.028183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844379, -0.139004, 0.517399,
		0.517883, 0.459081, -0.721833,
		-0.137190, 0.877452, 0.459626,
		35.549484, 45.677303, 22.166071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232883, 45.245453, 21.906591>,  <35.645515, 45.063084, 21.844332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232883, 45.245453, 21.906591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061203, 45.489269, 22.173197>,  <35.958195, 45.635559, 22.333160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061203, 45.489269, 22.173197>,  <36.232883, 45.245453, 21.906591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061203, 45.489269, 22.173197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805061, -0.076360, 0.588256,
		0.409464, 0.789065, -0.457947,
		-0.429204, 0.609545, 0.666512,
		35.932442, 45.672134, 22.373150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836823, 45.496815, 22.219984>,  <36.232883, 45.245453, 21.906591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836823, 45.496815, 22.219984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533276, 45.607864, 22.455626>,  <36.351147, 45.674492, 22.597012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533276, 45.607864, 22.455626>,  <36.836823, 45.496815, 22.219984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533276, 45.607864, 22.455626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606843, -0.026842, 0.794368,
		0.236346, 0.960316, -0.148103,
		-0.758869, 0.277621, 0.589105,
		36.305614, 45.691151, 22.632357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075157, 46.000080, 22.678644>,  <36.836823, 45.496815, 22.219984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075157, 46.000080, 22.678644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759480, 45.860012, 22.880457>,  <36.570072, 45.775970, 23.001545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759480, 45.860012, 22.880457>,  <37.075157, 46.000080, 22.678644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759480, 45.860012, 22.880457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580047, -0.155066, 0.799688,
		-0.201795, 0.923760, 0.325494,
		-0.789193, -0.350174, 0.504533,
		36.522720, 45.754959, 23.031816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032578, 46.364330, 23.272915>,  <37.075157, 46.000080, 22.678644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032578, 46.364330, 23.272915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.837418, 46.023266, 23.347662>,  <36.720322, 45.818626, 23.392511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.837418, 46.023266, 23.347662>,  <37.032578, 46.364330, 23.272915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837418, 46.023266, 23.347662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494044, -0.093246, 0.864422,
		-0.719638, 0.514069, 0.466748,
		-0.487895, -0.852665, 0.186870,
		36.691048, 45.767467, 23.403723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770725, 46.363560, 23.904894>,  <37.032578, 46.364330, 23.272915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770725, 46.363560, 23.904894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743439, 45.964817, 23.888737>,  <36.727066, 45.725571, 23.879042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743439, 45.964817, 23.888737>,  <36.770725, 46.363560, 23.904894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743439, 45.964817, 23.888737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401800, -0.064509, 0.913453,
		-0.913184, 0.046079, 0.404935,
		-0.068213, -0.996853, -0.040394,
		36.722977, 45.665760, 23.876619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541382, 46.198360, 24.557604>,  <36.770725, 46.363560, 23.904894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541382, 46.198360, 24.557604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704571, 45.860157, 24.419807>,  <36.802483, 45.657234, 24.337130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704571, 45.860157, 24.419807>,  <36.541382, 46.198360, 24.557604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704571, 45.860157, 24.419807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393848, -0.177427, 0.901889,
		-0.823678, -0.503619, 0.260618,
		0.407968, -0.845510, -0.344492,
		36.826962, 45.606503, 24.316460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366360, 45.567322, 25.004570>,  <36.541382, 46.198360, 24.557604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366360, 45.567322, 25.004570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708050, 45.491524, 24.810917>,  <36.913063, 45.446045, 24.694725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708050, 45.491524, 24.810917>,  <36.366360, 45.567322, 25.004570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708050, 45.491524, 24.810917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395819, -0.366707, 0.841934,
		-0.337066, -0.910836, -0.238252,
		0.854233, -0.189483, -0.484131,
		36.964317, 45.434677, 24.665676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454815, 44.921097, 25.302120>,  <36.366360, 45.567322, 25.004570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454815, 44.921097, 25.302120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802723, 45.026459, 25.135210>,  <37.011467, 45.089676, 25.035063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802723, 45.026459, 25.135210>,  <36.454815, 44.921097, 25.302120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802723, 45.026459, 25.135210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493286, -0.441745, 0.749353,
		0.013052, -0.857602, -0.514149,
		0.869769, 0.263403, -0.417277,
		37.063652, 45.105480, 25.010027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906223, 44.330856, 25.261488>,  <36.454815, 44.921097, 25.302120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906223, 44.330856, 25.261488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120594, 44.668396, 25.272066>,  <37.249214, 44.870922, 25.278414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120594, 44.668396, 25.272066>,  <36.906223, 44.330856, 25.261488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120594, 44.668396, 25.272066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618923, -0.413991, 0.667492,
		0.574212, -0.341358, -0.744147,
		0.535924, 0.843852, 0.026445,
		37.281372, 44.921551, 25.279999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626438, 44.113567, 25.359396>,  <36.906223, 44.330856, 25.261488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626438, 44.113567, 25.359396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671017, 44.500340, 25.451160>,  <37.697765, 44.732403, 25.506218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671017, 44.500340, 25.451160>,  <37.626438, 44.113567, 25.359396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671017, 44.500340, 25.451160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741968, -0.234532, 0.628075,
		0.661108, 0.100218, -0.743568,
		0.111446, 0.966929, 0.229410,
		37.704449, 44.790417, 25.519983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338840, 44.141224, 25.452917>,  <37.626438, 44.113567, 25.359396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338840, 44.141224, 25.452917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170261, 44.439037, 25.660013>,  <38.069115, 44.617725, 25.784271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170261, 44.439037, 25.660013>,  <38.338840, 44.141224, 25.452917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170261, 44.439037, 25.660013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596925, -0.202039, 0.776441,
		0.682688, 0.636282, -0.359280,
		-0.421447, 0.744530, 0.517743,
		38.043827, 44.662395, 25.815336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918095, 44.414734, 25.785391>,  <38.338840, 44.141224, 25.452917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918095, 44.414734, 25.785391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599892, 44.520386, 26.003529>,  <38.408970, 44.583778, 26.134411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599892, 44.520386, 26.003529>,  <38.918095, 44.414734, 25.785391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599892, 44.520386, 26.003529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541498, -0.094014, 0.835429,
		0.271931, 0.959895, -0.068236,
		-0.795508, 0.264128, 0.545346,
		38.361240, 44.599625, 26.167133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164673, 44.936169, 26.276897>,  <38.918095, 44.414734, 25.785391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164673, 44.936169, 26.276897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833458, 44.767174, 26.424330>,  <38.634727, 44.665775, 26.512789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833458, 44.767174, 26.424330>,  <39.164673, 44.936169, 26.276897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833458, 44.767174, 26.424330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431296, -0.059952, 0.900216,
		-0.358237, 0.904382, 0.231861,
		-0.828040, -0.422492, 0.368579,
		38.585045, 44.640427, 26.534903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145153, 45.257023, 26.953976>,  <39.164673, 44.936169, 26.276897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145153, 45.257023, 26.953976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872498, 44.964451, 26.961763>,  <38.708904, 44.788906, 26.966436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872498, 44.964451, 26.961763>,  <39.145153, 45.257023, 26.953976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872498, 44.964451, 26.961763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248430, -0.206328, 0.946420,
		-0.688224, 0.649952, 0.322350,
		-0.681638, -0.731431, 0.019467,
		38.668007, 44.745022, 26.967604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803448, 45.354965, 27.641079>,  <39.145153, 45.257023, 26.953976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803448, 45.354965, 27.641079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762764, 44.976028, 27.519619>,  <38.738354, 44.748669, 27.446743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762764, 44.976028, 27.519619>,  <38.803448, 45.354965, 27.641079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762764, 44.976028, 27.519619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174808, -0.317503, 0.932005,
		-0.979335, 0.041711, 0.197895,
		-0.101708, -0.947339, -0.303651,
		38.732250, 44.691826, 27.428524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463203, 44.982231, 28.213167>,  <38.803448, 45.354965, 27.641079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463203, 44.982231, 28.213167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604744, 44.674606, 28.000254>,  <38.689671, 44.490032, 27.872505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604744, 44.674606, 28.000254>,  <38.463203, 44.982231, 28.213167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604744, 44.674606, 28.000254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194318, -0.496234, 0.846163,
		-0.914892, -0.402850, -0.026151,
		0.353854, -0.769067, -0.532282,
		38.710899, 44.443886, 27.840569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110851, 44.389313, 28.438360>,  <38.463203, 44.982231, 28.213167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110851, 44.389313, 28.438360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458141, 44.274609, 28.276398>,  <38.666515, 44.205788, 28.179220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458141, 44.274609, 28.276398>,  <38.110851, 44.389313, 28.438360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458141, 44.274609, 28.276398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182639, -0.574061, 0.798183,
		-0.461325, -0.766958, -0.446044,
		0.868229, -0.286757, -0.404906,
		38.718609, 44.188580, 28.154926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138031, 43.680485, 28.616241>,  <38.110851, 44.389313, 28.438360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138031, 43.680485, 28.616241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513851, 43.775925, 28.518007>,  <38.739346, 43.833187, 28.459066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513851, 43.775925, 28.518007>,  <38.138031, 43.680485, 28.616241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513851, 43.775925, 28.518007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340688, -0.579691, 0.740196,
		0.034246, -0.779121, -0.625938,
		0.939553, 0.238598, -0.245585,
		38.795715, 43.847504, 28.444332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505844, 43.113274, 28.467176>,  <38.138031, 43.680485, 28.616241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505844, 43.113274, 28.467176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812374, 43.362885, 28.528282>,  <38.996292, 43.512650, 28.564945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812374, 43.362885, 28.528282>,  <38.505844, 43.113274, 28.467176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812374, 43.362885, 28.528282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427329, -0.672657, 0.604088,
		0.479726, -0.397646, -0.782138,
		0.766324, 0.624027, 0.152765,
		39.042271, 43.550091, 28.574112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094650, 42.689060, 28.362396>,  <38.505844, 43.113274, 28.467176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094650, 42.689060, 28.362396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190098, 42.994678, 28.602161>,  <39.247364, 43.178051, 28.746019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190098, 42.994678, 28.602161>,  <39.094650, 42.689060, 28.362396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190098, 42.994678, 28.602161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222062, -0.643817, 0.732249,
		0.945384, -0.041619, -0.323291,
		0.238616, 0.764047, 0.599412,
		39.261681, 43.223892, 28.781984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830547, 42.576214, 28.517654>,  <39.094650, 42.689060, 28.362396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830547, 42.576214, 28.517654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689716, 42.819004, 28.802643>,  <39.605217, 42.964680, 28.973637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689716, 42.819004, 28.802643>,  <39.830547, 42.576214, 28.517654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689716, 42.819004, 28.802643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449990, -0.557692, 0.697487,
		0.820699, 0.566178, -0.076781,
		-0.352082, 0.606977, 0.712472,
		39.584091, 43.001099, 29.016384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268368, 42.500504, 29.053295>,  <39.830547, 42.576214, 28.517654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268368, 42.500504, 29.053295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939968, 42.650028, 29.225910>,  <39.742928, 42.739742, 29.329479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939968, 42.650028, 29.225910>,  <40.268368, 42.500504, 29.053295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939968, 42.650028, 29.225910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204355, -0.513372, 0.833480,
		0.533105, 0.772473, 0.345087,
		-0.820998, 0.373812, 0.431540,
		39.693668, 42.762173, 29.355371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513645, 42.677643, 29.706223>,  <40.268368, 42.500504, 29.053295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513645, 42.677643, 29.706223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123104, 42.599602, 29.743465>,  <39.888779, 42.552776, 29.765812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123104, 42.599602, 29.743465>,  <40.513645, 42.677643, 29.706223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123104, 42.599602, 29.743465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183971, -0.523690, 0.831807,
		-0.113526, 0.829267, 0.547200,
		-0.976354, -0.195101, 0.093109,
		39.830196, 42.541073, 29.771399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439098, 42.663670, 30.449333>,  <40.513645, 42.677643, 29.706223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439098, 42.663670, 30.449333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.110916, 42.489254, 30.301426>,  <39.914009, 42.384605, 30.212681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.110916, 42.489254, 30.301426>,  <40.439098, 42.663670, 30.449333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110916, 42.489254, 30.301426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034988, -0.683854, 0.728779,
		-0.570644, 0.584991, 0.576326,
		-0.820452, -0.436038, -0.369770,
		39.864780, 42.358444, 30.190495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071659, 42.469196, 31.060480>,  <40.439098, 42.663670, 30.449333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071659, 42.469196, 31.060480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925465, 42.249977, 30.759531>,  <39.837749, 42.118446, 30.578960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925465, 42.249977, 30.759531>,  <40.071659, 42.469196, 31.060480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925465, 42.249977, 30.759531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138052, -0.831270, 0.538453,
		-0.920523, 0.092929, 0.379475,
		-0.365485, -0.548046, -0.752374,
		39.815819, 42.085564, 30.533819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567738, 42.065205, 31.387680>,  <40.071659, 42.469196, 31.060480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567738, 42.065205, 31.387680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639496, 41.879448, 31.040771>,  <39.682552, 41.767994, 30.832626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639496, 41.879448, 31.040771>,  <39.567738, 42.065205, 31.387680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639496, 41.879448, 31.040771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320250, -0.805987, 0.497819,
		-0.930191, -0.367052, 0.004129,
		0.179398, -0.464390, -0.867271,
		39.693314, 41.740131, 30.780590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314632, 41.344532, 31.448648>,  <39.567738, 42.065205, 31.387680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314632, 41.344532, 31.448648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553619, 41.298672, 31.131187>,  <39.697014, 41.271156, 30.940712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553619, 41.298672, 31.131187>,  <39.314632, 41.344532, 31.448648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553619, 41.298672, 31.131187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407213, -0.809233, 0.423461,
		-0.690800, -0.576191, -0.436806,
		0.597472, -0.114654, -0.793651,
		39.732861, 41.264275, 30.893091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279594, 40.653137, 31.264648>,  <39.314632, 41.344532, 31.448648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279594, 40.653137, 31.264648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621891, 40.742496, 31.077972>,  <39.827271, 40.796112, 30.965967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621891, 40.742496, 31.077972>,  <39.279594, 40.653137, 31.264648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621891, 40.742496, 31.077972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365540, -0.899389, 0.239748,
		-0.366178, -0.375757, -0.851305,
		0.855742, 0.223395, -0.466691,
		39.878613, 40.809517, 30.937965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485626, 40.016685, 31.018637>,  <39.279594, 40.653137, 31.264648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485626, 40.016685, 31.018637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804642, 40.257717, 31.030199>,  <39.996052, 40.402336, 31.037136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804642, 40.257717, 31.030199>,  <39.485626, 40.016685, 31.018637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804642, 40.257717, 31.030199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580171, -0.779251, 0.237001,
		0.165338, -0.172245, -0.971079,
		0.797537, 0.602577, 0.028908,
		40.043903, 40.438492, 31.038872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998680, 39.580391, 30.784294>,  <39.485626, 40.016685, 31.018637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998680, 39.580391, 30.784294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161919, 39.883690, 30.987673>,  <40.259861, 40.065670, 31.109701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161919, 39.883690, 30.987673>,  <39.998680, 39.580391, 30.784294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161919, 39.883690, 30.987673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634853, -0.635931, 0.438810,
		0.656064, 0.143713, -0.740896,
		0.408095, 0.758247, 0.508448,
		40.284348, 40.111164, 31.140207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743481, 39.595551, 30.607445>,  <39.998680, 39.580391, 30.784294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743481, 39.595551, 30.607445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706821, 39.767372, 30.966797>,  <40.684826, 39.870464, 31.182407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706821, 39.767372, 30.966797>,  <40.743481, 39.595551, 30.607445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706821, 39.767372, 30.966797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741697, -0.572532, 0.349418,
		0.664444, 0.698348, -0.266127,
		-0.091649, 0.429554, 0.898378,
		40.679325, 39.896240, 31.236311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398949, 39.796364, 30.855932>,  <40.743481, 39.595551, 30.607445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398949, 39.796364, 30.855932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.192970, 39.810997, 31.198509>,  <41.069382, 39.819778, 31.404055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.192970, 39.810997, 31.198509>,  <41.398949, 39.796364, 30.855932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192970, 39.810997, 31.198509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763227, -0.435297, 0.477495,
		0.390273, 0.899544, 0.196235,
		-0.514948, 0.036582, 0.856440,
		41.038486, 39.821972, 31.455441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915730, 40.008217, 31.358625>,  <41.398949, 39.796364, 30.855932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.915730, 40.008217, 31.358625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624001, 39.845112, 31.578375>,  <41.448963, 39.747250, 31.710224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624001, 39.845112, 31.578375>,  <41.915730, 40.008217, 31.358625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624001, 39.845112, 31.578375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679021, -0.529698, 0.508281,
		0.083743, 0.743739, 0.663204,
		-0.729327, -0.407765, 0.549373,
		41.405201, 39.722782, 31.743187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158924, 40.031033, 32.008766>,  <41.915730, 40.008217, 31.358625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158924, 40.031033, 32.008766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859962, 39.770302, 32.060150>,  <41.680584, 39.613861, 32.090981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859962, 39.770302, 32.060150>,  <42.158924, 40.031033, 32.008766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859962, 39.770302, 32.060150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478650, -0.394220, 0.784528,
		-0.460738, 0.647848, 0.606641,
		-0.747405, -0.651831, 0.128460,
		41.635742, 39.574753, 32.098690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.160179, 39.816345, 32.698727>,  <42.158924, 40.031033, 32.008766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.160179, 39.816345, 32.698727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962387, 39.525810, 32.507763>,  <41.843712, 39.351490, 32.393185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962387, 39.525810, 32.507763>,  <42.160179, 39.816345, 32.698727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962387, 39.525810, 32.507763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600438, -0.682588, 0.416590,
		-0.628461, -0.080660, 0.773648,
		-0.494481, -0.726338, -0.477411,
		41.814041, 39.307907, 32.364540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845280, 39.201847, 33.198009>,  <42.160179, 39.816345, 32.698727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845280, 39.201847, 33.198009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.923691, 39.038128, 32.841572>,  <41.970737, 38.939896, 32.627708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.923691, 39.038128, 32.841572>,  <41.845280, 39.201847, 33.198009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.923691, 39.038128, 32.841572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451465, -0.769016, 0.452542,
		-0.870489, -0.491009, 0.034033,
		0.196030, -0.409298, -0.891093,
		41.982498, 38.915340, 32.574245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.862106, 38.669704, 33.726231>,  <41.845280, 39.201847, 33.198009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.862106, 38.669704, 33.726231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552349, 38.493019, 33.907429>,  <41.366493, 38.387009, 34.016148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552349, 38.493019, 33.907429>,  <41.862106, 38.669704, 33.726231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552349, 38.493019, 33.907429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446659, 0.888751, 0.103043,
		-0.448114, -0.122538, -0.885538,
		-0.774396, -0.441709, 0.452995,
		41.320030, 38.360508, 34.043327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270794, 38.966820, 33.548809>,  <41.862106, 38.669704, 33.726231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270794, 38.966820, 33.548809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.108135, 38.785194, 33.865913>,  <41.010540, 38.676220, 34.056175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.108135, 38.785194, 33.865913>,  <41.270794, 38.966820, 33.548809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.108135, 38.785194, 33.865913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566773, 0.805954, 0.170898,
		-0.716525, -0.379818, -0.585089,
		-0.406645, -0.454066, 0.792757,
		40.986141, 38.648975, 34.103741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516949, 39.141594, 33.568302>,  <41.270794, 38.966820, 33.548809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516949, 39.141594, 33.568302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627762, 39.074123, 33.946678>,  <40.694252, 39.033642, 34.173702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627762, 39.074123, 33.946678>,  <40.516949, 39.141594, 33.568302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627762, 39.074123, 33.946678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641588, 0.700375, 0.312793,
		-0.715273, -0.693557, 0.085806,
		0.277036, -0.168680, 0.945938,
		40.710873, 39.023518, 34.230461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949646, 38.958649, 33.988747>,  <40.516949, 39.141594, 33.568302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949646, 38.958649, 33.988747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201229, 39.103455, 34.263950>,  <40.352177, 39.190338, 34.429073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201229, 39.103455, 34.263950>,  <39.949646, 38.958649, 33.988747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201229, 39.103455, 34.263950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671995, 0.698168, 0.246950,
		-0.390947, -0.617661, 0.682389,
		0.628954, 0.362017, 0.688012,
		40.389915, 39.212059, 34.470352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533825, 39.178303, 34.437225>,  <39.949646, 38.958649, 33.988747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533825, 39.178303, 34.437225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860672, 39.348137, 34.593193>,  <40.056782, 39.450039, 34.686775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860672, 39.348137, 34.593193>,  <39.533825, 39.178303, 34.437225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860672, 39.348137, 34.593193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559066, 0.748604, 0.356423,
		-0.140562, -0.509231, 0.849073,
		0.817122, 0.424589, 0.389919,
		40.105808, 39.475513, 34.710167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389462, 39.397282, 35.147064>,  <39.533825, 39.178303, 34.437225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389462, 39.397282, 35.147064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664986, 39.648006, 35.001381>,  <39.830299, 39.798439, 34.913971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664986, 39.648006, 35.001381>,  <39.389462, 39.397282, 35.147064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664986, 39.648006, 35.001381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388882, 0.743480, 0.544067,
		0.611809, -0.233125, 0.755873,
		0.688811, 0.626810, -0.364209,
		39.871628, 39.836048, 34.892117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557419, 39.613369, 35.922138>,  <39.389462, 39.397282, 35.147064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557419, 39.613369, 35.922138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719757, 39.872845, 35.664612>,  <39.817162, 40.028530, 35.510098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719757, 39.872845, 35.664612>,  <39.557419, 39.613369, 35.922138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719757, 39.872845, 35.664612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105513, 0.732980, 0.672017,
		0.907831, -0.204803, 0.365921,
		0.405844, 0.648688, -0.643813,
		39.841511, 40.067451, 35.471470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954765, 39.959129, 36.255669>,  <39.557419, 39.613369, 35.922138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954765, 39.959129, 36.255669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871502, 40.193817, 35.942638>,  <39.821545, 40.334629, 35.754818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871502, 40.193817, 35.942638>,  <39.954765, 39.959129, 36.255669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871502, 40.193817, 35.942638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319906, 0.715258, 0.621343,
		0.924300, 0.379688, 0.038810,
		-0.208157, 0.586723, -0.782577,
		39.809055, 40.369835, 35.707867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360954, 40.610786, 36.237453>,  <39.954765, 39.959129, 36.255669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360954, 40.610786, 36.237453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011787, 40.691528, 36.059792>,  <39.802288, 40.739971, 35.953194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011787, 40.691528, 36.059792>,  <40.360954, 40.610786, 36.237453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011787, 40.691528, 36.059792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191194, 0.696031, 0.692088,
		0.448844, 0.689055, -0.568984,
		-0.872917, 0.201853, -0.444153,
		39.749912, 40.752083, 35.926544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105606, 40.927563, 36.830173>,  <40.360954, 40.610786, 36.237453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105606, 40.927563, 36.830173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899353, 41.027328, 36.502293>,  <39.775600, 41.087189, 36.305565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899353, 41.027328, 36.502293>,  <40.105606, 40.927563, 36.830173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899353, 41.027328, 36.502293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374811, 0.794641, 0.477559,
		0.770479, 0.553480, -0.316263,
		-0.515634, 0.249410, -0.819705,
		39.744663, 41.102150, 36.256382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263557, 41.689846, 36.711121>,  <40.105606, 40.927563, 36.830173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263557, 41.689846, 36.711121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920391, 41.596287, 36.528137>,  <39.714489, 41.540154, 36.418346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920391, 41.596287, 36.528137>,  <40.263557, 41.689846, 36.711121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920391, 41.596287, 36.528137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412798, 0.843899, 0.342684,
		0.305896, 0.482832, -0.820549,
		-0.857919, -0.233895, -0.457458,
		39.663013, 41.526119, 36.390900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039089, 42.261734, 36.327995>,  <40.263557, 41.689846, 36.711121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039089, 42.261734, 36.327995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697018, 42.060627, 36.378433>,  <39.491776, 41.939964, 36.408695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697018, 42.060627, 36.378433>,  <40.039089, 42.261734, 36.327995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697018, 42.060627, 36.378433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474122, 0.857041, 0.201714,
		-0.209487, 0.112715, -0.971293,
		-0.855175, -0.502768, 0.126098,
		39.440464, 41.909798, 36.416264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584915, 42.784218, 36.081928>,  <40.039089, 42.261734, 36.327995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584915, 42.784218, 36.081928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396034, 42.503544, 36.295345>,  <39.282703, 42.335140, 36.423393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396034, 42.503544, 36.295345>,  <39.584915, 42.784218, 36.081928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396034, 42.503544, 36.295345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528717, 0.709763, 0.465505,
		-0.705324, -0.062278, -0.706144,
		-0.472204, -0.701682, 0.533541,
		39.254372, 42.293037, 36.455406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799675, 42.949776, 36.001568>,  <39.584915, 42.784218, 36.081928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799675, 42.949776, 36.001568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867447, 42.755241, 36.344440>,  <38.908112, 42.638519, 36.550163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867447, 42.755241, 36.344440>,  <38.799675, 42.949776, 36.001568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867447, 42.755241, 36.344440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497993, 0.708308, 0.500303,
		-0.850468, -0.511640, -0.122184,
		0.169430, -0.486338, 0.857186,
		38.918278, 42.609341, 36.601597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151638, 42.761505, 36.353565>,  <38.799675, 42.949776, 36.001568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151638, 42.761505, 36.353565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435135, 42.778694, 36.635227>,  <38.605232, 42.789009, 36.804226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435135, 42.778694, 36.635227>,  <38.151638, 42.761505, 36.353565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435135, 42.778694, 36.635227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527228, 0.695466, 0.488219,
		-0.468735, -0.717273, 0.515565,
		0.708744, 0.042975, 0.704156,
		38.647758, 42.791588, 36.846474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816231, 42.765495, 37.004230>,  <38.151638, 42.761505, 36.353565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816231, 42.765495, 37.004230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187008, 42.887699, 37.091354>,  <38.409473, 42.961021, 37.143631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187008, 42.887699, 37.091354>,  <37.816231, 42.765495, 37.004230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187008, 42.887699, 37.091354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360842, 0.566779, 0.740645,
		0.102824, -0.765130, 0.635612,
		0.926941, 0.305511, 0.217813,
		38.465092, 42.979351, 37.156700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977798, 42.675766, 37.735458>,  <37.816231, 42.765495, 37.004230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977798, 42.675766, 37.735458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209831, 42.978668, 37.615410>,  <38.349052, 43.160408, 37.543381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209831, 42.978668, 37.615410>,  <37.977798, 42.675766, 37.735458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209831, 42.978668, 37.615410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320795, 0.551046, 0.770350,
		0.748730, -0.350590, 0.562575,
		0.580081, 0.757255, -0.300117,
		38.383854, 43.205845, 37.525375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390511, 42.862171, 38.380859>,  <37.977798, 42.675766, 37.735458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390511, 42.862171, 38.380859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401905, 43.161568, 38.115845>,  <38.408741, 43.341206, 37.956837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401905, 43.161568, 38.115845>,  <38.390511, 42.862171, 38.380859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401905, 43.161568, 38.115845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557815, 0.561905, 0.610823,
		0.829476, 0.352169, 0.433528,
		0.028488, 0.748492, -0.662532,
		38.410450, 43.386116, 37.917084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555794, 43.573265, 38.812027>,  <38.390511, 42.862171, 38.380859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555794, 43.573265, 38.812027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399384, 43.673260, 38.457714>,  <38.305538, 43.733257, 38.245129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399384, 43.673260, 38.457714>,  <38.555794, 43.573265, 38.812027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399384, 43.673260, 38.457714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636878, 0.621291, 0.456491,
		0.664446, 0.742632, -0.083725,
		-0.391022, 0.249991, -0.885780,
		38.282078, 43.748257, 38.191978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597000, 44.230289, 38.839207>,  <38.555794, 43.573265, 38.812027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597000, 44.230289, 38.839207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293766, 44.121559, 38.602085>,  <38.111828, 44.056320, 38.459812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293766, 44.121559, 38.602085>,  <38.597000, 44.230289, 38.839207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293766, 44.121559, 38.602085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615681, 0.598053, 0.513098,
		0.215056, 0.753951, -0.620733,
		-0.758081, -0.271829, -0.592808,
		38.066341, 44.040009, 38.424244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235992, 44.838970, 38.530304>,  <38.597000, 44.230289, 38.839207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235992, 44.838970, 38.530304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989952, 44.526150, 38.570389>,  <37.842327, 44.338459, 38.594440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989952, 44.526150, 38.570389>,  <38.235992, 44.838970, 38.530304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989952, 44.526150, 38.570389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542331, 0.511919, 0.666195,
		-0.572299, 0.355433, -0.739014,
		-0.615103, -0.782053, 0.100209,
		37.805420, 44.291534, 38.600452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540230, 44.897873, 38.812378>,  <38.235992, 44.838970, 38.530304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540230, 44.897873, 38.812378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522072, 44.498756, 38.831795>,  <37.511177, 44.259289, 38.843445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522072, 44.498756, 38.831795>,  <37.540230, 44.897873, 38.812378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522072, 44.498756, 38.831795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666495, 0.066448, 0.742542,
		-0.744126, 0.001359, -0.668038,
		-0.045399, -0.997789, 0.048540,
		37.508453, 44.199421, 38.846355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736149, 44.601875, 38.686035>,  <37.540230, 44.897873, 38.812378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736149, 44.601875, 38.686035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986008, 44.439182, 38.952682>,  <37.135925, 44.341568, 39.112671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986008, 44.439182, 38.952682>,  <36.736149, 44.601875, 38.686035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986008, 44.439182, 38.952682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582477, 0.325902, 0.744653,
		-0.520128, -0.853438, -0.033338,
		0.624650, -0.406733, 0.666618,
		37.173405, 44.317162, 39.152668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764957, 44.065365, 38.196087>,  <36.736149, 44.601875, 38.686035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764957, 44.065365, 38.196087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371571, 44.011993, 38.245060>,  <36.135540, 43.979969, 38.274445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371571, 44.011993, 38.245060>,  <36.764957, 44.065365, 38.196087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371571, 44.011993, 38.245060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181007, 0.703385, -0.687376,
		0.005598, -0.698173, -0.715907,
		-0.983466, -0.133432, 0.122436,
		36.076530, 43.971962, 38.281792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060326, 43.686920, 37.706139>,  <36.764957, 44.065365, 38.196087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060326, 43.686920, 37.706139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.383560, 43.823544, 37.898109>,  <37.577503, 43.905518, 38.013290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.383560, 43.823544, 37.898109>,  <37.060326, 43.686920, 37.706139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383560, 43.823544, 37.898109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572514, -0.647136, -0.503430,
		0.138625, 0.681580, -0.718492,
		0.808091, 0.341559, 0.479924,
		37.625988, 43.926010, 38.042088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321945, 44.355625, 37.479305>,  <37.060326, 43.686920, 37.706139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321945, 44.355625, 37.479305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660141, 44.328125, 37.691124>,  <37.863060, 44.311626, 37.818214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660141, 44.328125, 37.691124>,  <37.321945, 44.355625, 37.479305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660141, 44.328125, 37.691124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427519, -0.507055, -0.748413,
		0.319964, 0.859168, -0.399317,
		0.845488, -0.068750, 0.529550,
		37.913788, 44.307499, 37.849991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809013, 44.200195, 37.134552>,  <37.321945, 44.355625, 37.479305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809013, 44.200195, 37.134552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975323, 44.062820, 37.471405>,  <38.075108, 43.980396, 37.673515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975323, 44.062820, 37.471405>,  <37.809013, 44.200195, 37.134552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975323, 44.062820, 37.471405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522863, -0.667372, -0.530311,
		0.744144, 0.660806, -0.097901,
		0.415769, -0.343438, 0.842132,
		38.100052, 43.959789, 37.724045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578926, 44.292645, 37.043205>,  <37.809013, 44.200195, 37.134552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578926, 44.292645, 37.043205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513386, 44.007511, 37.315975>,  <38.474064, 43.836430, 37.479637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513386, 44.007511, 37.315975>,  <38.578926, 44.292645, 37.043205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513386, 44.007511, 37.315975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573651, -0.631218, -0.522004,
		0.802545, 0.305656, 0.512344,
		-0.163847, -0.712838, 0.681921,
		38.464230, 43.793659, 37.520550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214733, 44.069576, 37.041500>,  <38.578926, 44.292645, 37.043205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214733, 44.069576, 37.041500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978802, 43.793209, 37.208706>,  <38.837242, 43.627388, 37.309029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978802, 43.793209, 37.208706>,  <39.214733, 44.069576, 37.041500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978802, 43.793209, 37.208706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536055, -0.722140, -0.437217,
		0.603947, -0.033802, 0.796307,
		-0.589824, -0.690920, 0.418015,
		38.801853, 43.585934, 37.334110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653435, 43.461880, 37.351112>,  <39.214733, 44.069576, 37.041500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653435, 43.461880, 37.351112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280319, 43.324909, 37.306126>,  <39.056450, 43.242725, 37.279133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280319, 43.324909, 37.306126>,  <39.653435, 43.461880, 37.351112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280319, 43.324909, 37.306126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359890, -0.867935, -0.342299,
		0.019603, -0.359766, 0.932837,
		-0.932789, -0.342429, -0.112462,
		39.000484, 43.222179, 37.272388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499298, 42.799335, 37.762634>,  <39.653435, 43.461880, 37.351112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499298, 42.799335, 37.762634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259052, 42.834595, 37.444767>,  <39.114906, 42.855751, 37.254047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259052, 42.834595, 37.444767>,  <39.499298, 42.799335, 37.762634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259052, 42.834595, 37.444767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382811, -0.840876, -0.382601,
		-0.701942, -0.534002, 0.471295,
		-0.600610, 0.088147, -0.794668,
		39.078869, 42.861038, 37.206367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412766, 42.119396, 37.679241>,  <39.499298, 42.799335, 37.762634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412766, 42.119396, 37.679241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310997, 42.271713, 37.323654>,  <39.249935, 42.363102, 37.110302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310997, 42.271713, 37.323654>,  <39.412766, 42.119396, 37.679241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310997, 42.271713, 37.323654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363121, -0.814347, -0.452750,
		-0.896334, -0.437992, 0.068911,
		-0.254418, 0.380792, -0.888971,
		39.234673, 42.385952, 37.056965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781960, 42.173176, 37.661934>,  <39.412766, 42.119396, 37.679241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781960, 42.173176, 37.661934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764057, 42.233734, 37.266949>,  <38.753315, 42.270069, 37.029957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764057, 42.233734, 37.266949>,  <38.781960, 42.173176, 37.661934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764057, 42.233734, 37.266949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436510, -0.886134, -0.155645,
		-0.898585, -0.438002, -0.026427,
		-0.044755, 0.151396, -0.987459,
		38.750629, 42.279152, 36.970711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535286, 41.573143, 37.339897>,  <38.781960, 42.173176, 37.661934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535286, 41.573143, 37.339897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753300, 41.773659, 37.071079>,  <38.884109, 41.893970, 36.909790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753300, 41.773659, 37.071079>,  <38.535286, 41.573143, 37.339897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753300, 41.773659, 37.071079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413795, -0.857975, -0.304389,
		-0.729184, -0.112185, -0.675060,
		0.545036, 0.501292, -0.672043,
		38.916809, 41.924046, 36.869465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410984, 41.297447, 36.712910>,  <38.535286, 41.573143, 37.339897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410984, 41.297447, 36.712910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753727, 41.492367, 36.645584>,  <38.959373, 41.609318, 36.605190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753727, 41.492367, 36.645584>,  <38.410984, 41.297447, 36.712910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753727, 41.492367, 36.645584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399175, -0.833699, -0.381582,
		-0.326266, 0.259777, -0.908882,
		0.856860, 0.487300, -0.168312,
		39.010784, 41.638557, 36.595089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478947, 41.249268, 36.064117>,  <38.410984, 41.297447, 36.712910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478947, 41.249268, 36.064117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858997, 41.317245, 36.168709>,  <39.087029, 41.358032, 36.231464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858997, 41.317245, 36.168709>,  <38.478947, 41.249268, 36.064117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858997, 41.317245, 36.168709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281376, -0.828697, -0.483827,
		0.134464, 0.533273, -0.835188,
		0.950130, 0.169945, 0.261480,
		39.144035, 41.368229, 36.247154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780693, 41.289631, 35.462772>,  <38.478947, 41.249268, 36.064117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780693, 41.289631, 35.462772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115475, 41.259907, 35.679657>,  <39.316341, 41.242073, 35.809788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115475, 41.259907, 35.679657>,  <38.780693, 41.289631, 35.462772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115475, 41.259907, 35.679657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451718, -0.465542, -0.761066,
		0.308973, 0.881901, -0.356070,
		0.836951, -0.074306, 0.542211,
		39.366558, 41.237614, 35.842319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362816, 41.534309, 34.977787>,  <38.780693, 41.289631, 35.462772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362816, 41.534309, 34.977787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462776, 41.243580, 35.233685>,  <39.522751, 41.069141, 35.387222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462776, 41.243580, 35.233685>,  <39.362816, 41.534309, 34.977787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462776, 41.243580, 35.233685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485041, -0.477866, -0.732379,
		0.838024, 0.493327, 0.233120,
		0.249902, -0.726824, 0.639747,
		39.537746, 41.025532, 35.425610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695156, 41.119560, 34.654076>,  <39.362816, 41.534309, 34.977787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695156, 41.119560, 34.654076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754707, 40.910316, 34.989738>,  <39.790440, 40.784771, 35.191135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754707, 40.910316, 34.989738>,  <39.695156, 41.119560, 34.654076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754707, 40.910316, 34.989738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536820, -0.669930, -0.512854,
		0.830458, 0.526831, 0.181077,
		0.148878, -0.523109, 0.839161,
		39.799370, 40.753384, 35.241486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320396, 40.912285, 34.597397>,  <39.695156, 41.119560, 34.654076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320396, 40.912285, 34.597397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177486, 40.642723, 34.856071>,  <40.091740, 40.480984, 35.011276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177486, 40.642723, 34.856071>,  <40.320396, 40.912285, 34.597397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177486, 40.642723, 34.856071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617039, -0.690077, -0.378228,
		0.701155, 0.263902, 0.662373,
		-0.357274, -0.673906, 0.646689,
		40.070305, 40.440552, 35.050079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925034, 40.476021, 34.795956>,  <40.320396, 40.912285, 34.597397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.925034, 40.476021, 34.795956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624214, 40.245693, 34.924244>,  <40.443722, 40.107498, 35.001217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624214, 40.245693, 34.924244>,  <40.925034, 40.476021, 34.795956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624214, 40.245693, 34.924244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495159, -0.814739, -0.301692,
		0.435026, -0.068076, 0.897841,
		-0.752044, -0.575818, 0.320725,
		40.398602, 40.072948, 35.020462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169491, 40.010780, 35.172173>,  <40.925034, 40.476021, 34.795956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169491, 40.010780, 35.172173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826149, 39.856873, 35.036419>,  <40.620144, 39.764530, 34.954967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826149, 39.856873, 35.036419>,  <41.169491, 40.010780, 35.172173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826149, 39.856873, 35.036419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472016, -0.851468, -0.228479,
		-0.201063, -0.356311, 0.912478,
		-0.858356, -0.384766, -0.339383,
		40.568642, 39.741444, 34.934605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319061, 39.355396, 35.478554>,  <41.169491, 40.010780, 35.172173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.319061, 39.355396, 35.478554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.043789, 39.351891, 35.188358>,  <40.878624, 39.349785, 35.014240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.043789, 39.351891, 35.188358>,  <41.319061, 39.355396, 35.478554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043789, 39.351891, 35.188358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371665, -0.863027, -0.342124,
		-0.623115, -0.505081, 0.597177,
		-0.688181, -0.008767, -0.725486,
		40.837334, 39.349262, 34.970711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991768, 38.617863, 35.432816>,  <41.319061, 39.355396, 35.478554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.991768, 38.617863, 35.432816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886082, 38.751263, 35.070827>,  <40.822670, 38.831303, 34.853634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886082, 38.751263, 35.070827>,  <40.991768, 38.617863, 35.432816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886082, 38.751263, 35.070827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428105, -0.800257, -0.419899,
		-0.864245, -0.498364, 0.068664,
		-0.264211, 0.333500, -0.904969,
		40.806820, 38.851315, 34.799335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634029, 38.044922, 35.178806>,  <40.991768, 38.617863, 35.432816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.634029, 38.044922, 35.178806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714054, 38.247604, 34.843372>,  <40.762070, 38.369213, 34.642113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714054, 38.247604, 34.843372>,  <40.634029, 38.044922, 35.178806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714054, 38.247604, 34.843372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093618, -0.861855, -0.498439,
		-0.975301, 0.021212, -0.219861,
		0.200061, 0.506711, -0.838582,
		40.774071, 38.399616, 34.591797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365978, 37.709831, 34.628761>,  <40.634029, 38.044922, 35.178806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365978, 37.709831, 34.628761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666111, 37.906006, 34.451454>,  <40.846191, 38.023708, 34.345070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666111, 37.906006, 34.451454>,  <40.365978, 37.709831, 34.628761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666111, 37.906006, 34.451454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288488, -0.846236, -0.447951,
		-0.594797, 0.208234, -0.776438,
		0.750328, 0.490433, -0.443265,
		40.891209, 38.053135, 34.318474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307957, 37.463379, 33.980427>,  <40.365978, 37.709831, 34.628761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307957, 37.463379, 33.980427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685745, 37.584030, 34.032581>,  <40.912418, 37.656422, 34.063873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685745, 37.584030, 34.032581>,  <40.307957, 37.463379, 33.980427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685745, 37.584030, 34.032581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326480, -0.816292, -0.476527,
		-0.037298, 0.492634, -0.869437,
		0.944468, 0.301628, 0.130389,
		40.969086, 37.674519, 34.071697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.774944, 37.639702, 33.352741>,  <40.307957, 37.463379, 33.980427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.774944, 37.639702, 33.352741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937836, 37.465572, 33.673904>,  <41.035572, 37.361095, 33.866604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937836, 37.465572, 33.673904>,  <40.774944, 37.639702, 33.352741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937836, 37.465572, 33.673904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081973, -0.858134, -0.506841,
		0.909641, 0.272216, -0.313771,
		0.407227, -0.435322, 0.802908,
		41.060005, 37.334976, 33.914776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193096, 37.123875, 33.035503>,  <40.774944, 37.639702, 33.352741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193096, 37.123875, 33.035503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124260, 37.004936, 33.411156>,  <41.082958, 36.933575, 33.636547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124260, 37.004936, 33.411156>,  <41.193096, 37.123875, 33.035503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124260, 37.004936, 33.411156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054144, -0.949059, -0.310412,
		0.983592, -0.104267, 0.147223,
		-0.172089, -0.297347, 0.939133,
		41.072632, 36.915733, 33.692894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558807, 36.521595, 33.268909>,  <41.193096, 37.123875, 33.035503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.558807, 36.521595, 33.268909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224316, 36.512421, 33.488068>,  <41.023621, 36.506916, 33.619564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224316, 36.512421, 33.488068>,  <41.558807, 36.521595, 33.268909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224316, 36.512421, 33.488068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107151, -0.973031, -0.204278,
		0.537805, -0.229531, 0.811222,
		-0.836232, -0.022938, 0.547896,
		40.973446, 36.505539, 33.652435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.369453, 36.703358, 33.197666>,  <41.558807, 36.521595, 33.268909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.369453, 36.703358, 33.197666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.655045, 36.907238, 33.005646>,  <42.826397, 37.029568, 32.890434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.655045, 36.907238, 33.005646>,  <42.369453, 36.703358, 33.197666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.655045, 36.907238, 33.005646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517285, 0.078069, 0.852245,
		0.471867, -0.856802, -0.207922,
		0.713973, 0.509701, -0.480049,
		42.869236, 37.060150, 32.861629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.165455, 36.462978, 33.194344>,  <42.369453, 36.703358, 33.197666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.165455, 36.462978, 33.194344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144775, 36.862320, 33.184456>,  <43.132366, 37.101925, 33.178524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144775, 36.862320, 33.184456>,  <43.165455, 36.462978, 33.194344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.144775, 36.862320, 33.184456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504569, 0.047474, 0.862065,
		0.861822, 0.032095, -0.506194,
		-0.051699, 0.998357, -0.024720,
		43.129265, 37.161827, 33.177040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.854607, 36.712978, 33.100803>,  <43.165455, 36.462978, 33.194344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.854607, 36.712978, 33.100803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.607025, 36.954914, 33.301228>,  <43.458477, 37.100075, 33.421482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.607025, 36.954914, 33.301228>,  <43.854607, 36.712978, 33.100803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.607025, 36.954914, 33.301228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634374, 0.008831, 0.772976,
		0.463104, 0.796296, -0.389162,
		-0.618954, 0.604843, 0.501059,
		43.421337, 37.136368, 33.451546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.219898, 37.463478, 33.259289>,  <43.854607, 36.712978, 33.100803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.219898, 37.463478, 33.259289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950180, 37.308846, 33.510963>,  <43.788349, 37.216064, 33.661968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950180, 37.308846, 33.510963>,  <44.219898, 37.463478, 33.259289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.950180, 37.308846, 33.510963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721638, -0.164111, 0.672537,
		-0.156734, 0.907536, 0.389632,
		-0.674294, -0.386582, 0.629191,
		43.747890, 37.192871, 33.699722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.441498, 37.562721, 33.906788>,  <44.219898, 37.463478, 33.259289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.441498, 37.562721, 33.906788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.187138, 37.257736, 33.954575>,  <44.034519, 37.074745, 33.983246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.187138, 37.257736, 33.954575>,  <44.441498, 37.562721, 33.906788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.187138, 37.257736, 33.954575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628608, -0.421898, 0.653341,
		-0.447749, 0.490559, 0.747578,
		-0.635904, -0.762466, 0.119465,
		43.996368, 37.028996, 33.990414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.497337, 37.324955, 34.634838>,  <44.441498, 37.562721, 33.906788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.497337, 37.324955, 34.634838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.858463, 37.292103, 34.803680>,  <45.075138, 37.272392, 34.904987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.858463, 37.292103, 34.803680>,  <44.497337, 37.324955, 34.634838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.858463, 37.292103, 34.803680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096563, -0.995243, 0.012884,
		0.419040, -0.052391, -0.906455,
		0.902819, -0.082132, 0.422106,
		45.129311, 37.267464, 34.930313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.905338, 37.211571, 34.764633>,  <44.497337, 37.324955, 34.634838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.905338, 37.211571, 34.764633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.135674, 37.048054, 35.047844>,  <44.273872, 36.949944, 35.217770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.135674, 37.048054, 35.047844>,  <43.905338, 37.211571, 34.764633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.135674, 37.048054, 35.047844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631762, -0.327201, -0.702720,
		0.518933, 0.851957, 0.069844,
		0.575834, -0.408789, 0.708030,
		44.308422, 36.925419, 35.260254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.991322, 36.423744, 34.686508>,  <43.905338, 37.211571, 34.764633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.991322, 36.423744, 34.686508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.292206, 36.212917, 34.528332>,  <44.472736, 36.086422, 34.433426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.292206, 36.212917, 34.528332>,  <43.991322, 36.423744, 34.686508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.292206, 36.212917, 34.528332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562563, 0.826171, -0.031056,
		0.343074, -0.199102, 0.917964,
		0.752212, -0.527067, -0.395445,
		44.517868, 36.054798, 34.409698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.547348, 36.234509, 35.201637>,  <43.991322, 36.423744, 34.686508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.547348, 36.234509, 35.201637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.653553, 36.275311, 34.818157>,  <44.717278, 36.299793, 34.588070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.653553, 36.275311, 34.818157>,  <44.547348, 36.234509, 35.201637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.653553, 36.275311, 34.818157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560114, 0.793038, 0.239504,
		0.784712, -0.600571, 0.153430,
		0.265515, 0.102004, -0.958696,
		44.733208, 36.305912, 34.530548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.193554, 36.438679, 35.149197>,  <44.547348, 36.234509, 35.201637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.193554, 36.438679, 35.149197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.107071, 36.521862, 34.767620>,  <45.055180, 36.571770, 34.538673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.107071, 36.521862, 34.767620>,  <45.193554, 36.438679, 35.149197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.107071, 36.521862, 34.767620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646565, 0.762605, 0.019704,
		0.731580, -0.612526, -0.299338,
		-0.216207, 0.207956, -0.953944,
		45.042210, 36.584248, 34.481438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.813229, 36.477890, 34.664806>,  <45.193554, 36.438679, 35.149197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.813229, 36.477890, 34.664806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.503166, 36.699635, 34.543606>,  <45.317127, 36.832680, 34.470886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.503166, 36.699635, 34.543606>,  <45.813229, 36.477890, 34.664806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.503166, 36.699635, 34.543606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577286, 0.816370, 0.016751,
		0.256649, -0.161936, -0.952842,
		-0.775159, 0.554361, -0.303004,
		45.270618, 36.865944, 34.452705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.948154, 36.904869, 34.154415>,  <45.813229, 36.477890, 34.664806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.948154, 36.904869, 34.154415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.672825, 37.112617, 34.356983>,  <45.507626, 37.237267, 34.478523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.672825, 37.112617, 34.356983>,  <45.948154, 36.904869, 34.154415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.672825, 37.112617, 34.356983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643799, 0.759076, 0.096571,
		-0.334259, 0.392508, -0.856860,
		-0.688327, 0.519366, 0.506424,
		45.466328, 37.268429, 34.508911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.648216, 36.682590, 34.368797>,  <45.948154, 36.904869, 34.154415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.648216, 36.682590, 34.368797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.443398, 36.493015, 34.655346>,  <46.320507, 36.379272, 34.827274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.443398, 36.493015, 34.655346>,  <46.648216, 36.682590, 34.368797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.443398, 36.493015, 34.655346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494141, -0.844712, -0.205638,
		0.702587, 0.248692, 0.666726,
		-0.512051, -0.473935, 0.716372,
		46.289783, 36.350834, 34.870258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.075977, 36.472843, 34.952057>,  <46.648216, 36.682590, 34.368797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.075977, 36.472843, 34.952057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.765488, 36.235126, 34.867874>,  <46.579193, 36.092499, 34.817364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.765488, 36.235126, 34.867874>,  <47.075977, 36.472843, 34.952057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.765488, 36.235126, 34.867874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623382, -0.673641, -0.396992,
		0.094155, -0.439352, 0.893367,
		-0.776228, -0.594288, -0.210457,
		46.532619, 36.056839, 34.804737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.351643, 35.857403, 35.096111>,  <47.075977, 36.472843, 34.952057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.351643, 35.857403, 35.096111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.033581, 35.786983, 34.863998>,  <46.842743, 35.744732, 34.724731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.033581, 35.786983, 34.863998>,  <47.351643, 35.857403, 35.096111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.033581, 35.786983, 34.863998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493427, -0.744091, -0.450397,
		-0.352494, -0.644466, 0.678537,
		-0.795159, -0.176046, -0.580284,
		46.795033, 35.734169, 34.689915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.294029, 35.137093, 34.781971>,  <47.351643, 35.857403, 35.096111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.294029, 35.137093, 34.781971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.108307, 35.349335, 34.498314>,  <46.996872, 35.476681, 34.328121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.108307, 35.349335, 34.498314>,  <47.294029, 35.137093, 34.781971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.108307, 35.349335, 34.498314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322263, -0.644584, -0.693296,
		-0.824965, -0.550432, 0.128291,
		-0.464306, 0.530601, -0.709142,
		46.969013, 35.508514, 34.285572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.349094, 34.904037, 35.398666>,  <47.294029, 35.137093, 34.781971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.349094, 34.904037, 35.398666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.583389, 34.980419, 35.083591>,  <47.723969, 35.026249, 34.894547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.583389, 34.980419, 35.083591>,  <47.349094, 34.904037, 35.398666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.583389, 34.980419, 35.083591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628795, -0.506139, -0.590288,
		-0.511396, 0.841046, -0.176394,
		0.585739, 0.190956, -0.787684,
		47.759109, 35.037704, 34.847286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.411789, 40.506329, 24.823000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.055656, 40.392792, 24.965405>,  <34.841976, 40.324669, 25.050848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.055656, 40.392792, 24.965405>,  <35.411789, 40.506329, 24.823000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055656, 40.392792, 24.965405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424575, -0.235128, 0.874329,
		-0.164464, 0.929596, 0.329854,
		-0.890330, -0.283843, 0.356013,
		34.788559, 40.307640, 25.072208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590572, 40.595646, 25.463005>,  <35.411789, 40.506329, 24.823000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590572, 40.595646, 25.463005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.251804, 40.383213, 25.473421>,  <35.048542, 40.255753, 25.479670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.251804, 40.383213, 25.473421>,  <35.590572, 40.595646, 25.463005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251804, 40.383213, 25.473421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296299, -0.430711, 0.852464,
		-0.441514, 0.729683, 0.522137,
		-0.846919, -0.531084, 0.026039,
		34.997730, 40.223888, 25.481234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339848, 40.652458, 26.197609>,  <35.590572, 40.595646, 25.463005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339848, 40.652458, 26.197609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.149975, 40.344044, 26.027819>,  <35.036053, 40.158997, 25.925943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.149975, 40.344044, 26.027819>,  <35.339848, 40.652458, 26.197609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149975, 40.344044, 26.027819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081771, -0.518820, 0.850964,
		-0.876351, 0.369226, 0.309322,
		-0.474681, -0.771037, -0.424477,
		35.007572, 40.112732, 25.900476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752571, 40.477146, 26.597574>,  <35.339848, 40.652458, 26.197609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752571, 40.477146, 26.597574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.862518, 40.146111, 26.401800>,  <34.928486, 39.947491, 26.284336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.862518, 40.146111, 26.401800>,  <34.752571, 40.477146, 26.597574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862518, 40.146111, 26.401800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123609, -0.535234, 0.835611,
		-0.953502, -0.169187, -0.249417,
		0.274871, -0.827587, -0.489434,
		34.944981, 39.897835, 26.254971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463459, 40.014679, 27.033834>,  <34.752571, 40.477146, 26.597574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463459, 40.014679, 27.033834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.686398, 39.793243, 26.786316>,  <34.820160, 39.660381, 26.637804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.686398, 39.793243, 26.786316>,  <34.463459, 40.014679, 27.033834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686398, 39.793243, 26.786316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290951, -0.567808, 0.770027,
		-0.777634, -0.609210, -0.155398,
		0.557344, -0.553586, -0.618797,
		34.853600, 39.627167, 26.600677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157272, 39.330788, 27.160645>,  <34.463459, 40.014679, 27.033834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157272, 39.330788, 27.160645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.521641, 39.282547, 27.002821>,  <34.740261, 39.253605, 26.908127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.521641, 39.282547, 27.002821>,  <34.157272, 39.330788, 27.160645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521641, 39.282547, 27.002821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248921, -0.602012, 0.758696,
		-0.329027, -0.789327, -0.518366,
		0.910922, -0.120600, -0.394558,
		34.794918, 39.246368, 26.884453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369812, 38.581474, 27.307335>,  <34.157272, 39.330788, 27.160645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369812, 38.581474, 27.307335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.704594, 38.790230, 27.241440>,  <34.905464, 38.915482, 27.201902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.704594, 38.790230, 27.241440>,  <34.369812, 38.581474, 27.307335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704594, 38.790230, 27.241440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405032, -0.388259, 0.827771,
		0.368044, -0.759531, -0.536336,
		0.836955, 0.521889, -0.164738,
		34.955681, 38.946796, 27.192019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929016, 38.125633, 27.477339>,  <34.369812, 38.581474, 27.307335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929016, 38.125633, 27.477339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.121857, 38.476028, 27.471378>,  <35.237560, 38.686264, 27.467802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.121857, 38.476028, 27.471378>,  <34.929016, 38.125633, 27.477339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121857, 38.476028, 27.471378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682294, -0.364728, 0.633600,
		0.549590, -0.315629, -0.773518,
		0.482106, 0.875986, -0.014901,
		35.266487, 38.738823, 27.466908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604805, 37.998867, 27.485580>,  <34.929016, 38.125633, 27.477339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604805, 37.998867, 27.485580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.630253, 38.386887, 27.579359>,  <35.645523, 38.619698, 27.635626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.630253, 38.386887, 27.579359>,  <35.604805, 37.998867, 27.485580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630253, 38.386887, 27.579359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687189, -0.212938, 0.694571,
		0.723688, 0.116922, -0.680150,
		0.063619, 0.970045, 0.234448,
		35.649338, 38.677898, 27.649694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273941, 38.243401, 27.364294>,  <35.604805, 37.998867, 27.485580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273941, 38.243401, 27.364294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.072189, 38.425976, 27.657486>,  <35.951138, 38.535522, 27.833401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.072189, 38.425976, 27.657486>,  <36.273941, 38.243401, 27.364294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072189, 38.425976, 27.657486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787511, -0.104997, 0.607290,
		0.354151, 0.883538, -0.306492,
		-0.504384, 0.456438, 0.732981,
		35.920876, 38.562908, 27.877380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612804, 38.759945, 27.604652>,  <36.273941, 38.243401, 27.364294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612804, 38.759945, 27.604652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.383579, 38.703815, 27.927616>,  <36.246044, 38.670139, 28.121395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.383579, 38.703815, 27.927616>,  <36.612804, 38.759945, 27.604652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383579, 38.703815, 27.927616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775777, 0.224672, 0.589655,
		-0.264145, 0.964278, -0.019891,
		-0.573060, -0.140323, 0.807410,
		36.211662, 38.661720, 28.169840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083061, 39.121498, 28.054640>,  <36.612804, 38.759945, 27.604652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083061, 39.121498, 28.054640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.809628, 38.954041, 28.293787>,  <36.645565, 38.853565, 28.437275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.809628, 38.954041, 28.293787>,  <37.083061, 39.121498, 28.054640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809628, 38.954041, 28.293787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659291, -0.002764, 0.751883,
		-0.313117, 0.908147, 0.277896,
		-0.683588, -0.418642, 0.597868,
		36.604549, 38.828449, 28.473146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994495, 39.580959, 28.697964>,  <37.083061, 39.121498, 28.054640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994495, 39.580959, 28.697964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.892635, 39.202084, 28.775919>,  <36.831520, 38.974758, 28.822693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.892635, 39.202084, 28.775919>,  <36.994495, 39.580959, 28.697964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892635, 39.202084, 28.775919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672958, -0.028845, 0.739118,
		-0.694465, 0.319367, 0.644766,
		-0.254648, -0.947192, 0.194888,
		36.816242, 38.917927, 28.834385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151611, 39.549114, 29.415592>,  <36.994495, 39.580959, 28.697964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151611, 39.549114, 29.415592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.143444, 39.171680, 29.283394>,  <37.138546, 38.945221, 29.204075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.143444, 39.171680, 29.283394>,  <37.151611, 39.549114, 29.415592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143444, 39.171680, 29.283394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843309, -0.193817, 0.501263,
		-0.537041, -0.268479, 0.799691,
		-0.020415, -0.943586, -0.330498,
		37.137321, 38.888603, 29.184244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366486, 39.201275, 30.000153>,  <37.151611, 39.549114, 29.415592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366486, 39.201275, 30.000153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.403324, 38.918610, 29.719540>,  <37.425426, 38.749012, 29.551172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.403324, 38.918610, 29.719540>,  <37.366486, 39.201275, 30.000153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403324, 38.918610, 29.719540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864954, -0.292277, 0.407958,
		-0.493330, -0.644364, 0.584312,
		0.092093, -0.706661, -0.701534,
		37.430950, 38.706612, 29.509079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522690, 38.489128, 30.275309>,  <37.366486, 39.201275, 30.000153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522690, 38.489128, 30.275309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.638901, 38.447262, 29.894857>,  <37.708626, 38.422142, 29.666588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.638901, 38.447262, 29.894857>,  <37.522690, 38.489128, 30.275309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638901, 38.447262, 29.894857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877266, -0.367792, 0.308437,
		-0.382101, -0.923998, -0.015028,
		0.290523, -0.104671, -0.951126,
		37.726059, 38.415859, 29.609520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686810, 37.732075, 30.108675>,  <37.522690, 38.489128, 30.275309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686810, 37.732075, 30.108675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.910568, 37.949158, 29.858061>,  <38.044823, 38.079407, 29.707691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.910568, 37.949158, 29.858061>,  <37.686810, 37.732075, 30.108675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910568, 37.949158, 29.858061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822367, -0.458082, 0.337452,
		-0.103869, -0.704013, -0.702551,
		0.559396, 0.542703, -0.626537,
		38.078388, 38.111969, 29.670099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195450, 37.321930, 29.966562>,  <37.686810, 37.732075, 30.108675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195450, 37.321930, 29.966562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.340099, 37.681274, 29.866817>,  <38.426888, 37.896881, 29.806971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.340099, 37.681274, 29.866817>,  <38.195450, 37.321930, 29.966562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340099, 37.681274, 29.866817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913761, -0.288405, 0.286119,
		0.185120, -0.331326, -0.925178,
		0.361625, 0.898357, -0.249363,
		38.448586, 37.950783, 29.792007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790928, 37.128910, 29.633156>,  <38.195450, 37.321930, 29.966562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790928, 37.128910, 29.633156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.818226, 37.510044, 29.751436>,  <38.834606, 37.738724, 29.822405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.818226, 37.510044, 29.751436>,  <38.790928, 37.128910, 29.633156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818226, 37.510044, 29.751436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962561, -0.140823, 0.231613,
		0.262332, 0.268823, -0.926777,
		0.068249, 0.952839, 0.295701,
		38.838699, 37.795895, 29.840147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344921, 37.363895, 29.240326>,  <38.790928, 37.128910, 29.633156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344921, 37.363895, 29.240326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.297489, 37.565620, 29.582462>,  <39.269028, 37.686657, 29.787745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.297489, 37.565620, 29.582462>,  <39.344921, 37.363895, 29.240326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297489, 37.565620, 29.582462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934772, -0.233815, 0.267453,
		0.334872, 0.831263, -0.443693,
		-0.118582, 0.504314, 0.855339,
		39.261913, 37.716915, 29.839064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984158, 37.705845, 29.341005>,  <39.344921, 37.363895, 29.240326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984158, 37.705845, 29.341005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.807041, 37.751629, 29.696720>,  <39.700771, 37.779099, 29.910149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.807041, 37.751629, 29.696720>,  <39.984158, 37.705845, 29.341005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807041, 37.751629, 29.696720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827235, -0.330428, 0.454422,
		0.345859, 0.936865, 0.051626,
		-0.442791, 0.114459, 0.889289,
		39.674202, 37.785965, 29.963507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376202, 38.209084, 29.747509>,  <39.984158, 37.705845, 29.341005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376202, 38.209084, 29.747509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.176277, 37.952671, 29.980494>,  <40.056320, 37.798824, 30.120285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.176277, 37.952671, 29.980494>,  <40.376202, 38.209084, 29.747509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176277, 37.952671, 29.980494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855144, -0.472010, 0.214327,
		0.137537, 0.605213, 0.784092,
		-0.499813, -0.641034, 0.582463,
		40.026333, 37.760361, 30.155233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024639, 37.917446, 29.312565>,  <40.376202, 38.209084, 29.747509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024639, 37.917446, 29.312565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.395378, 38.023418, 29.418968>,  <41.617821, 38.087002, 29.482809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.395378, 38.023418, 29.418968>,  <41.024639, 37.917446, 29.312565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395378, 38.023418, 29.418968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093043, 0.848534, -0.520896,
		-0.363715, 0.458044, 0.811115,
		0.926852, 0.264927, 0.266007,
		41.673435, 38.102898, 29.498770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035149, 38.572117, 29.495066>,  <41.024639, 37.917446, 29.312565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035149, 38.572117, 29.495066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.413910, 38.502182, 29.387136>,  <41.641167, 38.460220, 29.322378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.413910, 38.502182, 29.387136>,  <41.035149, 38.572117, 29.495066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413910, 38.502182, 29.387136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055737, 0.737245, -0.673322,
		0.316650, 0.652610, 0.688355,
		0.946904, -0.174841, -0.269823,
		41.697983, 38.449730, 29.306190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349186, 39.237366, 29.497433>,  <41.035149, 38.572117, 29.495066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349186, 39.237366, 29.497433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.584896, 39.000439, 29.277647>,  <41.726322, 38.858284, 29.145775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.584896, 39.000439, 29.277647>,  <41.349186, 39.237366, 29.497433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.584896, 39.000439, 29.277647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189234, 0.559986, -0.806602,
		0.785456, 0.579291, 0.217901,
		0.589279, -0.592316, -0.549466,
		41.761681, 38.822742, 29.112806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732655, 39.648746, 28.978975>,  <41.349186, 39.237366, 29.497433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.732655, 39.648746, 28.978975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.744995, 39.281120, 28.821819>,  <41.752399, 39.060543, 28.727526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.744995, 39.281120, 28.821819>,  <41.732655, 39.648746, 28.978975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.744995, 39.281120, 28.821819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302080, 0.366120, -0.880172,
		0.952783, 0.145838, -0.266337,
		0.030851, -0.919069, -0.392888,
		41.754250, 39.005398, 28.703953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.229324, 39.731289, 28.424721>,  <41.732655, 39.648746, 28.978975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.229324, 39.731289, 28.424721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.024895, 39.398029, 28.340179>,  <41.902237, 39.198074, 28.289455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.024895, 39.398029, 28.340179>,  <42.229324, 39.731289, 28.424721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024895, 39.398029, 28.340179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226983, 0.367979, -0.901704,
		0.829027, -0.412861, -0.377173,
		-0.511070, -0.833149, -0.211352,
		41.871574, 39.148083, 28.276773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285595, 39.726871, 27.742840>,  <42.229324, 39.731289, 28.424721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285595, 39.726871, 27.742840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.023094, 39.427799, 27.783442>,  <41.865593, 39.248356, 27.807802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.023094, 39.427799, 27.783442>,  <42.285595, 39.726871, 27.742840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.023094, 39.427799, 27.783442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423151, 0.253305, -0.869931,
		0.624721, -0.613845, -0.482615,
		-0.656252, -0.747684, 0.101504,
		41.826218, 39.203495, 27.813892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.283829, 39.297112, 27.106386>,  <42.285595, 39.726871, 27.742840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.283829, 39.297112, 27.106386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.931557, 39.286163, 27.295557>,  <41.720196, 39.279594, 27.409060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.931557, 39.286163, 27.295557>,  <42.283829, 39.297112, 27.106386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931557, 39.286163, 27.295557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445186, 0.389047, -0.806506,
		-0.161918, -0.920811, -0.354809,
		-0.880677, -0.027368, 0.472926,
		41.667355, 39.277954, 27.437435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838749, 38.787155, 26.744621>,  <42.283829, 39.297112, 27.106386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.838749, 38.787155, 26.744621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.613544, 39.065853, 26.922415>,  <41.478420, 39.233070, 27.029091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.613544, 39.065853, 26.922415>,  <41.838749, 38.787155, 26.744621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613544, 39.065853, 26.922415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653334, -0.045854, -0.755680,
		-0.506135, -0.715852, 0.481023,
		-0.563012, 0.696745, 0.444482,
		41.444641, 39.274876, 27.055759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137527, 38.658585, 26.577642>,  <41.838749, 38.787155, 26.744621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137527, 38.658585, 26.577642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.076145, 39.030960, 26.710192>,  <41.039314, 39.254383, 26.789721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.076145, 39.030960, 26.710192>,  <41.137527, 38.658585, 26.577642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076145, 39.030960, 26.710192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732473, 0.117930, -0.670504,
		-0.663275, -0.345614, 0.663790,
		-0.153455, 0.930937, 0.331373,
		41.030109, 39.310242, 26.809605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430515, 38.793488, 26.665115>,  <41.137527, 38.658585, 26.577642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430515, 38.793488, 26.665115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.593567, 39.155766, 26.618546>,  <40.691399, 39.373131, 26.590605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.593567, 39.155766, 26.618546>,  <40.430515, 38.793488, 26.665115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593567, 39.155766, 26.618546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716134, 0.237971, -0.656142,
		-0.566558, 0.350839, 0.745603,
		0.407632, 0.905694, -0.116423,
		40.715855, 39.427475, 26.583618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870541, 39.158989, 26.523867>,  <40.430515, 38.793488, 26.665115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870541, 39.158989, 26.523867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.147339, 39.431847, 26.429359>,  <40.313416, 39.595562, 26.372656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.147339, 39.431847, 26.429359>,  <39.870541, 39.158989, 26.523867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147339, 39.431847, 26.429359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651431, 0.449006, -0.611581,
		-0.311103, 0.577120, 0.755081,
		0.691992, 0.682148, -0.236267,
		40.354935, 39.636490, 26.358479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626427, 39.815254, 26.681854>,  <39.870541, 39.158989, 26.523867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626427, 39.815254, 26.681854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.900043, 39.920555, 26.409740>,  <40.064213, 39.983734, 26.246471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.900043, 39.920555, 26.409740>,  <39.626427, 39.815254, 26.681854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900043, 39.920555, 26.409740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693505, 0.523829, -0.494624,
		0.226141, 0.810124, 0.540887,
		0.684040, 0.263253, -0.680285,
		40.105255, 39.999531, 26.205654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544987, 40.559765, 26.560787>,  <39.626427, 39.815254, 26.681854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544987, 40.559765, 26.560787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.755169, 40.436146, 26.243704>,  <39.881279, 40.361977, 26.053453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.755169, 40.436146, 26.243704>,  <39.544987, 40.559765, 26.560787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755169, 40.436146, 26.243704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641700, 0.467829, -0.607747,
		0.558673, 0.828026, 0.047510,
		0.525458, -0.309044, -0.792708,
		39.912807, 40.343433, 26.005892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528477, 41.074188, 25.993317>,  <39.544987, 40.559765, 26.560787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528477, 41.074188, 25.993317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.650887, 40.755188, 25.785337>,  <39.724331, 40.563789, 25.660549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.650887, 40.755188, 25.785337>,  <39.528477, 41.074188, 25.993317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650887, 40.755188, 25.785337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667474, 0.209705, -0.714495,
		0.678844, 0.565704, -0.468135,
		0.306022, -0.797498, -0.519949,
		39.742695, 40.515938, 25.629353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549164, 41.331810, 25.294195>,  <39.528477, 41.074188, 25.993317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549164, 41.331810, 25.294195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.571869, 40.935184, 25.247576>,  <39.585491, 40.697208, 25.219604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.571869, 40.935184, 25.247576>,  <39.549164, 41.331810, 25.294195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571869, 40.935184, 25.247576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593122, 0.060412, -0.802843,
		0.803109, 0.114700, -0.584688,
		0.056764, -0.991561, -0.116548,
		39.588898, 40.637714, 25.212612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743801, 41.248753, 24.598467>,  <39.549164, 41.331810, 25.294195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743801, 41.248753, 24.598467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.565090, 40.914738, 24.726908>,  <39.457863, 40.714329, 24.803972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.565090, 40.914738, 24.726908>,  <39.743801, 41.248753, 24.598467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565090, 40.914738, 24.726908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510479, -0.056807, -0.858011,
		0.734709, -0.547258, -0.400887,
		-0.446781, -0.835034, 0.321100,
		39.431057, 40.664227, 24.823238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788601, 40.748775, 24.116938>,  <39.743801, 41.248753, 24.598467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788601, 40.748775, 24.116938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.472099, 40.638889, 24.335461>,  <39.282200, 40.572956, 24.466574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.472099, 40.638889, 24.335461>,  <39.788601, 40.748775, 24.116938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472099, 40.638889, 24.335461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580888, 0.058599, -0.811871,
		0.191020, -0.959738, -0.205946,
		-0.791252, -0.274715, 0.546307,
		39.234722, 40.556477, 24.499353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268970, 40.458351, 23.621321>,  <39.788601, 40.748775, 24.116938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268970, 40.458351, 23.621321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.039120, 40.519974, 23.942835>,  <38.901211, 40.556946, 24.135744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.039120, 40.519974, 23.942835>,  <39.268970, 40.458351, 23.621321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039120, 40.519974, 23.942835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818087, -0.080252, -0.569468,
		-0.023221, -0.984799, 0.172141,
		-0.574626, 0.154050, 0.803787,
		38.866734, 40.566189, 24.183971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.033016, 40.050907, 23.906267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.014244, 40.253963, 24.250383>,  <38.002979, 40.375797, 24.456852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.014244, 40.253963, 24.250383>,  <38.033016, 40.050907, 23.906267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014244, 40.253963, 24.250383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778769, 0.520748, -0.349771,
		-0.625552, -0.686382, 0.370896,
		-0.046933, 0.507643, 0.860289,
		38.000164, 40.406258, 24.508471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355515, 39.988075, 24.346458>,  <38.033016, 40.050907, 23.906267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355515, 39.988075, 24.346458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.522278, 40.350193, 24.379038>,  <37.622337, 40.567463, 24.398586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.522278, 40.350193, 24.379038>,  <37.355515, 39.988075, 24.346458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522278, 40.350193, 24.379038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865255, 0.422724, -0.269516,
		-0.278421, 0.041889, 0.959545,
		0.416913, 0.905290, 0.081450,
		37.647350, 40.621780, 24.403473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891342, 40.435547, 24.704155>,  <37.355515, 39.988075, 24.346458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891342, 40.435547, 24.704155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.127613, 40.666664, 24.478855>,  <37.269375, 40.805332, 24.343676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.127613, 40.666664, 24.478855>,  <36.891342, 40.435547, 24.704155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127613, 40.666664, 24.478855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791640, 0.550096, -0.265896,
		0.156210, 0.602953, 0.782334,
		0.590681, 0.577791, -0.563252,
		37.304817, 40.840000, 24.309879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674732, 41.178467, 24.826801>,  <36.891342, 40.435547, 24.704155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674732, 41.178467, 24.826801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.866428, 41.153793, 24.476595>,  <36.981445, 41.138988, 24.266472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.866428, 41.153793, 24.476595>,  <36.674732, 41.178467, 24.826801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866428, 41.153793, 24.476595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724965, 0.534461, -0.434484,
		0.494730, 0.842939, 0.211414,
		0.479237, -0.061685, -0.875515,
		37.010201, 41.135288, 24.213940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462105, 41.733521, 24.504364>,  <36.674732, 41.178467, 24.826801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462105, 41.733521, 24.504364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.637146, 41.532379, 24.206200>,  <36.742172, 41.411694, 24.027302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.637146, 41.532379, 24.206200>,  <36.462105, 41.733521, 24.504364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637146, 41.532379, 24.206200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534202, 0.521440, -0.665378,
		0.723277, 0.689373, -0.040444,
		0.437604, -0.502858, -0.745410,
		36.768429, 41.381523, 23.982576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765274, 42.256954, 24.026638>,  <36.462105, 41.733521, 24.504364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765274, 42.256954, 24.026638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.700459, 41.914364, 23.830597>,  <36.661568, 41.708809, 23.712973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.700459, 41.914364, 23.830597>,  <36.765274, 42.256954, 24.026638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700459, 41.914364, 23.830597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684010, 0.455472, -0.569802,
		0.711247, 0.242902, -0.659642,
		-0.162043, -0.856471, -0.490101,
		36.651844, 41.657421, 23.683567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790428, 42.484123, 23.372478>,  <36.765274, 42.256954, 24.026638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790428, 42.484123, 23.372478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.597591, 42.133942, 23.358862>,  <36.481888, 41.923832, 23.350693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.597591, 42.133942, 23.358862>,  <36.790428, 42.484123, 23.372478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597591, 42.133942, 23.358862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411210, 0.260408, -0.873553,
		0.773623, -0.407136, -0.485538,
		-0.482093, -0.875458, -0.034040,
		36.452965, 41.871304, 23.348650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660755, 42.439137, 22.744511>,  <36.790428, 42.484123, 23.372478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660755, 42.439137, 22.744511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.399654, 42.165356, 22.874392>,  <36.242992, 42.001087, 22.952320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.399654, 42.165356, 22.874392>,  <36.660755, 42.439137, 22.744511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399654, 42.165356, 22.874392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548034, 0.130718, -0.826179,
		0.523038, -0.717240, -0.460432,
		-0.652756, -0.684455, 0.324702,
		36.203827, 41.960018, 22.971802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569881, 41.943119, 22.173210>,  <36.660755, 42.439137, 22.744511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569881, 41.943119, 22.173210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.256393, 41.924698, 22.420971>,  <36.068298, 41.913647, 22.569628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.256393, 41.924698, 22.420971>,  <36.569881, 41.943119, 22.173210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256393, 41.924698, 22.420971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614883, 0.198389, -0.763257,
		-0.087734, -0.979041, -0.183798,
		-0.783723, -0.046051, 0.619401,
		36.021278, 41.910881, 22.606791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171192, 41.518490, 21.796225>,  <36.569881, 41.943119, 22.173210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171192, 41.518490, 21.796225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.912189, 41.696194, 22.043892>,  <35.756786, 41.802814, 22.192492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.912189, 41.696194, 22.043892>,  <36.171192, 41.518490, 21.796225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912189, 41.696194, 22.043892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578215, 0.242824, -0.778912,
		-0.496386, -0.862364, 0.099645,
		-0.647510, 0.444257, 0.619166,
		35.717937, 41.829472, 22.229641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451027, 41.291901, 21.587643>,  <36.171192, 41.518490, 21.796225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451027, 41.291901, 21.587643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.416004, 41.638241, 21.784674>,  <35.394993, 41.846046, 21.902891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.416004, 41.638241, 21.784674>,  <35.451027, 41.291901, 21.587643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416004, 41.638241, 21.784674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498425, 0.390052, -0.774230,
		-0.862501, -0.313298, 0.397413,
		-0.087553, 0.865854, 0.492576,
		35.389740, 41.897999, 21.932446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754791, 41.502472, 21.566767>,  <35.451027, 41.291901, 21.587643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754791, 41.502472, 21.566767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.970596, 41.832020, 21.636232>,  <35.100079, 42.029751, 21.677912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.970596, 41.832020, 21.636232>,  <34.754791, 41.502472, 21.566767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970596, 41.832020, 21.636232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469130, 0.465413, -0.750538,
		-0.699174, 0.323454, 0.637599,
		0.539512, 0.823874, 0.173663,
		35.132450, 42.079182, 21.688332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339664, 42.135456, 21.716122>,  <34.754791, 41.502472, 21.566767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339664, 42.135456, 21.716122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.687763, 42.264668, 21.567354>,  <34.896622, 42.342194, 21.478094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.687763, 42.264668, 21.567354>,  <34.339664, 42.135456, 21.716122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687763, 42.264668, 21.567354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489176, 0.655749, -0.575065,
		0.058120, 0.682381, 0.728683,
		0.870246, 0.323032, -0.371917,
		34.948837, 42.361576, 21.455780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228821, 42.771152, 21.764729>,  <34.339664, 42.135456, 21.716122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228821, 42.771152, 21.764729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.528996, 42.788841, 21.500944>,  <34.709099, 42.799454, 21.342674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.528996, 42.788841, 21.500944>,  <34.228821, 42.771152, 21.764729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528996, 42.788841, 21.500944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424903, 0.796531, -0.430111,
		0.506261, 0.602978, 0.616536,
		0.750438, 0.044220, -0.659460,
		34.754128, 42.802109, 21.303106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294147, 43.469913, 21.635447>,  <34.228821, 42.771152, 21.764729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294147, 43.469913, 21.635447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.512318, 43.311600, 21.339914>,  <34.643219, 43.216614, 21.162596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.512318, 43.311600, 21.339914>,  <34.294147, 43.469913, 21.635447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512318, 43.311600, 21.339914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382122, 0.667133, -0.639466,
		0.745987, 0.631103, 0.212632,
		0.545423, -0.395782, -0.738831,
		34.675945, 43.192863, 21.118265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618942, 43.961323, 21.249315>,  <34.294147, 43.469913, 21.635447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618942, 43.961323, 21.249315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.616978, 43.650379, 20.997698>,  <34.615799, 43.463814, 20.846727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.616978, 43.650379, 20.997698>,  <34.618942, 43.961323, 21.249315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616978, 43.650379, 20.997698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424614, 0.571145, -0.702493,
		0.905361, 0.263652, -0.332880,
		-0.004909, -0.777355, -0.629043,
		34.615505, 43.417171, 20.808985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898216, 44.188019, 20.593662>,  <34.618942, 43.961323, 21.249315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898216, 44.188019, 20.593662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.674366, 43.870090, 20.499794>,  <34.540054, 43.679333, 20.443474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.674366, 43.870090, 20.499794>,  <34.898216, 44.188019, 20.593662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674366, 43.870090, 20.499794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344830, 0.480811, -0.806172,
		0.753596, -0.370236, -0.543155,
		-0.559629, -0.794824, -0.234669,
		34.506477, 43.631641, 20.429394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737640, 44.325394, 19.897322>,  <34.898216, 44.188019, 20.593662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737640, 44.325394, 19.897322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.476963, 44.038754, 19.996742>,  <34.320557, 43.866768, 20.056395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.476963, 44.038754, 19.996742>,  <34.737640, 44.325394, 19.897322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476963, 44.038754, 19.996742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674419, 0.397523, -0.622201,
		0.347064, -0.573114, -0.742353,
		-0.651694, -0.716600, 0.248553,
		34.281456, 43.823772, 20.071308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457752, 43.998230, 19.273409>,  <34.737640, 44.325394, 19.897322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457752, 43.998230, 19.273409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.194633, 43.969883, 19.573349>,  <34.036762, 43.952877, 19.753313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.194633, 43.969883, 19.573349>,  <34.457752, 43.998230, 19.273409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194633, 43.969883, 19.573349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675274, 0.496466, -0.545460,
		-0.333621, -0.865159, -0.374430,
		-0.657801, -0.070865, 0.749851,
		33.997292, 43.948624, 19.798304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859337, 43.850788, 18.980652>,  <34.457752, 43.998230, 19.273409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859337, 43.850788, 18.980652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.695892, 43.914829, 19.340075>,  <33.597824, 43.953255, 19.555727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.695892, 43.914829, 19.340075>,  <33.859337, 43.850788, 18.980652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695892, 43.914829, 19.340075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769084, 0.469730, -0.433432,
		-0.491473, -0.868171, -0.068804,
		-0.408613, 0.160104, 0.898556,
		33.573307, 43.962860, 19.609642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064293, 43.729298, 18.944235>,  <33.859337, 43.850788, 18.980652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064293, 43.729298, 18.944235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.128662, 43.972221, 19.255434>,  <33.167282, 44.117977, 19.442154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.128662, 43.972221, 19.255434>,  <33.064293, 43.729298, 18.944235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128662, 43.972221, 19.255434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905922, 0.403713, -0.127759,
		-0.391677, -0.684245, 0.615141,
		0.160921, 0.607310, 0.777997,
		33.176937, 44.154415, 19.488832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430187, 43.700363, 19.386854>,  <33.064293, 43.729298, 18.944235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430187, 43.700363, 19.386854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.635342, 44.032505, 19.474001>,  <32.758434, 44.231789, 19.526289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.635342, 44.032505, 19.474001>,  <32.430187, 43.700363, 19.386854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635342, 44.032505, 19.474001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850245, 0.526368, -0.004558,
		-0.118464, -0.182904, 0.975967,
		0.512884, 0.830351, 0.217869,
		32.789207, 44.281609, 19.539362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098858, 44.178623, 18.985559>,  <32.430187, 43.700363, 19.386854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098858, 44.178623, 18.985559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.289200, 44.396416, 18.709270>,  <32.403404, 44.527092, 18.543497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.289200, 44.396416, 18.709270>,  <32.098858, 44.178623, 18.985559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289200, 44.396416, 18.709270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747586, 0.163320, 0.643771,
		0.463332, -0.822718, -0.329331,
		0.475856, 0.544483, -0.690724,
		32.431957, 44.559761, 18.502054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696087, 43.471989, 18.941832>,  <32.098858, 44.178623, 18.985559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696087, 43.471989, 18.941832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.780315, 43.730919, 18.648811>,  <31.830853, 43.886276, 18.473000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.780315, 43.730919, 18.648811>,  <31.696087, 43.471989, 18.941832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780315, 43.730919, 18.648811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947890, 0.048073, 0.314951,
		0.239092, -0.760695, -0.603472,
		0.210571, 0.647327, -0.732548,
		31.843487, 43.925117, 18.429047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013357, 43.749580, 18.878712>,  <31.696087, 43.471989, 18.941832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013357, 43.749580, 18.878712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.675383, 43.621662, 19.050207>,  <30.472599, 43.544910, 19.153105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.675383, 43.621662, 19.050207>,  <31.013357, 43.749580, 18.878712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675383, 43.621662, 19.050207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491486, -0.147974, 0.858222,
		-0.211012, 0.935861, 0.282203,
		-0.844935, -0.319794, 0.428738,
		30.421902, 43.525723, 19.178829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855309, 44.184090, 19.482094>,  <31.013357, 43.749580, 18.878712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855309, 44.184090, 19.482094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.679249, 43.830639, 19.545940>,  <30.573612, 43.618568, 19.584248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.679249, 43.830639, 19.545940>,  <30.855309, 44.184090, 19.482094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679249, 43.830639, 19.545940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514086, -0.102241, 0.851624,
		-0.736195, 0.456899, 0.499259,
		-0.440151, -0.883623, 0.159616,
		30.547203, 43.565552, 19.593824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964655, 44.068874, 20.241457>,  <30.855309, 44.184090, 19.482094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964655, 44.068874, 20.241457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.855186, 43.716862, 20.086201>,  <30.789505, 43.505653, 19.993046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.855186, 43.716862, 20.086201>,  <30.964655, 44.068874, 20.241457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855186, 43.716862, 20.086201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324088, -0.464322, 0.824240,
		-0.905578, 0.099778, 0.412278,
		-0.273670, -0.880028, -0.388143,
		30.773085, 43.452854, 19.969757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.552401, 43.772118, 20.765354>,  <30.964655, 44.068874, 20.241457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.552401, 43.772118, 20.765354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.696171, 43.469688, 20.546568>,  <30.782433, 43.288231, 20.415297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.696171, 43.469688, 20.546568>,  <30.552401, 43.772118, 20.765354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696171, 43.469688, 20.546568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471808, -0.358465, 0.805543,
		-0.805114, -0.547598, 0.227877,
		0.359428, -0.756069, -0.546966,
		30.803999, 43.242867, 20.382479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481543, 43.285397, 21.217266>,  <30.552401, 43.772118, 20.765354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481543, 43.285397, 21.217266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.733936, 43.119404, 20.955074>,  <30.885372, 43.019810, 20.797760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.733936, 43.119404, 20.955074>,  <30.481543, 43.285397, 21.217266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733936, 43.119404, 20.955074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574611, -0.317677, 0.754257,
		-0.521233, -0.852568, 0.038004,
		0.630982, -0.414981, -0.655478,
		30.923231, 42.994911, 20.758430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422775, 42.562840, 21.412489>,  <30.481543, 43.285397, 21.217266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422775, 42.562840, 21.412489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.765198, 42.643559, 21.222145>,  <30.970652, 42.691990, 21.107939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.765198, 42.643559, 21.222145>,  <30.422775, 42.562840, 21.412489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765198, 42.643559, 21.222145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516544, -0.367299, 0.773482,
		-0.018694, -0.907947, -0.418668,
		0.856057, 0.201801, -0.475861,
		31.022015, 42.704098, 21.079388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789780, 41.924923, 21.442677>,  <30.422775, 42.562840, 21.412489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789780, 41.924923, 21.442677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.056458, 42.205280, 21.341270>,  <31.216463, 42.373493, 21.280426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.056458, 42.205280, 21.341270>,  <30.789780, 41.924923, 21.442677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.056458, 42.205280, 21.341270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682766, -0.437899, 0.584872,
		0.298917, -0.563023, -0.770489,
		0.666693, 0.700892, -0.253517,
		31.256466, 42.415546, 21.265215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420675, 41.579372, 21.335089>,  <30.789780, 41.924923, 21.442677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420675, 41.579372, 21.335089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.519560, 41.959332, 21.411585>,  <31.578890, 42.187309, 21.457483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.519560, 41.959332, 21.411585>,  <31.420675, 41.579372, 21.335089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519560, 41.959332, 21.411585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754847, -0.312544, 0.576648,
		0.607530, 0.001803, -0.794295,
		0.247212, 0.949902, 0.191241,
		31.593723, 42.244301, 21.468958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164612, 41.584709, 21.389462>,  <31.420675, 41.579372, 21.335089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164612, 41.584709, 21.389462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.060699, 41.919098, 21.582819>,  <31.998352, 42.119732, 21.698833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.060699, 41.919098, 21.582819>,  <32.164612, 41.584709, 21.389462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060699, 41.919098, 21.582819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586470, -0.261110, 0.766730,
		0.767182, 0.482675, -0.422441,
		-0.259778, 0.835970, 0.483393,
		31.982765, 42.169888, 21.727837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774948, 41.990856, 21.497692>,  <32.164612, 41.584709, 21.389462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774948, 41.990856, 21.497692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.494965, 42.071484, 21.771749>,  <32.326973, 42.119862, 21.936184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.494965, 42.071484, 21.771749>,  <32.774948, 41.990856, 21.497692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494965, 42.071484, 21.771749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634347, -0.265269, 0.726110,
		0.328111, 0.942868, 0.057812,
		-0.699962, 0.201572, 0.685144,
		32.284977, 42.131954, 21.977293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129730, 42.307144, 21.968504>,  <32.774948, 41.990856, 21.497692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129730, 42.307144, 21.968504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.801937, 42.181900, 22.160505>,  <32.605259, 42.106754, 22.275705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.801937, 42.181900, 22.160505>,  <33.129730, 42.307144, 21.968504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801937, 42.181900, 22.160505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565708, -0.307887, 0.764970,
		-0.091735, 0.898424, 0.429440,
		-0.819487, -0.313112, 0.480002,
		32.556091, 42.087967, 22.304506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301796, 42.580265, 22.600285>,  <33.129730, 42.307144, 21.968504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301796, 42.580265, 22.600285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.022797, 42.296333, 22.639557>,  <32.855396, 42.125977, 22.663120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.022797, 42.296333, 22.639557>,  <33.301796, 42.580265, 22.600285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022797, 42.296333, 22.639557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556989, -0.450841, 0.697500,
		-0.450841, 0.541192, 0.709827,
		-0.697500, -0.709827, 0.098180,
		32.813545, 42.083385, 22.669010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032837, 42.462906, 23.333529>,  <33.301796, 42.580265, 22.600285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032837, 42.462906, 23.333529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.950665, 42.110046, 23.164007>,  <32.901360, 41.898331, 23.062294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.950665, 42.110046, 23.164007>,  <33.032837, 42.462906, 23.333529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950665, 42.110046, 23.164007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517116, -0.465494, 0.718266,
		-0.830897, -0.071603, 0.551800,
		-0.205430, -0.882150, -0.423805,
		32.889034, 41.845402, 23.036865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804695, 42.125565, 23.862381>,  <33.032837, 42.462906, 23.333529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804695, 42.125565, 23.862381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.924244, 41.871662, 23.577353>,  <32.995972, 41.719318, 23.406336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.924244, 41.871662, 23.577353>,  <32.804695, 42.125565, 23.862381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924244, 41.871662, 23.577353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400195, -0.594500, 0.697434,
		-0.866327, -0.493608, 0.076350,
		0.298868, -0.634760, -0.712571,
		33.013905, 41.681232, 23.363581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684406, 41.550793, 24.153460>,  <32.804695, 42.125565, 23.862381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684406, 41.550793, 24.153460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.938206, 41.419044, 23.873766>,  <33.090485, 41.339996, 23.705950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.938206, 41.419044, 23.873766>,  <32.684406, 41.550793, 24.153460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938206, 41.419044, 23.873766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450750, -0.577218, 0.680914,
		-0.627886, -0.747217, -0.217777,
		0.634495, -0.329374, -0.699235,
		33.128555, 41.320232, 23.663996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732498, 40.775196, 24.175030>,  <32.684406, 41.550793, 24.153460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732498, 40.775196, 24.175030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.067703, 40.908833, 24.002466>,  <33.268826, 40.989014, 23.898928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.067703, 40.908833, 24.002466>,  <32.732498, 40.775196, 24.175030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067703, 40.908833, 24.002466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541053, -0.611173, 0.577692,
		-0.070662, -0.717530, -0.692935,
		0.838014, 0.334094, -0.431408,
		33.319107, 41.009060, 23.873043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043972, 40.240147, 24.356802>,  <32.732498, 40.775196, 24.175030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043972, 40.240147, 24.356802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.323112, 40.485725, 24.209251>,  <33.490597, 40.633072, 24.120722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.323112, 40.485725, 24.209251>,  <33.043972, 40.240147, 24.356802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323112, 40.485725, 24.209251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713128, -0.547634, 0.437659,
		0.066691, -0.568477, -0.819992,
		0.697855, 0.613947, -0.368874,
		33.532471, 40.669910, 24.098589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662773, 39.795815, 24.055157>,  <33.043972, 40.240147, 24.356802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662773, 39.795815, 24.055157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.802113, 40.157951, 24.152330>,  <33.885715, 40.375233, 24.210634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.802113, 40.157951, 24.152330>,  <33.662773, 39.795815, 24.055157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802113, 40.157951, 24.152330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639940, -0.419064, 0.644098,
		0.684932, -0.068905, -0.725342,
		0.348347, 0.905338, 0.242935,
		33.906616, 40.429554, 24.225210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415119, 39.681763, 24.228893>,  <33.662773, 39.795815, 24.055157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415119, 39.681763, 24.228893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.316349, 40.035522, 24.387316>,  <34.257088, 40.247780, 24.482370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.316349, 40.035522, 24.387316>,  <34.415119, 39.681763, 24.228893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316349, 40.035522, 24.387316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577069, -0.194138, 0.793286,
		0.778473, 0.424433, -0.462424,
		-0.246923, 0.884402, 0.396058,
		34.242271, 40.300842, 24.506134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059025, 40.142189, 24.327156>,  <34.415119, 39.681763, 24.228893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059025, 40.142189, 24.327156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.776642, 40.275326, 24.577227>,  <34.607212, 40.355209, 24.727268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.776642, 40.275326, 24.577227>,  <35.059025, 40.142189, 24.327156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776642, 40.275326, 24.577227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583669, -0.226611, 0.779730,
		0.401198, 0.915349, -0.034292,
		-0.705954, 0.332841, 0.625177,
		34.564857, 40.375179, 24.764780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.011604, 40.270779, 25.357388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.728928, 40.206612, 25.633026>,  <40.559322, 40.168110, 25.798409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.728928, 40.206612, 25.633026>,  <41.011604, 40.270779, 25.357388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728928, 40.206612, 25.633026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704186, -0.253925, 0.663056,
		0.068612, 0.953828, 0.292411,
		-0.706692, -0.160418, 0.689095,
		40.516918, 40.158485, 25.839754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378025, 40.316677, 26.143890>,  <41.011604, 40.270779, 25.357388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378025, 40.316677, 26.143890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.016460, 40.162430, 26.217907>,  <40.799522, 40.069881, 26.262318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.016460, 40.162430, 26.217907>,  <41.378025, 40.316677, 26.143890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016460, 40.162430, 26.217907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329127, -0.350798, 0.876708,
		-0.273165, 0.853368, 0.444009,
		-0.903911, -0.385622, 0.185041,
		40.745289, 40.046741, 26.273418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057346, 40.638054, 26.720655>,  <41.378025, 40.316677, 26.143890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057346, 40.638054, 26.720655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.963253, 40.253407, 26.664150>,  <40.906796, 40.022617, 26.630247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.963253, 40.253407, 26.664150>,  <41.057346, 40.638054, 26.720655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963253, 40.253407, 26.664150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439454, -0.234864, 0.867017,
		-0.866917, 0.141874, 0.477835,
		-0.235233, -0.961619, -0.141261,
		40.892681, 39.964920, 26.621773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974640, 40.471973, 27.378084>,  <41.057346, 40.638054, 26.720655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974640, 40.471973, 27.378084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.983150, 40.112087, 27.203701>,  <40.988255, 39.896156, 27.099072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.983150, 40.112087, 27.203701>,  <40.974640, 40.471973, 27.378084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983150, 40.112087, 27.203701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439714, -0.383199, 0.812287,
		-0.897886, -0.208977, 0.387465,
		0.021273, -0.899715, -0.435960,
		40.989532, 39.842175, 27.072912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756016, 40.037155, 27.902304>,  <40.974640, 40.471973, 27.378084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756016, 40.037155, 27.902304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.965073, 39.833599, 27.628698>,  <41.090508, 39.711464, 27.464535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.965073, 39.833599, 27.628698>,  <40.756016, 40.037155, 27.902304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965073, 39.833599, 27.628698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502760, -0.463986, 0.729348,
		-0.688532, -0.725083, 0.013352,
		0.522643, -0.508892, -0.684012,
		41.121864, 39.680931, 27.423494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566696, 39.307091, 28.045799>,  <40.756016, 40.037155, 27.902304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566696, 39.307091, 28.045799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.916744, 39.289509, 27.853041>,  <41.126774, 39.278961, 27.737385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.916744, 39.289509, 27.853041>,  <40.566696, 39.307091, 28.045799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916744, 39.289509, 27.853041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406445, -0.473671, 0.781305,
		-0.262602, -0.879604, -0.396657,
		0.875125, -0.043954, -0.481897,
		41.179283, 39.276321, 27.708471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745026, 38.554878, 27.898289>,  <40.566696, 39.307091, 28.045799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745026, 38.554878, 27.898289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.088322, 38.758873, 27.921377>,  <41.294300, 38.881271, 27.935230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.088322, 38.758873, 27.921377>,  <40.745026, 38.554878, 27.898289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088322, 38.758873, 27.921377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298267, -0.587117, 0.752549,
		0.417683, -0.628652, -0.656001,
		0.858241, 0.509990, 0.057722,
		41.345795, 38.911869, 27.938694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188892, 38.051136, 28.115738>,  <40.745026, 38.554878, 27.898289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188892, 38.051136, 28.115738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.438713, 38.362762, 28.137589>,  <41.588604, 38.549740, 28.150700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.438713, 38.362762, 28.137589>,  <41.188892, 38.051136, 28.115738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438713, 38.362762, 28.137589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420734, -0.394567, 0.816884,
		0.657964, -0.487204, -0.574209,
		0.624553, 0.779070, 0.054627,
		41.626080, 38.596485, 28.153976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900578, 37.793270, 28.164278>,  <41.188892, 38.051136, 28.115738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900578, 37.793270, 28.164278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.856400, 38.156143, 28.326670>,  <41.829891, 38.373867, 28.424105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.856400, 38.156143, 28.326670>,  <41.900578, 37.793270, 28.164278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.856400, 38.156143, 28.326670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356900, -0.345031, 0.868087,
		0.927591, 0.240769, -0.285668,
		-0.110444, 0.907185, 0.405978,
		41.823265, 38.428299, 28.448463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.590450, 38.084129, 28.438278>,  <41.900578, 37.793270, 28.164278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.590450, 38.084129, 28.438278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.336506, 38.313286, 28.645643>,  <42.184139, 38.450779, 28.770061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.336506, 38.313286, 28.645643>,  <42.590450, 38.084129, 28.438278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336506, 38.313286, 28.645643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423510, -0.303159, 0.853659,
		0.646215, 0.761505, -0.050162,
		-0.634859, 0.572891, 0.518411,
		42.146049, 38.485153, 28.801167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.967644, 38.324841, 29.051933>,  <42.590450, 38.084129, 28.438278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.967644, 38.324841, 29.051933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.574894, 38.354591, 29.121662>,  <42.339245, 38.372440, 29.163500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.574894, 38.354591, 29.121662>,  <42.967644, 38.324841, 29.051933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.574894, 38.354591, 29.121662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122710, -0.451485, 0.883800,
		0.144434, 0.889174, 0.434176,
		-0.981876, 0.074373, 0.174321,
		42.280331, 38.376904, 29.173958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.922009, 38.536125, 29.700891>,  <42.967644, 38.324841, 29.051933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.922009, 38.536125, 29.700891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.566292, 38.363750, 29.639629>,  <42.352863, 38.260326, 29.602873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.566292, 38.363750, 29.639629>,  <42.922009, 38.536125, 29.700891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.566292, 38.363750, 29.639629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072964, -0.464272, 0.882682,
		-0.451487, 0.773785, 0.444315,
		-0.889289, -0.430938, -0.153154,
		42.299503, 38.234470, 29.593683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.295471, 38.828091, 30.083284>,  <42.922009, 38.536125, 29.700891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.295471, 38.828091, 30.083284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.372395, 38.444931, 29.998013>,  <42.418549, 38.215034, 29.946850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.372395, 38.444931, 29.998013>,  <42.295471, 38.828091, 30.083284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.372395, 38.444931, 29.998013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455316, -0.105342, 0.884076,
		-0.869314, -0.267076, 0.415889,
		0.192305, -0.957901, -0.213180,
		42.430088, 38.157562, 29.934059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.025826, 38.322872, 30.661667>,  <42.295471, 38.828091, 30.083284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.025826, 38.322872, 30.661667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.346046, 38.205723, 30.452541>,  <42.538181, 38.135433, 30.327066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.346046, 38.205723, 30.452541>,  <42.025826, 38.322872, 30.661667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.346046, 38.205723, 30.452541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482188, -0.203197, 0.852177,
		-0.355820, -0.934309, -0.021447,
		0.800554, -0.292880, -0.522814,
		42.586212, 38.117859, 30.295696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020981, 38.498005, 31.381010>,  <42.025826, 38.322872, 30.661667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.020981, 38.498005, 31.381010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.010983, 38.603935, 31.766600>,  <42.004982, 38.667492, 31.997953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.010983, 38.603935, 31.766600>,  <42.020981, 38.498005, 31.381010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.010983, 38.603935, 31.766600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777584, 0.600874, -0.185238,
		-0.628282, -0.754201, 0.190902,
		-0.024998, 0.264824, 0.963973,
		42.003483, 38.683384, 32.055790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314899, 38.393906, 31.595606>,  <42.020981, 38.498005, 31.381010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314899, 38.393906, 31.595606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.464214, 38.685665, 31.824913>,  <41.553802, 38.860722, 31.962498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.464214, 38.685665, 31.824913>,  <41.314899, 38.393906, 31.595606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464214, 38.685665, 31.824913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865642, 0.496087, -0.067534,
		-0.333651, -0.471036, 0.816580,
		0.373284, 0.729399, 0.573269,
		41.576199, 38.904484, 31.996893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806515, 38.587563, 32.186672>,  <41.314899, 38.393906, 31.595606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806515, 38.587563, 32.186672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.057076, 38.894867, 32.133915>,  <41.207413, 39.079250, 32.102261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.057076, 38.894867, 32.133915>,  <40.806515, 38.587563, 32.186672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057076, 38.894867, 32.133915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779465, 0.615810, -0.114947,
		-0.007090, 0.174806, 0.984577,
		0.626406, 0.768258, -0.131889,
		41.244999, 39.125343, 32.094349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616943, 39.119659, 32.625488>,  <40.806515, 38.587563, 32.186672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616943, 39.119659, 32.625488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.836464, 39.312447, 32.352280>,  <40.968178, 39.428120, 32.188354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.836464, 39.312447, 32.352280>,  <40.616943, 39.119659, 32.625488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836464, 39.312447, 32.352280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735540, 0.666664, -0.120583,
		0.397232, 0.568569, 0.720373,
		0.548806, 0.481963, -0.683025,
		41.001106, 39.457035, 32.147373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252068, 39.757637, 32.463230>,  <40.616943, 39.119659, 32.625488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252068, 39.757637, 32.463230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.511227, 39.787842, 32.160042>,  <40.666721, 39.805965, 31.978128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.511227, 39.787842, 32.160042>,  <40.252068, 39.757637, 32.463230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511227, 39.787842, 32.160042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544161, 0.742196, -0.391196,
		0.533027, 0.665915, 0.521957,
		0.647898, 0.075511, -0.757975,
		40.705597, 39.810493, 31.932650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466774, 40.570343, 32.349438>,  <40.252068, 39.757637, 32.463230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466774, 40.570343, 32.349438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.565182, 40.369499, 32.017811>,  <40.624226, 40.248993, 31.818834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.565182, 40.369499, 32.017811>,  <40.466774, 40.570343, 32.349438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565182, 40.369499, 32.017811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307762, 0.770629, -0.558045,
		0.919106, 0.392448, 0.035063,
		0.246024, -0.502111, -0.829070,
		40.638988, 40.218864, 31.769091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794754, 41.081730, 31.870138>,  <40.466774, 40.570343, 32.349438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794754, 41.081730, 31.870138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.663429, 40.779751, 31.643063>,  <40.584633, 40.598564, 31.506817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.663429, 40.779751, 31.643063>,  <40.794754, 41.081730, 31.870138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663429, 40.779751, 31.643063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302319, 0.653372, -0.694052,
		0.894883, -0.056241, -0.442743,
		-0.328311, -0.754945, -0.567689,
		40.564938, 40.553268, 31.472755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054077, 41.288212, 31.246111>,  <40.794754, 41.081730, 31.870138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054077, 41.288212, 31.246111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.759014, 41.036678, 31.147787>,  <40.581974, 40.885757, 31.088793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.759014, 41.036678, 31.147787>,  <41.054077, 41.288212, 31.246111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759014, 41.036678, 31.147787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387116, 0.692201, -0.609097,
		0.553171, -0.354151, -0.754042,
		-0.737661, -0.628836, -0.245808,
		40.537716, 40.848026, 31.074045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988697, 41.247482, 30.471247>,  <41.054077, 41.288212, 31.246111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988697, 41.247482, 30.471247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.643353, 41.123547, 30.630550>,  <40.436146, 41.049187, 30.726131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.643353, 41.123547, 30.630550>,  <40.988697, 41.247482, 30.471247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643353, 41.123547, 30.630550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500178, 0.629603, -0.594493,
		-0.066550, -0.712462, -0.698548,
		-0.863361, -0.309835, 0.398258,
		40.384342, 41.030598, 30.750029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575825, 41.084175, 29.953514>,  <40.988697, 41.247482, 30.471247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575825, 41.084175, 29.953514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.308445, 41.144749, 30.244785>,  <40.148018, 41.181091, 30.419548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.308445, 41.144749, 30.244785>,  <40.575825, 41.084175, 29.953514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308445, 41.144749, 30.244785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504951, 0.626434, -0.593805,
		-0.546079, -0.764623, -0.342272,
		-0.668448, 0.151434, 0.728180,
		40.107910, 41.190178, 30.463240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906761, 41.091488, 29.664497>,  <40.575825, 41.084175, 29.953514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906761, 41.091488, 29.664497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.845219, 41.283337, 30.010052>,  <39.808292, 41.398445, 30.217384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.845219, 41.283337, 30.010052>,  <39.906761, 41.091488, 29.664497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845219, 41.283337, 30.010052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544406, 0.688476, -0.479190,
		-0.824591, -0.544029, 0.155182,
		-0.153854, 0.479618, 0.863884,
		39.799061, 41.427223, 30.269217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210358, 41.301369, 29.638605>,  <39.906761, 41.091488, 29.664497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210358, 41.301369, 29.638605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.405704, 41.535149, 29.897808>,  <39.522915, 41.675415, 30.053329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.405704, 41.535149, 29.897808>,  <39.210358, 41.301369, 29.638605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405704, 41.535149, 29.897808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521968, 0.790743, -0.319806,
		-0.699318, -0.182055, 0.691239,
		0.488370, 0.584450, 0.648007,
		39.552216, 41.710484, 30.092211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783077, 41.860531, 29.730396>,  <39.210358, 41.301369, 29.638605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783077, 41.860531, 29.730396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.117741, 42.024967, 29.875174>,  <39.318539, 42.123627, 29.962040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.117741, 42.024967, 29.875174>,  <38.783077, 41.860531, 29.730396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117741, 42.024967, 29.875174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301596, 0.897391, -0.322072,
		-0.457205, 0.160304, 0.874795,
		0.836662, 0.411087, 0.361945,
		39.368740, 42.148293, 29.983757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601135, 42.449635, 30.062983>,  <38.783077, 41.860531, 29.730396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601135, 42.449635, 30.062983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.986988, 42.489429, 29.965342>,  <39.218498, 42.513306, 29.906757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.986988, 42.489429, 29.965342>,  <38.601135, 42.449635, 30.062983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986988, 42.489429, 29.965342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195349, 0.891560, -0.408608,
		0.176984, 0.441842, 0.879462,
		0.964632, 0.099485, -0.244105,
		39.276379, 42.519276, 29.892111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307522, 42.878914, 30.575859>,  <38.601135, 42.449635, 30.062983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307522, 42.878914, 30.575859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.938023, 42.938351, 30.717054>,  <37.716324, 42.974014, 30.801771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.938023, 42.938351, 30.717054>,  <38.307522, 42.878914, 30.575859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938023, 42.938351, 30.717054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057220, -0.857772, 0.510835,
		0.378692, 0.492083, 0.783866,
		-0.923752, 0.148597, 0.352989,
		37.660896, 42.982929, 30.822950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355400, 43.081497, 31.307421>,  <38.307522, 42.878914, 30.575859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355400, 43.081497, 31.307421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.997669, 42.916267, 31.238665>,  <37.783031, 42.817131, 31.197411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.997669, 42.916267, 31.238665>,  <38.355400, 43.081497, 31.307421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997669, 42.916267, 31.238665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170746, -0.670222, 0.722252,
		-0.413550, 0.616580, 0.669930,
		-0.894328, -0.413075, -0.171892,
		37.729370, 42.792343, 31.187098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947647, 43.089767, 31.922237>,  <38.355400, 43.081497, 31.307421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947647, 43.089767, 31.922237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.809395, 42.795441, 31.689306>,  <37.726444, 42.618843, 31.549547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.809395, 42.795441, 31.689306>,  <37.947647, 43.089767, 31.922237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809395, 42.795441, 31.689306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179594, -0.660976, 0.728599,
		-0.921023, 0.147246, 0.360605,
		-0.345634, -0.735819, -0.582329,
		37.705704, 42.574696, 31.514608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840435, 42.598640, 32.411430>,  <37.947647, 43.089767, 31.922237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840435, 42.598640, 32.411430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.760189, 42.371769, 32.091915>,  <37.712044, 42.235645, 31.900206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.760189, 42.371769, 32.091915>,  <37.840435, 42.598640, 32.411430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760189, 42.371769, 32.091915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131818, -0.823580, 0.551670,
		-0.970762, 0.005376, 0.239983,
		-0.200611, -0.567175, -0.798792,
		37.700005, 42.201618, 31.852278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399395, 42.127037, 32.640854>,  <37.840435, 42.598640, 32.411430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399395, 42.127037, 32.640854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.546761, 41.958141, 32.309559>,  <37.635178, 41.856804, 32.110783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.546761, 41.958141, 32.309559>,  <37.399395, 42.127037, 32.640854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546761, 41.958141, 32.309559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121991, -0.861245, 0.493331,
		-0.921624, -0.282786, -0.265782,
		0.368411, -0.422243, -0.828241,
		37.657284, 41.831467, 32.061085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120083, 41.526215, 32.627121>,  <37.399395, 42.127037, 32.640854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120083, 41.526215, 32.627121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.431023, 41.467171, 32.382519>,  <37.617588, 41.431744, 32.235760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.431023, 41.467171, 32.382519>,  <37.120083, 41.526215, 32.627121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431023, 41.467171, 32.382519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215833, -0.850490, 0.479670,
		-0.590878, -0.504856, -0.629273,
		0.777354, -0.147608, -0.611500,
		37.664230, 41.422890, 32.199070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069805, 40.887718, 32.585918>,  <37.120083, 41.526215, 32.627121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069805, 40.887718, 32.585918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.431229, 40.931770, 32.420292>,  <37.648083, 40.958202, 32.320915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.431229, 40.931770, 32.420292>,  <37.069805, 40.887718, 32.585918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431229, 40.931770, 32.420292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278427, -0.885461, 0.372070,
		-0.325664, -0.451475, -0.830731,
		0.903561, 0.110128, -0.414065,
		37.702297, 40.964809, 32.296074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352791, 40.182472, 32.232986>,  <37.069805, 40.887718, 32.585918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352791, 40.182472, 32.232986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.684448, 40.398369, 32.291222>,  <37.883442, 40.527908, 32.326164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.684448, 40.398369, 32.291222>,  <37.352791, 40.182472, 32.232986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684448, 40.398369, 32.291222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438401, -0.789384, 0.429740,
		0.346873, -0.292492, -0.891138,
		0.829146, 0.539741, 0.145588,
		37.933193, 40.560291, 32.334896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831078, 39.742722, 31.948845>,  <37.352791, 40.182472, 32.232986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831078, 39.742722, 31.948845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.005566, 39.981495, 32.218178>,  <38.110260, 40.124760, 32.379776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.005566, 39.981495, 32.218178>,  <37.831078, 39.742722, 31.948845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005566, 39.981495, 32.218178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372497, -0.800950, 0.468749,
		0.819119, 0.046335, -0.571750,
		0.436223, 0.596936, 0.673333,
		38.136433, 40.160576, 32.420177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481094, 39.575603, 31.973194>,  <37.831078, 39.742722, 31.948845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481094, 39.575603, 31.973194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.403988, 39.740273, 32.329479>,  <38.357723, 39.839073, 32.543251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.403988, 39.740273, 32.329479>,  <38.481094, 39.575603, 31.973194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403988, 39.740273, 32.329479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501107, -0.739142, 0.450068,
		0.843643, 0.533098, -0.063813,
		-0.192764, 0.411674, 0.890711,
		38.346157, 39.863773, 32.596691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025494, 39.600960, 32.270966>,  <38.481094, 39.575603, 31.973194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025494, 39.600960, 32.270966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.774643, 39.630596, 32.581120>,  <38.624130, 39.648376, 32.767212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.774643, 39.630596, 32.581120>,  <39.025494, 39.600960, 32.270966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774643, 39.630596, 32.581120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527463, -0.692089, 0.492743,
		0.573141, 0.717999, 0.394950,
		-0.627130, 0.074089, 0.775383,
		38.586502, 39.652824, 32.813736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421894, 39.595634, 32.814423>,  <39.025494, 39.600960, 32.270966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421894, 39.595634, 32.814423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.058842, 39.533020, 32.970222>,  <38.841011, 39.495453, 33.063702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.058842, 39.533020, 32.970222>,  <39.421894, 39.595634, 32.814423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058842, 39.533020, 32.970222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396819, -0.622598, 0.674468,
		0.136927, 0.766727, 0.627201,
		-0.907626, -0.156532, 0.389503,
		38.786552, 39.486061, 33.087074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.660236, 45.434921, 28.160646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315941, 45.231689, 28.173126>,  <36.109364, 45.109749, 28.180614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315941, 45.231689, 28.173126>,  <36.660236, 45.434921, 28.160646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315941, 45.231689, 28.173126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210482, -0.299433, 0.930611,
		-0.463485, 0.807584, 0.364677,
		-0.860743, -0.508082, 0.031200,
		36.057716, 45.079266, 28.182486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300323, 45.632492, 28.814041>,  <36.660236, 45.434921, 28.160646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300323, 45.632492, 28.814041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168991, 45.273876, 28.695099>,  <36.090191, 45.058708, 28.623734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168991, 45.273876, 28.695099>,  <36.300323, 45.632492, 28.814041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168991, 45.273876, 28.695099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439521, -0.423662, 0.792043,
		-0.836074, 0.129359, 0.533148,
		-0.328333, -0.896536, -0.297357,
		36.070492, 45.004917, 28.605892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078495, 45.369110, 29.389210>,  <36.300323, 45.632492, 28.814041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078495, 45.369110, 29.389210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101402, 45.036144, 29.168737>,  <36.115147, 44.836365, 29.036453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101402, 45.036144, 29.168737>,  <36.078495, 45.369110, 29.389210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101402, 45.036144, 29.168737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285314, -0.515417, 0.808048,
		-0.956722, -0.203532, 0.207986,
		0.057264, -0.832419, -0.551181,
		36.118580, 44.786419, 29.003384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787231, 44.845509, 29.802071>,  <36.078495, 45.369110, 29.389210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787231, 44.845509, 29.802071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011860, 44.628632, 29.552057>,  <36.146637, 44.498505, 29.402050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011860, 44.628632, 29.552057>,  <35.787231, 44.845509, 29.802071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011860, 44.628632, 29.552057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172231, -0.662251, 0.729219,
		-0.809304, -0.517160, -0.278521,
		0.561573, -0.542189, -0.625033,
		36.180332, 44.465977, 29.364548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679886, 44.131393, 30.016603>,  <35.787231, 44.845509, 29.802071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679886, 44.131393, 30.016603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019608, 44.126560, 29.805498>,  <36.223442, 44.123661, 29.678835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019608, 44.126560, 29.805498>,  <35.679886, 44.131393, 30.016603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019608, 44.126560, 29.805498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425633, -0.575711, 0.698136,
		-0.312273, -0.817564, -0.483813,
		0.849307, -0.012082, -0.527761,
		36.274399, 44.122936, 29.647169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945839, 43.440475, 29.988079>,  <35.679886, 44.131393, 30.016603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945839, 43.440475, 29.988079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278290, 43.646591, 29.904457>,  <36.477760, 43.770260, 29.854284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278290, 43.646591, 29.904457>,  <35.945839, 43.440475, 29.988079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278290, 43.646591, 29.904457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509713, -0.555654, 0.656842,
		0.222300, -0.652478, -0.724469,
		0.831129, 0.515288, -0.209054,
		36.527630, 43.801178, 29.841742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428177, 42.925533, 29.689312>,  <35.945839, 43.440475, 29.988079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428177, 42.925533, 29.689312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637543, 43.235825, 29.830334>,  <36.763161, 43.421997, 29.914946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637543, 43.235825, 29.830334>,  <36.428177, 42.925533, 29.689312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637543, 43.235825, 29.830334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451971, -0.603507, 0.656888,
		0.722332, -0.184478, -0.666486,
		0.523410, 0.775724, 0.352553,
		36.794567, 43.468540, 29.936100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055786, 42.745934, 29.609989>,  <36.428177, 42.925533, 29.689312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055786, 42.745934, 29.609989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070942, 43.028603, 29.892601>,  <37.080036, 43.198204, 30.062168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070942, 43.028603, 29.892601>,  <37.055786, 42.745934, 29.609989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070942, 43.028603, 29.892601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490838, -0.629027, 0.602829,
		0.870426, 0.323949, -0.370695,
		0.037891, 0.706669, 0.706529,
		37.082310, 43.240604, 30.104559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860615, 42.894402, 29.810944>,  <37.055786, 42.745934, 29.609989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860615, 42.894402, 29.810944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618614, 42.984306, 30.116480>,  <37.473412, 43.038250, 30.299801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618614, 42.984306, 30.116480>,  <37.860615, 42.894402, 29.810944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618614, 42.984306, 30.116480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572248, -0.544296, 0.613412,
		0.553627, 0.808223, 0.200681,
		-0.605003, 0.224762, 0.763841,
		37.437115, 43.051735, 30.345633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653652, 43.225605, 29.962215>,  <37.860615, 42.894402, 29.810944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653652, 43.225605, 29.962215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973545, 43.071159, 29.778330>,  <39.165482, 42.978493, 29.667997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973545, 43.071159, 29.778330>,  <38.653652, 43.225605, 29.962215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973545, 43.071159, 29.778330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008450, 0.772903, -0.634468,
		0.600295, 0.503521, 0.621379,
		0.799734, -0.386119, -0.459715,
		39.213467, 42.955322, 29.640415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174492, 43.778751, 29.903030>,  <38.653652, 43.225605, 29.962215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174492, 43.778751, 29.903030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307186, 43.532063, 29.617483>,  <39.386803, 43.384048, 29.446156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307186, 43.532063, 29.617483>,  <39.174492, 43.778751, 29.903030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307186, 43.532063, 29.617483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006280, 0.758146, -0.652055,
		0.943350, 0.211829, 0.255379,
		0.331739, -0.616720, -0.713867,
		39.406708, 43.347046, 29.403322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556587, 44.208405, 29.536430>,  <39.174492, 43.778751, 29.903030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556587, 44.208405, 29.536430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481865, 43.895458, 29.298771>,  <39.437031, 43.707691, 29.156176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481865, 43.895458, 29.298771>,  <39.556587, 44.208405, 29.536430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481865, 43.895458, 29.298771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152023, 0.620531, -0.769305,
		0.970564, -0.053382, -0.234853,
		-0.186801, -0.782363, -0.594150,
		39.425823, 43.660748, 29.120525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908661, 44.383915, 28.876047>,  <39.556587, 44.208405, 29.536430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908661, 44.383915, 28.876047> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620659, 44.112614, 28.817310>,  <39.447857, 43.949833, 28.782068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620659, 44.112614, 28.817310>,  <39.908661, 44.383915, 28.876047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620659, 44.112614, 28.817310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293163, 0.489068, -0.821504,
		0.629001, -0.548442, -0.550971,
		-0.720009, -0.678251, -0.146841,
		39.404655, 43.909138, 28.773258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040154, 44.097198, 28.177160>,  <39.908661, 44.383915, 28.876047>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040154, 44.097198, 28.177160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652306, 44.038906, 28.255741>,  <39.419598, 44.003929, 28.302891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652306, 44.038906, 28.255741>,  <40.040154, 44.097198, 28.177160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652306, 44.038906, 28.255741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231445, 0.286709, -0.929640,
		0.079155, -0.946868, -0.311728,
		-0.969622, -0.145733, 0.196454,
		39.361420, 43.995186, 28.314676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785389, 43.681446, 27.639286>,  <40.040154, 44.097198, 28.177160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785389, 43.681446, 27.639286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469936, 43.872398, 27.794292>,  <39.280666, 43.986969, 27.887297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469936, 43.872398, 27.794292>,  <39.785389, 43.681446, 27.639286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469936, 43.872398, 27.794292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349148, 0.171095, -0.921315,
		-0.506119, -0.861879, 0.031745,
		-0.788631, 0.477379, 0.387518,
		39.233349, 44.015614, 27.910547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311668, 43.517738, 27.214186>,  <39.785389, 43.681446, 27.639286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311668, 43.517738, 27.214186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120838, 43.818722, 27.395828>,  <39.006340, 43.999310, 27.504814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120838, 43.818722, 27.395828>,  <39.311668, 43.517738, 27.214186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120838, 43.818722, 27.395828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363587, 0.301428, -0.881445,
		-0.800128, -0.585621, 0.129780,
		-0.477074, 0.752455, 0.454106,
		38.977715, 44.044456, 27.532061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706566, 43.493160, 26.913458>,  <39.311668, 43.517738, 27.214186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706566, 43.493160, 26.913458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688847, 43.853428, 27.086353>,  <38.678215, 44.069588, 27.190090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688847, 43.853428, 27.086353>,  <38.706566, 43.493160, 26.913458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688847, 43.853428, 27.086353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550041, 0.339194, -0.763153,
		-0.833962, -0.271554, 0.480381,
		-0.044295, 0.900670, 0.432240,
		38.675560, 44.123631, 27.216026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937103, 43.679756, 27.025452>,  <38.706566, 43.493160, 26.913458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937103, 43.679756, 27.025452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150982, 44.017242, 27.006483>,  <38.279308, 44.219734, 26.995102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150982, 44.017242, 27.006483>,  <37.937103, 43.679756, 27.025452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150982, 44.017242, 27.006483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598079, 0.338194, -0.726585,
		-0.596991, 0.416865, 0.685438,
		0.534699, 0.843711, -0.047420,
		38.311390, 44.270355, 26.992258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461681, 44.232620, 27.057621>,  <37.937103, 43.679756, 27.025452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461681, 44.232620, 27.057621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797230, 44.380501, 26.897818>,  <37.998558, 44.469231, 26.801935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797230, 44.380501, 26.897818>,  <37.461681, 44.232620, 27.057621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797230, 44.380501, 26.897818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541099, 0.486623, -0.685865,
		-0.059160, 0.791527, 0.608263,
		0.838875, 0.369706, -0.399506,
		38.048893, 44.491413, 26.777966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282616, 44.991295, 26.805185>,  <37.461681, 44.232620, 27.057621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282616, 44.991295, 26.805185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623493, 44.904968, 26.614529>,  <37.828022, 44.853172, 26.500135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623493, 44.904968, 26.614529>,  <37.282616, 44.991295, 26.805185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623493, 44.904968, 26.614529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425659, 0.243780, -0.871427,
		0.304263, 0.945513, 0.115884,
		0.852196, -0.215816, -0.476640,
		37.879150, 44.840225, 26.471537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539108, 45.626965, 26.460814>,  <37.282616, 44.991295, 26.805185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539108, 45.626965, 26.460814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715939, 45.342022, 26.242779>,  <37.822037, 45.171059, 26.111958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715939, 45.342022, 26.242779>,  <37.539108, 45.626965, 26.460814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715939, 45.342022, 26.242779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328893, 0.436638, -0.837363,
		0.834505, 0.549453, -0.041262,
		0.442075, -0.712355, -0.545088,
		37.848560, 45.128315, 26.079252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894493, 45.980194, 25.912977>,  <37.539108, 45.626965, 26.460814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894493, 45.980194, 25.912977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824757, 45.601891, 25.803331>,  <37.782917, 45.374908, 25.737545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824757, 45.601891, 25.803331>,  <37.894493, 45.980194, 25.912977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824757, 45.601891, 25.803331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220963, 0.308852, -0.925087,
		0.959574, -0.100707, -0.262823,
		-0.174337, -0.945764, -0.274114,
		37.772457, 45.318161, 25.721098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191402, 45.832153, 25.236212>,  <37.894493, 45.980194, 25.912977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191402, 45.832153, 25.236212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878971, 45.583660, 25.261465>,  <37.691513, 45.434566, 25.276617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878971, 45.583660, 25.261465>,  <38.191402, 45.832153, 25.236212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878971, 45.583660, 25.261465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311277, 0.299724, -0.901816,
		0.541313, -0.724043, -0.427483,
		-0.781081, -0.621230, 0.063134,
		37.644646, 45.397293, 25.280405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.157379, 41.089603, 25.557913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.414280, 41.381794, 25.650789>,  <31.568420, 41.557110, 25.706514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.414280, 41.381794, 25.650789>,  <31.157379, 41.089603, 25.557913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414280, 41.381794, 25.650789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524271, -0.639632, 0.562149,
		0.559155, -0.239310, -0.793774,
		0.642251, 0.730480, 0.232190,
		31.606955, 41.600937, 25.720446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810141, 40.746181, 25.731308>,  <31.157379, 41.089603, 25.557913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810141, 40.746181, 25.731308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.864330, 41.112713, 25.882034>,  <31.896843, 41.332630, 25.972471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.864330, 41.112713, 25.882034>,  <31.810141, 40.746181, 25.731308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864330, 41.112713, 25.882034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570367, -0.383111, 0.726573,
		0.810141, 0.116493, -0.574544,
		0.135473, 0.916327, 0.376818,
		31.904972, 41.387611, 25.995079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501572, 40.825035, 25.768726>,  <31.810141, 40.746181, 25.731308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501572, 40.825035, 25.768726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.351727, 41.095360, 26.022636>,  <32.261818, 41.257553, 26.174982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.351727, 41.095360, 26.022636>,  <32.501572, 40.825035, 25.768726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351727, 41.095360, 26.022636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470562, -0.451325, 0.758206,
		0.798895, 0.582739, -0.148937,
		-0.374617, 0.675811, 0.634777,
		32.239342, 41.298103, 26.213070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121780, 41.182564, 26.158703>,  <32.501572, 40.825035, 25.768726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121780, 41.182564, 26.158703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.778103, 41.233269, 26.356981>,  <32.571896, 41.263691, 26.475948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.778103, 41.233269, 26.356981>,  <33.121780, 41.182564, 26.158703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778103, 41.233269, 26.356981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379819, -0.491107, 0.783934,
		0.342811, 0.861827, 0.373811,
		-0.859196, 0.126761, 0.495695,
		32.520344, 41.271297, 26.505690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353725, 41.360497, 26.851444>,  <33.121780, 41.182564, 26.158703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353725, 41.360497, 26.851444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.971207, 41.281151, 26.937378>,  <32.741695, 41.233543, 26.988937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.971207, 41.281151, 26.937378>,  <33.353725, 41.360497, 26.851444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971207, 41.281151, 26.937378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276351, -0.372994, 0.885723,
		-0.095565, 0.906381, 0.411510,
		-0.956294, -0.198365, 0.214834,
		32.684319, 41.221642, 27.001827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081196, 41.686871, 27.486971>,  <33.353725, 41.360497, 26.851444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081196, 41.686871, 27.486971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.869213, 41.355011, 27.416733>,  <32.742023, 41.155895, 27.374590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.869213, 41.355011, 27.416733>,  <33.081196, 41.686871, 27.486971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869213, 41.355011, 27.416733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170969, -0.307342, 0.936115,
		-0.830611, 0.466080, 0.304722,
		-0.529958, -0.829645, -0.175596,
		32.710224, 41.106117, 27.364054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821918, 41.578018, 28.074272>,  <33.081196, 41.686871, 27.486971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821918, 41.578018, 28.074272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.758549, 41.223801, 27.899590>,  <32.720528, 41.011269, 27.794781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.758549, 41.223801, 27.899590>,  <32.821918, 41.578018, 28.074272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758549, 41.223801, 27.899590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129133, -0.457074, 0.880005,
		-0.978890, 0.083023, 0.186765,
		-0.158426, -0.885545, -0.436704,
		32.711021, 40.958138, 27.768578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329735, 41.168121, 28.562311>,  <32.821918, 41.578018, 28.074272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329735, 41.168121, 28.562311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.507183, 40.896145, 28.328773>,  <32.613651, 40.732960, 28.188650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.507183, 40.896145, 28.328773>,  <32.329735, 41.168121, 28.562311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507183, 40.896145, 28.328773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152315, -0.584778, 0.796765,
		-0.883175, -0.442391, -0.155855,
		0.443623, -0.679945, -0.583844,
		32.640270, 40.692162, 28.153620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183044, 40.593723, 28.906384>,  <32.329735, 41.168121, 28.562311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183044, 40.593723, 28.906384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.462261, 40.462658, 28.651707>,  <32.629791, 40.384018, 28.498901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.462261, 40.462658, 28.651707>,  <32.183044, 40.593723, 28.906384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462261, 40.462658, 28.651707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322448, -0.650068, 0.688069,
		-0.639352, -0.685598, -0.348115,
		0.698038, -0.327669, -0.636692,
		32.671673, 40.364357, 28.460699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112133, 39.827690, 28.863644>,  <32.183044, 40.593723, 28.906384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112133, 39.827690, 28.863644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.480736, 39.923050, 28.741018>,  <32.701897, 39.980267, 28.667442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.480736, 39.923050, 28.741018>,  <32.112133, 39.827690, 28.863644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480736, 39.923050, 28.741018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359670, -0.821648, 0.442190,
		-0.146472, -0.517746, -0.842903,
		0.921512, 0.238399, -0.306566,
		32.757191, 39.994568, 28.649048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563381, 39.123436, 28.720213>,  <32.112133, 39.827690, 28.863644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563381, 39.123436, 28.720213> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.823700, 39.420315, 28.784206>,  <32.979893, 39.598442, 28.822603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.823700, 39.420315, 28.784206>,  <32.563381, 39.123436, 28.720213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823700, 39.420315, 28.784206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652719, -0.654562, 0.381452,
		0.387834, -0.143825, -0.910439,
		0.650801, 0.742201, 0.159984,
		33.018940, 39.642975, 28.832201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198006, 38.859577, 28.505398>,  <32.563381, 39.123436, 28.720213>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198006, 38.859577, 28.505398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.287903, 39.171886, 28.738598>,  <33.341839, 39.359272, 28.878517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.287903, 39.171886, 28.738598>,  <33.198006, 38.859577, 28.505398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287903, 39.171886, 28.738598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580890, -0.587718, 0.563164,
		0.782342, 0.212092, -0.585627,
		0.224741, 0.780772, 0.582998,
		33.355324, 39.406116, 28.913498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911732, 38.781826, 28.625633>,  <33.198006, 38.859577, 28.505398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911732, 38.781826, 28.625633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.769901, 39.011448, 28.920858>,  <33.684803, 39.149220, 29.097994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.769901, 39.011448, 28.920858>,  <33.911732, 38.781826, 28.625633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769901, 39.011448, 28.920858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547047, -0.512794, 0.661651,
		0.758298, 0.638362, -0.132209,
		-0.354577, 0.574053, 0.738064,
		33.663528, 39.183662, 29.142277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570278, 38.989540, 28.922398>,  <33.911732, 38.781826, 28.625633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570278, 38.989540, 28.922398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.256229, 39.028374, 29.167072>,  <34.067799, 39.051674, 29.313877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.256229, 39.028374, 29.167072>,  <34.570278, 38.989540, 28.922398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256229, 39.028374, 29.167072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469689, -0.550436, 0.690226,
		0.403702, 0.829214, 0.386561,
		-0.785122, 0.097082, 0.611685,
		34.020691, 39.057499, 29.350578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226490, 39.386475, 28.680695>,  <34.570278, 38.989540, 28.922398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226490, 39.386475, 28.680695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.466805, 39.145977, 28.469957>,  <35.610992, 39.001678, 28.343515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.466805, 39.145977, 28.469957>,  <35.226490, 39.386475, 28.680695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466805, 39.145977, 28.469957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333857, 0.410107, -0.848735,
		0.726360, 0.685796, 0.045656,
		0.600783, -0.601245, -0.526843,
		35.647041, 38.965603, 28.311905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645584, 39.795837, 28.225405>,  <35.226490, 39.386475, 28.680695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645584, 39.795837, 28.225405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.622162, 39.438175, 28.047844>,  <35.608109, 39.223576, 27.941307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.622162, 39.438175, 28.047844>,  <35.645584, 39.795837, 28.225405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622162, 39.438175, 28.047844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341537, 0.435775, -0.832738,
		0.938042, 0.102846, -0.330907,
		-0.058557, -0.894161, -0.443901,
		35.604595, 39.169926, 27.914673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868622, 39.889172, 27.605433>,  <35.645584, 39.795837, 28.225405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868622, 39.889172, 27.605433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.694153, 39.533337, 27.551189>,  <35.589470, 39.319836, 27.518644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.694153, 39.533337, 27.551189>,  <35.868622, 39.889172, 27.605433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694153, 39.533337, 27.551189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408819, 0.330147, -0.850805,
		0.801634, -0.315662, -0.507682,
		-0.436176, -0.889584, -0.135608,
		35.563301, 39.266460, 27.510508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095879, 39.559551, 26.950970>,  <35.868622, 39.889172, 27.605433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095879, 39.559551, 26.950970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.737148, 39.398106, 27.023407>,  <35.521908, 39.301239, 27.066870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.737148, 39.398106, 27.023407>,  <36.095879, 39.559551, 26.950970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737148, 39.398106, 27.023407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335485, 0.353698, -0.873125,
		0.288349, -0.843799, -0.452612,
		-0.896830, -0.403609, 0.181094,
		35.468098, 39.277023, 27.077734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024998, 39.212605, 26.400913>,  <36.095879, 39.559551, 26.950970>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024998, 39.212605, 26.400913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.651333, 39.216438, 26.543600>,  <35.427135, 39.218739, 26.629211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.651333, 39.216438, 26.543600>,  <36.024998, 39.212605, 26.400913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651333, 39.216438, 26.543600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351885, 0.141354, -0.925309,
		-0.059293, -0.989913, -0.128675,
		-0.934163, 0.009585, 0.356717,
		35.371082, 39.219315, 26.650616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609028, 38.835300, 25.897789>,  <36.024998, 39.212605, 26.400913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609028, 38.835300, 25.897789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.384357, 39.091492, 26.107285>,  <35.249554, 39.245209, 26.232981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.384357, 39.091492, 26.107285>,  <35.609028, 38.835300, 25.897789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384357, 39.091492, 26.107285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401329, 0.342647, -0.849428,
		-0.723500, -0.687296, 0.064587,
		-0.561678, 0.640482, 0.523737,
		35.215855, 39.283638, 26.264406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000431, 38.786457, 25.646084>,  <35.609028, 38.835300, 25.897789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000431, 38.786457, 25.646084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.984360, 39.135433, 25.840910>,  <34.974716, 39.344818, 25.957806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.984360, 39.135433, 25.840910>,  <35.000431, 38.786457, 25.646084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984360, 39.135433, 25.840910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386971, 0.435833, -0.812590,
		-0.921216, -0.221129, 0.320099,
		-0.040178, 0.872440, 0.487067,
		34.972305, 39.397163, 25.987030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382698, 39.049812, 25.384914>,  <35.000431, 38.786457, 25.646084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382698, 39.049812, 25.384914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.578045, 39.360428, 25.544157>,  <34.695255, 39.546795, 25.639702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.578045, 39.360428, 25.544157>,  <34.382698, 39.049812, 25.384914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578045, 39.360428, 25.544157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465273, 0.617668, -0.634040,
		-0.738251, 0.124418, 0.662952,
		0.488370, 0.776534, 0.398106,
		34.724556, 39.593388, 25.663589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859497, 39.622616, 25.390928>,  <34.382698, 39.049812, 25.384914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859497, 39.622616, 25.390928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.208019, 39.806702, 25.459084>,  <34.417133, 39.917152, 25.499977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.208019, 39.806702, 25.459084>,  <33.859497, 39.622616, 25.390928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208019, 39.806702, 25.459084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322987, 0.799185, -0.506934,
		-0.369469, 0.386661, 0.844977,
		0.871305, 0.460213, 0.170387,
		34.469410, 39.944767, 25.510201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591747, 40.162655, 25.656647>,  <33.859497, 39.622616, 25.390928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591747, 40.162655, 25.656647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.959145, 40.211342, 25.506147>,  <34.179581, 40.240555, 25.415848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.959145, 40.211342, 25.506147>,  <33.591747, 40.162655, 25.656647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959145, 40.211342, 25.506147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343388, 0.717363, -0.606198,
		0.196121, 0.685985, 0.700686,
		0.918489, 0.121719, -0.376249,
		34.234692, 40.247856, 25.393272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761955, 40.887726, 25.571962>,  <33.591747, 40.162655, 25.656647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761955, 40.887726, 25.571962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.976997, 40.679230, 25.306847>,  <34.106022, 40.554131, 25.147778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.976997, 40.679230, 25.306847>,  <33.761955, 40.887726, 25.571962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976997, 40.679230, 25.306847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409141, 0.526049, -0.745571,
		0.737281, 0.671997, 0.069545,
		0.537606, -0.521242, -0.662787,
		34.138279, 40.522858, 25.108011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893898, 41.381954, 25.082447>,  <33.761955, 40.887726, 25.571962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893898, 41.381954, 25.082447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.005077, 41.046406, 24.895243>,  <34.071785, 40.845078, 24.782921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.005077, 41.046406, 24.895243>,  <33.893898, 41.381954, 25.082447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005077, 41.046406, 24.895243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348285, 0.366050, -0.862963,
		0.895233, 0.402861, -0.190425,
		0.277949, -0.838875, -0.468010,
		34.088463, 40.794743, 24.754839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419735, 41.551331, 24.545216>,  <33.893898, 41.381954, 25.082447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419735, 41.551331, 24.545216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.227352, 41.209866, 24.465281>,  <34.111923, 41.004986, 24.417318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.227352, 41.209866, 24.465281>,  <34.419735, 41.551331, 24.545216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227352, 41.209866, 24.465281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279191, 0.365193, -0.888080,
		0.831102, -0.371338, -0.413979,
		-0.480960, -0.853664, -0.199838,
		34.083065, 40.953766, 24.405329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659019, 41.288956, 23.848110>,  <34.419735, 41.551331, 24.545216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659019, 41.288956, 23.848110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.309460, 41.111515, 23.927628>,  <34.099724, 41.005051, 23.975338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.309460, 41.111515, 23.927628>,  <34.659019, 41.288956, 23.848110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309460, 41.111515, 23.927628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367652, 0.335614, -0.867292,
		0.318019, -0.831010, -0.456385,
		-0.873897, -0.443606, 0.198791,
		34.047291, 40.978436, 23.987265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277878, 41.214958, 23.461361>,  <34.659019, 41.288956, 23.848110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277878, 41.214958, 23.461361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.575382, 41.440750, 23.318155>,  <35.753887, 41.576225, 23.232231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.575382, 41.440750, 23.318155>,  <35.277878, 41.214958, 23.461361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575382, 41.440750, 23.318155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654217, -0.504807, 0.563179,
		0.137177, -0.653091, -0.744751,
		0.743763, 0.564484, -0.358016,
		35.798512, 41.610096, 23.210751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759354, 40.747963, 23.328316>,  <35.277878, 41.214958, 23.461361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759354, 40.747963, 23.328316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.970367, 41.087738, 23.333515>,  <36.096973, 41.291603, 23.336636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.970367, 41.087738, 23.333515>,  <35.759354, 40.747963, 23.328316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970367, 41.087738, 23.333515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623303, -0.397401, 0.673473,
		0.577238, -0.347175, -0.739098,
		0.527531, 0.849436, 0.013000,
		36.128628, 41.342567, 23.337416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452961, 40.432800, 23.181721>,  <35.759354, 40.747963, 23.328316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452961, 40.432800, 23.181721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.519684, 40.799107, 23.327900>,  <36.559719, 41.018890, 23.415607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.519684, 40.799107, 23.327900>,  <36.452961, 40.432800, 23.181721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519684, 40.799107, 23.327900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773461, -0.351402, 0.527517,
		0.611499, 0.194663, -0.766926,
		0.166811, 0.915764, 0.365446,
		36.569729, 41.073837, 23.437534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118397, 40.536701, 23.112459>,  <36.452961, 40.432800, 23.181721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118397, 40.536701, 23.112459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.017853, 40.822559, 23.373564>,  <36.957527, 40.994076, 23.530226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.017853, 40.822559, 23.373564>,  <37.118397, 40.536701, 23.112459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017853, 40.822559, 23.373564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799110, -0.227294, 0.556562,
		0.546113, 0.661528, -0.513947,
		-0.251364, 0.714646, 0.652762,
		36.942444, 41.036953, 23.569393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672215, 41.047874, 23.093699>,  <37.118397, 40.536701, 23.112459>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672215, 41.047874, 23.093699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.466400, 41.075176, 23.435598>,  <37.342911, 41.091557, 23.640738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.466400, 41.075176, 23.435598>,  <37.672215, 41.047874, 23.093699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466400, 41.075176, 23.435598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773171, -0.394081, 0.496897,
		0.370757, 0.916538, 0.149993,
		-0.514534, 0.068257, 0.854749,
		37.312038, 41.095654, 23.692022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186531, 41.392647, 23.593956>,  <37.672215, 41.047874, 23.093699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186531, 41.392647, 23.593956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.904793, 41.225536, 23.823515>,  <37.735748, 41.125271, 23.961250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.904793, 41.225536, 23.823515>,  <38.186531, 41.392647, 23.593956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904793, 41.225536, 23.823515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696504, -0.250668, 0.672345,
		-0.137029, 0.873288, 0.467538,
		-0.704347, -0.417773, 0.573900,
		37.693489, 41.100204, 23.995686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346352, 41.654694, 24.207214>,  <38.186531, 41.392647, 23.593956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346352, 41.654694, 24.207214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.141315, 41.316647, 24.267904>,  <38.018291, 41.113819, 24.304317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.141315, 41.316647, 24.267904>,  <38.346352, 41.654694, 24.207214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141315, 41.316647, 24.267904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753916, -0.358428, 0.550582,
		-0.410925, 0.396612, 0.820877,
		-0.512593, -0.845120, 0.151725,
		37.987537, 41.063110, 24.313421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079704, 41.373703, 24.853268>,  <38.346352, 41.654694, 24.207214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079704, 41.373703, 24.853268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.193001, 41.080128, 24.606331>,  <38.260979, 40.903984, 24.458168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.193001, 41.080128, 24.606331>,  <38.079704, 41.373703, 24.853268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193001, 41.080128, 24.606331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684553, -0.296108, 0.666113,
		-0.671684, -0.611276, 0.418547,
		0.283244, -0.733935, -0.617342,
		38.277973, 40.859947, 24.421127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271488, 40.838634, 25.248322>,  <38.079704, 41.373703, 24.853268>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271488, 40.838634, 25.248322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.437576, 40.723869, 24.903004>,  <38.537228, 40.655010, 24.695814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.437576, 40.723869, 24.903004>,  <38.271488, 40.838634, 25.248322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437576, 40.723869, 24.903004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776376, -0.382863, 0.500656,
		-0.474168, -0.878121, 0.063783,
		0.415216, -0.286914, -0.863294,
		38.562141, 40.637794, 24.644016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200314, 40.136768, 25.186531>,  <38.271488, 40.838634, 25.248322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200314, 40.136768, 25.186531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.519402, 40.291229, 25.001261>,  <38.710854, 40.383907, 24.890099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.519402, 40.291229, 25.001261>,  <38.200314, 40.136768, 25.186531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519402, 40.291229, 25.001261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601953, -0.463962, 0.649917,
		0.036073, -0.797260, -0.602558,
		0.797716, 0.386156, -0.463177,
		38.758717, 40.407074, 24.862309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774654, 39.638805, 25.300541>,  <38.200314, 40.136768, 25.186531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774654, 39.638805, 25.300541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.971806, 39.951767, 25.148270>,  <39.090096, 40.139545, 25.056906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.971806, 39.951767, 25.148270>,  <38.774654, 39.638805, 25.300541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971806, 39.951767, 25.148270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814314, -0.260650, 0.518609,
		0.306537, -0.565604, -0.765589,
		0.492878, 0.782403, -0.380680,
		39.119667, 40.186489, 25.034065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365036, 39.389153, 25.208099>,  <38.774654, 39.638805, 25.300541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365036, 39.389153, 25.208099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.464413, 39.774605, 25.168705>,  <39.524040, 40.005875, 25.145069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.464413, 39.774605, 25.168705>,  <39.365036, 39.389153, 25.208099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464413, 39.774605, 25.168705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661711, -0.094587, 0.743769,
		0.707400, -0.249953, -0.661142,
		0.248442, 0.963627, -0.098486,
		39.538944, 40.063694, 25.139158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044430, 39.438377, 24.962696>,  <39.365036, 39.389153, 25.208099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044430, 39.438377, 24.962696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.974041, 39.780308, 25.157963>,  <39.931808, 39.985466, 25.275122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.974041, 39.780308, 25.157963>,  <40.044430, 39.438377, 24.962696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974041, 39.780308, 25.157963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788967, -0.174089, 0.589258,
		0.588697, 0.488842, -0.643793,
		-0.175977, 0.854826, 0.488165,
		39.921249, 40.036755, 25.304413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645451, 39.642365, 25.166227>,  <40.044430, 39.438377, 24.962696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645451, 39.642365, 25.166227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.410587, 39.857727, 25.408009>,  <40.269669, 39.986946, 25.553078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.410587, 39.857727, 25.408009>,  <40.645451, 39.642365, 25.166227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410587, 39.857727, 25.408009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702641, -0.031768, 0.710835,
		0.401921, 0.842086, -0.359654,
		-0.587159, 0.538407, 0.604452,
		40.234440, 40.019249, 25.589344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.284931, 45.320038, 24.507126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.918343, 45.251171, 24.651588>,  <37.698387, 45.209850, 24.738266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.918343, 45.251171, 24.651588>,  <38.284931, 45.320038, 24.507126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918343, 45.251171, 24.651588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385389, 0.137412, -0.912465,
		0.107479, -0.975435, -0.192290,
		-0.916473, -0.172177, 0.361153,
		37.643402, 45.199520, 24.759935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011765, 44.946594, 24.023361>,  <38.284931, 45.320038, 24.507126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011765, 44.946594, 24.023361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.684456, 45.077831, 24.212160>,  <37.488071, 45.156574, 24.325439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.684456, 45.077831, 24.212160>,  <38.011765, 44.946594, 24.023361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684456, 45.077831, 24.212160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519675, -0.071283, -0.851385,
		-0.245691, -0.941951, 0.228833,
		-0.818275, 0.328097, 0.471995,
		37.438972, 45.176262, 24.353758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384575, 44.514812, 23.729120>,  <38.011765, 44.946594, 24.023361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384575, 44.514812, 23.729120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.219189, 44.825466, 23.919233>,  <37.119957, 45.011856, 24.033300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.219189, 44.825466, 23.919233>,  <37.384575, 44.514812, 23.729120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219189, 44.825466, 23.919233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661190, 0.102783, -0.743144,
		-0.625999, -0.621515, 0.471003,
		-0.413464, 0.776630, 0.475282,
		37.095150, 45.058456, 24.061817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644253, 44.412701, 23.726274>,  <37.384575, 44.514812, 23.729120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644253, 44.412701, 23.726274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.692474, 44.807484, 23.768946>,  <36.721405, 45.044353, 23.794548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.692474, 44.807484, 23.768946>,  <36.644253, 44.412701, 23.726274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692474, 44.807484, 23.768946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631031, 0.159141, -0.759259,
		-0.766334, 0.024212, 0.641986,
		0.120550, 0.986959, 0.106677,
		36.728638, 45.103573, 23.800949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982903, 44.720482, 23.785080>,  <36.644253, 44.412701, 23.726274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982903, 44.720482, 23.785080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.193382, 45.033070, 23.650963>,  <36.319668, 45.220623, 23.570492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.193382, 45.033070, 23.650963>,  <35.982903, 44.720482, 23.785080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193382, 45.033070, 23.650963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672381, 0.140963, -0.726659,
		-0.520598, 0.607810, 0.599620,
		0.526195, 0.781471, -0.335295,
		36.351242, 45.267509, 23.550375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505463, 45.279404, 23.659048>,  <35.982903, 44.720482, 23.785080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505463, 45.279404, 23.659048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.825420, 45.409225, 23.457125>,  <36.017395, 45.487118, 23.335970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.825420, 45.409225, 23.457125>,  <35.505463, 45.279404, 23.659048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825420, 45.409225, 23.457125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596210, 0.333641, -0.730218,
		-0.068570, 0.885070, 0.460380,
		0.799895, 0.324554, -0.504809,
		36.065388, 45.506592, 23.305681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350258, 45.952415, 23.435133>,  <35.505463, 45.279404, 23.659048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350258, 45.952415, 23.435133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.655457, 45.868958, 23.190411>,  <35.838577, 45.818882, 23.043577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.655457, 45.868958, 23.190411>,  <35.350258, 45.952415, 23.435133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655457, 45.868958, 23.190411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567541, 0.236810, -0.788554,
		0.309407, 0.948889, 0.062272,
		0.762997, -0.208642, -0.611804,
		35.884357, 45.806366, 23.006870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240120, 46.538357, 23.104830>,  <35.350258, 45.952415, 23.435133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240120, 46.538357, 23.104830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.469482, 46.283367, 22.898983>,  <35.607101, 46.130375, 22.775475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.469482, 46.283367, 22.898983>,  <35.240120, 46.538357, 23.104830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469482, 46.283367, 22.898983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547722, 0.168840, -0.819447,
		0.609262, 0.751746, -0.252343,
		0.573411, -0.637472, -0.514616,
		35.641506, 46.092125, 22.744598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457394, 46.887276, 22.512173>,  <35.240120, 46.538357, 23.104830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457394, 46.887276, 22.512173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.469955, 46.495865, 22.430693>,  <35.477493, 46.261017, 22.381804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.469955, 46.495865, 22.430693>,  <35.457394, 46.887276, 22.512173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469955, 46.495865, 22.430693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647660, 0.135303, -0.749819,
		0.761281, 0.155481, -0.629505,
		0.031409, -0.978529, -0.203702,
		35.479378, 46.202305, 22.369581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474140, 46.866554, 21.684643>,  <35.457394, 46.887276, 22.512173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474140, 46.866554, 21.684643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.386795, 46.491432, 21.792591>,  <35.334389, 46.266357, 21.857361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.386795, 46.491432, 21.792591>,  <35.474140, 46.866554, 21.684643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386795, 46.491432, 21.792591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660839, -0.061378, -0.748013,
		0.718058, -0.341682, -0.606338,
		-0.218367, -0.937809, 0.269870,
		35.321285, 46.210091, 21.873552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472630, 46.436314, 21.097733>,  <35.474140, 46.866554, 21.684643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472630, 46.436314, 21.097733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.247189, 46.206715, 21.335346>,  <35.111923, 46.068954, 21.477915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.247189, 46.206715, 21.335346>,  <35.472630, 46.436314, 21.097733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247189, 46.206715, 21.335346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676746, -0.091519, -0.730506,
		0.473675, -0.813726, -0.336871,
		-0.563602, -0.573999, 0.594036,
		35.078110, 46.034515, 21.513557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105900, 45.990414, 20.551908>,  <35.472630, 46.436314, 21.097733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105900, 45.990414, 20.551908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.890377, 45.986385, 20.888855>,  <34.761063, 45.983967, 21.091022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.890377, 45.986385, 20.888855>,  <35.105900, 45.990414, 20.551908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890377, 45.986385, 20.888855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825903, 0.203395, -0.525847,
		-0.166036, -0.979045, -0.117912,
		-0.538810, -0.010074, 0.842367,
		34.728733, 45.983364, 21.141565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451385, 45.806923, 20.329187>,  <35.105900, 45.990414, 20.551908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451385, 45.806923, 20.329187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.401287, 45.967720, 20.692001>,  <34.371227, 46.064198, 20.909689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.401287, 45.967720, 20.692001>,  <34.451385, 45.806923, 20.329187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401287, 45.967720, 20.692001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765945, 0.541901, -0.345936,
		-0.630588, -0.738066, 0.240035,
		-0.125249, 0.401996, 0.907035,
		34.363712, 46.088318, 20.964111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800488, 45.574192, 20.626726>,  <34.451385, 45.806923, 20.329187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800488, 45.574192, 20.626726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.932064, 45.930676, 20.751654>,  <34.011009, 46.144566, 20.826611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.932064, 45.930676, 20.751654>,  <33.800488, 45.574192, 20.626726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932064, 45.930676, 20.751654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865095, 0.417001, -0.278785,
		-0.378694, -0.178483, 0.908149,
		0.328940, 0.891209, 0.312321,
		34.030746, 46.198040, 20.845350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401043, 45.333584, 19.966919>,  <33.800488, 45.574192, 20.626726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401043, 45.333584, 19.966919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.191730, 45.007526, 19.867546>,  <33.066143, 44.811893, 19.807922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.191730, 45.007526, 19.867546>,  <33.401043, 45.333584, 19.966919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191730, 45.007526, 19.867546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747891, -0.579038, 0.324615,
		-0.408459, -0.015936, 0.912637,
		-0.523279, -0.815145, -0.248432,
		33.034748, 44.762981, 19.793016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456120, 44.925476, 20.519903>,  <33.401043, 45.333584, 19.966919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456120, 44.925476, 20.519903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.353256, 44.679161, 20.221996>,  <33.291538, 44.531372, 20.043253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.353256, 44.679161, 20.221996>,  <33.456120, 44.925476, 20.519903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353256, 44.679161, 20.221996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713778, -0.640573, 0.283175,
		-0.651452, -0.458775, 0.604265,
		-0.257162, -0.615785, -0.744766,
		33.276108, 44.494427, 19.998566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270599, 44.275738, 20.787863>,  <33.456120, 44.925476, 20.519903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270599, 44.275738, 20.787863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.359474, 44.186794, 20.408138>,  <33.412800, 44.133427, 20.180304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.359474, 44.186794, 20.408138>,  <33.270599, 44.275738, 20.787863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359474, 44.186794, 20.408138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573992, -0.757213, 0.311706,
		-0.788141, -0.614154, -0.040610,
		0.222186, -0.222359, -0.949311,
		33.426128, 44.120087, 20.123344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126686, 43.540886, 20.670197>,  <33.270599, 44.275738, 20.787863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126686, 43.540886, 20.670197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.393036, 43.670864, 20.401562>,  <33.552845, 43.748852, 20.240381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.393036, 43.670864, 20.401562>,  <33.126686, 43.540886, 20.670197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393036, 43.670864, 20.401562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625936, -0.733154, 0.265876,
		-0.405980, -0.597408, -0.691581,
		0.665872, 0.324944, -0.671585,
		33.592796, 43.768349, 20.200087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334328, 42.949535, 20.358124>,  <33.126686, 43.540886, 20.670197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334328, 42.949535, 20.358124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.631264, 43.209789, 20.294102>,  <33.809425, 43.365940, 20.255688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.631264, 43.209789, 20.294102>,  <33.334328, 42.949535, 20.358124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631264, 43.209789, 20.294102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669824, -0.714727, 0.201249,
		0.016542, -0.256604, -0.966375,
		0.742336, 0.650630, -0.160056,
		33.853966, 43.404980, 20.246084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876926, 42.603863, 20.017736>,  <33.334328, 42.949535, 20.358124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876926, 42.603863, 20.017736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.066212, 42.921825, 20.169622>,  <34.179783, 43.112602, 20.260754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.066212, 42.921825, 20.169622>,  <33.876926, 42.603863, 20.017736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066212, 42.921825, 20.169622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726702, -0.595885, 0.341797,
		0.497966, 0.114197, -0.859645,
		0.473217, 0.794909, 0.379718,
		34.208176, 43.160297, 20.283537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557880, 42.439350, 19.968033>,  <33.876926, 42.603863, 20.017736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557880, 42.439350, 19.968033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.566769, 42.744915, 20.226009>,  <34.572102, 42.928253, 20.380795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.566769, 42.744915, 20.226009>,  <34.557880, 42.439350, 19.968033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566769, 42.744915, 20.226009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784506, -0.413203, 0.462400,
		0.619723, 0.495685, -0.608473,
		0.022219, 0.763911, 0.644939,
		34.573433, 42.974087, 20.419491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213097, 42.659065, 20.050316>,  <34.557880, 42.439350, 19.968033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213097, 42.659065, 20.050316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.054211, 42.810303, 20.384804>,  <34.958878, 42.901043, 20.585497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.054211, 42.810303, 20.384804>,  <35.213097, 42.659065, 20.050316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054211, 42.810303, 20.384804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710164, -0.450505, 0.541029,
		0.581281, 0.808759, -0.089559,
		-0.397216, 0.378092, 0.836222,
		34.935047, 42.923729, 20.635670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790581, 42.785759, 20.550165>,  <35.213097, 42.659065, 20.050316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790581, 42.785759, 20.550165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.459713, 42.791916, 20.774862>,  <35.261192, 42.795609, 20.909679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.459713, 42.791916, 20.774862>,  <35.790581, 42.785759, 20.550165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459713, 42.791916, 20.774862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521137, -0.353000, 0.777051,
		0.210256, 0.935497, 0.283969,
		-0.827169, 0.015393, 0.561742,
		35.211563, 42.796535, 20.943384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968021, 43.013519, 21.184721>,  <35.790581, 42.785759, 20.550165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968021, 43.013519, 21.184721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.640427, 42.795372, 21.256092>,  <35.443871, 42.664486, 21.298916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.640427, 42.795372, 21.256092>,  <35.968021, 43.013519, 21.184721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640427, 42.795372, 21.256092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433792, -0.384899, 0.814664,
		-0.375612, 0.744601, 0.551802,
		-0.818987, -0.545364, 0.178430,
		35.394730, 42.631763, 21.309622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795979, 43.133579, 22.060526>,  <35.968021, 43.013519, 21.184721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795979, 43.133579, 22.060526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.614014, 42.803814, 21.925827>,  <35.504833, 42.605953, 21.845009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.614014, 42.803814, 21.925827>,  <35.795979, 43.133579, 22.060526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614014, 42.803814, 21.925827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253381, -0.482333, 0.838542,
		-0.853729, 0.296137, 0.428309,
		-0.454911, -0.824414, -0.336746,
		35.477539, 42.556488, 21.824802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318348, 42.956779, 22.682957>,  <35.795979, 43.133579, 22.060526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318348, 42.956779, 22.682957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.306282, 42.627632, 22.455986>,  <35.299042, 42.430141, 22.319803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.306282, 42.627632, 22.455986>,  <35.318348, 42.956779, 22.682957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306282, 42.627632, 22.455986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212222, -0.560016, 0.800840,
		-0.976756, -0.096261, 0.191525,
		-0.030167, -0.822871, -0.567428,
		35.297234, 42.380772, 22.285757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934963, 42.439724, 23.080074>,  <35.318348, 42.956779, 22.682957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934963, 42.439724, 23.080074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.186691, 42.254837, 22.830172>,  <35.337727, 42.143906, 22.680231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.186691, 42.254837, 22.830172>,  <34.934963, 42.439724, 23.080074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186691, 42.254837, 22.830172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388498, -0.509142, 0.768013,
		-0.673075, -0.726040, -0.140842,
		0.629316, -0.462213, -0.624756,
		35.375484, 42.116173, 22.642744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895008, 41.802475, 23.246464>,  <34.934963, 42.439724, 23.080074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895008, 41.802475, 23.246464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.250732, 41.826115, 23.065075>,  <35.464165, 41.840298, 22.956242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.250732, 41.826115, 23.065075>,  <34.895008, 41.802475, 23.246464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250732, 41.826115, 23.065075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419943, -0.498112, 0.758638,
		-0.181047, -0.865096, -0.467793,
		0.889309, 0.059098, -0.453473,
		35.517525, 41.843845, 22.929033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361973, 41.393410, 23.191998>,  <34.895008, 41.802475, 23.246464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361973, 41.393410, 23.191998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.053406, 41.251682, 23.403421>,  <33.868267, 41.166645, 23.530275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.053406, 41.251682, 23.403421>,  <34.361973, 41.393410, 23.191998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053406, 41.251682, 23.403421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628013, 0.290056, -0.722127,
		0.102554, -0.889002, -0.446272,
		-0.771416, -0.354321, 0.528558,
		33.821980, 41.145386, 23.561989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963066, 40.977154, 22.685684>,  <34.361973, 41.393410, 23.191998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963066, 40.977154, 22.685684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.729839, 41.093140, 22.989252>,  <33.589905, 41.162731, 23.171392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.729839, 41.093140, 22.989252>,  <33.963066, 40.977154, 22.685684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729839, 41.093140, 22.989252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598176, 0.478883, -0.642539,
		-0.549745, -0.828609, -0.105772,
		-0.583066, 0.289962, 0.758917,
		33.554920, 41.180130, 23.216927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302326, 40.621140, 22.587393>,  <33.963066, 40.977154, 22.685684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302326, 40.621140, 22.587393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.226780, 40.952862, 22.797758>,  <33.181454, 41.151894, 22.923977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.226780, 40.952862, 22.797758>,  <33.302326, 40.621140, 22.587393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226780, 40.952862, 22.797758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741411, 0.230757, -0.630128,
		-0.643926, -0.508927, 0.571273,
		-0.188865, 0.829304, 0.525915,
		33.170120, 41.201653, 22.955532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553951, 40.688007, 22.553154>,  <33.302326, 40.621140, 22.587393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553951, 40.688007, 22.553154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.672810, 41.042530, 22.695234>,  <32.744125, 41.255245, 22.780481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.672810, 41.042530, 22.695234>,  <32.553951, 40.688007, 22.553154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672810, 41.042530, 22.695234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718984, 0.452479, -0.527565,
		-0.628304, -0.098619, 0.771692,
		0.297147, 0.886306, 0.355200,
		32.761955, 41.308422, 22.801794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919382, 41.015846, 22.729782>,  <32.553951, 40.688007, 22.553154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919382, 41.015846, 22.729782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.187538, 41.309818, 22.688887>,  <32.348431, 41.486202, 22.664349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.187538, 41.309818, 22.688887>,  <31.919382, 41.015846, 22.729782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187538, 41.309818, 22.688887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673490, 0.544847, -0.499553,
		-0.311434, 0.403752, 0.860229,
		0.670388, 0.734933, -0.102239,
		32.388653, 41.530296, 22.658215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631392, 41.605850, 23.049267>,  <31.919382, 41.015846, 22.729782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631392, 41.605850, 23.049267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.911083, 41.732216, 22.792744>,  <32.078899, 41.808037, 22.638830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.911083, 41.732216, 22.792744>,  <31.631392, 41.605850, 23.049267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911083, 41.732216, 22.792744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698708, 0.491833, -0.519527,
		0.151288, 0.811354, 0.564637,
		0.699228, 0.315918, -0.641308,
		32.120853, 41.826992, 22.600351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336136, 42.310986, 22.846828>,  <31.631392, 41.605850, 23.049267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336136, 42.310986, 22.846828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.636108, 42.265125, 22.586226>,  <31.816092, 42.237610, 22.429865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.636108, 42.265125, 22.586226>,  <31.336136, 42.310986, 22.846828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636108, 42.265125, 22.586226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506297, 0.534389, -0.676824,
		0.425756, 0.837427, 0.342707,
		0.749930, -0.114651, -0.651506,
		31.861088, 42.230732, 22.390774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394190, 42.972557, 23.206442>,  <31.336136, 42.310986, 22.846828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394190, 42.972557, 23.206442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.026981, 43.007607, 23.361134>,  <30.806656, 43.028637, 23.453949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.026981, 43.007607, 23.361134>,  <31.394190, 42.972557, 23.206442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026981, 43.007607, 23.361134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294929, -0.501029, 0.813626,
		0.265054, 0.860983, 0.434113,
		-0.918021, 0.087622, 0.386729,
		30.751575, 43.033894, 23.477152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507360, 43.326488, 23.710340>,  <31.394190, 42.972557, 23.206442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507360, 43.326488, 23.710340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.156326, 43.154770, 23.795713>,  <30.945705, 43.051739, 23.846937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.156326, 43.154770, 23.795713>,  <31.507360, 43.326488, 23.710340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156326, 43.154770, 23.795713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416729, -0.462958, 0.782309,
		-0.237031, 0.775485, 0.585184,
		-0.877584, -0.429294, 0.213431,
		30.893051, 43.025982, 23.859743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463795, 43.464565, 24.346331>,  <31.507360, 43.326488, 23.710340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463795, 43.464565, 24.346331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.196095, 43.170727, 24.301664>,  <31.035475, 42.994423, 24.274864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.196095, 43.170727, 24.301664>,  <31.463795, 43.464565, 24.346331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196095, 43.170727, 24.301664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237236, -0.353665, 0.904787,
		-0.704148, 0.579038, 0.410963,
		-0.669249, -0.734600, -0.111664,
		30.995319, 42.950348, 24.268166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922392, 43.532230, 24.884165>,  <31.463795, 43.464565, 24.346331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922392, 43.532230, 24.884165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.946625, 43.150898, 24.765844>,  <30.961164, 42.922100, 24.694851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.946625, 43.150898, 24.765844>,  <30.922392, 43.532230, 24.884165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.946625, 43.150898, 24.765844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269235, -0.269756, 0.924524,
		-0.961167, -0.135650, 0.240327,
		0.060582, -0.953326, -0.295802,
		30.964800, 42.864899, 24.677103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812183, 43.184174, 25.531567>,  <30.922392, 43.532230, 24.884165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812183, 43.184174, 25.531567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.934944, 42.902588, 25.275362>,  <31.008600, 42.733639, 25.121639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.934944, 42.902588, 25.275362>,  <30.812183, 43.184174, 25.531567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.934944, 42.902588, 25.275362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219199, -0.602614, 0.767339,
		-0.926156, -0.375895, -0.030635,
		0.306900, -0.703960, -0.640510,
		31.027014, 42.691399, 25.083208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649050, 42.523457, 25.897667>,  <30.812183, 43.184174, 25.531567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649050, 42.523457, 25.897667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.917889, 42.391827, 25.632338>,  <31.079191, 42.312847, 25.473141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.917889, 42.391827, 25.632338>,  <30.649050, 42.523457, 25.897667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917889, 42.391827, 25.632338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391717, -0.602189, 0.695648,
		-0.628372, -0.727374, -0.275819,
		0.672091, -0.329083, -0.663323,
		31.119516, 42.293102, 25.433342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.691751, 41.822922, 25.857052>,  <30.649050, 42.523457, 25.897667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.691751, 41.822922, 25.857052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.054504, 41.899456, 25.706877>,  <31.272156, 41.945377, 25.616772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.054504, 41.899456, 25.706877>,  <30.691751, 41.822922, 25.857052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054504, 41.899456, 25.706877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415406, -0.555499, 0.720319,
		-0.070733, -0.809204, -0.583255,
		0.906882, 0.191337, -0.375440,
		31.326569, 41.956856, 25.594244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.510712, 46.672718, 21.925356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.166187, 46.660229, 21.722507>,  <31.959473, 46.652737, 21.600798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.166187, 46.660229, 21.722507>,  <32.510712, 46.672718, 21.925356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166187, 46.660229, 21.722507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486416, -0.339031, -0.805269,
		-0.146791, -0.940257, 0.307196,
		-0.861308, -0.031218, -0.507123,
		31.907795, 46.650864, 21.570370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698498, 47.130783, 22.504795>,  <32.510712, 46.672718, 21.925356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698498, 47.130783, 22.504795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.084736, 47.095509, 22.602644>,  <33.316479, 47.074345, 22.661354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.084736, 47.095509, 22.602644>,  <32.698498, 47.130783, 22.504795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084736, 47.095509, 22.602644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236119, -0.691426, 0.682772,
		0.108929, -0.717045, -0.688463,
		0.965600, -0.088185, 0.244625,
		33.374416, 47.069054, 22.676031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806461, 46.428539, 22.704233>,  <32.698498, 47.130783, 22.504795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806461, 46.428539, 22.704233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.122704, 46.621368, 22.855257>,  <33.312447, 46.737068, 22.945871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.122704, 46.621368, 22.855257>,  <32.806461, 46.428539, 22.704233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122704, 46.621368, 22.855257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167251, -0.763156, 0.624195,
		0.589045, -0.430344, -0.683981,
		0.790603, 0.482076, 0.377558,
		33.359886, 46.765991, 22.968525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304966, 45.848927, 22.846415>,  <32.806461, 46.428539, 22.704233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304966, 45.848927, 22.846415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.429626, 46.166302, 23.055536>,  <33.504425, 46.356728, 23.181009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.429626, 46.166302, 23.055536>,  <33.304966, 45.848927, 22.846415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429626, 46.166302, 23.055536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208695, -0.593928, 0.776979,
		0.926994, -0.133043, -0.350688,
		0.311654, 0.793441, 0.522802,
		33.523125, 46.404335, 23.212378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899330, 45.613647, 23.208033>,  <33.304966, 45.848927, 22.846415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899330, 45.613647, 23.208033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.851959, 45.942410, 23.430902>,  <33.823536, 46.139668, 23.564625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.851959, 45.942410, 23.430902>,  <33.899330, 45.613647, 23.208033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851959, 45.942410, 23.430902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313231, -0.501549, 0.806433,
		0.942264, 0.270027, -0.198051,
		-0.118426, 0.821909, 0.557173,
		33.816433, 46.188984, 23.598055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612366, 45.885212, 23.485691>,  <33.899330, 45.613647, 23.208033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612366, 45.885212, 23.485691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.321434, 46.043606, 23.709900>,  <34.146873, 46.138641, 23.844425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.321434, 46.043606, 23.709900>,  <34.612366, 45.885212, 23.485691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321434, 46.043606, 23.709900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446557, -0.347120, 0.824679,
		0.521130, 0.850119, 0.075641,
		-0.727331, 0.395987, 0.560521,
		34.103233, 46.162403, 23.878056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960812, 46.293636, 23.981064>,  <34.612366, 45.885212, 23.485691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960812, 46.293636, 23.981064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.601864, 46.229343, 24.145449>,  <34.386494, 46.190765, 24.244080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.601864, 46.229343, 24.145449>,  <34.960812, 46.293636, 23.981064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601864, 46.229343, 24.145449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431201, -0.121503, 0.894037,
		-0.093770, 0.979490, 0.178342,
		-0.897370, -0.160736, 0.410964,
		34.332653, 46.181122, 24.268738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054153, 46.566910, 24.613493>,  <34.960812, 46.293636, 23.981064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054153, 46.566910, 24.613493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.704445, 46.376797, 24.653023>,  <34.494621, 46.262730, 24.676741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.704445, 46.376797, 24.653023>,  <35.054153, 46.566910, 24.613493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704445, 46.376797, 24.653023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200581, -0.168292, 0.965114,
		-0.442067, 0.863590, 0.242465,
		-0.874268, -0.475279, 0.098824,
		34.442165, 46.234215, 24.682671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631733, 46.983658, 25.111717>,  <35.054153, 46.566910, 24.613493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631733, 46.983658, 25.111717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.525558, 46.598118, 25.102400>,  <34.461853, 46.366795, 25.096809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.525558, 46.598118, 25.102400>,  <34.631733, 46.983658, 25.111717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525558, 46.598118, 25.102400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176905, -0.072440, 0.981559,
		-0.947760, 0.256420, 0.189737,
		-0.265436, -0.963847, -0.023294,
		34.445927, 46.308964, 25.095411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246208, 46.847603, 25.684927>,  <34.631733, 46.983658, 25.111717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246208, 46.847603, 25.684927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.382793, 46.489822, 25.569437>,  <34.464745, 46.275154, 25.500143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.382793, 46.489822, 25.569437>,  <34.246208, 46.847603, 25.684927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382793, 46.489822, 25.569437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281579, -0.195727, 0.939364,
		-0.896727, -0.402052, 0.185027,
		0.341458, -0.894453, -0.288723,
		34.485229, 46.221485, 25.482821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891819, 46.328011, 26.143686>,  <34.246208, 46.847603, 25.684927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891819, 46.328011, 26.143686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.217911, 46.162281, 25.981829>,  <34.413567, 46.062843, 25.884714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.217911, 46.162281, 25.981829>,  <33.891819, 46.328011, 26.143686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217911, 46.162281, 25.981829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305385, -0.286124, 0.908225,
		-0.492078, -0.863984, -0.106728,
		0.815230, -0.414324, -0.404643,
		34.462479, 46.037983, 25.860435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913010, 45.567741, 26.454510>,  <33.891819, 46.328011, 26.143686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913010, 45.567741, 26.454510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.284756, 45.630531, 26.320856>,  <34.507801, 45.668205, 26.240664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.284756, 45.630531, 26.320856>,  <33.913010, 45.567741, 26.454510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284756, 45.630531, 26.320856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369156, -0.403636, 0.837139,
		-0.003456, -0.901352, -0.433073,
		0.929361, 0.156979, -0.334134,
		34.563564, 45.677624, 26.220615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539425, 44.958611, 26.160608>,  <33.913010, 45.567741, 26.454510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539425, 44.958611, 26.160608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.219547, 44.828609, 26.362541>,  <33.027618, 44.750607, 26.483702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.219547, 44.828609, 26.362541>,  <33.539425, 44.958611, 26.160608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219547, 44.828609, 26.362541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552520, 0.069321, -0.830612,
		0.234958, -0.943168, -0.235008,
		-0.799698, -0.325006, 0.504832,
		32.979637, 44.731106, 26.513990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256409, 44.375477, 25.769821>,  <33.539425, 44.958611, 26.160608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256409, 44.375477, 25.769821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.953087, 44.520744, 25.986372>,  <32.771095, 44.607906, 26.116302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.953087, 44.520744, 25.986372>,  <33.256409, 44.375477, 25.769821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953087, 44.520744, 25.986372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561919, 0.056888, -0.825234,
		-0.330497, -0.929985, 0.160933,
		-0.758300, 0.363168, 0.541378,
		32.725597, 44.629696, 26.148785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519047, 44.001991, 25.570047>,  <33.256409, 44.375477, 25.769821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519047, 44.001991, 25.570047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.417042, 44.335030, 25.766724>,  <32.355839, 44.534851, 25.884729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.417042, 44.335030, 25.766724>,  <32.519047, 44.001991, 25.570047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417042, 44.335030, 25.766724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616504, 0.251742, -0.746022,
		-0.744912, -0.493371, 0.449101,
		-0.255008, 0.832593, 0.491691,
		32.340538, 44.584808, 25.914230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781263, 44.013680, 25.518583>,  <32.519047, 44.001991, 25.570047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781263, 44.013680, 25.518583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.887121, 44.389462, 25.605665>,  <31.950636, 44.614929, 25.657915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.887121, 44.389462, 25.605665>,  <31.781263, 44.013680, 25.518583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887121, 44.389462, 25.605665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680290, 0.341880, -0.648324,
		-0.683497, 0.023474, 0.729576,
		0.264646, 0.939450, 0.217705,
		31.966515, 44.671295, 25.670977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177591, 44.479614, 25.529221>,  <31.781263, 44.013680, 25.518583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177591, 44.479614, 25.529221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.461658, 44.761196, 25.533525>,  <31.632099, 44.930145, 25.536108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.461658, 44.761196, 25.533525>,  <31.177591, 44.479614, 25.529221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461658, 44.761196, 25.533525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578460, 0.592145, -0.561024,
		-0.401306, 0.392196, 0.827729,
		0.710167, 0.703951, 0.010761,
		31.674709, 44.972382, 25.536755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892500, 45.082867, 25.674988>,  <31.177591, 44.479614, 25.529221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892500, 45.082867, 25.674988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.234087, 45.206760, 25.507748>,  <31.439039, 45.281097, 25.407404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.234087, 45.206760, 25.507748>,  <30.892500, 45.082867, 25.674988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234087, 45.206760, 25.507748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514790, 0.619833, -0.592282,
		0.075705, 0.721023, 0.688763,
		0.853967, 0.309730, -0.418100,
		31.490276, 45.299679, 25.382318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946724, 45.907261, 25.769907>,  <30.892500, 45.082867, 25.674988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946724, 45.907261, 25.769907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.142277, 45.761703, 25.452776>,  <31.259609, 45.674370, 25.262497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.142277, 45.761703, 25.452776>,  <30.946724, 45.907261, 25.769907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142277, 45.761703, 25.452776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518870, 0.609295, -0.599611,
		0.701261, 0.704513, 0.109060,
		0.488884, -0.363896, -0.792825,
		31.288942, 45.652534, 25.214928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.900772, 46.478168, 25.282103>,  <30.946724, 45.907261, 25.769907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.900772, 46.478168, 25.282103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.042732, 46.179409, 25.057180>,  <31.127909, 46.000153, 24.922228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.042732, 46.179409, 25.057180>,  <30.900772, 46.478168, 25.282103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042732, 46.179409, 25.057180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464443, 0.381136, -0.799392,
		0.811381, 0.544862, -0.211628,
		0.354899, -0.746901, -0.562304,
		31.149202, 45.955338, 24.888489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363018, 46.724915, 24.783710>,  <30.900772, 46.478168, 25.282103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363018, 46.724915, 24.783710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.199051, 46.382191, 24.658588>,  <31.100672, 46.176556, 24.583515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.199051, 46.382191, 24.658588>,  <31.363018, 46.724915, 24.783710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199051, 46.382191, 24.658588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448618, 0.487983, -0.748742,
		0.794173, -0.166590, -0.584412,
		-0.409915, -0.856808, -0.312808,
		31.076077, 46.125149, 24.564747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427666, 46.731144, 24.119879>,  <31.363018, 46.724915, 24.783710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427666, 46.731144, 24.119879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.121361, 46.478954, 24.170649>,  <30.937578, 46.327641, 24.201111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.121361, 46.478954, 24.170649>,  <31.427666, 46.731144, 24.119879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121361, 46.478954, 24.170649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445362, 0.377487, -0.811885,
		0.463961, -0.678238, -0.569855,
		-0.765763, -0.630474, 0.126922,
		30.891632, 46.289814, 24.208725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.119501, 46.736496, 23.479340>,  <31.427666, 46.731144, 24.119879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.119501, 46.736496, 23.479340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.837164, 46.537636, 23.681183>,  <30.667763, 46.418320, 23.802290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.837164, 46.537636, 23.681183>,  <31.119501, 46.736496, 23.479340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837164, 46.537636, 23.681183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692786, 0.335878, -0.638148,
		0.147767, -0.800018, -0.581495,
		-0.705842, -0.497149, 0.504610,
		30.625412, 46.388493, 23.832565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.691164, 46.505623, 22.933559>,  <31.119501, 46.736496, 23.479340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.691164, 46.505623, 22.933559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.455000, 46.521591, 23.256006>,  <30.313301, 46.531174, 23.449474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.455000, 46.521591, 23.256006>,  <30.691164, 46.505623, 22.933559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455000, 46.521591, 23.256006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712963, 0.442324, -0.544089,
		-0.378286, -0.895966, -0.232688,
		-0.590410, 0.039923, 0.806116,
		30.277878, 46.533569, 23.497841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.126101, 46.280067, 22.664600>,  <30.691164, 46.505623, 22.933559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.126101, 46.280067, 22.664600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.069368, 46.519562, 22.979918>,  <30.035330, 46.663258, 23.169107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.069368, 46.519562, 22.979918>,  <30.126101, 46.280067, 22.664600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069368, 46.519562, 22.979918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717738, 0.486222, -0.498437,
		-0.681715, -0.636481, 0.360772,
		-0.141831, 0.598732, 0.788292,
		30.026819, 46.699181, 23.216406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691294, 45.662804, 22.303459>,  <30.126101, 46.280067, 22.664600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691294, 45.662804, 22.303459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.403307, 45.459476, 22.114456>,  <29.230515, 45.337479, 22.001055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.403307, 45.459476, 22.114456>,  <29.691294, 45.662804, 22.303459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.403307, 45.459476, 22.114456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227635, -0.816135, 0.531137,
		-0.655614, 0.274842, 0.703301,
		-0.719967, -0.508317, -0.472506,
		29.187317, 45.306980, 21.972704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059128, 45.347054, 22.886793>,  <29.691294, 45.662804, 22.303459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059128, 45.347054, 22.886793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.123131, 45.145153, 22.547470>,  <29.161533, 45.024014, 22.343876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.123131, 45.145153, 22.547470>,  <29.059128, 45.347054, 22.886793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.123131, 45.145153, 22.547470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306373, -0.791544, 0.528765,
		-0.938367, -0.344505, 0.027988,
		0.160008, -0.504751, -0.848307,
		29.171133, 44.993729, 22.292978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702946, 44.700897, 22.949286>,  <29.059128, 45.347054, 22.886793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702946, 44.700897, 22.949286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.993591, 44.676701, 22.675535>,  <29.167978, 44.662182, 22.511286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.993591, 44.676701, 22.675535>,  <28.702946, 44.700897, 22.949286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.993591, 44.676701, 22.675535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344518, -0.829744, 0.439126,
		-0.594421, -0.554856, -0.582064,
		0.726616, -0.060494, -0.684375,
		29.211576, 44.658550, 22.470222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.716892, 43.980991, 22.816967>,  <28.702946, 44.700897, 22.949286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.716892, 43.980991, 22.816967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.060102, 44.141651, 22.688925>,  <29.266029, 44.238049, 22.612099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.060102, 44.141651, 22.688925>,  <28.716892, 43.980991, 22.816967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060102, 44.141651, 22.688925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506796, -0.763248, 0.400761,
		-0.083355, -0.506092, -0.858442,
		0.858026, 0.401650, -0.320107,
		29.317511, 44.262146, 22.592894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031267, 43.479820, 22.480324>,  <28.716892, 43.980991, 22.816967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.031267, 43.479820, 22.480324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.334156, 43.735058, 22.536100>,  <29.515890, 43.888203, 22.569567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.334156, 43.735058, 22.536100>,  <29.031267, 43.479820, 22.480324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334156, 43.735058, 22.536100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557201, -0.742477, 0.371827,
		0.340795, -0.203859, -0.917769,
		0.757223, 0.638099, 0.139441,
		29.561323, 43.926487, 22.577932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.619871, 43.110828, 22.315130>,  <29.031267, 43.479820, 22.480324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.619871, 43.110828, 22.315130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.783119, 43.389446, 22.551186>,  <29.881069, 43.556618, 22.692820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.783119, 43.389446, 22.551186>,  <29.619871, 43.110828, 22.315130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.783119, 43.389446, 22.551186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477412, -0.713830, 0.512372,
		0.778149, 0.072630, -0.623867,
		0.408121, 0.696543, 0.590140,
		29.905556, 43.598408, 22.728228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.251490, 42.840721, 22.375822>,  <29.619871, 43.110828, 22.315130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.251490, 42.840721, 22.375822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.237411, 43.108650, 22.672495>,  <30.228964, 43.269409, 22.850498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.237411, 43.108650, 22.672495>,  <30.251490, 42.840721, 22.375822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237411, 43.108650, 22.672495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493936, -0.633503, 0.595568,
		0.868786, 0.387306, -0.308554,
		-0.035197, 0.669826, 0.741683,
		30.226852, 43.309597, 22.895000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.912304, 42.869862, 22.559448>,  <30.251490, 42.840721, 22.375822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.912304, 42.869862, 22.559448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.707342, 43.029125, 22.863792>,  <30.584364, 43.124683, 23.046400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.707342, 43.029125, 22.863792>,  <30.912304, 42.869862, 22.559448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707342, 43.029125, 22.863792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449478, -0.630605, 0.632698,
		0.731717, 0.666189, 0.144163,
		-0.512406, 0.398157, 0.760862,
		30.553619, 43.148571, 23.092051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603853, 43.280880, 22.306791>,  <30.912304, 42.869862, 22.559448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603853, 43.280880, 22.306791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.717258, 42.941586, 22.127853>,  <31.785301, 42.738010, 22.020491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.717258, 42.941586, 22.127853>,  <31.603853, 43.280880, 22.306791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717258, 42.941586, 22.127853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489413, 0.273175, -0.828161,
		0.824678, 0.453731, -0.337689,
		0.283514, -0.848236, -0.447344,
		31.802313, 42.687115, 21.993650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923590, 43.478745, 21.667906>,  <31.603853, 43.280880, 22.306791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923590, 43.478745, 21.667906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.810886, 43.096573, 21.632648>,  <31.743265, 42.867271, 21.611494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.810886, 43.096573, 21.632648>,  <31.923590, 43.478745, 21.667906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810886, 43.096573, 21.632648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502464, 0.225188, -0.834758,
		0.817400, -0.190911, -0.543517,
		-0.281758, -0.955428, -0.088142,
		31.726358, 42.809944, 21.606205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145714, 43.373501, 21.082199>,  <31.923590, 43.478745, 21.667906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145714, 43.373501, 21.082199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.879984, 43.082634, 21.151360>,  <31.720547, 42.908112, 21.192856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.879984, 43.082634, 21.151360>,  <32.145714, 43.373501, 21.082199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879984, 43.082634, 21.151360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529322, 0.294375, -0.795714,
		0.527721, -0.620135, -0.580468,
		-0.664326, -0.727170, 0.172903,
		31.680687, 42.864483, 21.203230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162281, 42.900902, 20.441484>,  <32.145714, 43.373501, 21.082199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162281, 42.900902, 20.441484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.819681, 42.851875, 20.642040>,  <31.614122, 42.822460, 20.762373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.819681, 42.851875, 20.642040>,  <32.162281, 42.900902, 20.441484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819681, 42.851875, 20.642040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509396, 0.044081, -0.859402,
		0.083237, -0.991480, -0.100193,
		-0.856497, -0.122572, 0.501387,
		31.562733, 42.815105, 20.792458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824348, 42.461487, 20.060713>,  <32.162281, 42.900902, 20.441484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824348, 42.461487, 20.060713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.513920, 42.607166, 20.266653>,  <31.327663, 42.694576, 20.390217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.513920, 42.607166, 20.266653>,  <31.824348, 42.461487, 20.060713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513920, 42.607166, 20.266653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452474, 0.247115, -0.856856,
		-0.439296, -0.897937, -0.026986,
		-0.776071, 0.364203, 0.514850,
		31.281099, 42.716427, 20.421108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206633, 42.155701, 19.804850>,  <31.824348, 42.461487, 20.060713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206633, 42.155701, 19.804850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.082056, 42.498455, 19.969170>,  <31.007311, 42.704105, 20.067762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.082056, 42.498455, 19.969170>,  <31.206633, 42.155701, 19.804850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082056, 42.498455, 19.969170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500731, 0.219431, -0.837328,
		-0.807634, -0.466479, 0.360728,
		-0.311440, 0.856882, 0.410801,
		30.988625, 42.755520, 20.092409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.609386, 42.253883, 19.526228>,  <31.206633, 42.155701, 19.804850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.609386, 42.253883, 19.526228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.667246, 42.622265, 19.670958>,  <30.701962, 42.843296, 19.757795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.667246, 42.622265, 19.670958>,  <30.609386, 42.253883, 19.526228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667246, 42.622265, 19.670958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702293, 0.353148, -0.618118,
		-0.697037, -0.164696, 0.697864,
		0.144648, 0.920957, 0.361822,
		30.710640, 42.898552, 19.779505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988024, 42.421017, 19.732225>,  <30.609386, 42.253883, 19.526228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988024, 42.421017, 19.732225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.169870, 42.773266, 19.678816>,  <30.278978, 42.984615, 19.646770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.169870, 42.773266, 19.678816>,  <29.988024, 42.421017, 19.732225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.169870, 42.773266, 19.678816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631630, 0.213050, -0.745422,
		-0.627987, 0.423219, 0.653083,
		0.454616, 0.880622, -0.133525,
		30.306255, 43.037453, 19.638758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.525721, 42.968311, 19.921944>,  <29.988024, 42.421017, 19.732225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.525721, 42.968311, 19.921944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.779835, 43.108131, 19.646486>,  <29.932302, 43.192024, 19.481213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.779835, 43.108131, 19.646486>,  <29.525721, 42.968311, 19.921944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779835, 43.108131, 19.646486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769245, 0.207460, -0.604337,
		-0.068380, 0.913660, 0.400686,
		0.635285, 0.349551, -0.688642,
		29.970421, 43.212997, 19.439894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.571716, 38.480457, 31.227837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.816204, 38.255615, 31.450708>,  <39.962894, 38.120708, 31.584433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.816204, 38.255615, 31.450708>,  <39.571716, 38.480457, 31.227837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816204, 38.255615, 31.450708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677414, -0.735602, 0.001007,
		0.409298, -0.378058, -0.830390,
		0.611217, -0.562106, 0.557182,
		39.999569, 38.086983, 31.617863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095272, 37.973682, 31.106585>,  <39.571716, 38.480457, 31.227837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095272, 37.973682, 31.106585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.262234, 37.915794, 30.747734>,  <39.362411, 37.881062, 30.532425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.262234, 37.915794, 30.747734>,  <39.095272, 37.973682, 31.106585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262234, 37.915794, 30.747734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805960, 0.397081, -0.439039,
		0.419767, 0.906303, 0.049108,
		0.417402, -0.144715, -0.897125,
		39.387455, 37.872379, 30.478596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986565, 38.597076, 30.759188>,  <39.095272, 37.973682, 31.106585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986565, 38.597076, 30.759188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.072884, 38.339638, 30.465464>,  <39.124676, 38.185173, 30.289228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.072884, 38.339638, 30.465464>,  <38.986565, 38.597076, 30.759188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072884, 38.339638, 30.465464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743483, 0.379206, -0.550850,
		0.632982, 0.664818, -0.396676,
		0.215793, -0.643600, -0.734311,
		39.137623, 38.146557, 30.245171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037891, 38.988300, 30.079927>,  <38.986565, 38.597076, 30.759188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037891, 38.988300, 30.079927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.968246, 38.603878, 29.994081>,  <38.926460, 38.373226, 29.942574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.968246, 38.603878, 29.994081>,  <39.037891, 38.988300, 30.079927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968246, 38.603878, 29.994081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691607, 0.274490, -0.668083,
		0.700973, 0.032103, -0.712465,
		-0.174117, -0.961054, -0.214613,
		38.916012, 38.315563, 29.929697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990543, 39.028755, 29.314024>,  <39.037891, 38.988300, 30.079927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990543, 39.028755, 29.314024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.815189, 38.702511, 29.465071>,  <38.709976, 38.506763, 29.555698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.815189, 38.702511, 29.465071>,  <38.990543, 39.028755, 29.314024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815189, 38.702511, 29.465071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786396, 0.144629, -0.600553,
		0.435206, -0.560227, -0.704799,
		-0.438381, -0.815615, 0.377617,
		38.683674, 38.457825, 29.578356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644451, 38.754383, 28.717182>,  <38.990543, 39.028755, 29.314024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644451, 38.754383, 28.717182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.481857, 38.571701, 29.033710>,  <38.384300, 38.462090, 29.223627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.481857, 38.571701, 29.033710>,  <38.644451, 38.754383, 28.717182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481857, 38.571701, 29.033710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874011, -0.058001, -0.482433,
		0.266229, -0.887723, -0.375592,
		-0.406482, -0.456709, 0.791321,
		38.359913, 38.434689, 29.271107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288300, 38.224922, 28.461786>,  <38.644451, 38.754383, 28.717182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288300, 38.224922, 28.461786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.113022, 38.284817, 28.816315>,  <38.007854, 38.320755, 29.029032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.113022, 38.284817, 28.816315>,  <38.288300, 38.224922, 28.461786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113022, 38.284817, 28.816315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890533, 0.061732, -0.450710,
		-0.122204, -0.986796, 0.106297,
		-0.438197, 0.149739, 0.886319,
		37.981564, 38.329739, 29.082211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667755, 37.878197, 28.462835>,  <38.288300, 38.224922, 28.461786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667755, 37.878197, 28.462835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.607124, 38.153217, 28.746889>,  <37.570747, 38.318230, 28.917322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.607124, 38.153217, 28.746889>,  <37.667755, 37.878197, 28.462835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607124, 38.153217, 28.746889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948300, 0.101515, -0.300702,
		-0.278839, -0.719001, 0.636622,
		-0.151578, 0.687556, 0.710135,
		37.561649, 38.359486, 28.959930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010536, 37.729725, 28.724478>,  <37.667755, 37.878197, 28.462835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010536, 37.729725, 28.724478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.076828, 38.096874, 28.868721>,  <37.116604, 38.317165, 28.955267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.076828, 38.096874, 28.868721>,  <37.010536, 37.729725, 28.724478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076828, 38.096874, 28.868721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935858, 0.261687, -0.235987,
		-0.310973, -0.298369, 0.902370,
		0.165727, 0.917876, 0.360609,
		37.126545, 38.372238, 28.976904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405487, 37.747097, 29.125689>,  <37.010536, 37.729725, 28.724478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405487, 37.747097, 29.125689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.532890, 38.117252, 29.043520>,  <36.609333, 38.339348, 28.994219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.532890, 38.117252, 29.043520>,  <36.405487, 37.747097, 29.125689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532890, 38.117252, 29.043520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904423, 0.231782, -0.358185,
		-0.283848, 0.299876, 0.910771,
		0.318511, 0.925393, -0.205424,
		36.628445, 38.394871, 28.981894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794128, 38.203445, 29.320053>,  <36.405487, 37.747097, 29.125689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794128, 38.203445, 29.320053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.031902, 38.392120, 29.059544>,  <36.174568, 38.505325, 28.903238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.031902, 38.392120, 29.059544>,  <35.794128, 38.203445, 29.320053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031902, 38.392120, 29.059544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786714, 0.173430, -0.592455,
		-0.166503, 0.864542, 0.474176,
		0.594438, 0.471687, -0.651271,
		36.210236, 38.533627, 28.864162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381268, 38.791058, 29.167658>,  <35.794128, 38.203445, 29.320053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381268, 38.791058, 29.167658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.649937, 38.746407, 28.874702>,  <35.811138, 38.719616, 28.698929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.649937, 38.746407, 28.874702>,  <35.381268, 38.791058, 29.167658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649937, 38.746407, 28.874702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690734, 0.263044, -0.673569,
		0.267838, 0.958305, 0.099576,
		0.671677, -0.111626, -0.732386,
		35.851440, 38.712917, 28.654987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865498, 39.064564, 29.584469>,  <35.381268, 38.791058, 29.167658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865498, 39.064564, 29.584469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.491924, 38.958576, 29.680441>,  <34.267780, 38.894981, 29.738024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.491924, 38.958576, 29.680441>,  <34.865498, 39.064564, 29.584469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491924, 38.958576, 29.680441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335992, -0.421618, 0.842228,
		-0.122006, 0.867196, 0.482790,
		-0.933929, -0.264971, 0.239931,
		34.211746, 38.879086, 29.752420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786095, 39.220341, 30.258293>,  <34.865498, 39.064564, 29.584469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786095, 39.220341, 30.258293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.469231, 38.981674, 30.206959>,  <34.279114, 38.838474, 30.176157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.469231, 38.981674, 30.206959>,  <34.786095, 39.220341, 30.258293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469231, 38.981674, 30.206959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179516, -0.428773, 0.885397,
		-0.583316, 0.678337, 0.446769,
		-0.792159, -0.596668, -0.128338,
		34.231583, 38.802673, 30.168457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405884, 39.216629, 30.907244>,  <34.786095, 39.220341, 30.258293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405884, 39.216629, 30.907244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.283459, 38.900230, 30.695337>,  <34.210003, 38.710392, 30.568193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.283459, 38.900230, 30.695337>,  <34.405884, 39.216629, 30.907244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283459, 38.900230, 30.695337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043769, -0.567573, 0.822159,
		-0.951006, 0.228441, 0.208332,
		-0.306059, -0.790996, -0.529767,
		34.191643, 38.662933, 30.536407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261330, 38.834991, 31.476601>,  <34.405884, 39.216629, 30.907244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261330, 38.834991, 31.476601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.249599, 38.572773, 31.174767>,  <34.242561, 38.415443, 30.993666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.249599, 38.572773, 31.174767>,  <34.261330, 38.834991, 31.476601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249599, 38.572773, 31.174767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092954, -0.749852, 0.655044,
		-0.995238, 0.089352, -0.038944,
		-0.029327, -0.655545, -0.754587,
		34.240803, 38.376110, 30.948391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661671, 38.465626, 31.569075>,  <34.261330, 38.834991, 31.476601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661671, 38.465626, 31.569075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.927391, 38.251820, 31.360075>,  <34.086823, 38.123535, 31.234676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.927391, 38.251820, 31.360075>,  <33.661671, 38.465626, 31.569075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927391, 38.251820, 31.360075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004097, -0.701616, 0.712544,
		-0.747461, -0.471197, -0.468268,
		0.664293, -0.534518, -0.522500,
		34.126678, 38.091465, 31.203325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552746, 37.668461, 31.697927>,  <33.661671, 38.465626, 31.569075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552746, 37.668461, 31.697927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.929169, 37.683666, 31.563486>,  <34.155022, 37.692787, 31.482821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.929169, 37.683666, 31.563486>,  <33.552746, 37.668461, 31.697927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929169, 37.683666, 31.563486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261457, -0.712153, 0.651519,
		-0.214593, -0.700994, -0.680115,
		0.941058, 0.038009, -0.336103,
		34.211487, 37.695068, 31.462656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697483, 37.005573, 31.790617>,  <33.552746, 37.668461, 31.697927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697483, 37.005573, 31.790617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.034821, 37.201900, 31.703104>,  <34.237225, 37.319698, 31.650597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.034821, 37.201900, 31.703104>,  <33.697483, 37.005573, 31.790617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034821, 37.201900, 31.703104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509099, -0.599430, 0.617658,
		0.172014, -0.632281, -0.755402,
		0.843344, 0.490820, -0.218783,
		34.287823, 37.349148, 31.637468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148937, 36.515217, 31.651573>,  <33.697483, 37.005573, 31.790617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148937, 36.515217, 31.651573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.356804, 36.833321, 31.776472>,  <34.481525, 37.024185, 31.851412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.356804, 36.833321, 31.776472>,  <34.148937, 36.515217, 31.651573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356804, 36.833321, 31.776472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459838, -0.568369, 0.682280,
		0.720064, -0.210978, -0.661057,
		0.519670, 0.795264, 0.312247,
		34.512707, 37.071899, 31.870146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777374, 36.229279, 31.913752>,  <34.148937, 36.515217, 31.651573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777374, 36.229279, 31.913752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.831429, 36.593113, 32.070923>,  <34.863861, 36.811413, 32.165226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.831429, 36.593113, 32.070923>,  <34.777374, 36.229279, 31.913752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831429, 36.593113, 32.070923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516502, -0.403089, 0.755477,
		0.845556, 0.100857, -0.524274,
		0.135134, 0.909586, 0.392927,
		34.871967, 36.865990, 32.188801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496284, 36.376556, 31.918484>,  <34.777374, 36.229279, 31.913752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496284, 36.376556, 31.918484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.307777, 36.588718, 32.200356>,  <35.194672, 36.716015, 32.369480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.307777, 36.588718, 32.200356>,  <35.496284, 36.376556, 31.918484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307777, 36.588718, 32.200356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544043, -0.454043, 0.705594,
		0.694207, 0.715901, -0.074587,
		-0.471269, 0.530406, 0.704680,
		35.166397, 36.747841, 32.411758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090012, 36.672119, 32.234993>,  <35.496284, 36.376556, 31.918484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090012, 36.672119, 32.234993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.779030, 36.710213, 32.483665>,  <35.592442, 36.733070, 32.632870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.779030, 36.710213, 32.483665>,  <36.090012, 36.672119, 32.234993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779030, 36.710213, 32.483665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484971, -0.538601, 0.688994,
		0.400454, 0.837162, 0.372554,
		-0.777457, 0.095233, 0.621684,
		35.545792, 36.738781, 32.670170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385124, 36.869972, 32.776035>,  <36.090012, 36.672119, 32.234993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385124, 36.869972, 32.776035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.032784, 36.718647, 32.889862>,  <35.821381, 36.627853, 32.958157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.032784, 36.718647, 32.889862>,  <36.385124, 36.869972, 32.776035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032784, 36.718647, 32.889862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444563, -0.454504, 0.771874,
		-0.162673, 0.806415, 0.568535,
		-0.880852, -0.378313, 0.284567,
		35.768528, 36.605152, 32.975231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369286, 36.981541, 33.462479>,  <36.385124, 36.869972, 32.776035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369286, 36.981541, 33.462479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.091702, 36.696106, 33.424095>,  <35.925152, 36.524845, 33.401066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.091702, 36.696106, 33.424095>,  <36.369286, 36.981541, 33.462479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091702, 36.696106, 33.424095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429471, -0.517208, 0.740304,
		-0.577902, 0.472532, 0.665389,
		-0.693962, -0.713589, -0.095957,
		35.883514, 36.482029, 33.395309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273304, 36.788181, 34.139091>,  <36.369286, 36.981541, 33.462479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273304, 36.788181, 34.139091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.136921, 36.486168, 33.915066>,  <36.055092, 36.304958, 33.780651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.136921, 36.486168, 33.915066>,  <36.273304, 36.788181, 34.139091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136921, 36.486168, 33.915066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533836, -0.645891, 0.545751,
		-0.773801, -0.112905, 0.623286,
		-0.340957, -0.755035, -0.560064,
		36.034634, 36.259659, 33.747047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590542, 37.274345, 34.288521>,  <36.273304, 36.788181, 34.139091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590542, 37.274345, 34.288521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.544712, 36.930908, 34.088642>,  <35.517216, 36.724846, 33.968716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.544712, 36.930908, 34.088642>,  <35.590542, 37.274345, 34.288521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544712, 36.930908, 34.088642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803013, 0.216086, -0.555407,
		0.584844, -0.464898, 0.664700,
		-0.114576, -0.858590, -0.499696,
		35.510338, 36.673332, 33.938732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848614, 37.866852, 34.608650>,  <35.590542, 37.274345, 34.288521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848614, 37.866852, 34.608650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.222065, 37.914280, 34.743870>,  <36.446136, 37.942738, 34.825001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.222065, 37.914280, 34.743870>,  <35.848614, 37.866852, 34.608650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222065, 37.914280, 34.743870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229957, 0.525225, -0.819304,
		-0.274695, 0.842663, 0.463100,
		0.933629, 0.118566, 0.338053,
		36.502155, 37.949848, 34.845287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183781, 38.061634, 34.278687>,  <35.848614, 37.866852, 34.608650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183781, 38.061634, 34.278687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.548096, 38.197361, 34.184605>,  <35.766685, 38.278797, 34.128155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.548096, 38.197361, 34.184605>,  <35.183781, 38.061634, 34.278687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548096, 38.197361, 34.184605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412507, 0.724063, -0.552784,
		-0.017267, 0.600495, 0.799442,
		0.910791, 0.339320, -0.235206,
		35.821335, 38.299156, 34.114044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164104, 38.833946, 34.448429>,  <35.183781, 38.061634, 34.278687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164104, 38.833946, 34.448429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.463249, 38.775455, 34.189407>,  <35.642735, 38.740360, 34.033997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.463249, 38.775455, 34.189407>,  <35.164104, 38.833946, 34.448429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463249, 38.775455, 34.189407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298411, 0.797286, -0.524677,
		0.593004, 0.585622, 0.552624,
		0.747861, -0.146226, -0.647550,
		35.687607, 38.731586, 33.995144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432648, 39.495811, 34.422699>,  <35.164104, 38.833946, 34.448429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432648, 39.495811, 34.422699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.515194, 39.312325, 34.076984>,  <35.564724, 39.202232, 33.869556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.515194, 39.312325, 34.076984>,  <35.432648, 39.495811, 34.422699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515194, 39.312325, 34.076984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248895, 0.829636, -0.499755,
		0.946289, 0.318250, 0.057038,
		0.206368, -0.458717, -0.864287,
		35.577103, 39.174709, 33.817699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892342, 39.984818, 34.118317>,  <35.432648, 39.495811, 34.422699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892342, 39.984818, 34.118317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.758682, 39.741016, 33.830746>,  <35.678486, 39.594734, 33.658203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.758682, 39.741016, 33.830746>,  <35.892342, 39.984818, 34.118317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758682, 39.741016, 33.830746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132985, 0.785622, -0.604246,
		0.933093, -0.106299, -0.343566,
		-0.334143, -0.609506, -0.718923,
		35.658440, 39.558163, 33.615070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228897, 40.257198, 33.485050>,  <35.892342, 39.984818, 34.118317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228897, 40.257198, 33.485050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.923607, 40.030640, 33.360672>,  <35.740433, 39.894707, 33.286045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.923607, 40.030640, 33.360672>,  <36.228897, 40.257198, 33.485050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923607, 40.030640, 33.360672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284504, 0.726665, -0.625312,
		0.580124, -0.388789, -0.715750,
		-0.763226, -0.566393, -0.310944,
		35.694641, 39.860722, 33.267387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224983, 40.380688, 32.800247>,  <36.228897, 40.257198, 33.485050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224983, 40.380688, 32.800247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.864521, 40.207706, 32.812275>,  <35.648243, 40.103920, 32.819492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.864521, 40.207706, 32.812275>,  <36.224983, 40.380688, 32.800247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864521, 40.207706, 32.812275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350237, 0.685461, -0.638339,
		0.255439, -0.585775, -0.769168,
		-0.901157, -0.432448, 0.030067,
		35.594173, 40.077972, 32.821297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074242, 40.331505, 32.122551>,  <36.224983, 40.380688, 32.800247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074242, 40.331505, 32.122551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.711155, 40.305229, 32.288315>,  <35.493301, 40.289463, 32.387772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.711155, 40.305229, 32.288315>,  <36.074242, 40.331505, 32.122551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711155, 40.305229, 32.288315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378871, 0.552725, -0.742261,
		-0.180294, -0.830771, -0.526606,
		-0.907717, -0.065690, 0.414408,
		35.438839, 40.285522, 32.412636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682796, 40.051018, 31.608942>,  <36.074242, 40.331505, 32.122551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682796, 40.051018, 31.608942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.433701, 40.231182, 31.864855>,  <35.284241, 40.339279, 32.018402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.433701, 40.231182, 31.864855>,  <35.682796, 40.051018, 31.608942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433701, 40.231182, 31.864855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458407, 0.452626, -0.764848,
		-0.634079, -0.769584, -0.075397,
		-0.622742, 0.450412, 0.639783,
		35.246880, 40.366306, 32.056789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867569, 39.863464, 31.478699>,  <35.682796, 40.051018, 31.608942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867569, 39.863464, 31.478699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.904514, 40.217144, 31.661856>,  <34.926682, 40.429352, 31.771749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.904514, 40.217144, 31.661856>,  <34.867569, 39.863464, 31.478699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904514, 40.217144, 31.661856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544072, 0.429954, -0.720503,
		-0.833939, -0.182581, 0.520778,
		0.092360, 0.884197, 0.457893,
		34.932220, 40.482403, 31.799223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266430, 40.196365, 31.165884>,  <34.867569, 39.863464, 31.478699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266430, 40.196365, 31.165884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.460892, 40.504246, 31.331392>,  <34.577568, 40.688976, 31.430696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.460892, 40.504246, 31.331392>,  <34.266430, 40.196365, 31.165884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460892, 40.504246, 31.331392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320070, 0.597425, -0.735282,
		-0.813146, 0.225028, 0.536802,
		0.486158, 0.769705, 0.413769,
		34.606739, 40.735157, 31.455523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772045, 40.686192, 31.153307>,  <34.266430, 40.196365, 31.165884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772045, 40.686192, 31.153307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.119598, 40.875881, 31.210079>,  <34.328133, 40.989697, 31.244143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.119598, 40.875881, 31.210079>,  <33.772045, 40.686192, 31.153307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119598, 40.875881, 31.210079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263884, 0.686332, -0.677727,
		-0.418807, 0.551415, 0.721486,
		0.868888, 0.474225, 0.141931,
		34.380264, 41.018150, 31.252659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606880, 41.397602, 31.280542>,  <33.772045, 40.686192, 31.153307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606880, 41.397602, 31.280542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.987949, 41.387440, 31.159370>,  <34.216591, 41.381344, 31.086668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.987949, 41.387440, 31.159370>,  <33.606880, 41.397602, 31.280542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987949, 41.387440, 31.159370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195053, 0.713239, -0.673234,
		0.233164, 0.700460, 0.674530,
		0.952675, -0.025405, -0.302929,
		34.273750, 41.379818, 31.068491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814648, 42.053101, 31.293623>,  <33.606880, 41.397602, 31.280542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814648, 42.053101, 31.293623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.077393, 41.859879, 31.062042>,  <34.235039, 41.743946, 30.923094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.077393, 41.859879, 31.062042>,  <33.814648, 42.053101, 31.293623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077393, 41.859879, 31.062042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077244, 0.720679, -0.688952,
		0.750043, 0.497267, 0.436074,
		0.656862, -0.483060, -0.578952,
		34.274452, 41.714962, 30.888357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346825, 42.551327, 31.052483>,  <33.814648, 42.053101, 31.293623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346825, 42.551327, 31.052483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.397018, 42.259430, 30.783638>,  <34.427135, 42.084293, 30.622332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.397018, 42.259430, 30.783638>,  <34.346825, 42.551327, 31.052483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397018, 42.259430, 30.783638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031069, 0.674242, -0.737856,
		0.991608, 0.113475, 0.061938,
		0.125489, -0.729740, -0.672110,
		34.434666, 42.040508, 30.582005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796852, 42.817070, 30.579926>,  <34.346825, 42.551327, 31.052483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796852, 42.817070, 30.579926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.606277, 42.514759, 30.400230>,  <34.491932, 42.333374, 30.292414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.606277, 42.514759, 30.400230>,  <34.796852, 42.817070, 30.579926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606277, 42.514759, 30.400230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103724, 0.555703, -0.824885,
		0.873071, -0.346406, -0.343147,
		-0.476433, -0.755776, -0.449237,
		34.463348, 42.288025, 30.265459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090378, 42.797100, 29.905796>,  <34.796852, 42.817070, 30.579926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090378, 42.797100, 29.905796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.726410, 42.633057, 29.880941>,  <34.508030, 42.534630, 29.866028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.726410, 42.633057, 29.880941>,  <35.090378, 42.797100, 29.905796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726410, 42.633057, 29.880941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100876, 0.364098, -0.925882,
		0.402344, -0.836205, -0.372668,
		-0.909914, -0.410116, -0.062139,
		34.453434, 42.510021, 29.862301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982204, 42.543560, 29.206522>,  <35.090378, 42.797100, 29.905796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982204, 42.543560, 29.206522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.607040, 42.563351, 29.343849>,  <34.381943, 42.575226, 29.426247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.607040, 42.563351, 29.343849>,  <34.982204, 42.543560, 29.206522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607040, 42.563351, 29.343849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292875, 0.417356, -0.860255,
		-0.185851, -0.907395, -0.376954,
		-0.937914, 0.049479, 0.343319,
		34.325665, 42.578194, 29.446844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592159, 42.425579, 28.594797>,  <34.982204, 42.543560, 29.206522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592159, 42.425579, 28.594797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.324848, 42.568584, 28.855745>,  <34.164459, 42.654388, 29.012314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.324848, 42.568584, 28.855745>,  <34.592159, 42.425579, 28.594797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324848, 42.568584, 28.855745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521056, 0.400941, -0.753489,
		-0.530942, -0.843465, -0.081659,
		-0.668282, 0.357510, 0.652369,
		34.124363, 42.675838, 29.051456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912762, 42.192539, 28.333223>,  <34.592159, 42.425579, 28.594797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912762, 42.192539, 28.333223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.842449, 42.499222, 28.580212>,  <33.800262, 42.683231, 28.728405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.842449, 42.499222, 28.580212>,  <33.912762, 42.192539, 28.333223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842449, 42.499222, 28.580212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569568, 0.432380, -0.699027,
		-0.802928, -0.474567, 0.360685,
		-0.175782, 0.766703, 0.617468,
		33.789715, 42.729233, 28.765451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250778, 42.250866, 28.321802>,  <33.912762, 42.192539, 28.333223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250778, 42.250866, 28.321802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.410065, 42.596706, 28.444363>,  <33.505638, 42.804211, 28.517899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.410065, 42.596706, 28.444363>,  <33.250778, 42.250866, 28.321802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410065, 42.596706, 28.444363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615137, 0.499498, -0.610007,
		-0.680461, 0.054439, 0.730760,
		0.398221, 0.864603, 0.306402,
		33.529530, 42.856087, 28.536283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653614, 42.748917, 28.337191>,  <33.250778, 42.250866, 28.321802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653614, 42.748917, 28.337191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.001331, 42.944378, 28.307405>,  <33.209961, 43.061653, 28.289534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.001331, 42.944378, 28.307405>,  <32.653614, 42.748917, 28.337191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001331, 42.944378, 28.307405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416858, 0.643790, -0.641689,
		-0.265624, 0.588857, 0.763342,
		0.869295, 0.488653, -0.074464,
		33.262119, 43.090973, 28.285067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406574, 43.381508, 28.393995>,  <32.653614, 42.748917, 28.337191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406574, 43.381508, 28.393995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.773952, 43.475582, 28.266779>,  <32.994377, 43.532028, 28.190449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.773952, 43.475582, 28.266779>,  <32.406574, 43.381508, 28.393995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773952, 43.475582, 28.266779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395552, 0.548202, -0.736894,
		0.001045, 0.802598, 0.596520,
		0.918443, 0.235184, -0.318042,
		33.049484, 43.546139, 28.171366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534725, 44.125542, 28.359697>,  <32.406574, 43.381508, 28.393995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534725, 44.125542, 28.359697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.818207, 44.002628, 28.105669>,  <32.988297, 43.928883, 27.953253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.818207, 44.002628, 28.105669>,  <32.534725, 44.125542, 28.359697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818207, 44.002628, 28.105669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356516, 0.620787, -0.698226,
		0.608793, 0.721250, 0.330407,
		0.708708, -0.307280, -0.635069,
		33.030819, 43.910446, 27.915148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859192, 44.761887, 28.146282>,  <32.534725, 44.125542, 28.359697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859192, 44.761887, 28.146282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.974499, 44.465313, 27.903904>,  <33.043682, 44.287369, 27.758476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.974499, 44.465313, 27.903904>,  <32.859192, 44.761887, 28.146282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974499, 44.465313, 27.903904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392177, 0.485884, -0.781098,
		0.873555, 0.462805, -0.150709,
		0.288269, -0.741437, -0.605947,
		33.060978, 44.242882, 27.722120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404510, 45.084259, 27.571529>,  <32.859192, 44.761887, 28.146282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404510, 45.084259, 27.571529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.288101, 44.724785, 27.440277>,  <33.218254, 44.509102, 27.361525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.288101, 44.724785, 27.440277>,  <33.404510, 45.084259, 27.571529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288101, 44.724785, 27.440277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300729, 0.411525, -0.860355,
		0.908222, -0.151706, -0.390024,
		-0.291026, -0.898684, -0.328133,
		33.200794, 44.455181, 27.341837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610897, 45.079517, 26.902229>,  <33.404510, 45.084259, 27.571529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610897, 45.079517, 26.902229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.318771, 44.807007, 26.922260>,  <33.143497, 44.643501, 26.934278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.318771, 44.807007, 26.922260>,  <33.610897, 45.079517, 26.902229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318771, 44.807007, 26.922260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387091, 0.352326, -0.852072,
		0.562851, -0.641665, -0.521023,
		-0.730315, -0.681273, 0.050076,
		33.099678, 44.602627, 26.937283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222576, 44.902222, 26.498304>,  <33.610897, 45.079517, 26.902229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222576, 44.902222, 26.498304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.530647, 45.157337, 26.501005>,  <34.715488, 45.310410, 26.502625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.530647, 45.157337, 26.501005>,  <34.222576, 44.902222, 26.498304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530647, 45.157337, 26.501005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412277, -0.505871, 0.757708,
		0.486676, -0.580787, -0.652559,
		0.770178, 0.637794, 0.006750,
		34.761700, 45.348675, 26.503031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793541, 44.591503, 26.658255>,  <34.222576, 44.902222, 26.498304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793541, 44.591503, 26.658255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.924549, 44.961075, 26.737329>,  <35.003155, 45.182819, 26.784775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.924549, 44.961075, 26.737329>,  <34.793541, 44.591503, 26.658255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924549, 44.961075, 26.737329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513778, -0.349742, 0.783398,
		0.792946, -0.155010, -0.589244,
		0.327518, 0.923933, 0.197686,
		35.022804, 45.238255, 26.796635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505398, 44.546223, 26.631878>,  <34.793541, 44.591503, 26.658255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505398, 44.546223, 26.631878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.422337, 44.875584, 26.843115>,  <35.372501, 45.073200, 26.969858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.422337, 44.875584, 26.843115>,  <35.505398, 44.546223, 26.631878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422337, 44.875584, 26.843115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735240, -0.224713, 0.639473,
		0.645216, 0.521062, -0.558740,
		-0.207648, 0.823407, 0.528094,
		35.360043, 45.122604, 27.001543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217369, 44.770065, 26.847029>,  <35.505398, 44.546223, 26.631878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217369, 44.770065, 26.847029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.952477, 44.922070, 27.105343>,  <35.793541, 45.013271, 27.260330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.952477, 44.922070, 27.105343>,  <36.217369, 44.770065, 26.847029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952477, 44.922070, 27.105343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564092, -0.314444, 0.763495,
		0.493202, 0.869893, -0.006128,
		-0.662232, 0.380014, 0.645784,
		35.753807, 45.036076, 27.299078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581841, 45.117023, 27.398443>,  <36.217369, 44.770065, 26.847029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581841, 45.117023, 27.398443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.226501, 45.064796, 27.574528>,  <36.013298, 45.033459, 27.680178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.226501, 45.064796, 27.574528>,  <36.581841, 45.117023, 27.398443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226501, 45.064796, 27.574528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457490, -0.333554, 0.824285,
		0.039209, 0.933645, 0.356046,
		-0.888350, -0.130568, 0.440211,
		35.959995, 45.025627, 27.706591>
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
